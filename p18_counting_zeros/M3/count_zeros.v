module count_zeros_m3 (in,y);
	input [7:0] in;
	output [3:0] y;
	
	wire [3:0] ones_count;
	
	count_ones co1(.y(ones_count),.i(in));
	sub4  sb1( 		.a(4'd8),	.b(ones_count),	.diff(y)	);
	
endmodule