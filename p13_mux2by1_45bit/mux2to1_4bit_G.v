//6Q implementation of 4 bit multiplex of 2 by 1 size using 1 bit mux2by1
module mux2to1_4bit (
	input S,
	input [3:0] I0,
	input [3:0] I1,
	output[3:0] y);
	
	mux2to1 m1( 
			.S(S),
			.I0(I0[0]),
			.I1(I1[0]),
			.y(y[0])
		);

	mux2to1 m2( 
			.S(S),
			.I0(I0[1]),
			.I1(I1[1]),
			.y(y[1])
		);

	mux2to1 m3( 
			.S(S),
			.I0(I0[2]),
			.I1(I1[2]),
			.y(y[2])
		);

	mux2to1 m4( 
			.S(S),
			.I0(I0[3]),
			.I1(I1[3]),
			.y(y[3])
		);

endmodule	
		
		