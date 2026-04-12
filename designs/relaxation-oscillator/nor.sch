v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 260 -240 260 -210 {lab=#net1}
N 260 -270 310 -270 {lab=VDD}
N 260 -180 310 -180 {lab=VDD}
N 170 -130 350 -130 {lab=OUT}
N 260 -150 260 -130 {lab=OUT}
N 260 -140 440 -140 {lab=OUT}
N 170 -70 350 -70 {lab=VSS}
N 210 -270 220 -270 {lab=A}
N 210 -180 220 -180 {lab=B}
N 170 -100 200 -100 {lab=VSS}
N 350 -100 390 -100 {lab=VSS}
N 90 -300 260 -300 {lab=VDD}
N 90 -70 170 -70 {lab=VSS}
C {symbols/pfet_05v0.sym} 240 -270 0 0 {name=M1
L=0.50u
W=0.9u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_05v0
spiceprefix=X
}
C {symbols/pfet_05v0.sym} 240 -180 0 0 {name=M2
L=0.50u
W=0.9u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_05v0
spiceprefix=X
}
C {symbols/nfet_05v0.sym} 150 -100 0 0 {name=M3
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
C {symbols/nfet_05v0.sym} 330 -100 0 0 {name=M4
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
C {ipin.sym} 210 -270 0 0 {name=p1 lab=A}
C {ipin.sym} 210 -180 0 0 {name=p2 lab=B}
C {lab_pin.sym} 200 -100 0 1 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 390 -100 0 1 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 310 -180 0 1 {name=p5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 310 -270 0 1 {name=p6 sig_type=std_logic lab=VDD}
C {iopin.sym} 90 -300 0 1 {name=p7 lab=VDD}
C {iopin.sym} 90 -70 0 1 {name=p8 lab=VSS}
C {lab_pin.sym} 130 -100 0 0 {name=p9 sig_type=std_logic lab=A}
C {lab_pin.sym} 310 -100 0 0 {name=p10 sig_type=std_logic lab=B}
C {opin.sym} 440 -140 0 0 {name=p11 lab=OUT}
