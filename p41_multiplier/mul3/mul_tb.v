module tb;

	reg [2:0] in1,in2;
	wire [5:0] out_mul;
	integer i;
	multiplier_3bit m4b(.a(in1),.b(in2),.y(out_mul));
	
	initial begin
		for (i=0;i<5;i=i+1) begin
			{in1,in2}=$random;
			#1;
			$display(" %d * %d = %d",in1,in2,out_mul);
		end
		{in1,in2}=6'hFF;
		#1;
			$display(" %d * %d = %d",in1,in2,out_mul);
		
	end
endmodule