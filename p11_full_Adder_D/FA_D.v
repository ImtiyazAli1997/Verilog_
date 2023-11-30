//3A. implementation fo Full adder using dataflow
module FA (
		input a,
		input b,
		input c_in,
	
		output sum,
		output c_out
	);
	
	//assign {c_out,sum}=a+b;
	
	assign sum = a^b^c_in;
	assign c_out = (a&b)+(b&c_in)+(c_in&a);
endmodule