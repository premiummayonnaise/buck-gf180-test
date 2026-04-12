v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 320 -470 370 -470 {lab=VREF}
N 320 -410 370 -410 {lab=VIN2}
N 320 -630 360 -630 {lab=VIN1}
N 320 -690 360 -690 {lab=VREF}
N 180 -660 360 -660 {lab=#net1}
N 180 -440 370 -440 {lab=#net2}
N 550 -660 610 -660 {lab=OUT1}
N 560 -440 620 -440 {lab=OUT2}
N 590 -600 590 -560 {lab=VSS}
N 600 -380 600 -340 {lab=VSS}
N 970 -510 970 -500 {lab=GND}
C {lab_pin.sym} 360 -580 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 370 -360 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 360 -560 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 370 -340 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 320 -630 0 0 {name=p5 sig_type=std_logic lab=VIN1}
C {lab_pin.sym} 320 -690 0 0 {name=p6 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 320 -410 0 0 {name=p7 sig_type=std_logic lab=VIN2}
C {lab_pin.sym} 320 -470 0 0 {name=p8 sig_type=std_logic lab=VREF}
C {isource.sym} 180 -630 0 0 {name=I0 value=20u}
C {lab_pin.sym} 180 -600 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {isource.sym} 180 -410 0 0 {name=I1 value=20u}
C {lab_pin.sym} 180 -380 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 610 -660 0 1 {name=p11 sig_type=std_logic lab=OUT1}
C {capa-2.sym} 590 -630 0 0 {name=C1
m=1
value=5f
footprint=1206
device=polarized_capacitor}
C {lab_pin.sym} 620 -440 0 1 {name=p12 sig_type=std_logic lab=OUT2}
C {capa-2.sym} 600 -410 0 0 {name=C2
m=1
value=5f
footprint=1206
device=polarized_capacitor}
C {lab_pin.sym} 600 -340 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 590 -560 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {vsource.sym} 780 -640 0 0 {name=V1 value="PWL(
+ 0n    0.5
+ 2u    0.5
+ 5u    2.0
+ 8u    0.5
+ 10u   0.5)" savecurrent=false}
C {vsource.sym} 780 -440 0 0 {name=V3 value="PWL(
+ 0n    0.8
+ 0.5u  0.8
+ 0.51u 0.9
+ 1u    0.9
+ 1.01u 1.0
+ 1.5u  1.0
+ 1.51u 1.1
+ 2u    1.1
+ 2.01u 1.2
+ 2.5u  1.2
+ 2.51u 1.3
+ 3u    1.3
+ 3.01u 1.4
+ 3.5u  1.4
+ 3.51u 1.5
+ 4u    1.5
+ 4.01u 1.6
+ 4.5u  1.6
+ 4.51u 1.5
+ 5u    1.5
+ 5.01u 1.4
+ 5.5u  1.4
+ 5.51u 1.3
+ 6u    1.3
+ 6.01u 1.2
+ 6.5u  1.2
+ 6.51u 1.1
+ 7u    1.1
+ 7.01u 1.0
+ 7.5u  1.0
+ 7.51u 0.9
+ 8u    0.9
+ 8.01u 0.8
+ 10u   0.8)" savecurrent=false}
C {lab_pin.sym} 780 -670 0 0 {name=p15 sig_type=std_logic lab=VIN1}
C {lab_pin.sym} 780 -470 0 0 {name=p16 sig_type=std_logic lab=VIN2}
C {vsource.sym} 970 -640 0 0 {name=V4 value=5 savecurrent=false}
C {vsource.sym} 780 -540 0 0 {name=V5 value=1.25 savecurrent=false}
C {lab_pin.sym} 780 -610 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 780 -510 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 780 -410 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 970 -610 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 970 -670 0 0 {name=p21 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 780 -570 0 0 {name=p22 sig_type=std_logic lab=VREF}
C {vsource.sym} 970 -540 0 0 {name=V2 value=0 savecurrent=false}
C {lab_pin.sym} 970 -570 0 0 {name=p24 sig_type=std_logic lab=VSS}
C {gnd.sym} 970 -500 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 1040 -770 0 0 {name=NGSPICE only_toplevel=true
value="

.control

tran 100p 10.1u

  run

  * --- Transient signals ---
  let in1 = v(vref) - v(vin1)
  let in2 = v(vref) - v(vin2)

  * --- Power: average current from VDD over full simulation ---
  * VDD source current is negative by convention (sourcing) → negate
  let ivdd1 = -i(v4)
  meas tran iavg1 avg ivdd1 from=0 to=10.1u
  let pwr_total_uW = iavg1 * 5.0 * 1e6

  echo === Power ===
  print iavg1
  print pwr_total_uW

  * --- Write CSV ---
  * Columns: time vin1 vin2 out1 out2 ivdd1
  wrdata /foss/designs/sim_results/comp_hyst_tran.csv v(vin1) v(vin2) v(out1) v(out2) ivdd1

  plot v(vin1) v(vref) v(out1) title 'OUT1'
  plot v(vin2) v(vref) v(out2) title 'OUT2'


.endc
"}
C {devices/code_shown.sym} 1060 -120 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/smbb000149.ngspice typical
"}
C {comp_hyst.sym} 220 -380 0 0 {name=x1}
C {comp_hyst.sym} 230 -160 0 0 {name=x2}
