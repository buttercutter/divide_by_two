netlist:
	gnetlist -g spice-noqsi -o divide_by_two.net divide_by_two.sch

sim:
	ngspice -b -r divide_by_two.dat divide_by_two.net submicron.inc

view:
	gtkwave divide_by_two.dat

clean:
	rm *.net
