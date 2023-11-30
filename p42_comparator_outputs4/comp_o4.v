module comp_out4 (input [3:0] a,b, output gt,aeq,eq,lt);
	
	wire [3:0] min,max,diff,bus1;
	
	assign {max,min} = (a>b)?{a,b}:{b,a};
	
	assign diff = max-min;
	
	assign temp = (diff>3);
	
	assign gt1 = a>b;
	assign lt1 = a<b;
	assign eq1 = (a==b);
	
	assign {gt,aeq,eq,lt} = eq1? 4'b0010:bus1;
	
	assign bus1=temp?{gt1,1'b0,eq1,lt1}:4'b0100;
	
	


endmodule