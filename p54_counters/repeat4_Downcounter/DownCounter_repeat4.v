//counter sequence 0,1,2,3,4,5,6,7,6,5,4,3,2,1
// mod 5 followed by mod6


module DownCounter_repeat4(clk,rst,cnt);
	input clk,rst;
	output reg [2:0] cnt;
	
	enum {UP,DOWN,F4,S4} state;
	
	
	always@(posedge clk or posedge rst) begin
		if(rst)		state<=UP;
		else begin
			case(state)
				UP:		state<=(cnt==6)?DOWN:UP;
				F4:		state<=S4;
				S4:		state<=DOWN;
				DOWN:	begin
							case(cnt)
								1:	state<=UP;
								5:	state<=F4;
								default: state<=DOWN;
							endcase
						end			
			endcase
		end
	end
	
	always@(posedge clk, posedge rst) begin	
		if(rst)	cnt<=0;
		else begin
			case(state)
				UP:		cnt<=cnt+1;
				DOWN:	cnt<=cnt-1;
				F4:		cnt<=4;
				S4:		cnt<=3;
			endcase
		end
	end
	
endmodule