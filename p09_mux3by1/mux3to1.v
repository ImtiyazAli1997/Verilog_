module mux3to1 (
	input [1:0]S,
	input I0,
	input I1,
	input I2,
	output y);
	
	mux2to1 m1(	.S(S[0]),
				.I0(I0),
				.I1(I1),
				.y(w1)
				);
	
	mux2to1 m2(	.S(S[1]),
				.I0(w1),
				.I1(I2),
				.y(y)
				);
				
endmodule