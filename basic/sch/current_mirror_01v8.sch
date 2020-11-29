v { version=2.9.8 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 320 -330 360 -330 { lab=#net1}
N 280 -300 280 -280 { lab=GND}
N 280 -280 400 -280 { lab=GND}
N 400 -300 400 -280 { lab=GND}
N 340 -280 340 -260 { lab=GND}
N 400 -330 420 -330 { lab=GND}
N 420 -330 420 -280 { lab=GND}
N 400 -280 420 -280 { lab=GND}
N 250 -330 280 -330 { lab=GND}
N 250 -330 250 -280 { lab=GND}
N 250 -280 280 -280 { lab=GND}
N 340 -390 340 -330 { lab=#net1}
N 280 -390 340 -390 { lab=#net1}
N 280 -390 280 -360 { lab=#net1}
N 400 -400 400 -360 { lab=Iout}
N 400 -400 440 -400 { lab=Iout}
N 280 -400 280 -390 { lab=#net1}
N 280 -480 280 -460 { lab=VDD}
N 260 -430 260 -400 { lab=GND}
N 250 -400 260 -400 { lab=GND}
N 250 -400 250 -330 { lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 300 -330 0 1 {name=M1
L=0.15
W=1
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 380 -330 0 0 {name=M2
L=0.15
W=1
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} 340 -260 0 0 {name=l1 lab=GND}
C {devices/opin.sym} 430 -400 0 0 {name=p1 lab=Iout}
C {devices/vdd.sym} 280 -480 0 0 {name=l2 lab=VDD}
C {sky130_fd_pr/res_high_po_0p69.sym} 280 -430 0 0 {name=R1
W=0.69
L=1
model=res_high_po_0p69
spiceprefix=X
mult=1}
