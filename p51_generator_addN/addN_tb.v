module tb;
	
	parameter SIZE =1;
	parameter LIMIT=2**SIZE;
	
	reg [SIZE-1:0] in1,in2;
	
	wire [SIZE:0]  sum;
	
	integer i,j;
	
	
	AdderN   #(.N(SIZE)) uut(in1,in2,sum);

	initial begin
		$monitor (" %d + %d  = %d = %0b",in1,in2,sum,sum);
		
		for (i=0;i<LIMIT;i=i+1) begin
			in1=i;
			
			for (j=0;j<LIMIT;j=j+1) begin
				in2=j;
				#10;
			end
		end
			
	end

endmodule
	
	
	