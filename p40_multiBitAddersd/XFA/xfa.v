module XFA (a,b,c,d,c_out,sum);

	input a,b,c,d;
	output sum;
	output [1:0] c_out;
	
	wire s1,c1,c2;
	
	FA f4 ( .a(a),.b(b),.c_in(c),.sum(s1),.c_out(c1));
	
	HA h1 ( .a(s1),.b(d),.c_out(c2),.sum(sum));
	
	HA h2 ( .a(c1),.b(c2),.c_out(c_out[1]),.sum(c_out[0]));

endmodule
