module tb;
	reg a,b;
	wire s,c;
	
	compiler_directives uut(a,b,s,c);
	
	initial begin
		`ifdef STRUCT
			$monitor ("STRUCT %b + %b = %b =%d",a,b,{c,s},{c,s});
		`endif
		
		`ifdef THIS_IS_NOT_DFLOW
			$monitor ("NOT DFLOW %b + %b = %b =%d",a,b,{c,s},{c,s});
		`endif
		
		`ifdef REAL_DFLOW
			`ifdef WORKING
				$monitor ("working dflow  %b + %b = %b =%d",a,b,{c,s},{c,s});
			`endif
			
			`ifdef WONT_WORK
				$monitor ("not working dflow  %b + %b = %b =%d",a,b,{c,s},{c,s});
			`endif
		`endif
		
		{a,b}=2'b00; #10;
		{a,b}=2'b01; #10;
		{a,b}=2'b10; #10;
		{a,b}=2'b11; #10;
	end
	
	
endmodule