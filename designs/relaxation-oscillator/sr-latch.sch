v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 360 -230 360 -200 {lab=VDD}
N 360 -160 360 -130 {lab=VSS}
N 360 -110 360 -80 {lab=VDD}
N 360 -40 360 -10 {lab=VSS}
N 360 -60 450 -60 {lab=CLKB}
N 60 -180 60 -140 {lab=CLKB}
N 60 -140 420 -110 {lab=CLKB}
N 420 -110 420 -60 {lab=CLKB}
N 60 -100 60 -80 {lab=CLKA}
N 60 -110 60 -100 {lab=CLKA}
N 60 -110 420 -140 {lab=CLKA}
N 420 -180 420 -140 {lab=CLKA}
N 360 -180 450 -180 {lab=CLKA}
N 40 -200 60 -200 {lab=R}
N 40 -60 60 -60 {lab=S}
C {nor.sym} 210 -180 0 0 {name=x1}
C {nor.sym} 210 -60 0 0 {name=x2}
C {iopin.sym} 360 -230 0 1 {name=p7 lab=VDD}
C {iopin.sym} 360 -10 0 1 {name=p8 lab=VSS}
C {lab_pin.sym} 360 -110 0 1 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 360 -130 0 1 {name=p4 sig_type=std_logic lab=VSS}
C {opin.sym} 450 -180 0 0 {name=p1 lab=CLKA}
C {opin.sym} 450 -60 0 0 {name=p2 lab=CLKB}
C {ipin.sym} 40 -200 0 0 {name=p3 lab=R}
C {ipin.sym} 40 -60 0 0 {name=p5 lab=S}
