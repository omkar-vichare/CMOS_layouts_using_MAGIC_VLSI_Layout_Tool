v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 0 140 0 160 {lab=GND}
N -180 -30 -180 -20 {lab=Va}
N -180 -30 -40 -30 {lab=Va}
N -180 80 -180 90 {lab=Vb}
N -180 80 -40 80 {lab=Vb}
N -180 -160 -160 -160 {lab=Va}
N -180 -160 -180 -30 {lab=Va}
N -70 -160 -40 -160 {lab=Vb}
N -70 -160 -70 80 {lab=Vb}
N -0 -130 -0 -60 {lab=Vout}
N 0 0 0 50 {lab=#net1}
N -0 -30 40 -30 {lab=GND}
N 40 -30 40 130 {lab=GND}
N -0 130 40 130 {lab=GND}
N 0 110 0 140 {lab=GND}
N 0 80 40 80 {lab=GND}
N 0 -230 0 -190 {lab=Vdd}
N 0 -230 110 -230 {lab=Vdd}
N 110 -230 110 -190 {lab=Vdd}
N -120 -230 -120 -190 {lab=Vdd}
N -120 -230 0 -230 {lab=Vdd}
N -120 -160 -90 -160 {lab=Vdd}
N -90 -210 -90 -160 {lab=Vdd}
N -120 -210 -90 -210 {lab=Vdd}
N -0 -160 20 -160 {lab=Vdd}
N 20 -210 20 -160 {lab=Vdd}
N 0 -210 20 -210 {lab=Vdd}
N 110 -130 110 -110 {lab=GND}
N -180 150 -180 170 {lab=GND}
N -180 40 -180 50 {lab=GND}
N -0 -90 50 -90 {lab=Vout}
N -120 -130 -120 -110 {lab=Vout}
N -120 -110 -0 -110 {lab=Vout}
C {sky130_fd_pr/nfet_01v8.sym} -20 -30 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} -20 80 0 0 {name=M2
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
C {vsource.sym} 110 -160 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} -180 10 0 0 {name=V2 value="PULSE(0 1.8 0 0n 0n 10n 20n)" savecurrent=false}
C {vsource.sym} -180 120 0 0 {name=V3 value="PULSE(0 1.8 0 0n 0n 20n 40n)" savecurrent=false}
C {gnd.sym} 110 -110 0 0 {name=l1 lab=GND}
C {gnd.sym} 0 140 0 0 {name=l2 lab=GND}
C {gnd.sym} -180 170 0 0 {name=l4 lab=GND}
C {gnd.sym} -180 50 0 0 {name=l5 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} -20 -160 0 0 {name=M3
W=2
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
C {sky130_fd_pr/pfet_01v8.sym} -140 -160 0 0 {name=M4
W=2
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
C {lab_pin.sym} -180 -70 0 0 {name=p1 sig_type=std_logic lab=Va}
C {lab_pin.sym} 50 -90 0 1 {name=p2 sig_type=std_logic lab=Vout}
C {lab_pin.sym} -180 80 0 0 {name=p3 sig_type=std_logic lab=Vb}
C {lab_pin.sym} 110 -220 0 1 {name=p4 sig_type=std_logic lab=Vdd}
C {code_shown.sym} -310 -260 0 0 {name=s1 only_toplevel=false value=".lib /usr/local/share/pdk/sky130B/libs.tech/ngspice/sky130.lib.spice tt
.tran 1n 100n 0n 
.save all
.end"}
C {lab_pin.sym} 40 80 0 1 {name=p5 sig_type=std_logic lab=GND}
