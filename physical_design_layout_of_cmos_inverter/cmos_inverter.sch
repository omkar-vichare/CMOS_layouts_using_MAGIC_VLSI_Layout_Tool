v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 40 -90 40 -30 {lab=Vout}
N -30 -120 -0 -120 {lab=Vin}
N -30 -120 -30 -0 {lab=Vin}
N -30 -0 -0 -0 {lab=Vin}
N 40 -60 80 -60 {lab=Vout}
N -80 -60 -30 -60 {lab=Vin}
N 40 -170 40 -150 {lab=#net1}
N 40 30 40 50 {lab=GND}
N -140 -60 -140 -40 {lab=Vin}
N -140 -60 -80 -60 {lab=Vin}
N -140 20 -140 50 {lab=GND}
N -140 50 40 50 {lab=GND}
N 40 -120 70 -120 {lab=#net1}
N 70 -160 70 -120 {lab=#net1}
N 40 -160 70 -160 {lab=#net1}
N 40 -0 70 -0 {lab=GND}
N 70 -0 70 40 {lab=GND}
N 40 40 70 40 {lab=GND}
N 150 -100 150 -90 {lab=GND}
N 150 -190 150 -160 {lab=#net1}
N 40 -190 150 -190 {lab=#net1}
N 40 -190 40 -170 {lab=#net1}
C {gnd.sym} 40 50 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 80 -60 0 1 {name=p1 sig_type=std_logic lab=Vout}
C {lab_pin.sym} -140 -60 0 0 {name=p2 sig_type=std_logic lab=Vin}
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
C {sky130_fd_pr/pfet_01v8.sym} 20 -120 0 0 {name=M2
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
C {code_shown.sym} -170 -220 0 0 {name=s1 only_toplevel=false value=".lib /usr/local/share/pdk/sky130B/libs.tech/ngspice/sky130.lib.spice tt

.tran 1n 100n 0n
.save all
.end"}
C {sqwsource.sym} -140 -10 0 0 {name=V1 vhi=1.8 freq=25e6}
C {vsource.sym} 150 -130 0 0 {name=V2 value=1.8 savecurrent=false}
C {gnd.sym} 150 -90 0 0 {name=l1 lab=GND}
