module comp8(a,b,gt,eq,lt);
	
	parameter Data_bits =8;
	
	input [Data_bits-1:0] a,b;
	output gt,eq,lt;
	
	assign gt =(a>b);
	assign lt = (a<b);
	assign eq=(a==b);
	
endmodule
	