// counter sequence 0,1,2..8,9,11,13,15,0
//this counter increments +1 till 9 and +2 after 9
// for values greater than 8 it increments with+2

module mod16 (clk,rst,cnt);
	input rst,clk;
	output reg[3:0] cnt;
	
	wire [3:0] b2,cnt_next,incr;
	
	
	always@(posedge clk) begin
		if(rst)
			cnt<=0;
		else
			cnt<= cnt_next;
	end
	
	`ifdef M1
	assign cnt_next=(cnt==15)?0:b2;
	
	assign b2=(cnt>8)?cnt+2:cnt+1;
	`endif
	
	`ifdef M2
	
	assign cnt_next =(cnt==15)?0:b2;

	assign b2=cnt+incr;
	
	assign incr= (cnt>8)?2:1;
	`endif
	
endmodule