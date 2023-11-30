module tb;
	reg [3:0] i;
	wire [1:0] y;

	MSB_priority_encoder_4to2  z1(.y(y),.i(i));
	
	initial begin
		repeat (12) begin
			i=$random;
			#1 $display("i=%b y=%d",i,y);
		end
	end
	
endmodule