v { version=2.9.8 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 440 -380 440 -360 { lab=Out}
N 440 -460 440 -440 { lab=#net1}
N 440 -300 440 -260 { lab=GND}
N 370 -330 400 -330 { lab=In}
N 440 -370 530 -370 { lab=Out}
N 440 -330 460 -330 { lab=GND}
N 460 -330 460 -270 { lab=GND}
N 440 -270 460 -270 { lab=GND}
N 440 -410 460 -410 { lab=GND}
N 460 -410 460 -330 { lab=GND}
N 410 -500 440 -500 { lab=#net1}
N 440 -500 440 -460 { lab=#net1}
N 390 -410 400 -410 { lab=GND}
N 390 -410 390 -270 { lab=GND}
N 390 -270 440 -270 { lab=GND}
N 410 -540 410 -500 { lab=#net1}
N 350 -570 370 -570 { lab=#net2}
N 260 -520 260 -510 { lab=GND}
N 260 -650 260 -620 { lab=VDD}
N 260 -650 410 -650 { lab=VDD}
N 410 -650 410 -600 { lab=VDD}
N 170 -650 170 -570 { lab=VDD}
N 170 -650 260 -650 { lab=VDD}
N 410 -570 440 -570 { lab=VDD}
N 440 -640 440 -570 { lab=VDD}
N 410 -640 440 -640 { lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 420 -330 0 0 {name=M1
L=0.75
W=5
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 420 -410 0 0 {name=M2
L=0.15
W=5
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} 370 -330 0 0 {name=p2 lab=In}
C {devices/opin.sym} 530 -370 0 0 {name=p3 lab=Out}
C {devices/gnd.sym} 440 -260 0 0 {name=l1 lab=GND}
C {extern/amsat_txrx_ic/design/bandgap_bmr/bandgap_bmr.sym} 260 -570 0 0 {name=x1}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 390 -570 0 0 {name=M3
L=8
W=5
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/gnd.sym} 260 -510 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} 260 -650 0 0 {name=l3 lab=VDD}
