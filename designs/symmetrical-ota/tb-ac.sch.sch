v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 100 -790 180 -790 {lab=IBIAS}
N 160 -560 190 -560 {lab=VCM}
N 160 -500 190 -500 {lab=VCM}
N 360 -530 380 -530 {lab=OUT2}
N 330 -530 360 -530 {lab=OUT2}
N 170 -280 200 -280 {lab=VP}
N 380 -250 400 -250 {lab=OUT3}
N 350 -250 380 -250 {lab=OUT3}
N 120 -250 200 -250 {lab=IBIAS}
N 380 -250 380 -60 {lab=OUT3}
N 250 -60 380 -60 {lab=OUT3}
N 120 -60 190 -60 {lab=#net1}
N 330 -790 420 -790 {lab=OUT}
N 380 -730 380 -670 {lab=VSS}
N 160 -560 160 -500 {lab=VCM}
N 120 -620 170 -620 {lab=IBIAS}
N 170 -620 170 -530 {lab=IBIAS}
N 170 -530 190 -530 {lab=IBIAS}
N 120 -220 200 -220 {lab=#net1}
N 120 -220 120 -60 {lab=#net1}
C {vsource.sym} 560 -380 0 0 {name=V2 value="ac -1m dc 1.25" savecurrent=false}
C {vsource.sym} 560 -290 0 0 {name=V3 value="ac 1m dc 1.25" savecurrent=false}
C {lab_pin.sym} 560 -350 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 560 -260 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 560 -410 0 0 {name=p11 sig_type=std_logic lab=VN}
C {lab_pin.sym} 560 -320 0 0 {name=p12 sig_type=std_logic lab=VP}
C {devices/code_shown.sym} 750 -830 0 0 {name=NGSPICE only_toplevel=true
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
C {vsource.sym} 700 -610 0 0 {name=V5 value=5 savecurrent=false}
C {vsource.sym} 700 -490 0 0 {name=V7 value=0 savecurrent=false}
C {lab_pin.sym} 700 -580 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 700 -640 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {gnd.sym} 700 -460 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 700 -520 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 180 -760 0 0 {name=p1 sig_type=std_logic lab=VN}
C {lab_pin.sym} 180 -820 0 0 {name=p3 sig_type=std_logic lab=VP}
C {lab_pin.sym} 420 -790 0 1 {name=p6 sig_type=std_logic lab=OUT}
C {capa-2.sym} 380 -760 0 0 {name=C2
m=1
value=5p
footprint=1206
device=polarized_capacitor}
C {lab_pin.sym} 200 -720 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 200 -700 0 0 {name=p22 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 560 -520 0 1 {name=p5 lab=IBIAS}
C {lab_pin.sym} 560 -460 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {isource.sym} 560 -490 0 0 {name=I4 value="5u" savecurrent=false}
C {lab_pin.sym} 100 -790 0 0 {name=p15 lab=IBIAS}
C {lab_pin.sym} 160 -530 0 0 {name=p16 sig_type=std_logic lab=VCM}
C {lab_pin.sym} 380 -530 0 1 {name=p17 sig_type=std_logic lab=OUT2}
C {capa-2.sym} 380 -500 0 0 {name=C1
m=1
value=5p
footprint=1206
device=polarized_capacitor}
C {lab_pin.sym} 120 -620 0 0 {name=p20 lab=IBIAS}
C {vsource.sym} 560 -610 0 0 {name=V1 value="ac 1m DC 1.25" savecurrent=false}
C {lab_pin.sym} 560 -580 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 560 -640 0 0 {name=p21 sig_type=std_logic lab=VCM}
C {lab_pin.sym} 170 -280 0 0 {name=p24 sig_type=std_logic lab=VP}
C {lab_pin.sym} 400 -250 0 1 {name=p25 sig_type=std_logic lab=OUT3}
C {lab_pin.sym} 220 -180 0 0 {name=p26 sig_type=std_logic lab=VDDr}
C {lab_pin.sym} 220 -160 0 0 {name=p27 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 120 -250 0 0 {name=p28 lab=IBIAS}
C {vsource.sym} 560 -190 0 0 {name=V4 value="DC 5 AC 1" savecurrent=false}
C {lab_pin.sym} 560 -160 0 0 {name=p30 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 560 -220 0 0 {name=p31 sig_type=std_logic lab=VDDr}
C {ind.sym} 220 -60 1 0 {name=L1
m=1
value=1G
footprint=1206
device=inductor}
C {lab_pin.sym} 380 -670 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 210 -460 0 0 {name=p18 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 210 -440 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 380 -470 0 0 {name=p29 sig_type=std_logic lab=VSS}
C {devices/code_shown.sym} 730 -140 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/smbb000149.ngspice typical
"}
C {/foss/designs/2026/buck-gf180-test/designs/symmetrical-ota/symmetrical-ota.sym} 150 -360 0 0 {name=x1}
C {/foss/designs/2026/buck-gf180-test/designs/symmetrical-ota/symmetrical-ota.sym} 140 -620 0 0 {name=x2}
C {/foss/designs/2026/buck-gf180-test/designs/symmetrical-ota/symmetrical-ota.sym} 160 -80 0 0 {name=x3}
