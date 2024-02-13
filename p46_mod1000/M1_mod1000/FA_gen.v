//mux2 to 1 of variable data bits genrator

module gen_mux2to1;

	parameter NdataBits =10;

	integer i;
	
	initial begin
		
	
		for (i=0;i<NdataBits;i=i+1) begin
			$display("FA m%1d(  .cout(c%1d),   .sum(sum[%1d]),   .a(a[%1d]),  .b(b[%1d]) , .c(c%1d)  );",i,i+1,i,i,i,i);
		end
	end
endmodule