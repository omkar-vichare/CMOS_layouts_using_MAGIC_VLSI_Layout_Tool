* tb_nor2_layout.sp
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include nor2gate.spice

Xnor VDD GND NOR_OUT A B nor2gate

Vdd VDD GND 1.8

VA A GND DC 0 pulse(0 1.8 5n 100p 100p 10n 20n)
VB B GND DC 0 pulse(0 1.8 5n 100p 100p 20n 40n)

.tran 1n 100n 0n
.control
run
plot V(A) +2V(B) +4V(NOR_OUT)  
.endc
