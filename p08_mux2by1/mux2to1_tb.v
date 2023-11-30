//testbench 2 by 1 mux use run5.do

module tb;
	reg select;
	reg in0;
	reg in1;
	wire out;
	integer i;
	
	mux2to1 m1( 
			.S(select),
			.I0(in0),
			.I1(in1),
			.y(out)
			);
			
	initial begin
		$monitor ("in0 =%b, in1= %b,select =%b , out = %b",in0,in1,select,out);
		for(i=7;i>=0;i=i-1) begin
			{select,in0,in1}=i;
			#10;
		end
	end
endmodule