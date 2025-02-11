v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -200 -40 -200 -20 {lab=GND}
N -240 -120 -240 -100 {lab=GND}
N 40 -170 40 -140 {lab=#net1}
N 40 -80 40 -30 {lab=Vout}
N -80 -40 -80 -30 {lab=Vout}
N -80 -40 40 -40 {lab=Vout}
N -80 30 -80 40 {lab=GND}
N -80 40 40 40 {lab=GND}
N 40 30 40 40 {lab=GND}
N 0 40 0 60 {lab=GND}
N -200 -110 0 -110 {lab=Va}
N -200 -110 -200 -100 {lab=Va}
N -240 -200 -0 -200 {lab=Vb}
N -240 -200 -240 -180 {lab=Vb}
N 40 -250 40 -230 {lab=VDD}
N 40 -250 160 -250 {lab=VDD}
N 160 -250 160 -230 {lab=VDD}
N 160 -170 160 -150 {lab=GND}
N 40 -200 70 -200 {lab=VDD}
N 70 -250 70 -200 {lab=VDD}
N 40 -110 70 -110 {lab=VDD}
N 70 -200 70 -110 {lab=VDD}
N 40 -0 70 -0 {lab=GND}
N 70 -0 70 40 {lab=GND}
N 40 40 70 40 {lab=GND}
N -80 0 -50 0 {lab=GND}
N -50 0 -50 40 {lab=GND}
N -20 -0 -0 0 {lab=Va}
N -20 -110 -20 -0 {lab=Va}
N -140 -0 -120 -0 {lab=Vb}
N -140 -200 -140 -0 {lab=Vb}
N 40 -60 90 -60 {lab=Vout}
C {sky130_fd_pr/nfet_01v8.sym} 20 0 0 0 {name=M1
W=1
L=0.15
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -100 0 0 0 {name=M2
W=1
L=0.15
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 20 -110 0 0 {name=M3
W=1
L=0.15
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 20 -200 0 0 {name=M4
W=1
L=0.15
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {vsource.sym} -200 -70 0 0 {name=V1 value="PULSE(0 1.8 0 0 0 20n 40n)" savecurrent=false}
C {vsource.sym} -240 -150 0 0 {name=V2 value="PULSE(0 1.8 0 0 0 10n 20n)" savecurrent=false}
C {vsource.sym} 160 -200 0 0 {name=V3 value=1.8 savecurrent=false}
C {gnd.sym} -200 -20 0 0 {name=l1 lab=GND}
C {gnd.sym} -240 -100 0 0 {name=l2 lab=GND}
C {gnd.sym} 160 -150 0 0 {name=l3 lab=GND}
C {gnd.sym} 0 60 0 0 {name=l4 lab=GND}
C {lab_pin.sym} -240 -200 0 0 {name=p1 sig_type=std_logic lab=Vb}
C {lab_pin.sym} -200 -110 0 0 {name=p2 sig_type=std_logic lab=Va}
C {lab_pin.sym} 90 -60 0 1 {name=p3 sig_type=std_logic lab=Vout}
C {lab_pin.sym} 160 -250 0 1 {name=p4 sig_type=std_logic lab=VDD}
C {code_shown.sym} -310 -290 0 0 {name=s1 only_toplevel=false value=".lib /usr/local/share/pdk/sky130B/libs.tech/ngspice/sky130.lib.spice tt
.tran 1n 100n 0n
.save all
.end
"}
