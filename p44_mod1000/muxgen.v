//mux2 to 1 of variable data bits genrator

module gen_mux2to1;

	parameter NdataBits =10;

	integer i;
	
	initial begin
		
	
		for (i=0;i<NdataBits;i=i+1) begin
			$display("mux2to1 m%1d(  .s(s),   .i0(i0[%1d]),   .i1(i1[%1d]),  .y(y[%1d])  );",i,i,i,i);
		end
	end
endmodule