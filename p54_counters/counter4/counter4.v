// down counter 99 to 0

module counter4 (clk,rst,cnt);
	input clk,rst;
	output reg [6:0] cnt;
	
	always@(posedge clk, posedge rst) begin
		if(rst)		cnt<=99;
		else begin
			if(cnt==0)		cnt<=99;
			else			cnt<=cnt-1;
		end
	end
	
endmodule