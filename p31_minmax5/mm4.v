module mm4 (a,b,c,d,max,midh,midl,min);
	input [7:0] a,b,c,d;
	output [7:0] max,midh,midl,min;
	
	//mm4 dut5_03 (.a(),.b(),.c(),.d(),.max(),.midh(),.midl(),.min());
	wire [7:0] t1,t2,t3,max1;
	mm3 q1(.a(a),.b(b),.c(c),.min(t2),.mid(t1),.max(max1));
	
	minmax q2(.a(max1),.b(d),.min(t3),.max(max));
	
	mm3 q3(.a(t1),.b(t2),.c(t3),.min(min),.mid(midl),.max(midh));
	
endmodule