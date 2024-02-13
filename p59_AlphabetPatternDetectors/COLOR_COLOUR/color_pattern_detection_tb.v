module tb;
	reg clk=1'b0; always #5 clk=~clk;
	reg rst=1'b1; initial #2 rst=0;
	reg [7:0] letter;
	wire eurika;
	
	name_patter uut(clk,rst,letter,eurika);
	
	//`include"testcase1.v";
	`include"testcase2.v";
	

endmodule