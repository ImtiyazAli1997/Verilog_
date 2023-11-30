module mux2x1_3bit (y,s,i1,i0);
	input s;
	input [2:0]i0;
	input [2:0]i1;
	output [2:0]y;
	/*
	mux2x1_3bit z1(.y(),.s(),.i1(),.i0());
	//				3    1	  3		3
	*/
	mux2to1 m1(s,i0[0],i1[0],y[0]);
	mux2to1 m2(s,i0[1],i1[1],y[1]);
	mux2to1 m3(s,i0[2],i1[2],y[2]);
endmodule