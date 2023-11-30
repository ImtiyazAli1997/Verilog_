module tb;
	reg clk;
	wire q,q_bar;
	reg d;
	
	dff dut (q,q_bar,clk,d);
	
	always #50 clk=~clk;
	
	initial
		begin
			clk=0;		
			repeat(100) begin
				d=$random;
				#4;
			end
			#20 $finish;
			
		end
endmodule