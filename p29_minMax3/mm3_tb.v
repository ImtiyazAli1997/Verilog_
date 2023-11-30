module tb;
	reg [7:0] a,b,c;
	wire [7:0] min,max,mid;
	
	mm3 dut5_02(a,b,c,min,mid,max);
	
	initial begin
		repeat (10) begin
			{a,b,c}=$random;
			#1;
			$display("a=%0d \t b=%0d \t c = %d \n min = %0d \t mid = %0d \t max= %0d",a,b,c,min,mid,max);
		end
	end
endmodule