//test2 -> same variable cannot be assign twice{contention}


module tb2;
	wire a;
	
	assign a=0;
	assign a=1;
	
	initial begin
		#1 $display(a);		//here x is displayed in this simulator try other simulators in EDA play ground
	end
endmodule