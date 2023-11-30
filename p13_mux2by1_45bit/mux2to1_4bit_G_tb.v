//6Q textbench of 4 bit multiplex of 2 by 1 size using 1 bit mux2by1
module tb;
	reg select;
	reg [3:0]in0;
	reg [3:0]in1;
	wire [3:0]out;
		
	mux2to1_4bit m6( 
			.S(select),
			.I0(in0),
			.I1(in1),
			.y(out)
			);
			
	initial begin
		$monitor ("in0 =%d, in1= %d,select =%d , out = %d  %d",in0,in1,select,out, m6.y);
		repeat (5) begin
			{in0,in1,select}=$random;
			//$display("in0 =%d, in1= %d,select =%d , out = %d  %d",in0,in1,select,out, m);
			#10;
		end
		
	end
endmodule