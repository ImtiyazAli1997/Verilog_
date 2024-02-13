module tb;
	reg clk=0; always #5 clk=!clk;
	reg mode,sel,inc,dec;
	reg rst=1; initial #2 rst=0;

	wire [4:0] hrs;
	wire [5:0] mins,sec;
	watch uut (clk,rst,mode,sel,inc,dec,hrs,mins,sec);

		//`include "testcase1.v"
		//`include "testcase2.v"
		//`include "testcase3.v"
		//`include "testcase4.v"
		`include "testcase5.v"
	
	
	
	
	
	
	
	/*
	initial begin
		#(59*10);
		modepulse;
		#200;
		$finish;
	end
	*/	
		
		
	`include "tasks.v"

	

	

endmodule