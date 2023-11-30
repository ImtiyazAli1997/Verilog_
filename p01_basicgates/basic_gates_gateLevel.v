module basic_gates_G(
input a,
input b,
output [6:0] y);

	and a1(y[6],a,b);
	or o1(y[5],a,b);

	nand n1(y[4],a,b);
	nor n2(y[3],a,b);

	xor x1(y[2],a,b);
	xnor x2(y[1],a,b);

	not n3(y[0],a);

endmodule