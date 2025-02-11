* tb_xor2_layout.sp
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include xor2gate.spice

Xor B A VDD GND SUM_OUT CARRY_OUT xor2gate

Vdd VDD GND 1.8

VA A GND DC 0 pulse(0 1.8 5n 100p 100p 50n 100n)
VB B GND DC 0 pulse(0 1.8 5n 100p 100p 100n 200n)

.tran 1n 500n 0n
.control
run
plot V(A)+6 V(B)+4 V(SUM_OUT)+2 V(CARRY_OUT) 
.endc
