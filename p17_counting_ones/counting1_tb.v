module tb;
	reg [7:0] d;
	wire [3:0] y;
	
	counting_ones dut(.d_in(d), .count1(y));
	
	initial begin
		
		repeat(15) begin
			d=$random;
			#1 $display("d= %4d = %8b ones=%0d",d,d,y);		//instead of 8b use ob , b and check whats the difference
		end
	end
	
endmodule