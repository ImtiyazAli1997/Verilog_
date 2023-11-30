module comp2 (a,b,gt,eq,lt);
	input [1:0]a,b;
	output gt,eq,lt;

	wire p,q,r,u,v,w;
	wire [2:0]bus;
	//wire gt,eq,lt;
	//comp2 cm1 (.a(),.b(),.gt(),.eq(),.lt());
	comp cm1 (.a(a[1]),.b(b[1]),.gt(p),.eq(q),.lt(r));
	comp cm2 (.a(a[0]),.b(b[0]),.gt(u),.eq(v),.lt(w));
	
	mux2x1_3bit m4(.y(bus),.s(r),.i1(3'b001),.i0({u,v,w}));
	mux2x1_3bit m5(.y({gt,eq,lt}),.s(p),.i1(3'b100),.i0(bus));
	
	
endmodule