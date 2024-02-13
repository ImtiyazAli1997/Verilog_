module tb;
	reg clk;
	reg rst;
	wire [4:0] cnt;
	always #5 clk =~clk;
	
	mod30 uut (clk,rst,cnt);
	
	initial begin
		clk=0;rst=0;
		#3 rst=1;
		#4 rst=0;
		
		#400 $finish;
	end
	
endmodule