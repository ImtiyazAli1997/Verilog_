module tb;
	reg clk=1'b0; always #5 clk=~clk;
	reg rst=1'b1; initial #2 rst=0;
	reg [7:0] letter;
	wire eurika;
	
	name_patter uut(clk,rst,letter,eurika);
	
	initial begin
		letter<="p";
		repeat (5) @(posedge clk);
		letter<="I";@(posedge clk);
		letter<="M";@(posedge clk);
		letter<="T";@(posedge clk);
		letter<="I";@(posedge clk);
		letter<="M";@(posedge clk);
		letter<="T";@(posedge clk);
		letter<="I";@(posedge clk);
		letter<="Y";@(posedge clk);
		letter<="A";@(posedge clk);
		letter<="Z";@(posedge clk);
		letter<="A";@(posedge clk);
		letter<="I";@(posedge clk);
		$finish;
	end

endmodule