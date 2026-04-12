v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 220 -180 270 -180 {lab=VIN2}
N 220 -120 270 -120 {lab=VREF}
N 220 -340 260 -340 {lab=VREF}
N 220 -400 260 -400 {lab=VIN1}
N 80 -370 260 -370 {lab=#net1}
N 80 -150 270 -150 {lab=#net2}
N 450 -370 510 -370 {lab=OUT1}
N 460 -150 520 -150 {lab=OUT2}
N 490 -310 490 -270 {lab=VSS}
N 500 -90 500 -50 {lab=VSS}
N 870 -220 870 -210 {lab=GND}
C {pwm-comp.sym} 120 -90 0 0 {name=x1}
C {pwm-comp.sym} 130 130 0 0 {name=x2}
C {lab_pin.sym} 260 -290 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 270 -70 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 260 -270 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 270 -50 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 220 -400 0 0 {name=p5 sig_type=std_logic lab=VIN1}
C {lab_pin.sym} 220 -340 0 0 {name=p6 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 220 -180 0 0 {name=p7 sig_type=std_logic lab=VIN2}
C {lab_pin.sym} 220 -120 0 0 {name=p8 sig_type=std_logic lab=VREF}
C {isource.sym} 80 -340 0 0 {name=I0 value=20u}
C {lab_pin.sym} 80 -310 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {isource.sym} 80 -120 0 0 {name=I1 value=20u}
C {lab_pin.sym} 80 -90 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 510 -370 0 1 {name=p11 sig_type=std_logic lab=OUT1}
C {capa-2.sym} 490 -340 0 0 {name=C1
m=1
value=50f
footprint=1206
device=polarized_capacitor}
C {lab_pin.sym} 520 -150 0 1 {name=p12 sig_type=std_logic lab=OUT2}
C {capa-2.sym} 500 -120 0 0 {name=C2
m=1
value=50f
footprint=1206
device=polarized_capacitor}
C {lab_pin.sym} 500 -50 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 490 -270 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {vsource.sym} 680 -350 0 0 {name=V1 value="PWL(0n 0 10100n 5.0)" savecurrent=false}
C {vsource.sym} 680 -150 0 0 {name=V3 value="PWL(0n 5.0 10100n 0)" savecurrent=false}
C {lab_pin.sym} 680 -380 0 0 {name=p15 sig_type=std_logic lab=VIN1}
C {lab_pin.sym} 680 -180 0 0 {name=p16 sig_type=std_logic lab=VIN2}
C {vsource.sym} 870 -350 0 0 {name=V4 value=5 savecurrent=false}
C {vsource.sym} 680 -250 0 0 {name=V5 value=1.25 savecurrent=false}
C {lab_pin.sym} 680 -320 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 680 -220 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 680 -120 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 870 -320 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 870 -380 0 0 {name=p21 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 680 -280 0 0 {name=p22 sig_type=std_logic lab=VREF}
C {vsource.sym} 870 -250 0 0 {name=V2 value=0 savecurrent=false}
C {lab_pin.sym} 870 -280 0 0 {name=p24 sig_type=std_logic lab=VSS}
C {gnd.sym} 870 -210 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 940 -370 0 0 {name=NGSPICE only_toplevel=true
value="

.control
tran 100p 10.1u

run
let in1 = v(vref) - v(vin1)
let in2 = v(vref) - v(vin2)
plot VIN1 VIN2 OUT1 OUT2
.endc
"}
C {devices/code_shown.sym} 950 -120 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/smbb000149.ngspice typical
"}
