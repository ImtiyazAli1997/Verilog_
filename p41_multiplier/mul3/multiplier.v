module multiplier_3bit ( 
	input [2:0] a,
	input [2:0] b,
	output [5:0] y);
	
	// partial products check the partial_product
	
	and a0 (y[0],a[0],b[0]);
	and a1 (p01,a[0],b[1]);
	and a2 (p02,a[0],b[2]);
	and a3 (p10,a[1],b[0]);
	and a4 (p11,a[1],b[1]);
	and a5 (p12,a[1],b[2]);
	and a6 (p20,a[2],b[0]);
	and a7 (p21,a[2],b[1]);
	and a8 (p22,a[2],b[2]);
	
	/*
	HA h1 ( .a(in1),.b(in2),.c_out(carry),.sum(sum));
	FA f1 ( .a(in1),.b(in2),.c_in(c_in),.sum(sum),.c_out(carry));
	*/
	
	HA h1 ( .a(p10),.b(p01),.c_out(c0),.sum(y[1]));
	
	XFA x1 (.a(p20),.b(p11),.c(p02),.d(c0),.c_out({c2,c1}),.sum(y[2]));
	
	FA f1 ( .a(p21),.b(p12),.c_in(c1),.c_out(c3),.sum(y[3]));
	
	FA f2 ( .a(p22),.b(c2),.c_in(c3),.c_out(y[5]),.sum(y[4]));
	
	
	
	
endmodule
	