module mux2to1 (
	input S,
	input I0,
	input I1,
	output y);
	
	not n1(s_bar,S);
	
	and a1(w1,s_bar,I0);
	and a2(w2,S,I1);
	
	or o1(y,w1,w2);
	
endmodule
	