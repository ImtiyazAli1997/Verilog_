// 4Q ripple carry adder 4 bit using 4 Full adders	
module rca ( 
		input [3:0] a,
		input [3:0] b,
		input c_in,
		
		output c_out,
		output [3:0] sum
	);
	
	FA F1 (
			.a(a[0]),
			.b(b[0]),
			.c_in(c_in),
			.sum(sum[0]),
			.c_out(w1)
		);
	FA F2 (
			.a(a[1]),
			.b(b[1]),
			.c_in(w1),
			.sum(sum[1]),
			.c_out(w2)
		);
	FA F3 (
			.a(a[2]),
			.b(b[2]),
			.c_in(w2),
			.sum(sum[2]),
			.c_out(w3)
		);
	FA F4 (
			.a(a[3]),
			.b(b[3]),
			.c_in(w3),
			.sum(sum[3]),
			.c_out(c_out)
		);

endmodule