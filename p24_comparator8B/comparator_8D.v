module comp8 (a,b,gt,eq,lt);
	input [7:0]a,b;
	output gt,eq,lt;

	wire p,q,r,u,v,w;
	wire [2:0]bus;
	//wire gt,eq,lt;
	
	comp4 cm7 (.a(a[7:4]),.b(b[7:4]),.gt(p),.eq(q),.lt(r));
	comp4 cm8 (.a(a[3:0]),.b(b[3:0]),.gt(u),.eq(v),.lt(w));
	
	mux2x1_3bit m8(.y(bus),.s(r),.i1(3'b001),.i0({u,v,w}));
	mux2x1_3bit m9(.y({gt,eq,lt}),.s(p),.i1(3'b100),.i0(bus));
	
	
endmodule