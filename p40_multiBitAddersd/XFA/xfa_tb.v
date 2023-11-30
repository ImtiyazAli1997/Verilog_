 module tb;
	reg a,b,c,d;
	wire sum;
	wire [1:0] c_out;
	
	integer i;
	
	XFA x1(a,b,c,d,c_out,sum);
	
	initial begin
		$monitor (" %b + %b + %b + %b = %b = %d",a,b,c,d,{c_out,sum},{c_out,sum});
		for (i=0;i<16;i=i+1) begin
			{a,b,c,d}=i;
			#10;
		end
	
	end
endmodule