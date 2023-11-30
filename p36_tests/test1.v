//test1 -> order off assign statements doesn't matter


module tb1;
	reg a;
	wire y;
	
	assign z=y+0;
	assign y=a+0;
	
	initial begin
		a=1;
		#1;
		$display("%d %d %d",a,y,z);	//1,1,1
		
	end
endmodule