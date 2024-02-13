  //sequence 0,0,0,0,0,1,1,1,1,1,2,2,2,2,2......,5,5,5,5,5
module counter(clk,rst,cnt);
	input clk,rst;
	output reg [3:0]cnt;
	
	reg[3:0] icnt;
	
	wire[3:0] d1,d2,b1;
	
	always@(posedge clk) begin
		if(rst)		cnt<=0;
		else		cnt<=d1;
	end
	
	always@(posedge clk) begin
		if(rst)		icnt<=1;
		else		icnt<=d2;
	end
	
	`ifdef M1
	assign d1 = (icnt==5)? cnt+1:cnt;
	
	assign d2 = (icnt==5)?1:icnt+1;
	`endif
	
	`ifdef M2
	assign d1 = (icnt==5)? b1:cnt;
	
	assign b1 = (cnt==11)?0:cnt+1;		// this will decide till which value we want the cnt to repeat here it is 11
	
	assign d2 = (icnt==5)?1:icnt+1;
	`endif
	
endmodule