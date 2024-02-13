//sequence 0,0,.. REPEAT_LIMIT times
//1,1,1,.. REPEAT_LIMIT times
//2,2,2,...REPEAT_LIMIT times

//MAX_CNT,MAX_CNT,MAX_CNT,... REPEAT_LIMIT times
//0,0,.. REPEAT_LIMIT times

/*intance
counter2 #(.REPEAT_LIMIT(3),.MAX_CNT(26),.N(5)) INSTANCE_NAME (clk,rst,cnt);

*/
module counter2 (clk,rst,cnt);
	parameter REPEAT_LIMIT =5;		//how many time each cnt value has to be repeated
	parameter MAX_CNT=9;			// till what value cnt must count
	parameter N =4;					// number of bits required to reach max cnt value
	
	input clk,rst;
	output reg [N-1:0]cnt;
	
	
	
	reg[N-1:0] icnt;
	
	wire[N-1:0] d1,d2,b1;
	
	always@(posedge clk) begin
		if(rst)		cnt<=0;
		else		cnt<=d1;
	end
	
	always@(posedge clk) begin
		if(rst)		icnt<=1;
		else		icnt<=d2;
	end
	
	
	assign d1 = (icnt==REPEAT_LIMIT)? b1:cnt;
	
	assign b1 = (cnt==MAX_CNT)?0:cnt+1;		// this will decide till which value we want the cnt to repeat here it is 11
	
	assign d2 = (icnt==REPEAT_LIMIT)?1:icnt+1;
	
	
endmodule