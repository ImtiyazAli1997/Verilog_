module tb;
	reg [7:0] a,b;
	wire gt,eq,lt;
	
	comp8 uut1 (a,b,gt,eq,lt);
	
	initial begin
		repeat (20) begin	
			{a,b}=$random;
			#1;
			$display("a= %d b= %d : %b %b %b",a,b,gt,eq,lt);
		end
		a=$randaom;
		b=a;
		#1;
			$display("a= %d b= %d : %b %b %b",a,b,gt,eq,lt);
	end
endmodule