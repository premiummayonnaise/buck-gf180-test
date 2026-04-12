v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 200 -960 280 -960 {lab=IBIAS}
N 430 -960 520 -960 {lab=OUT}
N 480 -900 480 -840 {lab=VSS}
N 210 -480 290 -480 {lab=IBIAS2}
N 440 -480 530 -480 {lab=OUT1}
N 490 -420 490 -360 {lab=VSS}
N 460 -480 460 -320 {lab=OUT1}
N 360 -320 460 -320 {lab=OUT1}
N 210 -450 290 -450 {lab=vfb}
N 230 -320 300 -320 {lab=vfb}
N 210 -510 290 -510 {lab=VP2}
N 230 -450 230 -320 {lab=vfb}
N 160 -450 160 -390 {lab=vfb}
N 160 -250 160 -230 {lab=VSS}
N 160 -330 160 -310 {lab=#net1}
N 160 -450 210 -450 {lab=vfb}
N 260 -320 260 -260 {lab=vfb}
C {vsource.sym} 550 -1160 0 0 {name=V2 value="ac -1m dc 2.5" savecurrent=false}
C {vsource.sym} 550 -1060 0 0 {name=V3 value="ac 1m dc 2.5" savecurrent=false}
C {lab_pin.sym} 550 -1130 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 550 -1030 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 550 -1190 0 0 {name=p11 sig_type=std_logic lab=VN}
C {lab_pin.sym} 550 -1090 0 0 {name=p12 sig_type=std_logic lab=VP}
C {devices/code_shown.sym} 910 -760 0 0 {name=NGSPICE only_toplevel=true
value="

.control

ac dec 100 1 1G

let vd    = v(vp2)
let Av    = v(out1) / vd
let gain_db = db(Av)
let phase   = cph(Av) * 180 / PI

meas ac ugf  when gain_db = 0
meas ac pm   find phase    at = ugf

plot gain_db phase

.endc

"}
C {vsource.sym} 790 -540 0 0 {name=V5 value=5 savecurrent=false}
C {vsource.sym} 790 -420 0 0 {name=V7 value=0 savecurrent=false}
C {lab_pin.sym} 790 -510 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 790 -570 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {gnd.sym} 790 -390 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 790 -450 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 650 -450 0 0 {name=p5 lab=IBIAS2}
C {isource.sym} 650 -420 0 0 {name=I4 value="10u" savecurrent=false}
C {lab_pin.sym} 280 -930 0 0 {name=p32 sig_type=std_logic lab=VN}
C {lab_pin.sym} 280 -990 0 0 {name=p33 sig_type=std_logic lab=VP}
C {lab_pin.sym} 520 -960 0 1 {name=p34 sig_type=std_logic lab=OUT}
C {capa-2.sym} 480 -930 0 0 {name=C3
m=1
value=5p
footprint=1206
device=polarized_capacitor}
C {lab_pin.sym} 300 -890 0 0 {name=p35 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 300 -870 0 0 {name=p36 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 200 -960 0 0 {name=p37 lab=IBIAS}
C {lab_pin.sym} 480 -840 0 0 {name=p38 sig_type=std_logic lab=VSS}
C {/foss/designs/2026/buck-gf180-test/designs/symmetrical-ota/symmetrical-ota.sym} 240 -790 0 0 {name=x4}
C {lab_pin.sym} 210 -510 0 0 {name=p3 sig_type=std_logic lab=VP2}
C {lab_pin.sym} 530 -480 0 1 {name=p6 sig_type=std_logic lab=OUT1}
C {capa-2.sym} 490 -450 0 0 {name=C1
m=1
value=5p
footprint=1206
device=polarized_capacitor}
C {lab_pin.sym} 310 -410 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 310 -390 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 210 -480 0 0 {name=p16 lab=IBIAS2}
C {/foss/designs/2026/buck-gf180-test/designs/symmetrical-ota/symmetrical-ota.sym} 250 -310 0 0 {name=x1}
C {ind.sym} 330 -320 1 0 {name=L1
m=1
value=500
footprint=1206
device=inductor}
C {lab_pin.sym} 490 -360 0 1 {name=p17 sig_type=std_logic lab=VSS}
C {vsource.sym} 650 -310 0 0 {name=V6 value="ac -1m dc 2.5" savecurrent=false}
C {lab_pin.sym} 650 -280 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 650 -340 0 0 {name=p19 sig_type=std_logic lab=VN2}
C {devices/code_shown.sym} 920 -320 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/smbb000149.ngspice typical
"}
C {vsource.sym} 790 -310 0 0 {name=V8 value="ac 1m dc 2.5" savecurrent=false}
C {lab_pin.sym} 790 -280 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 790 -340 0 0 {name=p22 sig_type=std_logic lab=VP2}
C {lab_pin.sym} 650 -390 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 720 -1000 0 0 {name=p23 lab=IBIAS}
C {isource.sym} 720 -970 0 0 {name=I1 value="10u" savecurrent=false}
C {lab_pin.sym} 720 -940 0 0 {name=p24 sig_type=std_logic lab=VSS}
C {capa-2.sym} 160 -360 0 0 {name=C2
m=1
value=10
footprint=1206
device=polarized_capacitor}
C {lab_pin.sym} 160 -230 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {vsource.sym} 160 -280 0 0 {name=V1 value="AC 1" savecurrent=false}
C {lab_pin.sym} 260 -260 0 0 {name=p10 sig_type=std_logic lab=vfb}
