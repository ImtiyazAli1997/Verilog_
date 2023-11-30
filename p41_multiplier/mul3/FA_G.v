// 3Q Full adder using half adders

module FA (
		input a,
		input b,
		input c_in,
	
		output sum,
		output c_out
	);
	
		HA h1( 
			.a(a),
			.b(b),
			.c_out(w2),
			.sum(w1)
		);
		
		HA h2( 
			.a(w1),
			.b(c_in),
			.c_out(w3),
			.sum(sum)
		);
		
		or o1(c_out,w2,w3);

endmodule

	
		
		