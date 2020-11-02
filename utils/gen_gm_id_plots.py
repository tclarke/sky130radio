#!/usr/bin/env python3

import PySpice.Logging.Logging as Logging
logger = Logging.setup_logging()
from PySpice.Spice.Netlist import Circuit
from PySpice.Unit import *
import matplotlib.pyplot as plt

def create_test_circuit(fet_type, iparam, fet_L, fet_W, coner_path):
    c=Circuit('gm_id')
    c.include('/home/tclarke/skywater-pdk/libraries/sky130_fd_pr/latest/models/corners/tt.spice')
    fet_type = 'sky130_fd_pr__nfet_01v8'
    iparam = f'@m.xm1.m{fet_type}[%s]'
    fet_L = 0.15
    fet_W = 1

    # create the circuit
    c.V('gg', 1, c.gnd, 0@u_V)
    c.V('dd', 2, c.gnd, 1.8@u_V)
    c.X('M1', fet_type, 2, 1, c.gnd, c.gnd, L=fet_L, W=fet_W, ad="'W*0.29'", pd="'2*(W+0.29)'", as_="'W*0.29'", ps="'2*(W+0.29)'", nrd="'0.29/W'", nrs="'0.29/W'", sa=0, sb=0, sd=0, nf=1, mult=1)
    return c

def run_sim(c, iparam, fet_W):
    sim = c.simulator()
    sim.save_internal_parameters(iparam%'gm', iparam%'id', iparam%'gds', iparam%'cgg')

    # run the dc simulation
    an = sim.dc(Vgg=slice(0, 1.8, 0.01))

    # calculate needed values..need as_ndarray() since most of these have None as the unit and that causes an error
    gm_id = an.internal_parameters[iparam%'gm'].as_ndarray() / an.internal_parameters[iparam%'id'].as_ndarray()
    ft = an.internal_parameters[iparam%'gm'].as_ndarray() / an.internal_parameters[iparam%'cgg'].as_ndarray()
    id_W = an.internal_parameters[iparam%'id'].as_ndarray() / fet_W
    gm_gds = an.internal_parameters[iparam%'gm'].as_ndarray() / an.internal_parameters[iparam%'gds'].as_ndarray()

    return gm_id, ft, id_W, gm_gds, an.nodes['v-sweep']

def init_plots():
    figs = [plt.figure(), plt.figure(), plt.figure(), plt.figure()]
    plts = [f.subplots() for f in figs]
    figs[0].suptitle('Id/W vs gm/Id')
    plts[0].set_xlabel("gm/Id")
    plts[0].set_ylabel("Id/W")
    figs[0].suptitle('fT vs gm/Id')
    plts[1].set_xlabel("gm/Id")
    plts[1].set_ylabel("f_T")
    figs[0].suptitle('gm/gds vs gm/Id')
    plts[2].set_xlabel("gm/Id")
    plts[2].set_ylabel("gm/gds")
    figs[0].suptitle('gm/Id vs Vgg')
    plts[3].set_xlabel("Vgg")
    plts[3].set_ylabel("gm/Id")
    return figs, plts

def gen_plots(gm_id, id_W, ft, gm_gds, vsweep, fet_W, fet_L, plts):
    # plot some interesting things
    plts[0].plot(gm_id, id_W, label=f'W {fet_W} x L {fet_L}')
    plts[1].plot(gm_id, ft, label=f'W {fet_W} x L {fet_L}')
    plts[2].plot(gm_id, gm_gds, label=f'W {fet_W} x L {fet_L}')
    plts[3].plot(vsweep, gm_id, label=f'W {fet_W} x L {fet_L}')

def read_bins(fname):
    import csv
    r=csv.reader(open(fname, 'r'))
    return r

if __name__ == '__main__':
    import sys
    if len(sys.argv) < 4:
        print(f'{sys.argv[0]} <fet_type> <bins_csv> <out file>')
        sys.exit(0)
    fet_type = sys.argv[1]
    bins_fname = sys.argv[2]
    figname = sys.argv[3]
    print(f'Simulating {fet_type} with bins {bins_fname}')

    iparam = f'@m.xm1.m{fet_type}[%s]'
    c = create_test_circuit(fet_type, iparam, 0.15, 1, '/home/tclarke/skywater-pdk/libraries/sky130_fd_pr/latest/models/corners/tt.spice')
    bins = read_bins(bins_fname)
    next(bins)

    figtitles = ['Id_w', 'fT', 'gm_gds', 'gm_id']
    figs, plts = init_plots()
    for dev, bin, fet_W, fet_L in bins:
        fet_W, fet_L = float(fet_W), float(fet_L)
        print(f'{bin}: {dev}  W {fet_W} x L {fet_L}')
        c.element('XM1').parameters['W'] = fet_W
        c.element('XM1').parameters['L'] = fet_L
        gm_id, ft, id_W, gm_gds, vsweep = run_sim(c, iparam, fet_W)
        gen_plots(gm_id, id_W, ft, gm_gds, vsweep, fet_W, fet_L, plts)
    for f,nm in zip(figs, figtitles):
        f.legend()
        f.tight_layout()
        f.savefig(figname % nm)
