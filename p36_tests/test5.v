//test5 -> divide and quotient operator
module tb5;
	// / is quotient % is remainder
	
	reg [2:0] a,b;
	
	initial begin	
		repeat(50) begin	
			{a,b}=$random;
			#1;
			$display("a= % b=%d q=%d r=%d",a,b,a/b,a%b);
		end
	end
endmodule
		