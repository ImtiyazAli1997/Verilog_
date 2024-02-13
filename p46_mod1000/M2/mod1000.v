// mod1000 using dataflow modeling

module mod1000 (clk,rst,cnt);

	input clk,rst;
	output reg[9:0] cnt;
	
	
	wire [9:0] tom,cntplus1;
	
	always @(posedge clk) begin
		if(rst)
			cnt<=0;
		else
			cnt<=tom;
	end
	
	assign eq999 = (cnt==999);
	
	assign tom = (eq999)?0:cntplus1;
	
	
	assign cntplus1=cnt+1;
	
endmodule
	