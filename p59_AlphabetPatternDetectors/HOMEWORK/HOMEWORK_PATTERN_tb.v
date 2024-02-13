module tb;
	reg clk,rst;
	wire eurika;
	reg[7:0] letter="";
	
	always #5 clk=~clk;
	
	home_Work_pattern uut(clk,rst,letter,eurika);
	
	initial begin
		clk=0;rst=1;letter<="M";
		#2 rst=0;
		repeat(5) @(posedge clk);
		
		letter<="H";@(posedge clk);
		letter<="O";@(posedge clk);
		letter<="M";@(posedge clk);
		letter<="E";@(posedge clk);
		letter<="W";@(posedge clk);
		letter<="O";@(posedge clk);
		letter<="R";@(posedge clk);
		letter<="K";@(posedge clk);
		letter<="K";@(posedge clk);
		
		letter<="P";@(posedge clk);
		$finish;
	end
	
endmodule
	
		