 //6Q. gate level implementation of full subractor [test bench)
module tb;

	reg in1,in2,b_in;
	wire  d;
	wire b_out;

	integer i;
	FS f1 ( 
			.a(in1),
			.b(in2),
			.Borrow_in(b_in),
			.Difference(d),
			.Borrow_out(b_out)
	);

	initial begin
		$monitor (" %b - %b - %b = %b with borrow %b",in1,in2,b_in,d,b_out);
		for (i=0;i<8;i=i+1) begin
			{in1,in2,b_in}=i;
			#10;
		end
	end
endmodule
		