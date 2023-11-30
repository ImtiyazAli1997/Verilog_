module mux2by1_16D(i1,i0,s,y);
	parameter n=16;
	input [n-1:0] i1,i0;
	output [n-1:0] y;
	input s;
	
	assign y=s?i1:i0;
	
endmodule

module comp8(a,b,gt,eq,lt);
	
	parameter Data_bits =8;
	
	input [Data_bits-1:0] a,b;
	output gt,eq,lt;
	
	assign gt =(a>b);
	assign lt = (a<b);
	assign eq=(a==b);
	
endmodule

module minmax (a,b,min,max);
	input [7:0] a,b;
	output [7:0] min,max;
	
	wire gt,eq,lt;
	
	comp8 d1 (a,b,gt,eq,lt);
	
	mux2by1_16D d2(.i1({a,b}),.i0({b,a}),.s(gt),.y({max,min}));
	
endmodule


	
	
	
	
	
	
	