v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 280 -350 480 -350 {lab=#net1}
N 380 -380 380 -350 {lab=#net1}
N 380 -440 380 -410 {lab=VDD}
N 170 -440 170 -410 {lab=VDD}
N 170 -440 380 -440 {lab=VDD}
N 210 -410 340 -410 {lab=IBIAS}
N 170 -380 170 -300 {lab=IBIAS}
N 240 -410 240 -350 {lab=IBIAS}
N 170 -350 240 -350 {lab=IBIAS}
N 320 -150 780 -150 {lab=#net2}
N 520 -200 620 -200 {lab=#net3}
N 480 -290 480 -230 {lab=#net3}
N 280 -320 480 -320 {lab=VDD}
N 280 -290 280 -180 {lab=#net2}
N 280 -120 820 -120 {lab=VSS}
N 660 -380 660 -230 {lab=#net4}
N 380 -440 820 -440 {lab=VDD}
N 700 -410 780 -410 {lab=#net4}
N 740 -410 740 -350 {lab=#net4}
N 740 -350 740 -340 {lab=#net4}
N 660 -340 740 -340 {lab=#net4}
N 820 -380 820 -180 {lab=OUT}
N 480 -260 570 -260 {lab=#net3}
N 570 -260 570 -200 {lab=#net3}
N 280 -210 380 -210 {lab=#net2}
N 380 -210 380 -150 {lab=#net2}
N 280 -150 280 -120 {lab=VSS}
N 480 -200 480 -120 {lab=VSS}
N 660 -200 660 -120 {lab=VSS}
N 820 -150 820 -120 {lab=VSS}
N 660 -440 660 -410 {lab=VDD}
N 820 -440 820 -410 {lab=VDD}
N 230 -320 240 -320 {lab=VN}
N 520 -320 530 -320 {lab=VP}
N 80 -440 170 -440 {lab=VDD}
N 80 -120 280 -120 {lab=VSS}
N 170 -300 170 -280 {lab=IBIAS}
C {symbols/pfet_05v0.sym} 260 -320 0 0 {name=M1
L=0.9u
W=10.5u
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
C {symbols/pfet_05v0.sym} 500 -320 0 1 {name=M2
L=0.9u
W=10.5u
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
C {symbols/pfet_05v0.sym} 360 -410 0 0 {name=M3
L=0.50u
W=0.30u
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
C {symbols/pfet_05v0.sym} 190 -410 0 1 {name=M4
L=0.50u
W=0.30u
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
C {symbols/nfet_05v0.sym} 500 -200 0 1 {name=M5
L=1u
W=2.17u
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
C {symbols/nfet_05v0.sym} 300 -150 0 1 {name=M6
L=1u
W=2.17u
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
C {symbols/pfet_05v0.sym} 800 -410 0 0 {name=M7
L=2u
W=9.4u
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
C {symbols/pfet_05v0.sym} 680 -410 0 1 {name=M8
L=2u
W=9.4u
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
C {symbols/nfet_05v0.sym} 640 -200 0 0 {name=M9
L=1u
W=2.17u
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
C {symbols/nfet_05v0.sym} 800 -150 0 0 {name=M10
L=1u
W=2.17u
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
C {ipin.sym} 170 -280 0 0 {name=p1 lab=IBIAS}
C {ipin.sym} 230 -320 0 0 {name=p2 lab=VN}
C {ipin.sym} 530 -320 0 1 {name=p3 lab=VP}
C {opin.sym} 820 -280 0 0 {name=p4 lab=OUT}
C {iopin.sym} 80 -440 0 1 {name=p5 lab=VDD}
C {iopin.sym} 80 -120 0 1 {name=p6 lab=VSS}
C {lab_wire.sym} 380 -320 0 0 {name=p7 sig_type=std_logic lab=VDD}
