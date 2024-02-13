module counter3 (clk,async_rst,units,tens,hundreds);
	input clk,async_rst;
	output reg [3:0] units,tens,hundreds;
	
	wire [3:0] incr_tens,incr_hundr, d1,d2,d3;
	
	always @(posedge clk, posedge async_rst) begin
		if(async_rst)	units<=0;
		else			units<=d1;
	end
	
	always @(posedge clk, posedge async_rst) begin
		if(async_rst)	tens<=0;
		else			tens<=d2;
	end
	
	always @(posedge clk, posedge async_rst) begin
		if(async_rst)	hundreds<=0;
		else			hundreds<=d3;
	end
	
	assign d1=(units==9)?0:units+1;
	
	assign d2= (units==9)?incr_tens:tens;
	
	assign incr_tens =(tens==9)?0:tens+1;
	
	assign d3 = (tens ==9 && units ==9)? incr_hundr : hundreds;
	
	assign incr_hundr = (hundreds ==9)?0: hundreds+1;
	
endmodule
	
	
	