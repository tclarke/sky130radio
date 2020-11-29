v { version=2.9.8 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -10 100 20 100 { lab=GND}
N -70 100 -10 100 { lab=GND}
N -210 70 -210 100 { lab=GND}
N -150 100 -70 100 { lab=GND}
N 90 -0 110 -0 { lab=#net1}
N 20 100 110 100 { lab=GND}
N -270 100 -150 100 { lab=GND}
N -270 -50 -270 -40 { lab=VDD}
N -270 20 -270 100 { lab=GND}
N 270 0 290 0 { lab=#net2}
N 290 0 290 20 { lab=#net2}
N 290 80 290 100 { lab=GND}
N 170 0 210 0 { lab=#net3}
N 110 100 290 100 { lab=GND}
N -130 90 -130 100 { lab=GND}
N -130 -0 -130 30 { lab=#net4}
N -210 -0 -130 -0 { lab=#net4}
N -210 -0 -210 10 { lab=#net4}
N -130 -0 -60 -0 { lab=#net4}
C {devices/vdd.sym} -270 -50 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} -10 100 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -270 -10 0 0 {name=V1 value=1.8}
C {devices/res.sym} 290 50 0 0 {name=R1
value=50
footprint=1206
device=resistor
m=1}
C {basic/sch/cascode_01v8.sym} 20 0 0 0 {name=x1}
C {devices/vsource.sym} -210 40 0 1 {name=V2 value="sin(0 100m 100MEG)"}
C {devices/code.sym} 120 -170 0 0 {name=Includes only_toplevel=false value=".lib /home/tclarke/skywater-pdk/libraries/sky130_fd_pr/latest/models/sky130.lib.spice tt"}
C {devices/code.sym} 250 -170 0 0 {name=Sim only_toplevel=false value="
.save all
.options savecurrents
.measure tran inpp PP v(net4) from=10ns to=90ns
.measure tran inrms RMS v(net4) from=10ns to=90ns
.measure tran outpp PP v(net3) from=10ns to=90ns
.measure tran outrms RMS v(net3) from=10ns to=90ns

.tran 1ns 100ns
"}
C {devices/vsource.sym} 240 0 3 1 {name=Vout value="AC 0 DC 0"}
C {devices/capa.sym} 140 0 1 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} -130 60 0 1 {name=R2
value=50
footprint=1206
device=resistor
m=1}
