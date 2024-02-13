//counter3 sequence 0,1,2,3..98
//in this sequence we skip the multiples of 9

module counter3 (clk,rst,cnt);
	input clk, rst;
	output reg [6:0] cnt;
	
	always@(posedge clk, posedge rst) begin
		if(rst)		cnt<=0;
		else begin
			case(cnt)
				98: cnt<=0;
				8,17,26,35,44,62,71,80,89:	cnt<=cnt+2;
					//9,18,27,36,45,63,72,81,90 are skipped
				default: cnt<=cnt+1;
			endcase
		end
	end

endmodule
				
				