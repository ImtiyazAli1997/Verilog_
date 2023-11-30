module tb;
	reg [2:0]a,b;
	wire gt,eq,lt;
	
	integer i;
	
	comp3m2 c1(a,b,gt,eq,lt);
	
	initial begin
		
		
		
		
		
		for (i=0;i<64;i=i+1) begin
			{a,b}=i;
			#1;
			$display("%d %d : %d %d %d",a,b,gt,eq,lt);
			//$display ("%b   :  %b  : %b",{c1.p,c1.q,c1.r},{c1.u,c1.v,c1.w},c1.bus);
			if (gt !=(a>b))
				$display("incorrect a greater satisfied gt=100");
			//else 
			//	$display("  a greater satisfied gt=100");
			if (lt!=(a<b))
				$display("incorrecta lesser satisfied lt= 001");
			//else	
			//	$display(" a lesser satisfied lt= 001");
			if (eq !=(a==b))
				$display("incorrecta eqal b 010");
			//else
			//	$display(" a equals b satisfied lt= 001");
			
			
		end
		
	end
	
endmodule