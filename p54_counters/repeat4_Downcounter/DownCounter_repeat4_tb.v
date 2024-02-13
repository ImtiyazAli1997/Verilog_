module tb;
	reg clk,rst;
	
	wire [2:0] cnt;
	
	DownCounter_repeat4 uut(clk,rst,cnt);
	
	always #5 clk =~clk;
	
	initial begin
	clk=0;rst=1;
	#3 rst=0;
	
	#(10*120) $finish;
	end
	
endmodule
	