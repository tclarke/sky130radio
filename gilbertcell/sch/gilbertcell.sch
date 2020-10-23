v { version=2.9.8 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 230 -30 650 -30 { lab=#net1}
N 270 -150 610 -150 { lab=#net2}
N 230 -120 230 -90 { lab=#net3}
N 650 -120 650 -90 { lab=#net4}
N 140 -60 190 -60 { lab=Vrf+}
N 690 -60 720 -60 { lab=Vrf-}
N 720 -60 720 0 { lab=Vrf-}
N 140 -0 720 0 { lab=Vrf-}
N 440 -30 440 40 { lab=#net1}
N 440 100 440 120 { lab=GND}
N 230 -60 400 -60 { lab=GND}
N 400 -60 650 -60 { lab=GND}
N 210 -150 210 -120 { lab=GND}
N 210 -150 230 -150 { lab=GND}
N 670 -150 670 -120 { lab=GND}
N 650 -150 670 -150 { lab=GND}
N 440 110 460 110 { lab=GND}
N 460 70 460 110 { lab=GND}
N 440 70 460 70 { lab=GND}
N 90 -290 350 -290 { lab=#net5}
N 500 -290 740 -290 { lab=#net6}
N 230 -290 230 -180 { lab=#net5}
N 650 -290 650 -180 { lab=#net6}
N 390 -320 460 -320 { lab=Vlo+}
N 420 -380 420 -320 { lab=Vlo+}
N 30 -380 420 -380 { lab=Vlo+}
N 780 -320 800 -320 { lab=Vlo-}
N 800 -320 800 -260 { lab=Vlo-}
N 30 -260 800 -260 { lab=Vlo-}
N 30 -320 30 -260 { lab=Vlo-}
N 30 -320 50 -320 { lab=Vlo-}
N 10 -320 30 -320 { lab=Vlo-}
N 90 -320 210 -320 { lab=GND}
N 210 -320 350 -320 { lab=GND}
N 500 -320 620 -320 { lab=GND}
N 620 -320 740 -320 { lab=GND}
N 90 -480 90 -350 { lab=Out+}
N 740 -480 740 -350 { lab=xxx}
N 500 -400 500 -350 { lab=Out+}
N 90 -400 500 -400 { lab=Out+}
N 350 -370 350 -350 { lab=xxx}
N 350 -370 740 -370 { lab=xxx}
N 130 -510 700 -510 { lab=#net7}
N 230 -420 230 -290 { lab=#net5}
N 650 -420 650 -290 { lab=#net6}
N 270 -450 610 -450 { lab=#net8}
N 90 -620 90 -540 { lab=VDD}
N 90 -620 740 -620 { lab=VDD}
N 740 -620 740 -540 { lab=VDD}
N 230 -620 230 -480 { lab=VDD}
N 650 -620 650 -480 { lab=VDD}
N 40 -510 90 -510 { lab=VDD}
N 740 -510 800 -510 { lab=VDD}
N 650 -450 690 -450 { lab=VDD}
N 190 -450 230 -450 { lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 210 -60 0 0 {name=M1
L=0.15
W=130
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 670 -60 0 1 {name=M2
L=0.15
W=130
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 70 -320 0 0 {name=M3
L=0.15
W=435
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 370 -320 0 1 {name=M4
L=0.15
W=435
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 480 -320 0 0 {name=M5
L=0.15
W=435
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 760 -320 0 1 {name=M6
L=0.15
W=435
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 250 -150 0 1 {name=M7
L=0.15
W=130
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 630 -150 0 0 {name=M8
L=0.15
W=130
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 420 70 0 0 {name=Mtail
L=0.15
W=160
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 110 -510 0 1 {name=M9
L=0.15
W=144
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 720 -510 0 0 {name=M10
L=0.15
W=144
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 250 -450 0 1 {name=Mci1
L=0.15
W=97
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 630 -450 0 0 {name=Mci2
L=0.15
W=97
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} 440 120 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 400 -60 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 210 -120 0 1 {name=l5 lab=GND}
C {devices/gnd.sym} 670 -120 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 210 -320 0 0 {name=l10 lab=GND}
C {devices/gnd.sym} 620 -320 0 0 {name=l11 lab=GND}
C {devices/vdd.sym} 390 -620 0 0 {name=l22 lab=VDD}
C {devices/vdd.sym} 40 -510 0 0 {name=l16 lab=VDD}
C {devices/vdd.sym} 190 -450 0 0 {name=l17 lab=VDD}
C {devices/vdd.sym} 690 -450 0 0 {name=l18 lab=VDD}
C {devices/vdd.sym} 800 -510 0 0 {name=l19 lab=VDD}
C {devices/ipin.sym} 40 -380 0 0 {name=p1 lab=Vlo+}
C {devices/ipin.sym} 20 -320 0 0 {name=p2 lab=Vlo-}
C {devices/ipin.sym} 150 -60 0 0 {name=p3 lab=Vrf+}
C {devices/ipin.sym} 150 0 0 0 {name=p4 lab=Vrf-}
C {devices/ipin.sym} 390 -140 1 0 {name=p5 lab=Vbias1}
C {devices/ipin.sym} 440 -500 1 0 {name=p6 lab=Vbias2}
C {devices/ipin.sym} 480 -440 1 0 {name=p7 lab=Vbias3}
C {devices/opin.sym} 90 -400 0 1 {name=p8 lab=Out+}
C {devices/opin.sym} 740 -370 0 0 {name=p9 lab=Out-}
