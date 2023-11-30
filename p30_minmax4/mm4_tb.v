module tb;
	reg [7:0] a,b,c,d;
	wire [7:0] min,max,mid,midh,midl;
	
	mm4 dut5_03(a,b,c,d,max,midh,midl,min);
	
	//mm4 dut5_03 (.a(),.b(),.c(),.d(),.max(),.midh(),.midl(),.min());
	initial begin
		repeat (10) begin
			{a,b,c,d}=$random;
			#1;
			$display("a=%d \t b=%d \t c = %d \t d= %d\n min = %d \t midl = %d \t midh =%d \t max= %d",a,b,c,d,min,midl,midh,max);
		end
	end
endmodule