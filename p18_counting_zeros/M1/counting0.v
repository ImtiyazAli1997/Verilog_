module counting_zeros (d_in, count0);
	input [7:0] d_in;
	output [3:0] count0;
	
	wire [7:0] d_bar;
	
	assign d_bar=~d_in;
	
	counting_ones m1(.d_in(d_bar), .count1(count0));
	
endmodule