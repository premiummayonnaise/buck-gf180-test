v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 340 -400 340 -370 {lab=VSS}
N 470 -400 470 -370 {lab=VSS}
N 340 -430 340 -400 {lab=VSS}
N 340 -480 340 -460 {lab=RAMPA}
N 340 -480 470 -480 {lab=RAMPA}
N 470 -500 470 -480 {lab=RAMPA}
N 470 -510 470 -500 {lab=RAMPA}
N 470 -480 470 -460 {lab=RAMPA}
N 340 -160 340 -130 {lab=VSS}
N 470 -160 470 -130 {lab=VSS}
N 340 -190 340 -160 {lab=VSS}
N 340 -240 340 -220 {lab=RAMPB}
N 340 -240 470 -240 {lab=RAMPB}
N 470 -260 470 -240 {lab=RAMPB}
N 470 -270 470 -260 {lab=RAMPB}
N 470 -240 470 -220 {lab=RAMPB}
N 130 -510 220 -510 {lab=#net1}
N 140 -270 220 -270 {lab=#net2}
N 750 -540 820 -540 {lab=S}
N 750 -240 830 -240 {lab=R}
N 470 -610 470 -510 {lab=RAMPA}
N 250 -560 250 -510 {lab=VSS}
N 250 -310 250 -270 {lab=VSS}
N 470 -510 490 -510 {lab=RAMPA}
N 470 -270 490 -270 {lab=RAMPB}
N 340 -370 470 -370 {lab=VSS}
N 340 -130 470 -130 {lab=VSS}
N 280 -510 330 -510 {lab=RAMPA}
N 390 -510 470 -510 {lab=RAMPA}
N 390 -270 470 -270 {lab=RAMPB}
N 280 -270 330 -270 {lab=RAMPB}
N 490 -510 560 -510 {lab=RAMPA}
N 330 -510 390 -510 {lab=RAMPA}
N 330 -270 390 -270 {lab=RAMPB}
N 490 -270 560 -270 {lab=RAMPB}
N 820 -540 870 -540 {lab=S}
N 870 -540 870 -60 {lab=S}
N 470 -320 470 -270 {lab=RAMPB}
N 830 -240 840 -240 {lab=R}
N 820 -60 840 -60 {lab=S}
N 840 -60 870 -60 {lab=S}
N 840 -240 840 -100 {lab=R}
N 820 -100 840 -100 {lab=R}
C {symbols/nfet_05v0.sym} 250 -490 3 0 {name=M1
L=0.6u
W=3u
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
C {symbols/nfet_05v0.sym} 320 -430 0 0 {name=M2
L=0.6u
W=3u
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
C {capa-2.sym} 470 -430 0 0 {name=C1
m=1
value=23p
footprint=1206
device=polarized_capacitor}
C {symbols/nfet_05v0.sym} 250 -250 3 0 {name=M3
L=0.6u
W=3u
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
C {symbols/nfet_05v0.sym} 320 -190 0 0 {name=M4
L=0.6u
W=3u
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
C {capa-2.sym} 470 -190 0 0 {name=C2
m=1
value=23p
footprint=1206
device=polarized_capacitor}
C {vsource.sym} 970 -310 0 0 {name=V2 value="dc 1.25" savecurrent=false}
C {lab_pin.sym} 970 -280 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 970 -340 0 0 {name=p11 sig_type=std_logic lab=VREF}
C {devices/code_shown.sym} 930 -700 0 0 {name=NGSPICE only_toplevel=true
value="

.control

  tran 10n 20u
  
  wrdata /foss/designs/sim_results/osc_out.csv CLKA CLKB RAMPA RAMPB S R
  
  plot CLKA CLKB RAMPA RAMPB

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
C {lab_pin.sym} 340 -370 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 340 -130 0 0 {name=p3 sig_type=std_logic lab=VSS
L=1.25u}
C {lab_pin.sym} 560 -620 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 560 -140 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 560 -160 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 70 -510 0 0 {name=p21 sig_type=std_logic lab=VDD}
C {isource.sym} 100 -510 3 1 {name=I1 value="16u" savecurrent=false}
C {lab_pin.sym} 80 -270 0 0 {name=p23 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 300 -430 0 0 {name=p20 sig_type=std_logic lab=CLKB
L=2u}
C {lab_pin.sym} 250 -470 0 0 {name=p22 sig_type=std_logic lab=CLKA
L=2u}
C {lab_pin.sym} 560 -640 0 0 {name=p24 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 300 -190 0 0 {name=p25 sig_type=std_logic lab=CLKA
L=1.25u}
C {lab_pin.sym} 250 -230 0 0 {name=p26 sig_type=std_logic lab=CLKB
L=1.25u}
C {lab_pin.sym} 970 -450 0 1 {name=p27 lab=IBIAS2}
C {lab_pin.sym} 970 -390 0 0 {name=p28 sig_type=std_logic lab=VSS}
C {isource.sym} 970 -420 0 0 {name=I3 value="20u" savecurrent=false}
C {lab_pin.sym} 560 -540 0 0 {name=p29 lab=IBIAS1}
C {lab_pin.sym} 560 -240 0 0 {name=p30 lab=IBIAS2}
C {lab_pin.sym} 470 -610 0 0 {name=p41 sig_type=std_logic lab=RAMPA}
C {lab_pin.sym} 470 -320 0 0 {name=p42 sig_type=std_logic lab=RAMPB}
C {lab_pin.sym} 250 -310 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 250 -560 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {/foss/designs/2026/buck-gf180-test/designs/hyst-comparator/comp_hyst.sym} 420 -820 2 1 {name=x1}
C {/foss/designs/2026/buck-gf180-test/designs/hyst-comparator/comp_hyst.sym} 420 40 0 0 {name=x2}
C {isource.sym} 110 -270 3 1 {name=I5 value="16u" savecurrent=false}
C {sr-latch.sym} 900 100 0 1 {name=x3}
C {lab_pin.sym} 720 -100 0 0 {name=p1 sig_type=std_logic lab=CLKB
L=1.25u}
C {lab_pin.sym} 720 -60 0 0 {name=p4 sig_type=std_logic lab=CLKA
L=1.25u}
C {lab_pin.sym} 770 -10 0 0 {name=p12 sig_type=std_logic lab=VSS
L=1.25u}
C {lab_pin.sym} 770 -30 0 0 {name=p31 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 560 -210 0 0 {name=p32 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 560 -570 0 0 {name=p33 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 840 -190 0 1 {name=p34 lab=R}
C {lab_pin.sym} 870 -130 0 1 {name=p35 lab=S}
