module tb;
	reg clk;
	reg rst;
	wire [9:0] cnt;
	always #5 clk =~clk;
	
	mod1000 uut (clk,rst,cnt);
	
	initial begin
		clk=0;rst=0;
		#3 rst=1;
		#4 rst=0;
		
		#(10*1100) $finish;
	end
	
endmodule