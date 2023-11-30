 //4Q. gate level implementation of ripple carry adder [test bench) use run4.do
module tb;

	reg [3:0] in1,in2;
	reg c_in;
	wire [3:0]  sum;
	wire carry;

	integer i,j;
	rca r1 ( 
			.a(in1),
			.b(in2),
			.c_in(c_in),
			.sum(sum),
			.c_out(carry)
	);

	initial begin
		$monitor (" %d + %d + %d = %d",in1,in2,c_in,{carry,sum});
		c_in=1'b0;
		repeat(2) begin
			for (i=0;i<16;i=i+1) begin
				in1=i;
				for (j=0;j<16;j=j+1) begin
				in2=j;
				#10;
				end
			end
			#10;c_in=1'b1;
		end
	end
endmodule
		
		