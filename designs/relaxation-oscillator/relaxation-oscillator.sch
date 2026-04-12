v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 340 -460 340 -430 {lab=VSS}
N 470 -460 470 -430 {lab=VSS}
N 340 -490 340 -460 {lab=VSS}
N 340 -540 340 -520 {lab=RAMPA}
N 340 -540 470 -540 {lab=RAMPA}
N 470 -560 470 -540 {lab=RAMPA}
N 470 -570 470 -560 {lab=RAMPA}
N 470 -540 470 -520 {lab=RAMPA}
N 340 -100 340 -70 {lab=VSS}
N 470 -100 470 -70 {lab=VSS}
N 340 -130 340 -100 {lab=VSS}
N 340 -180 340 -160 {lab=RAMPB}
N 340 -180 470 -180 {lab=RAMPB}
N 470 -200 470 -180 {lab=RAMPB}
N 470 -210 470 -200 {lab=RAMPB}
N 470 -180 470 -160 {lab=RAMPB}
N 130 -570 220 -570 {lab=#net1}
N 140 -210 220 -210 {lab=#net2}
N 380 -1110 480 -1110 {lab=VSS}
N 380 -1290 480 -1290 {lab=VDD}
N 380 -870 480 -870 {lab=VSS}
N 380 -1050 480 -1050 {lab=VDD}
N 180 -1220 300 -1220 {lab=R}
N 180 -940 300 -940 {lab=S}
N 300 -1180 300 -1090 {lab=CLKB}
N 300 -1090 620 -1090 {lab=CLKB}
N 620 -1090 720 -960 {lab=CLKB}
N 300 -1060 300 -980 {lab=CLKA}
N 300 -1070 300 -1060 {lab=CLKA}
N 300 -1070 620 -1070 {lab=CLKA}
N 620 -1070 720 -1200 {lab=CLKA}
N 580 -1200 730 -1200 {lab=CLKA}
N 580 -960 730 -960 {lab=CLKB}
N 750 -540 820 -540 {lab=S}
N 750 -240 830 -240 {lab=R}
N 470 -670 470 -570 {lab=RAMPA}
N 470 -350 470 -210 {lab=RAMPB}
N 250 -620 250 -570 {lab=VSS}
N 250 -250 250 -210 {lab=VSS}
N 490 -570 560 -570 {lab=RAMPA}
N 470 -570 490 -570 {lab=RAMPA}
N 280 -570 470 -570 {lab=RAMPA}
N 470 -210 490 -210 {lab=RAMPB}
N 280 -210 470 -210 {lab=RAMPB}
N 490 -210 560 -210 {lab=RAMPB}
C {/foss/designs/2026/buck-gf180-test/designs/pwm-comparator/pwm-comp.sym} 420 -820 2 1 {name=x1}
C {/foss/designs/2026/buck-gf180-test/designs/pwm-comparator/pwm-comp.sym} 420 40 0 0 {name=x2}
C {symbols/nfet_05v0.sym} 250 -550 3 0 {name=M1
L=0.60u
W=0.3u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_05v0
spiceprefix=X
}
C {symbols/nfet_05v0.sym} 320 -490 0 0 {name=M2
L=0.60u
W=0.30u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_05v0
spiceprefix=X
}
C {capa-2.sym} 470 -490 0 0 {name=C1
m=1
value=13p
footprint=1206
device=polarized_capacitor}
C {symbols/nfet_05v0.sym} 250 -190 3 0 {name=M3
L=0.60u
W=0.3u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_05v0
spiceprefix=X
}
C {symbols/nfet_05v0.sym} 320 -130 0 0 {name=M4
L=0.60u
W=0.30u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_05v0
spiceprefix=X
}
C {capa-2.sym} 470 -130 0 0 {name=C2
m=1
value=13p
footprint=1206
device=polarized_capacitor}
C {vsource.sym} 970 -310 0 0 {name=V2 value="dc 1.25" savecurrent=false}
C {lab_pin.sym} 970 -280 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 970 -340 0 0 {name=p11 sig_type=std_logic lab=VREF}
C {devices/code_shown.sym} 970 -590 0 0 {name=NGSPICE only_toplevel=true
value=".control
  tran 100n 100u
	plot CLKA CLKB RAMPA RAMPB
	plot S R
.endc

"}
C {vsource.sym} 1210 -420 0 0 {name=V5 value=5 savecurrent=false}
C {vsource.sym} 1080 -310 0 0 {name=V7 value=0 savecurrent=false}
C {lab_pin.sym} 1210 -390 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1210 -450 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {gnd.sym} 1080 -280 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 1080 -340 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1080 -450 0 1 {name=p13 lab=IBIAS1}
C {lab_pin.sym} 1080 -390 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {isource.sym} 1080 -420 0 0 {name=I4 value="20u" savecurrent=false}
C {devices/code_shown.sym} 980 -190 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/smbb000149.ngspice typical
.include /foss/pdks/gf180mcuD/libs.ref/gf180mcu_fd_sc_mcu7t5v0/spice/gf180mcu_fd_sc_mcu7t5v0.spice
"}
C {lab_pin.sym} 340 -430 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 470 -430 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 340 -70 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 470 -70 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 560 -620 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 560 -140 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 560 -160 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 560 -510 0 0 {name=p18 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 560 -270 0 0 {name=p19 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 130 -630 0 0 {name=p21 sig_type=std_logic lab=IBIAS1}
C {isource.sym} 130 -600 0 0 {name=I1 value="15u" savecurrent=false}
C {lab_pin.sym} 140 -270 0 0 {name=p23 sig_type=std_logic lab=IBIAS2}
C {isource.sym} 140 -240 0 0 {name=I2 value="15u" savecurrent=false}
C {lab_pin.sym} 300 -490 0 0 {name=p20 sig_type=std_logic lab=CLKA}
C {lab_pin.sym} 250 -530 0 0 {name=p22 sig_type=std_logic lab=CLKB}
C {lab_pin.sym} 560 -640 0 0 {name=p24 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 300 -130 0 0 {name=p25 sig_type=std_logic lab=CLKB}
C {lab_pin.sym} 250 -170 0 0 {name=p26 sig_type=std_logic lab=CLKA}
C {lab_pin.sym} 970 -450 0 1 {name=p27 lab=IBIAS2}
C {lab_pin.sym} 980 -390 0 0 {name=p28 sig_type=std_logic lab=VSS}
C {isource.sym} 970 -420 0 0 {name=I3 value="20u" savecurrent=false}
C {lab_pin.sym} 560 -540 0 0 {name=p29 lab=IBIAS1}
C {lab_pin.sym} 560 -240 0 0 {name=p30 lab=IBIAS2}
C {lab_pin.sym} 380 -1290 0 0 {name=p31 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 380 -1110 0 0 {name=p32 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 380 -1050 0 0 {name=p33 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 380 -870 0 0 {name=p34 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 830 -240 0 1 {name=p35 sig_type=std_logic lab=R}
C {lab_pin.sym} 820 -540 0 1 {name=p36 sig_type=std_logic lab=S}
C {lab_pin.sym} 180 -1220 0 0 {name=p37 sig_type=std_logic lab=R}
C {lab_pin.sym} 180 -940 0 0 {name=p38 sig_type=std_logic lab=S}
C {lab_pin.sym} 730 -1200 0 1 {name=p39 sig_type=std_logic lab=CLKA }
C {lab_pin.sym} 730 -960 0 1 {name=p40 sig_type=std_logic lab=CLKB}
C {lab_pin.sym} 470 -670 0 0 {name=p41 sig_type=std_logic lab=RAMPA}
C {lab_pin.sym} 470 -350 0 0 {name=p42 sig_type=std_logic lab=RAMPB}
C {lab_pin.sym} 250 -250 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 250 -620 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {gf180mcu_fd_sc_mcu7t5v0__nor2_2.sym} 440 -960 0 0 {name=x3}
C {gf180mcu_fd_sc_mcu7t5v0__nor2_2.sym} 440 -1200 0 0 {name=x4}
