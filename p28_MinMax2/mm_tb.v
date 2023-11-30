module tb;
	reg [7:0] a,b;
	wire [7:0] min,max;
	
	minmax dut5_01(a,b,min,max);
	
	initial begin
		repeat (10) begin
			{a,b}=$random;
			#1;
			$display("a=%0d \t b=%0d \t min = %0d \tmax= %0d",a,b,min,max);
		end
	end
endmodule
		
	