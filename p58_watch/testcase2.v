// to check whether mode pin is stopping the counters H:M:S
//applying mode pulse at 01:59:59

initial begin
	clk=0;
	rst=1;
		
	sel=0;
	inc=0;
	dec=0;
	mode=0;
	#2;
	rst=0;
		
	@(hrs==1);
	@(mins==59);
	@(sec==59);
	modepulse;
	
	repeat(3) @(negedge clk);
	repeat(500) @(negedge clk);
	modepulse;
	
	#1000 $finish;
	
end