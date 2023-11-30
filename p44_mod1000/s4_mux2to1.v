module mux2to1 (
	input s,
	input i0,
	input i1,
	output y);
	
	not n1(s_bar,s);
	
	and a1(w1,s_bar,i0);
	and a2(w2,s,i1);
	
	or o1(y,w1,w2);
	
endmodule
	