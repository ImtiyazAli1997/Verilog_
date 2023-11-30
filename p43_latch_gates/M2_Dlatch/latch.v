module dlatch (q,q_bar,e,d);
	
	input e,d;	//e -> anable
	output q,q_bar;
	
	not n1(e_bar,e);
	not n2(d_bar,d);
	
	or o1 (a,e_bar,d_bar);
	or o2 (b,e_bar,d);
	
	nand #1 G1(q,a,q_bar);
	nand   G2(q_bar,q,b);
	

endmodule