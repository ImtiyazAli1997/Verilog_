module tb;
	reg clk,rst;
	wire[2:0] cnt;
	
	cnt5_cnt6 uut(clk,rst,cnt);
	
	always #5 clk=~clk;
	
	initial begin
		clk=0;rst=1;
		#2 rst=0;
		#(10*25) $finish;
	end
	
endmodule