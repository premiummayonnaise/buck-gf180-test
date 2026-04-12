v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 350 -300 370 -300 {lab=CLKA}
N 350 -260 370 -260 {lab=CLKB}
C {vsource.sym} 520 -250 0 0 {name=V2 value="PWL(0n 0  50u 0  50.001u 5  70u 5  70.001u 0  100u 0)" savecurrent=false}
C {lab_pin.sym} 520 -220 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 520 -280 0 0 {name=p11 sig_type=std_logic lab=R}
C {devices/code_shown.sym} 520 -580 0 0 {name=NGSPICE only_toplevel=true
value=".control
  tran 100n 100u
	plot CLKA CLKB 
	plot S R
.endc

"}
C {vsource.sym} 630 -430 0 0 {name=V5 value=5 savecurrent=false}
C {vsource.sym} 780 -430 0 0 {name=V7 value=0 savecurrent=false}
C {lab_pin.sym} 630 -400 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 630 -460 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {gnd.sym} 780 -400 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 780 -460 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 530 -130 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/smbb000149.ngspice typical
.include /foss/pdks/gf180mcuD/libs.ref/gf180mcu_fd_sc_mcu7t5v0/spice/gf180mcu_fd_sc_mcu7t5v0.spice
"}
C {lab_pin.sym} 520 -390 0 0 {name=p28 sig_type=std_logic lab=S}
C {vsource.sym} 520 -360 0 0 {name=V3 value="PWL(0n 0  1n 5  20u 5  20.001u 0  100u 0)" savecurrent=false}
C {lab_pin.sym} 520 -330 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {sr-latch.sym} 170 -100 0 0 {name=x1}
C {lab_pin.sym} 250 -260 0 0 {name=p1 sig_type=std_logic lab=S}
C {lab_pin.sym} 250 -300 0 0 {name=p2 sig_type=std_logic lab=R}
C {lab_pin.sym} 300 -230 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 300 -210 0 1 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 370 -300 0 1 {name=p5 sig_type=std_logic lab=CLKA}
C {lab_pin.sym} 370 -260 0 1 {name=p6 sig_type=std_logic lab=CLKB}
