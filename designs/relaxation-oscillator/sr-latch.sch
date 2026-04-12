v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 440 -340 540 -340 {lab=VSS}
N 440 -520 540 -520 {lab=VDD}
N 440 -100 540 -100 {lab=VSS}
N 440 -280 540 -280 {lab=VDD}
N 240 -450 360 -450 {lab=R}
N 240 -170 360 -170 {lab=S}
N 360 -410 360 -320 {lab=CLKB}
N 360 -320 680 -320 {lab=CLKB}
N 680 -320 780 -190 {lab=CLKB}
N 360 -290 360 -210 {lab=CLKA}
N 360 -300 360 -290 {lab=CLKA}
N 360 -300 680 -300 {lab=CLKA}
N 680 -300 780 -430 {lab=CLKA}
N 640 -430 790 -430 {lab=CLKA}
N 640 -190 790 -190 {lab=CLKB}
C {lab_pin.sym} 440 -520 0 0 {name=p31 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 440 -340 0 0 {name=p32 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 440 -280 0 0 {name=p33 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 440 -100 0 0 {name=p34 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 240 -450 0 0 {name=p37 sig_type=std_logic lab=R}
C {lab_pin.sym} 240 -170 0 0 {name=p38 sig_type=std_logic lab=S}
C {lab_pin.sym} 790 -430 0 1 {name=p39 sig_type=std_logic lab=CLKA }
C {lab_pin.sym} 790 -190 0 1 {name=p40 sig_type=std_logic lab=CLKB}
C {gf180mcu_fd_sc_mcu7t5v0__nor2_2.sym} 500 -190 0 0 {name=x3}
C {gf180mcu_fd_sc_mcu7t5v0__nor2_2.sym} 500 -430 0 0 {name=x4}
C {vsource.sym} 960 -280 0 0 {name=V2 value="PWL(0n 0  50u 0  50.001u 5  70u 5  70.001u 0  100u 0)" savecurrent=false}
C {lab_pin.sym} 960 -250 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 960 -310 0 0 {name=p11 sig_type=std_logic lab=R}
C {devices/code_shown.sym} 960 -610 0 0 {name=NGSPICE only_toplevel=true
value=".control
  tran 100n 100u
	plot CLKA CLKB 
	plot S R
.endc

"}
C {vsource.sym} 1070 -460 0 0 {name=V5 value=5 savecurrent=false}
C {vsource.sym} 1220 -460 0 0 {name=V7 value=0 savecurrent=false}
C {lab_pin.sym} 1070 -430 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1070 -490 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {gnd.sym} 1220 -430 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 1220 -490 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 970 -160 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/smbb000149.ngspice typical
.include /foss/pdks/gf180mcuD/libs.ref/gf180mcu_fd_sc_mcu7t5v0/spice/gf180mcu_fd_sc_mcu7t5v0.spice
"}
C {lab_pin.sym} 960 -420 0 0 {name=p28 sig_type=std_logic lab=S}
C {vsource.sym} 960 -390 0 0 {name=V3 value="PWL(0n 0  1n 5  20u 5  20.001u 0  100u 0)" savecurrent=false}
C {lab_pin.sym} 960 -360 0 0 {name=p1 sig_type=std_logic lab=VSS}
