* tb_nand2_layout.sp
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include nand2_layout.spice

Xnand A B NAND_OUT VDD GND nand2_layout

Vdd VDD GND 1.8

VA A GND DC 0 pulse(0 1.8 5n 100p 100p 10n 20n)
VB B GND DC 0 pulse(0 1.8 5n 100p 100p 20n 40n)

.tran 1n 100n
.control
run
plot V(A) +2V(B) +4V(NAND_OUT)  
.endc
