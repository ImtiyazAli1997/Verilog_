module latch (u,v,a,b);
	
	input a,b;
	output u,v;

	nand G1(u,v,a);
	nand  G2(v,u,b);
	
//	nand #1  G2(v,u,b); 		//try
	
endmodule