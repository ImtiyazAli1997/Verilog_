//sel pulse check


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
	
	repeat(4) begin
		selpulse;
		repeat(3) @(negedge clk);
	end
	
	repeat(500) @(negedge clk);
	modepulse;
	
	#1000 $finish;
	
end