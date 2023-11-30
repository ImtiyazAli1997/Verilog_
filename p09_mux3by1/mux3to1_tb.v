//testbench 2 by 1 mux use run5.do

module tb;
	reg [1:0]select;
	reg in0;
	reg in1;
	reg in2;
	wire out;
	integer i;
	
	mux3to1 m( 
			.S(select),
			.I0(in0),
			.I1(in1),
			.I2(in2),
			.y(out)
			);
			
	initial begin
		$monitor ("in0 =%b, in1= %b, in2 =%b select =%b , out = %b",in0,in1,in2,select,out);
		for(i=31;i>=0;i=i-1) begin
			{select,in0,in1,in2}=i;
			#10;
		end
	end
endmodule