GNET=gnetlist -L ../.. -g spice-noqsi
SPICE=ngspice

%.net : %.sch
	$(GNET) $< -o $@

.PHONY : simulation

simulation : test_inverter.net CMOS_Inverter.net
	$(SPICE) test_inverter.net

clean : 
	rm -f test_inverter.net CMOS_Inverter.net \#* *~
