module mod30 (clk,rst,cnt);

	input clk,rst;
	output reg[4:0] cnt;
	
	
	wire [4:0] tom,cntplus1;
	
	always @(posedge clk) begin
		if(rst)
			cnt<=0;
		else
			cnt<=tom;
	end
	
	assign eq29 = (cnt==29);
	
	assign tom = (eq29)?0:cntplus1;
	
	
	assign cntplus1=cnt+1;
	
endmodule
	