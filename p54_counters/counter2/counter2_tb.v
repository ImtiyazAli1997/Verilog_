module tb;
	reg clk,rst;
	
	wire [4:0] cnt;
	
	counter2 #(.REPEAT_LIMIT(3),.MAX_CNT(26),.N(5)) uut (clk,rst,cnt);
	
	always #5 clk =~clk;
	
	initial begin
	clk=0;rst=1;
	#7 rst=0;
	
	#(10*400) $finish;
	end
	
endmodule
	