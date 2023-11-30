module comp3 (a,b,gt,eq,lt);
	
	input [2:0] a,b;
	output gt,eq,lt;
	
	wire [2:0]bus;
	
	wire p,q,r,u,v,w;
	
	/* instance
		comp3 cm3 (.a(a),.b(),.gt(),.eq(),.lt());
	*/
	
	comp cm1 (.a(a[2]),.b(b[2]),.gt(p),.eq(q),.lt(r));
	
	comp2 cm2 (.a(a[1:0]),.b(b[1:0]),.gt(u),.eq(v),.lt(w));
	
	mux2x1_3bit m6(.y(bus),.s(r),.i1(3'b001),.i0({u,v,w}));
	mux2x1_3bit m7(.y({gt,eq,lt}),.s(p),.i1(3'b100),.i0(bus));
	
endmodule