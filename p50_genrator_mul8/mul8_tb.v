module tb;
	reg [7:0] a,b;
	
	wire [15:0] y;
	
	integer z= 65025;
	mul8_v11 dut08_3(a,b,y);
	
	initial begin
		repeat (20) begin
			a=$random;
			b=$random;
			#1
			$display("%0d * %0d =%0d",a,b,y);
		end
		{a,b}=16'hFFFF;
		#1
		$display("%0d * %0d =%0d",a,b,y);
		
		
		`ifdef DEBUG
		$display ("%0b \n %0b",y,z);
		`endif
		
	end
	
	


endmodule