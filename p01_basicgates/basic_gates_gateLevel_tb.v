module basic_gates_tb;

	reg in1,in2;
	wire [6:0] out;

	basic_gates_G b1 ( .y(out), .b(in2),.a(in1));

	initial begin
		$monitor (" %b  %b  %b",in1,in2,out);
		{in1,in2}=2'b00; #10;
		{in1,in2}=2'b01; #10;
		{in1,in2}=2'b10; #10;
		{in1,in2}=2'b11; #10;
	end
endmodule
		