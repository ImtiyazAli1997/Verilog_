 //2Q. gate level implementation of half adder [test bench)
module tb;

	reg in1,in2;
	wire  sum;
	wire carry;

	HA h1 ( .sum(sum), .b(in2),.a(in1),.c_out(carry));

	initial begin
		$monitor (" %b + %b = %b =%d",in1,in2,{carry,sum},{carry,sum});
		{in1,in2}=2'b00; #10;
		{in1,in2}=2'b01; #10;
		{in1,in2}=2'b10; #10;
		{in1,in2}=2'b11; #10;
	end
endmodule
		