 //2Q. gate level implementation of half adder [test bench)
module tb;

	reg in1,in2;
	wire  Borrow;
	wire Diff;

	HS h1 ( .Diff(Diff), .b(in2),.a(in1),.Borrow(Borrow));

	initial begin
		$monitor (" %b - %b = %b  with borrow %d",in1,in2,Diff,Borrow);
		{in1,in2}=2'b00; #10;
		{in1,in2}=2'b01; #10;
		{in1,in2}=2'b10; #10;
		{in1,in2}=2'b11; #10;
	end
endmodule
		