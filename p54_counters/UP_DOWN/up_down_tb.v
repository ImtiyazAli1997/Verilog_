module tb;
	reg clk,rst;
	
	wire [2:0] cnt;
	
	up_down5 uut(clk,rst,cnt);
	
	//up_down #(.UP_LIMIT(50),.N(6))uut(clk,rst,cnt);
	//change cnt wire declaration according to N vslue passed to module
	
	
	
	always #5 clk =~clk;
	
	initial begin
	clk=0;rst=1;
	#3 rst=0;
	
	#(10*120) $finish;
	end
	
endmodule
	