module tb;
	reg clk,rst;
	
	wire [3:0] cnt;
	
	counter uut (clk,rst,cnt);
	
	always #5 clk =~clk;
	
	initial begin
	clk=0;rst=1;
	#7 rst=0;
	
	#(10*400) $finish;
	end
	
endmodule
	