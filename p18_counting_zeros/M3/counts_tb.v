module tb_obp;
	
	reg [7:0] in;
	wire [3:0] zeros;
	
	count_zeros_m2 ck1(.y(zeros),.in(in));
	
	initial begin
		repeat(20) begin
			in=$random;
			#1;
			$display("in= %b  zeros= %d",in,zeros);
		end
		
	end
endmodule