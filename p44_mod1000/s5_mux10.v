module mux10 (y,s,i1,i0);
	input[9:0] i1,i0;
	input s;
	output [9:0]y;
	
	//mux10 (.y(),.s(),.i1(),.i0());
	
	mux2to1 m0(  .s(s),   .i0(i0[0]),   .i1(i1[0]),  .y(y[0])  );
	mux2to1 m1(  .s(s),   .i0(i0[1]),   .i1(i1[1]),  .y(y[1])  );
	mux2to1 m2(  .s(s),   .i0(i0[2]),   .i1(i1[2]),  .y(y[2])  );
	mux2to1 m3(  .s(s),   .i0(i0[3]),   .i1(i1[3]),  .y(y[3])  );
	mux2to1 m4(  .s(s),   .i0(i0[4]),   .i1(i1[4]),  .y(y[4])  );
	mux2to1 m5(  .s(s),   .i0(i0[5]),   .i1(i1[5]),  .y(y[5])  );
	mux2to1 m6(  .s(s),   .i0(i0[6]),   .i1(i1[6]),  .y(y[6])  );
	mux2to1 m7(  .s(s),   .i0(i0[7]),   .i1(i1[7]),  .y(y[7])  );
	mux2to1 m8(  .s(s),   .i0(i0[8]),   .i1(i1[8]),  .y(y[8])  );
	mux2to1 m9(  .s(s),   .i0(i0[9]),   .i1(i1[9]),  .y(y[9])  );
	
endmodule


