module tb;
	reg [7:0] a,b,c,d,e;
	wire [7:0] min,max,mid,midh,midl;
	
	
	
	mm5 dut5_04(a,b,c,d,e,max,midh,mid,midl,min);
	initial begin
		repeat (10) begin
			{a,b,c,d,e}=$random;
			#1;
			$display("a=%d \t b=%d \t c = %d \t d= %d \t e= %d\n min = %d \t midl = %d \t mid = %d \t midh =%d \t max= %d",a,b,c,d,e,min,midl,mid,midh,max);
		end
	end
endmodule