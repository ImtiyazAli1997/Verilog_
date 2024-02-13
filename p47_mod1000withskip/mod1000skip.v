//counter to skip 501 to 600
//0,1,2,3,....498,499,500,601,602...998,999,0,1,2,3,....498,499,500,601,602...998,999..

module mod1000_skip501_600 (clk,rst,cnt);
	input clk,rst;
	
	output reg [9:0] cnt;
	
	wire [9:0] cntplus1, b2,cnt_next;
	
	wire eq999,eq500;
	
	always@(posedge clk) begin
		if(rst)
			cnt<=0;
		else
			cnt<=cnt_next;
	end
	
	assign cnt_next=(eq999)?0:b2;
	
	assign eq999= (cnt==999);
	
	assign b2=(eq500)?601:cntplus1;
	
	assign eq500=(cnt==500);
	
	assign cntplus1=cnt+1;
	
endmodule