v 20130925 2
C 40000 40000 0 0 0 title-B.sym
C 45700 45000 1 0 0 vpulse-1.sym
{
T 46400 45650 5 10 1 1 0 0 1
refdes=V1
T 46400 45850 5 10 0 0 0 0 1
device=vpulse
T 46400 46050 5 10 0 0 0 0 1
footprint=none
T 42500 45350 5 10 1 1 0 0 1
value=pulse 0 'SUPPLY' 0 100p 100p 1.9n 4n
}
C 45900 44700 1 0 0 gnd-1.sym
N 46800 46700 46000 46700 4
{
T 46800 46700 5 10 0 1 0 0 1
netname=IN
}
N 46000 46700 46000 46200 4
N 49600 46700 47900 46700 4
{
T 48200 46700 5 10 0 0 0 0 1
netname=OUT
}
C 49800 45800 1 90 0 capacitor-1.sym
{
T 49100 46000 5 10 0 0 90 0 1
device=CAPACITOR
T 49300 46000 5 10 1 1 90 0 1
refdes=C1
T 48900 46000 5 10 0 0 90 0 1
symversion=0.1
T 49800 45800 5 10 1 1 0 0 1
value=200f
}
C 49500 45500 1 0 0 gnd-1.sym
C 42300 48200 1 0 0 spice-directive-1.sym
{
T 42400 48500 5 10 0 1 0 0 1
device=directive
T 42400 48600 5 10 1 1 0 0 1
refdes=A1
T 42300 48200 5 10 1 1 0 0 1
file=./simulation.cmd
}
C 45400 48300 1 0 0 spice-directive-1.sym
{
T 45500 48600 5 10 0 1 0 0 1
device=directive
T 45500 48700 5 10 1 1 0 0 1
refdes=A3
T 45400 48300 5 10 1 1 0 0 1
value=.PARAM SUPPLY=3v
}
C 42200 49400 1 0 0 spice-directive-1.sym
{
T 42300 49700 5 10 0 1 0 0 1
device=directive
T 42300 49800 5 10 1 1 0 0 1
refdes=A4
T 42200 49400 5 10 1 1 0 0 1
value=.options TEMP=25
}
C 45300 49400 1 0 0 spice-directive-1.sym
{
T 45400 49700 5 10 0 1 0 0 1
device=directive
T 45400 49800 5 10 1 1 0 0 1
refdes=A5
T 45300 49400 5 10 1 1 0 0 1
value=.options SCALE=1u
}
C 48000 49400 1 0 0 spice-directive-1.sym
{
T 48100 49700 5 10 0 1 0 0 1
device=directive
T 48100 49800 5 10 1 1 0 0 1
refdes=A6
T 48000 49200 5 10 1 1 0 0 2
value=.MODEL nch NMOS
.MODEL pch PMOS
}
C 46800 46400 1 0 0 INV1-1.sym
{
T 47200 47000 5 10 1 1 0 0 1
refdes=X1
T 47600 47100 5 10 0 0 0 0 1
symversion=1.0
T 47600 46400 5 10 0 0 0 0 1
footprint=none
T 46800 46400 5 10 0 0 0 0 1
source=CMOS_Inverter.sch
T 46800 46400 5 10 0 0 0 0 1
file=CMOS_Inverter.net
}
C 41700 42300 1 0 0 vdc-1.sym
{
T 42400 43150 5 10 0 0 0 0 1
device=VOLTAGE_SOURCE
T 42400 43350 5 10 0 0 0 0 1
footprint=none
T 42400 42950 5 10 1 1 0 0 1
refdes=Vd
T 42400 42750 5 10 1 1 0 0 1
value='SUPPLY'
}
C 41900 42000 1 0 0 gnd-1.sym
C 43500 42300 1 0 0 vdc-1.sym
{
T 44200 43150 5 10 0 0 0 0 1
device=VOLTAGE_SOURCE
T 44200 43350 5 10 0 0 0 0 1
footprint=none
T 44200 42950 5 10 1 1 0 0 1
refdes=Vs
T 44200 42750 5 10 1 1 0 0 1
value=0V
}
C 43700 42000 1 0 0 gnd-1.sym
N 43800 44300 43800 43500 4
{
T 43800 44300 5 10 1 1 0 0 1
netname=Vss
}
N 42000 44300 42000 43500 4
{
T 42000 44300 5 10 1 1 0 0 1
netname=Vdd
}
C 42300 47100 1 0 0 spice-directive-1.sym
{
T 42400 47400 5 10 0 1 0 0 1
device=directive
T 42400 47500 5 10 1 1 0 0 1
refdes=A2
T 42300 47100 5 10 1 1 0 0 1
value=.GLOBAL Vdd Vss
}
