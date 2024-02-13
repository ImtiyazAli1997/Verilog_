module tb;
	reg clk,async_rst;
	
	wire [3:0] units,tens,hundreds;
	
	counter3 uut(clk,async_rst,units,tens,hundreds);
	
	always #5 clk =~clk;
	
	initial begin
	clk=0;async_rst=1;
	#2 async_rst=0;
	
	#(10*1100) $finish;
	end
	
endmodule
	