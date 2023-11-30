module tb;
	reg a,b;
	wire gt,eq,lt;
	
	integer i;
	
	comp c1(a,b,gt,eq,lt);
	
	initial begin
		for (i=0;i<4;i=i+1) begin
			{a,b}=i;
			#1;
			$display("%b %b : %b %b %b",a,b,gt,eq,lt);
		end
	end
	
endmodule