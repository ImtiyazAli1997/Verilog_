// counter sequence 0,1,2,3,4,0,.,2,3,4,5...
// mod 5 followed by mod6


module cnt5_cnt6(clk,rst,cnt);
	input clk,rst;
	output reg [2:0] cnt;
	
	enum {MOD5,MOD6} state;
	
	
	always@(posedge clk or posedge rst) begin
		if(rst)		state<=MOD5;
		else begin
			case(state)
				MOD5:	state<=(cnt==4)?MOD6:MOD5;
				MOD6:	state<=(cnt==5)?MOD5:MOD6;
			endcase
		end
	end
	
	always@(posedge clk, posedge rst) begin	
		if(rst)	cnt<=0;
		else begin
			case(state)
				MOD5:	cnt<=(cnt==4)?0:cnt+1;
				MOD6:	cnt<=(cnt==5)?0:cnt+1;
			endcase
		end
	end
	
endmodule