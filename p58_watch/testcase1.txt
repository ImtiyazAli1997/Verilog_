// this tests checks the normal operation of the watch	
	
	initial begin
		clk=0;
		rst=1;
		
		sel=0;
		inc=0;
		dec=0;
		mode=0;
		#2;
		rst=0;
		
		#(25*60*60*10) $finish;
	end