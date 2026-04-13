v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 130 -860 160 -860 {lab=VP}
N 130 -920 160 -920 {lab=VN}
N 340 -890 360 -890 {lab=OUT}
N 310 -890 340 -890 {lab=OUT}
N 80 -890 160 -890 {lab=IBIAS}
N 150 -390 180 -390 {lab=#net1}
N 360 -360 380 -360 {lab=OUT3}
N 330 -360 360 -360 {lab=OUT3}
N 360 -360 360 -170 {lab=OUT3}
N 230 -170 360 -170 {lab=OUT3}
N 100 -170 170 -170 {lab=#net1}
N 130 -670 160 -670 {lab=VCM}
N 130 -730 160 -730 {lab=VCM}
N 340 -700 360 -700 {lab=OUT2}
N 310 -700 340 -700 {lab=OUT2}
N 80 -700 160 -700 {lab=IBIAS}
N 130 -730 130 -670 {lab=VCM}
N 100 -330 100 -170 {lab=#net1}
N 100 -390 100 -330 {lab=#net1}
N 100 -390 150 -390 {lab=#net1}
C {vsource.sym} 540 -490 0 0 {name=V6 value="ac -1m dc 2.5" savecurrent=false}
C {vsource.sym} 540 -400 0 0 {name=V8 value="ac 1m dc 2.5" savecurrent=false}
C {lab_pin.sym} 540 -460 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 540 -370 0 0 {name=p29 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 540 -520 0 0 {name=p32 sig_type=std_logic lab=VN}
C {lab_pin.sym} 540 -430 0 0 {name=p33 sig_type=std_logic lab=VP}
C {devices/code_shown.sym} 820 -870 0 0 {name=NGSPICE1 only_toplevel=true
value=".control
  .temp 27
  op
  ac dec 100 1 100MEG
  save all

  * --- Original Logic ---
  let vd = v(vp) - v(vn)
  let Av = db( v(OUT) / vd)
  let phase = 180*cph( v(OUT) )/pi

  * --- New Measurement Snippet ---
  * We use the 'Av' and 'phase' vectors created above
  meas ac f_0db when Av = 0
  meas ac phase_at_unity find phase when Av = 0
  
  * Note: p_total needs a definition to be plotted
  * Assuming p_total is VDD * Total Current:
  let p_total = v(vdd) * i(Vdd)

  * --- Original CMRR & PSRR calculation ---
  let Acm = db( v(OUT2)/vcm)
  let cmrr = Av - Acm
  let psrr = -20*log10(OUT3)

  * --- Output ---
  print f_0db phase_at_unity
  plot psrr
  plot av
  plot acm
  plot cmrr
  plot phase
  plot p_total
.endc

"}
C {vsource.sym} 690 -490 0 0 {name=V9 value=5 savecurrent=false}
C {vsource.sym} 690 -400 0 0 {name=V10 value=0 savecurrent=false}
C {lab_pin.sym} 690 -460 0 0 {name=p34 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 690 -520 0 0 {name=p35 sig_type=std_logic lab=VDD}
C {gnd.sym} 690 -370 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 690 -430 0 0 {name=p36 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 130 -920 0 0 {name=p37 sig_type=std_logic lab=VN}
C {lab_pin.sym} 130 -860 0 0 {name=p38 sig_type=std_logic lab=VP}
C {lab_pin.sym} 360 -890 0 1 {name=p39 sig_type=std_logic lab=OUT}
C {capa-2.sym} 360 -860 0 0 {name=C3
m=1
value=10p
footprint=1206
device=polarized_capacitor}
C {lab_pin.sym} 180 -820 0 0 {name=p40 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 180 -800 0 0 {name=p41 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 540 -570 0 1 {name=p42 lab=IBIAS}
C {lab_pin.sym} 540 -630 0 0 {name=p43 sig_type=std_logic lab=VDD}
C {isource.sym} 540 -600 0 0 {name=I1 value="2u" savecurrent=false}
C {lab_pin.sym} 80 -890 0 0 {name=p44 lab=IBIAS}
C {lab_pin.sym} 130 -670 0 0 {name=p45 sig_type=std_logic lab=VCM}
C {vsource.sym} 540 -720 0 0 {name=V11 value="ac 1m DC 2.5" savecurrent=false}
C {lab_pin.sym} 540 -690 0 0 {name=p46 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 540 -750 0 0 {name=p47 sig_type=std_logic lab=VCM}
C {lab_pin.sym} 180 -330 0 0 {name=p48 sig_type=std_logic lab=VP}
C {lab_pin.sym} 380 -360 0 1 {name=p49 sig_type=std_logic lab=OUT3}
C {lab_pin.sym} 200 -290 0 0 {name=p50 sig_type=std_logic lab=VDDr}
C {lab_pin.sym} 200 -270 0 0 {name=p51 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 180 -360 0 0 {name=p52 lab=IBIAS}
C {vsource.sym} 540 -300 0 0 {name=V12 value="DC 5 AC 1" savecurrent=false}
C {lab_pin.sym} 540 -270 0 0 {name=p53 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 540 -330 0 0 {name=p54 sig_type=std_logic lab=VDDr}
C {ind.sym} 200 -170 1 0 {name=L4
m=1
value=9MEG
footprint=1206
device=inductor}
C {devices/code_shown.sym} 820 -200 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/smbb000149.ngspice typical
"}
C {symmetrical-ota-2.sym} 40 -680 0 0 {name=x2}
C {lab_pin.sym} 360 -700 0 1 {name=p55 sig_type=std_logic lab=OUT2}
C {capa-2.sym} 360 -670 0 0 {name=C4
m=1
value=10p
footprint=1206
device=polarized_capacitor}
C {lab_pin.sym} 180 -630 0 0 {name=p56 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 180 -610 0 0 {name=p57 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 80 -700 0 0 {name=p58 lab=IBIAS}
C {symmetrical-ota-2.sym} 40 -490 0 0 {name=x4}
C {symmetrical-ota-2.sym} 60 -150 0 0 {name=x5}
C {lab_pin.sym} 360 -830 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 360 -640 0 0 {name=p2 sig_type=std_logic lab=VSS}
