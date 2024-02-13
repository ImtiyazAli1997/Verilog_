module compiler_directives (a,b,sum,c_out);

	input a,b;
	output sum,c_out;
	
	`ifdef STRUCT
		xor g1(sum,a,b);
		and g2(c_out,a,b);
	`endif
	
	`ifdef THIS_IS_NOT_DFLOW
		assign sum=a^b;
		assign c_out=a&&b;
	`endif
	
	`ifdef REAL_DFLOW
		`ifdef WORKING
			assign {c_out,sum}=a+b;
		`endif
		
		`ifdef WONT_WORK
			assign {sum,c_out}=a+b;
		`endif
	`endif

endmodule