module comp4 (a,b,gt,eq,lt);
	input [3:0]a,b;
	output gt,eq,lt;

	wire p,q,r,u,v,w;
	wire [2:0]bus;
	//wire gt,eq,lt;
	//comp4 cm1 (.a(),.b(),.gt(),.eq(),.lt());
	comp2 cm5 (.a(a[3:2]),.b(b[3:2]),.gt(p),.eq(q),.lt(r));
	comp2 cm6 (.a(a[1:0]),.b(b[1:0]),.gt(u),.eq(v),.lt(w));
	
	mux2x1_3bit m6(.y(bus),.s(r),.i1(3'b001),.i0({u,v,w}));
	mux2x1_3bit m7(.y({gt,eq,lt}),.s(p),.i1(3'b100),.i0(bus));
	
	
endmodule