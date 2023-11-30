 //3Q. gate level implementation of full adder [test bench)
module tb;

	reg in1,in2,c_in;
	wire  sum;
	wire carry;

	integer i;
	FA f1 ( 
			.a(in1),
			.b(in2),
			.c_in(c_in),
			.sum(sum),
			.c_out(carry)
	);

	initial begin
		$monitor (" %b + %b + %b = %b = %d",in1,in2,c_in,{carry,sum},{carry,sum});
		for (i=0;i<8;i=i+1) begin
			{in1,in2,c_in}=i;
			#10;
		end
	end
endmodule
		