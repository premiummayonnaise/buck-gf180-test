v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 310 -360 600 -360 {lab=#net1}
N 270 -330 270 -250 {lab=#net1}
N 320 -360 320 -320 {lab=#net1}
N 320 -320 320 -300 {lab=#net1}
N 270 -300 320 -300 {lab=#net1}
N 270 -480 270 -390 {lab=VDD}
N 270 -480 640 -480 {lab=VDD}
N 770 -480 770 -390 {lab=VDD}
N 520 -480 520 -450 {lab=VDD}
N 370 -480 370 -450 {lab=VDD}
N 410 -450 480 -450 {lab=IBIAS_20uA}
N 520 -420 520 -350 {lab=#net2}
N 370 -420 370 -390 {lab=IBIAS_20uA}
N 370 -410 450 -410 {lab=IBIAS_20uA}
N 450 -450 450 -410 {lab=IBIAS_20uA}
N 380 -320 540 -320 {lab=VDD}
N 540 -320 670 -320 {lab=VDD}
N 540 -350 670 -350 {lab=#net2}
N 640 -480 770 -480 {lab=VDD}
N 600 -360 730 -360 {lab=#net1}
N 380 -350 540 -350 {lab=#net2}
N 600 -150 630 -150 {lab=#net3}
N 670 -220 670 -180 {lab=#net3}
N 670 -290 670 -220 {lab=#net3}
N 380 -220 380 -180 {lab=#net4}
N 380 -290 380 -220 {lab=#net4}
N 310 -220 380 -220 {lab=#net4}
N 670 -220 730 -220 {lab=#net3}
N 560 -220 670 -220 {lab=#net3}
N 490 -180 560 -220 {lab=#net3}
N 380 -220 490 -220 {lab=#net4}
N 490 -220 560 -180 {lab=#net4}
N 610 -220 610 -150 {lab=#net3}
N 420 -150 450 -150 {lab=#net4}
N 440 -220 440 -150 {lab=#net4}
N 560 -150 560 -120 {lab=VSS}
N 490 -150 490 -120 {lab=VSS}
N 670 -150 670 -120 {lab=VSS}
N 380 -150 380 -120 {lab=VSS}
N 270 -220 270 -120 {lab=VSS}
N 770 -220 770 -120 {lab=VSS}
N 270 -120 770 -120 {lab=VSS}
N 770 -330 770 -250 {lab=OUT}
N 770 -390 770 -360 {lab=VDD}
N 270 -390 270 -360 {lab=VDD}
N 340 -320 340 -290 {lab=VIN}
N 710 -320 710 -290 {lab=VREF}
N 770 -290 780 -290 {lab=OUT}
N 200 -480 270 -480 {lab=VDD}
N 190 -120 270 -120 {lab=VSS}
C {symbols/pfet_05v0.sym} 500 -450 0 0 {name=M1
L=1u
W=11.8u
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
C {symbols/pfet_05v0.sym} 390 -450 0 1 {name=M2
L=1u
W=11.8u
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
C {symbols/pfet_05v0.sym} 290 -360 0 1 {name=M3
L=1u
W=11.8u
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
C {symbols/pfet_05v0.sym} 750 -360 0 0 {name=M4
L=1u
W=11.8u
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
C {symbols/pfet_05v0.sym} 360 -320 0 0 {name=M5
L=1u
W=11.21u
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
C {symbols/pfet_05v0.sym} 690 -320 0 1 {name=M6
L=1u
W=11.21u
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
C {symbols/nfet_05v0.sym} 650 -150 0 0 {name=M7
L=1u
W=6.78u
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
C {symbols/nfet_05v0.sym} 580 -150 0 1 {name=M8
L=1u
W=27.12u
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
C {symbols/nfet_05v0.sym} 470 -150 0 0 {name=M9
L=1u
W=27.12u
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
C {symbols/nfet_05v0.sym} 400 -150 0 1 {name=M10
L=1u
W=6.78u
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
C {symbols/nfet_05v0.sym} 290 -220 0 1 {name=M11
L=1u
W=6.78u
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
C {symbols/nfet_05v0.sym} 750 -220 0 0 {name=M12
L=1u
W=6.78u
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
C {ipin.sym} 340 -290 0 0 {name=p1 lab=VIN}
C {ipin.sym} 710 -290 0 1 {name=p2 lab=VREF}
C {opin.sym} 780 -290 0 0 {name=p3 lab=OUT}
C {lab_wire.sym} 520 -320 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {ipin.sym} 370 -390 0 1 {name=p5 lab=IBIAS_20uA}
C {iopin.sym} 200 -480 0 1 {name=p6 lab=VDD}
C {iopin.sym} 190 -120 0 1 {name=p7 lab=VSS}
