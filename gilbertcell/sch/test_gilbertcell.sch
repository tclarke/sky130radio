v { version=2.9.8 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 80 -350 80 -340 { lab=GND}
N 80 -420 80 -410 { lab=VDD}
N 250 -320 250 -310 { lab=#net1}
N 220 -370 220 -310 { lab=#net2}
N 280 -370 280 -310 { lab=#net3}
N 220 -430 240 -430 { lab=GND}
N 240 -430 280 -430 { lab=GND}
N 250 -430 250 -380 { lab=GND}
N 220 -170 220 -130 { lab=#net4}
N 220 -170 240 -170 { lab=#net4}
N 260 -170 280 -170 { lab=#net5}
N 280 -170 280 -130 { lab=#net5}
N 220 -310 230 -310 { lab=#net2}
N 270 -310 280 -310 { lab=#net3}
N 130 -270 180 -270 { lab=#net6}
N 180 -270 180 -240 { lab=#net6}
N 130 -210 180 -210 { lab=#net7}
N 180 -230 180 -210 { lab=#net7}
N 320 -220 340 -220 { lab=Out-}
N 320 -230 320 -220 { lab=Out-}
N 320 -250 320 -240 { lab=Out+}
N 320 -250 340 -250 { lab=Out+}
C {devices/vsource.sym} 80 -380 0 0 {name=Vdd value=1.8}
C {devices/vdd.sym} 80 -420 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 80 -340 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 220 -400 2 0 {name=Vbias1 value=1.8}
C {devices/vsource.sym} 250 -350 2 0 {name=Vbias2 value=0.8}
C {devices/vsource.sym} 280 -400 2 1 {name=Vbias3 value=1.2}
C {devices/gnd.sym} 240 -430 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 130 -240 0 1 {name=Vrf value="SIN(0 1.4 2.4GIG)}
C {devices/vsource.sym} 250 -130 3 1 {name=Vlo value="SIN(0 1.8 2.3GIG)"}
C {gilbertcell/sch/gilbertcell.sym} 250 -240 0 0 {name=x1}
C {devices/lab_pin.sym} 340 -250 0 1 {name=l5 sig_type=std_logic lab=Out+}
C {devices/lab_pin.sym} 340 -220 0 1 {name=l6 sig_type=std_logic lab=Out-}
C {devices/code_shown.sym} 420 -380 0 0 {name=s1 only_toplevel=false value=".lib /home/tclarke/skywater-pdk/libraries/sky130_fd_pr/latest/models/sky130.lib.spice tt
.tran 100ps 9ns
.save all"}
