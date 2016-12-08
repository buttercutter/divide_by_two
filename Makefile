netlist:
	gnetlist -g spice-noqsi -o test_inverter.net test_inverter.sch

sim:
	ngspice -b -r test_inverter.dat test_inverter.net

view:
	gtkwave test_inverter.dat

clean:
	rm *.net
