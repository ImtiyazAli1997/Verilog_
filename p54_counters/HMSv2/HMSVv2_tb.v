module tb;
	reg clk,rst;
	
	wire[4:0] hrs;
	wire [5:0] mins, sec;
	
	HRSv2 uut (clk,rst,hrs,mins,sec);
	
	always #5 clk =~clk;
	
	initial begin
	clk=0;rst=1;
	#3 rst=0;
	
	#(10*60*60*25) $finish;
	end
	
endmodule
	