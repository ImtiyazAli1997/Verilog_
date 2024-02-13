//counter sequence 0,1,2,3,4,5,6,7,6,5,4,3,2,1
//up_down #(.UP_LIMIT(50),.N(6))uut(clk,rst,cnt);
module up_down(clk,rst,cnt);
	parameter UP_LIMIT=7;
	parameter N=3;
	input clk,rst;
	output reg [N-1:0] cnt;
	
	enum {UP,DOWN} state;
	
	
	always@(posedge clk, posedge rst) begin
		if(rst)		state<=UP;
		else		
			case(state)
				UP:		state<=(cnt==UP_LIMIT-1)?DOWN:UP;
				DOWN:	state<=(cnt==1)?UP:DOWN;
			endcase
	end
		
		
	always@(posedge clk, posedge rst) begin
		if(rst)		cnt<=0;
		else	begin
			case(state)
				UP:		cnt<=cnt+1;//(cnt==7)?0:cnt+1;
				DOWN:	cnt<=cnt-1;//(cnt==0)?1:cnt-1;
			endcase
		end
	end
	
endmodule