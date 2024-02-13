// counts from 0 to 999 
//999 in binary takes 10 bits 999 =(11_1110_0111)2
//so cnt has to be 10 bits
module mod1000 (input clk, rst, output [9:0] cnt);
	
	wire[9:0] y,cnt_plus1;
	
	wire eq999;
	
	
	
	mux10 g2(.y(y),.s(eq999),.i1(10'd0),.i0(cnt_plus1));
	
	
	add10 g3(.sum({dummy,cnt_plus1}),.a(cnt),.b(10'd1));
	
	
	//999 =(11_1110_0111)2 bit 3 and 4 are 0
	and g4(eq999,cnt[9],cnt[8],cnt[7],cnt[6],cnt[5],cnt4bar,cnt3bar,cnt[2],cnt[1],cnt[0]);
	
	not g5(cnt4bar,cnt[4]);
	not g6(cnt3bar,cnt[3]);
	
	
	dff d0( .q(cnt[0]),.clk(clk),.rst(rst),.d(y[0]));
	dff d1( .q(cnt[1]),.clk(clk),.rst(rst),.d(y[1]));
	dff d2( .q(cnt[2]),.clk(clk),.rst(rst),.d(y[2]));
	dff d3( .q(cnt[3]),.clk(clk),.rst(rst),.d(y[3]));
	dff d4( .q(cnt[4]),.clk(clk),.rst(rst),.d(y[4]));
	dff d5( .q(cnt[5]),.clk(clk),.rst(rst),.d(y[5]));
	dff d6( .q(cnt[6]),.clk(clk),.rst(rst),.d(y[6]));
	dff d7( .q(cnt[7]),.clk(clk),.rst(rst),.d(y[7]));
	dff d8( .q(cnt[8]),.clk(clk),.rst(rst),.d(y[8]));
	dff d9( .q(cnt[9]),.clk(clk),.rst(rst),.d(y[9]));
	//dff d10( .q(cnt[]),clk(clk),rst(rst),d(y[]));
endmodule
	
	