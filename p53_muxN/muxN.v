module mux2x1 (output y, input s,i1,i0);
	not n1(s_bar,s);
	and T1(t1,s_bar,i0);
	and T2(t2,s,i1);
	or o1(y,t1,t2);
endmodule

module muxN (y,s,i0,i1);
	parameter N=2;
	
	input[N-1:0] i0,i1;
	input s;
	output [N-1:0] y;
	
	genvar j;
	
	for (j=0;j<N;j=j+1) begin
		mux2x1 Gi (y[j],s,i1[j],i0[j]);
	end

endmodule