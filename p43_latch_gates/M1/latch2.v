// this latch will avoid making a,b inputs of latch1.v to {0,0} at same time
//instead whenever such input occur it it make it to {1,1}
// as when {a,b}={1,1} the q(n+1) = q(n) previous output is repeated[saved, propagated]
//this is a nanad based latch with watchman to stop 00 from enteringa s inputs
module latch2 (e,f,u,v);
	input e,f;
	output u,v;
	
	not n1(e_bar,e);
	not n2(f_bar,f);
	
	or o1(a,e,f_bar);
	or o2 (b,e_bar,f);
	
	nand G1(u,v,a);
	nand  G2(v,u,b);
	
endmodule
	