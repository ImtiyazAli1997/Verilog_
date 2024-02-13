//counter sequence 0,1,2,3,4,5,4,3,2,1

module up_down5(clk,rst,cnt);
	input clk,rst;
	output reg [2:0] cnt;
	
	enum {UP,DOWN} state;
	
	always@(posedge clk, posedge rst) begin
		if(rst)		state<=UP;
		else		
			case(state)
				UP:		state<=(cnt==4)?DOWN:UP;
				DOWN:	state<=(cnt==1)?UP:DOWN;
			endcase
	end
		
		
	always@(posedge clk, posedge rst) begin
		if(rst)		cnt<=0;
		else	begin
			case(state)
				UP:		cnt<=cnt+1;
				DOWN:	cnt<=cnt-1;
			endcase
		end
	end
	
endmodule