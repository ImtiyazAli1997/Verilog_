module tb;
	parameter SIZE=4;
	reg [SIZE-1:0] a,b;
	
	wire [2*SIZE-1:0] y;
	
	integer z= 2**(2*(SIZE-1));//max out for max inputs
	mulN dut(a,b,y);
	
	initial begin
		repeat (20) begin
			a=$random;
			b=$random;
			#1
			$display("%0d * %0d =%0d",a,b,y);
		end
		{a,b}=2*SIZE{1'b1};	//max inputs
		#1
		$display("%0d * %0d =%0d",a,b,y);
		
		
		`ifdef DEBUG
		$display ("%0b \n %0b",y,z);
		`endif
		
	end
	
	


endmodule