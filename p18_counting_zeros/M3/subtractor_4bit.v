module sub4 (
	input [3:0] a,
	input [3:0] b,
	output [3:0]diff);
	
	/*
		sub4  sb1( 		.a(),	.b(),	.diff()	);
					4		4		4
	*/
	wire [3:0] b_bar;
	
	not n1(b_bar[0],b[0]);
	not n2(b_bar[1],b[1]);
	not n3(b_bar[2],b[2]);
	not n4(b_bar[3],b[3]);
	
	rca r1( .a(a),.b(b_bar),.c_in(1'b1),.c_out(w),.sum(diff));
	
endmodule