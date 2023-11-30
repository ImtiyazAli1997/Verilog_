module tb;
	reg clk,rst;
	wire q2,q1,q0;
	
	wire [2:0] cnt;
	
	always #5 clk=!clk;

	mod5 KABALI (clk,rst,q2,q1,q0);

	initial begin
		clk=0;
		rst=1;
		#2;
		
		rst=0;
		
		#200;
		
		$finish;
	end
	
	assign cnt = {q2,q1,q0};
endmodule