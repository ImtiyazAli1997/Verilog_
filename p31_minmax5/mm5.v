module mm5 (a,b,c,d,e,max,midh,mid,midl,min);
	input [7:0] a,b,c,d,e;
	output [7:0] max,midh,mid,midl,min;
	
	wire [7:0] max1, t1,t2,t3,t4;
	
	//mm5 dut5_04(.a(),.b(),.c(),.d(),.e(),.max(),.midh(),.mid(),.midl(),.min());
	
	mm4 q3 (.a(a),.b(b),.c(c),.d(d),.max(max1),.midh(t1),.midl(t2),.min(t3));
	
	minmax q4(.a(max1),.b(e),.min(t4),.max(max));
	
	mm4 q5 (.a(t1),.b(t2),.c(t3),.d(t4),.max(midh),.midh(mid),.midl(midl),.min(min));
	
endmodule