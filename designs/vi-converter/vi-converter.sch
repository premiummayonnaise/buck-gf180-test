v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 420 -290 550 -290 {lab=#net1}
N 590 -290 610 -290 {lab=VSS}
N 610 -290 610 -160 {lab=VSS}
N 590 -160 610 -160 {lab=VSS}
N 590 -260 590 -220 {lab=VFB}
N 550 -240 590 -240 {lab=VFB}
N 250 -320 270 -320 {lab=VIN}
N 590 -160 590 -120 {lab=VSS}
N 250 -260 270 -260 {lab=VFB}
N 250 -290 270 -290 {lab=IBIAS}
N 590 -340 590 -320 {lab=#net2}
N 590 -420 590 -400 {lab=VLOAD}
C {/foss/designs/2026/buck-gf180-test/designs/symmetrical-ota/symmetrical-ota.sym} 230 -120 0 0 {name=x1}
C {symbols/nfet_05v0.sym} 570 -290 0 0 {name=M1
L=2u
W=30u
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
C {res.sym} 590 -190 0 0 {name=R1
value=100k
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 550 -240 0 0 {name=p1 sig_type=std_logic lab=VFB}
C {lab_pin.sym} 590 -420 0 0 {name=p2 sig_type=std_logic lab=VLOAD}
C {lab_pin.sym} 250 -260 0 0 {name=p3 sig_type=std_logic lab=VFB}
C {lab_pin.sym} 290 -220 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 290 -200 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 590 -120 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {vsource.sym} 760 -250 0 0 {name=V2 value="dc 2.5" savecurrent=false}
C {lab_pin.sym} 760 -220 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 760 -280 0 0 {name=p11 sig_type=std_logic lab=VIN}
C {devices/code_shown.sym} 720 -540 0 0 {name=NGSPICE only_toplevel=true
value=".control
  dc V2 0 5 0.001
  plot i(Vmeas)
.endc

"}
C {vsource.sym} 890 -360 0 0 {name=V5 value=5 savecurrent=false}
C {vsource.sym} 890 -250 0 0 {name=V7 value=0 savecurrent=false}
C {lab_pin.sym} 890 -330 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 890 -390 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {gnd.sym} 890 -220 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 890 -280 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 760 -330 0 1 {name=p13 lab=IBIAS}
C {lab_pin.sym} 760 -390 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {isource.sym} 760 -360 0 0 {name=I4 value="10u" savecurrent=false}
C {lab_pin.sym} 250 -320 0 0 {name=p16 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 250 -290 0 0 {name=p17 lab=IBIAS}
C {ammeter.sym} 590 -370 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {vsource.sym} 1000 -360 0 0 {name=V1 value=5 savecurrent=false}
C {lab_pin.sym} 1000 -330 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1000 -390 0 0 {name=p12 sig_type=std_logic lab=VLOAD}
C {devices/code_shown.sym} 670 -130 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/smbb000149.ngspice typical
"}
