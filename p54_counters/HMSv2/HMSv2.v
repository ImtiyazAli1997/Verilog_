module HRSv2 (clk,rst,hrs,mins,sec);
	input clk,rst;
	output reg [4:0] hrs;
	output reg [5:0] mins, sec;
	
	parameter FN=59;
	localparam TT=23;
	
	always@(posedge clk, posedge rst) begin
		if(rst)		sec <=0;
		else		sec<= (sec==FN)?0:sec+1;
	end
	
	always@(posedge clk, posedge rst) begin
		if(rst)		mins <=0;
		else		
			if(sec==FN)	mins <=(mins ==FN)?0:mins+1;
			else		mins<=mins;
			
	end
	
	always@(posedge clk, posedge rst) begin
		if(rst)		hrs <=0;
		else begin
				if (mins==FN && sec==FN)	hrs<=(hrs==TT)?0:hrs+1;
				else						hrs<=hrs;
		end
	end
	
endmodule