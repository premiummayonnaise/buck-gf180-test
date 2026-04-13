v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 460 -240 460 -200 {lab=#net1}
N 670 -240 670 -200 {lab=#net2}
N 670 -140 670 -100 {lab=#net3}
N 710 -170 810 -170 {lab=#net2}
N 710 -70 810 -70 {lab=#net3}
N 460 -140 460 -100 {lab=#net4}
N 320 -170 420 -170 {lab=#net1}
N 320 -70 420 -70 {lab=#net4}
N 280 -140 280 -100 {lab=#net5}
N 850 -140 850 -100 {lab=#net6}
N 280 -40 850 -40 {lab=VSS}
N 670 -120 770 -120 {lab=#net3}
N 770 -120 770 -70 {lab=#net3}
N 670 -230 770 -230 {lab=#net2}
N 770 -230 770 -170 {lab=#net2}
N 360 -230 460 -230 {lab=#net1}
N 360 -230 360 -170 {lab=#net1}
N 360 -130 460 -130 {lab=#net4}
N 360 -130 360 -70 {lab=#net4}
N 280 -560 850 -560 {lab=VDD}
N 280 -500 280 -460 {lab=#net7}
N 280 -380 280 -200 {lab=#net8}
N 850 -380 850 -200 {lab=OUT}
N 850 -500 850 -460 {lab=#net9}
N 320 -530 810 -530 {lab=#net7}
N 320 -410 810 -410 {lab=#net8}
N 460 -300 670 -300 {lab=#net10}
N 360 -410 360 -340 {lab=#net8}
N 280 -340 360 -340 {lab=#net8}
N 280 -470 360 -470 {lab=#net7}
N 360 -530 360 -470 {lab=#net7}
N 280 -460 280 -440 {lab=#net7}
N 850 -460 850 -440 {lab=#net9}
N 560 -560 560 -390 {lab=VDD}
N 740 -560 740 -390 {lab=VDD}
N 560 -330 560 -300 {lab=#net10}
N 600 -360 700 -360 {lab=#net10}
N 560 -390 560 -360 {lab=VDD}
N 740 -390 740 -360 {lab=VDD}
N 560 -320 650 -320 {lab=#net10}
N 650 -360 650 -320 {lab=#net10}
N 460 -170 670 -170 {lab=VSS}
N 460 -70 670 -70 {lab=VSS}
N 460 -270 670 -270 {lab=VDD}
N 160 -560 280 -560 {lab=VDD}
N 160 -40 280 -40 {lab=VSS}
N 850 -290 870 -290 {lab=OUT}
N 740 -330 740 -310 {lab=IBIAS_2uA}
N 410 -270 420 -270 {lab=VP}
N 710 -270 720 -270 {lab=VN}
C {symbols/pfet_05v0.sym} 440 -270 0 0 {name=M1
L=3u
W=53.5u
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
C {symbols/pfet_05v0.sym} 690 -270 0 1 {name=M2
L=3u
W=53.4u
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
C {symbols/nfet_05v0.sym} 690 -170 0 1 {name=M4
L=3u
W=31.2u
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
C {symbols/nfet_05v0.sym} 690 -70 0 1 {name=M6
L=3u
W=31.2u
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
C {symbols/nfet_05v0.sym} 440 -170 0 0 {name=M7
L=3u
W=31.2u
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
C {symbols/nfet_05v0.sym} 440 -70 0 0 {name=M8
L=3u
W=31.2u
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
C {symbols/nfet_05v0.sym} 830 -170 0 0 {name=M9
L=3u
W=31.2u
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
C {symbols/nfet_05v0.sym} 830 -70 0 0 {name=M10
L=3u
W=31.2u
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
C {symbols/nfet_05v0.sym} 300 -170 0 1 {name=M11
L=3u
W=31.2u
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
C {symbols/nfet_05v0.sym} 300 -70 0 1 {name=M12
L=3u
W=31.2u
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
C {symbols/pfet_05v0.sym} 300 -410 0 1 {name=M3
L=3u
W=41.47u
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
C {symbols/pfet_05v0.sym} 830 -410 0 0 {name=M5
L=3u
W=41.47u
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
C {symbols/pfet_05v0.sym} 300 -530 0 1 {name=M13
L=3u
W=41.47u
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
C {symbols/pfet_05v0.sym} 830 -530 0 0 {name=M14
L=3u
W=41.47u
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
C {symbols/pfet_05v0.sym} 580 -360 0 1 {name=M15
L=3u
W=41.5u
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
C {symbols/pfet_05v0.sym} 720 -360 0 0 {name=M16
L=3u
W=41.5u
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
C {lab_wire.sym} 560 -170 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 560 -70 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 560 -270 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {iopin.sym} 160 -560 0 1 {name=p4 lab=VDD}
C {iopin.sym} 160 -40 0 1 {name=p5 lab=VSS}
C {opin.sym} 870 -290 0 0 {name=p6 lab=OUT}
C {ipin.sym} 740 -310 0 1 {name=p7 lab=IBIAS_2uA}
C {ipin.sym} 410 -270 0 0 {name=p8 lab=VP}
C {ipin.sym} 720 -270 0 1 {name=p9 lab=VN}
C {lab_wire.sym} 280 -170 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 280 -70 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 850 -70 0 1 {name=p10 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 850 -170 0 1 {name=p13 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 280 -410 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 280 -530 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 850 -410 0 1 {name=p16 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 850 -530 0 1 {name=p17 sig_type=std_logic lab=VDD}
