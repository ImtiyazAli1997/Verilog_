module comp (a,b,gt,eq,lt);
	input a,b;
	output gt,eq,lt;
	
	wire a_bar,b_bar;
	
	/* instance
		comp cm1 (.a(),.b(),.gt(),.eq(),.lt());
	*/
	not n1(a_bar,a);
	not n2(b_bar,b);
	
	and a1(gt,a,b_bar);
	and a2(lt,a_bar,b);
	
	xnor x1(eq,a,b);
	
	//nor e1(eq,gt,lt);
	
endmodule