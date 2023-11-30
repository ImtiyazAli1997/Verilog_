module tb;
	reg [3:0] a,b;
	wire gt,lt,aeq,eq;
	
	
	comp_out4 uut ( a,b, gt,aeq,eq,lt);
	
	initial begin
		repeat (20) begin
			{a,b}=$random;
			#1;
			//$display (" %d : %d  %b%b%b%b",a,b,gt,aeq,eq,lt);
			case(1)
			gt: $display (" %d : %d  a>b %b%b%b%b ",a,b,gt,aeq,eq,lt);
			lt: $display (" %d : %d  a<b %b%b%b%b ",a,b,gt,aeq,eq,lt);
			aeq: $display (" %d : %d  a aeq b %b%b%b%b diff = %0d ",a,b,gt,aeq,eq,lt,uut.diff);
			eq: $display (" %d : %d  %b%b%b%b a=b ",a,b,gt,aeq,eq,lt);
			
			endcase
		end
	end
endmodule