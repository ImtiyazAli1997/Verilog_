module clock_12 (clk,async_rst,hours,minutes,seconds);
	input clk ,async_rst;
	//as seconds and minutes take max of 60 value =(11_1100) in binary so 6 bits
	output reg [5:0]	seconds,minutes;
	//as hours take max vallue of 12 which is (1100) so 4 bits
	output reg [3:0] hours;
	
	wire [5:0] d1,d2,incr_min;
	wire [3:0] d3,incr_hours;
	
	always @(posedge clk, posedge async_rst) begin
		if(async_rst)	seconds<=0;
		else			seconds<=d1;
	end
	
	always @(posedge clk, posedge async_rst) begin
		if(async_rst)	minutes<=0;
		else			minutes<=d2;
	end
	
	always @(posedge clk, posedge async_rst) begin
		if(async_rst)	hours<=0;
		else			hours<=d3;
	end
	
	assign d1=(seconds ==59)?0:seconds+1;
	
	assign d2=(seconds ==59)?incr_min: minutes;
	
	assign incr_min = (minutes==59)?0:minutes+1;
	
	
	assign d3 =(minutes ==59 && seconds ==59)?incr_hours : hours;
	
	assign incr_hours=(hours==11)?0:hours+1;
	
endmodule
	