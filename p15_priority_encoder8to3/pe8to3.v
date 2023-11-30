
// MSB priority encoder 8 to 3
module _8to3MSBprioriyencoder (y,i);
	input [7:0] i;
	output [2:0] y;
	wire [2:0] w0,w1,w2,w3,w4,w5,w6;
	
	/* instance
		_8to3MSBprioriyencoder pe1(.y(),.i());
	*/
	
	mux2x1_3bit z0 (.y(w0), 	.s(i[0]),	.i1(3'd0),	.i0(3'd0));
	mux2x1_3bit z1 (.y(w1), 	.s(i[1]),	.i1(3'd1),	.i0(w0));
	mux2x1_3bit z2 (.y(w2), 	.s(i[2]),	.i1(3'd2),	.i0(w1));
	mux2x1_3bit z3 (.y(w3), 	.s(i[3]),	.i1(3'd3),	.i0(w2));
	mux2x1_3bit z4 (.y(w4), 	.s(i[4]),	.i1(3'd4),	.i0(w3));
	mux2x1_3bit z5 (.y(w5), 	.s(i[5]),	.i1(3'd5),	.i0(w4));	
	mux2x1_3bit z6 (.y(w6), 	.s(i[6]),	.i1(3'd6),	.i0(w5));
	mux2x1_3bit z7 (.y(y), 		.s(i[7]),	.i1(3'd7),	.i0(w6));
	
endmodule