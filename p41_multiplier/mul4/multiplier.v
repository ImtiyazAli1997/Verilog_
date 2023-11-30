module multiplier_4bit ( 
	input [3:0] a,
	input [3:0] b,
	output [7:0] y);
	
	// partial products
	
	and a00 (y[0],a[0],b[0]);
	and a01 (p01,a[0],b[1]);
	and a02 (p02,a[0],b[2]);
	and a03 (p03,a[0],b[3]);
	and a10 (p10,a[1],b[0]);
	and a11 (p11,a[1],b[1]);
	and a12 (p12,a[1],b[2]);
	and a13 (p13,a[1],b[3]);
	and a20 (p20,a[2],b[0]);
	and a21 (p21,a[2],b[1]);
	and a22 (p22,a[2],b[2]);
	and a23 (p23,a[2],b[3]);
	and a30 (p30,a[3],b[0]);
	and a31 (p31,a[3],b[1]);
	and a32 (p32,a[3],b[2]);
	and a33 (p33,a[3],b[3]);
	
	/*
	HA h1 ( .a(in1),.b(in2),.c_out(carry),.sum(sum));
	FA f1 ( .a(in1),.b(in2),.c_in(c_in),.sum(sum),.c_out(carry));
	*/
	
	`ifdef M1
	HA h1 ( .a(p01),.b(p10),.c_out(c0),.sum(y[1]));
	
	FA f2 ( .a(c0),.b(p02),.c_in(p11),.sum(s1),.c_out(c1));
	HA h2 ( .a(s1),.b(p20),.c_out(c2),.sum(y[2]));
	
	FA f30 ( .a(c1),.b(c2),.c_in(p03),.sum(s3),.c_out(c3));
	FA f31 ( .a(s3),.b(p12),.c_in(p21),.sum(s4),.c_out(c4));
	HA h3 ( .a(s4),.b(p30),.c_out(c5),.sum(y[3]));
	
	
	FA f40 ( .a(c3),.b(c4),.c_in(c5),.sum(s5),.c_out(c6));
	FA f41 ( .a(s5),.b(p13),.c_in(p22),.sum(s6),.c_out(c7));
	HA h4 ( .a(s6),.b(p31),.c_out(c8),.sum(y[4]));
	
	
	FA f50 ( .a(c6),.b(c7),.c_in(c8),.sum(s7),.c_out(c9));
	FA f51 ( .a(s7),.b(p23),.c_in(p32),.sum(y[5]),.c_out(c10));
	
	FA f60 ( .a(c9),.b(c10),.c_in(p33),.sum(y[6]),.c_out(y[7]));
	
	`endif
	
	/*	HA h1 ( .a(),.b(),.c_out(),.sum());
		FA f1 ( .a(),.b(),.c_in(),.sum(),.c_out());
		XFA x1(.a(),.b(),.c(),.d(),.c_out(),.sum());
		XLFA x1(.a(),.b(),.c(),.d(),.e(),.c_out({,}),.sum());	
	*/
	`ifdef M2
		HA h1 ( .a(p01),.b(p10),.c_out(c0),.sum(y[1]));
	
		XFA x1(.a(p20),.b(p11),.c(p02),.d(c0),.c_out({c2,c1}),.sum(y[2]));
		
		XLFA xl1(.a(p30),.b(p21),.c(p12),.d(p03),.e(c1),.c_out({c4,c3}),.sum(y[3]));	
		
		
		XLFA xl1(.a(p31),.b(p22),.c(p13),.d(c2),.e(c3),.c_out({c6,c5}),.sum(y[4]));	
		
		
		XFA x1(.a(p32),.b(p23),.c(c4),.d(cc5),.c_out({c8,c7}),.sum(y[5]));
		
				
		FA f60 ( .a(p33),.b(c6),.c_in(c7),.sum(y[6]),.c_out(y[7]));
		
		HA h1 ( .a(c8),.b(c9),.c_out(dummy),.sum(y[7]));
	`endif
	
	
	
endmodule
	