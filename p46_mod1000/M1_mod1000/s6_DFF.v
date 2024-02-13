module dff (output reg q, input clk,rst,d);
	
	always@(posedge clk or posedge rst) begin
		if(rst)
			q<=0;
		else
			q<=d;
	end
	
	
	
	
endmodule