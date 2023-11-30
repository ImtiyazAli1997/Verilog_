// 3Q Full adder using half adders
//FA m0(  .cout(c1),   .sum(sum[0]),   .a(a[0]),  .b(b[0]) , .c(1'b0));
module FA (
		input a,
		input b,
		input c,
	
		output sum,
		output cout
	);
	
		HA h1( 
			.a(a),
			.b(b),
			.c_out(w2),
			.sum(w1)
		);
		
		HA h2( 
			.a(w1),
			.b(c),
			.c_out(w3),
			.sum(sum)
		);
		
		or o1(cout,w2,w3);

endmodule

	
		
		