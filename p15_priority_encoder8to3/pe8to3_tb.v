module tb;
	reg [7:0] i;
	wire [2:0] y;

	_8to3MSBprioriyencoder  z1(.y(y),.i(i));
	
	initial begin
		repeat (12) begin
			i=$random;
			#1 $display("i=%b y=%d",i,y);
		end
	end
	
endmodule