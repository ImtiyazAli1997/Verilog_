module mux2x1_2bit (y,s,i1,i0);
	input s;
	input [1:0]i0;
	input [1:0]i1;
	output [1:0]y;
	/*
		mux2x1_2bit z1(.y(),.s(),.i1(),.i0());
		//              2    1    2     2
	*/
	mux2to1 m1(s,i0[0],i1[0],y[0]);
	mux2to1 m2(s,i0[1],i1[1],y[1]);
	
endmodule