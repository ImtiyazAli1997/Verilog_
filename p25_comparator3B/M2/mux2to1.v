//mux 2 to 1 in gatelevel

module mux2to1 (s,i0,i1,y);
	input s;
	input i0;
	input i1;
	output y;
	/* instance
	mux2to1 m1(.s(),.i0(),.i1(),.y());
	      //    1    1     1    1
	*/
	not n1(s_bar,s);
	
	and a1(w1,s_bar,i0);
	and a2(w2,s,i1);
	
	or o1(y,w1,w2);
	
endmodule
	