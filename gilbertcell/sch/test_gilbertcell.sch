v { version=2.9.8 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 280 -380 280 -370 { lab=GND}
N 280 -450 280 -440 { lab=VDD}
N 450 -350 450 -340 { lab=#net1}
N 420 -400 420 -340 { lab=#net2}
N 480 -400 480 -340 { lab=Vbias3}
N 420 -460 440 -460 { lab=GND}
N 440 -460 480 -460 { lab=GND}
N 450 -460 450 -410 { lab=GND}
N 420 -200 420 -160 { lab=Vlop}
N 420 -200 440 -200 { lab=Vlop}
N 460 -200 480 -200 { lab=Vlon}
N 480 -200 480 -160 { lab=Vlon}
N 420 -340 430 -340 { lab=#net2}
N 470 -340 480 -340 { lab=Vbias3}
N 330 -300 380 -300 { lab=Vrfp}
N 380 -300 380 -270 { lab=Vrfp}
N 330 -240 380 -240 { lab=Vrfn}
N 380 -260 380 -240 { lab=Vrfn}
N 520 -250 540 -250 { lab=Outn}
N 520 -260 520 -250 { lab=Outn}
N 520 -280 520 -270 { lab=Outp}
N 520 -280 540 -280 { lab=Outp}
N 480 -360 510 -360 { lab=Vbias3}
N 310 -240 310 -200 { lab=Vrfn}
N 310 -240 330 -240 { lab=Vrfn}
N 310 -150 310 -130 { lab=Vbias3}
N 560 -40 560 -20 { lab=Vbias3}
N 560 -160 560 -100 { lab=Vlon}
N 480 -160 560 -160 { lab=Vlon}
N 540 -240 620 -240 { lab=Outn}
N 540 -250 540 -240 { lab=Outn}
N 540 -310 620 -310 { lab=Outp}
N 540 -310 540 -280 { lab=Outp}
C {devices/vsource.sym} 280 -410 0 0 {name=Vdd value=1.8}
C {devices/vdd.sym} 280 -450 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 280 -370 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 420 -430 2 0 {name=Vbias1 value=1.8}
C {devices/vsource.sym} 450 -380 2 0 {name=Vbias2 value=0.8}
C {devices/vsource.sym} 480 -430 2 1 {name=Vbias3 value=1.2}
C {devices/gnd.sym} 440 -460 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 330 -270 0 1 {name=Vrf value="SIN(0 0.1 2.4GIG)"}
C {devices/vsource.sym} 450 -160 3 1 {name=Vlo value="PULSE(-1 1 0 10ps 10ps 0.5ns 1ns)"}
C {gilbertcell/sch/gilbertcell.sym} 450 -270 0 0 {name=x1}
C {devices/lab_pin.sym} 620 -310 0 1 {name=l5 sig_type=std_logic lab=Outp}
C {devices/lab_pin.sym} 620 -240 0 1 {name=l6 sig_type=std_logic lab=Outn}
C {devices/code_shown.sym} 740 -590 0 0 {name=s1 only_toplevel=false value="
.lib /home/tclarke/skywater-pdk/libraries/sky130_fd_pr/latest/models/sky130.lib.spice tt
* .lib ~/skywater-pdk/sky130_fd_pr/models/sky130.lib.spice tt
.tran 0.1ps 15ns
.save all"}
C {devices/lab_pin.sym} 510 -360 0 1 {name=l4 sig_type=std_logic lab=Vbias3}
C {devices/lab_pin.sym} 310 -130 0 1 {name=l7 sig_type=std_logic lab=Vbias3}
C {devices/res.sym} 310 -180 0 0 {name=R1
value=1G
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 560 -20 0 1 {name=l8 sig_type=std_logic lab=Vbias3}
C {devices/res.sym} 560 -70 0 0 {name=R2
value=1G
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 380 -270 0 0 {name=l9 sig_type=std_logic lab=Vrfp}
C {devices/lab_pin.sym} 380 -260 0 0 {name=l10 sig_type=std_logic lab=Vrfn}
C {devices/lab_pin.sym} 460 -200 0 1 {name=l11 sig_type=std_logic lab=Vlon}
C {devices/lab_pin.sym} 440 -200 0 0 {name=l12 sig_type=std_logic lab=Vlop}
