module tb;
	reg clk,async_rst;
	
	wire [5:0] minutes,seconds;
	wire [3:0] hours;
	
	clock_12 uut (clk,async_rst,hours,minutes,seconds);
	
	always #5 clk =~clk;
	
	initial begin
	clk=0;async_rst=1;
	#2 async_rst=0;
	
	#(10*60*60*14) $finish;
	end
	
endmodule
	