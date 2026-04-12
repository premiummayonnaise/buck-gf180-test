v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 260 -350 470 -350 {lab=VDD}
N 260 -180 470 -180 {lab=VDD}
N 650 -290 650 -100 {lab=OUT}
N 470 -350 650 -350 {lab=VDD}
N 560 -320 610 -320 {lab=IBIAS}
N 80 -350 260 -350 {lab=VDD}
N 80 -40 140 -40 {lab=VSS}
N 470 -70 470 -40 {lab=VSS}
N 260 -70 260 -40 {lab=VSS}
N 650 -70 650 -40 {lab=VSS}
N 650 -350 650 -320 {lab=VDD}
N 300 -70 430 -70 {lab=#net1}
N 470 -150 470 -100 {lab=#net2}
N 260 -150 260 -100 {lab=#net1}
N 260 -210 470 -210 {lab=#net3}
N 370 -120 370 -70 {lab=#net1}
N 260 -120 370 -120 {lab=#net1}
N 140 -40 650 -40 {lab=VSS}
N 560 -70 610 -70 {lab=#net2}
N 180 -320 330 -320 {lab=IBIAS}
N 140 -350 140 -320 {lab=VDD}
N 370 -350 370 -320 {lab=VDD}
N 140 -290 140 -220 {lab=IBIAS}
N 370 -290 370 -210 {lab=#net3}
N 140 -250 210 -250 {lab=IBIAS}
N 210 -320 210 -250 {lab=IBIAS}
N 470 -120 560 -120 {lab=#net2}
N 560 -320 560 -270 {lab=IBIAS}
N 290 -270 560 -270 {lab=IBIAS}
N 290 -320 290 -270 {lab=IBIAS}
N 560 -120 560 -70 {lab=#net2}
C {symbols/pfet_05v0.sym} 490 -180 0 1 {name=M3
L=1u
W=51u
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
C {symbols/pfet_05v0.sym} 240 -180 0 0 {name=M4
L=1u
W=51u
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
C {symbols/nfet_05v0.sym} 450 -70 0 0 {name=M5
L=1u
W=20u
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
C {symbols/nfet_05v0.sym} 280 -70 0 1 {name=M6
L=1u
W=20u
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
C {symbols/nfet_05v0.sym} 630 -70 0 0 {name=M7
L=0.75u
W=8.5u
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
C {symbols/pfet_05v0.sym} 630 -320 0 0 {name=M8
L=0.75u
W=40u
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
C {ipin.sym} 220 -180 0 0 {name=p2 lab=VN}
C {ipin.sym} 510 -180 0 1 {name=p3 lab=VP}
C {opin.sym} 650 -190 0 0 {name=p4 lab=OUT}
C {iopin.sym} 80 -350 0 1 {name=p5 lab=VDD}
C {iopin.sym} 80 -40 0 1 {name=p6 lab=VSS}
C {lab_wire.sym} 370 -180 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {ipin.sym} 140 -220 0 0 {name=p8 lab=IBIAS}
C {symbols/pfet_05v0.sym} 350 -320 0 0 {name=M1
L=1u
W=79u
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
C {symbols/pfet_05v0.sym} 160 -320 0 1 {name=M2
L=1u
W=79u
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
