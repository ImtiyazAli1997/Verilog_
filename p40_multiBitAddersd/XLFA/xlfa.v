module XLFA (a,b,c,d,e,c_out,sum);

	input a,b,c,d,e;
	output sum;
	output [1:0] c_out;
	
	
	/*
		XLFA x1(.a(),.b(),.c(),.d(),.e(),.c_out({,}),.sum());	
	
	*/
	XFA x1(.a(a),.b(b),.c(c),.d(d),.c_out({c2,c1}),.sum(s1));	
	
	HA h1( 	.a(s1),	.b(e),	.c_out(c3),	.sum(sum)	);
	
	HA h2( 	.a(c1),	.b(c3),	.c_out(c4),	.sum(c_out[0])	);
	
	HA h3( 	.a(c2),	.b(c4),	.c_out(dummy),	.sum(c_out[1])	);
	
endmodule