module tb;
	reg clk,rst;
	
	wire [6:0] cnt;
	
	counter4 uut (clk,rst,cnt);
	
	always #5 clk =~clk;
	
	initial begin
	clk=0;rst=1;
	#3 rst=0;
	
	#(10*150) $finish;
	end
	
endmodule
	