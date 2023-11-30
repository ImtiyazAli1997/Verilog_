 //4Q. gate level implementation of ripple carry adder [test bench) use run4.do
module tb;

	reg [3:0] in1,in2;
	
	wire [3:0]  difference;
	

	integer i,j;
	sub4  sb1( 		.a(in1),	.b(in2),	.diff(difference)	);

	initial begin
		
		
		repeat(2) begin
			for (i=0;i<16;i=i+1) begin
				in1=i;
				for (j=0;j<16;j=j+1) begin
				in2=j;
				#10;
				if (i>=j)	$display (" %d - %d  = %d ",in1,in2,difference);
				else		$display (" %d - %d  = %d %h illegal inputs",in1,in2,difference,difference);
				end
			end
		end
	end
endmodule
		
		