//test3-> IEEE LRM[Language Reference Manual] write -write race
//use different simulators and check


module tb3;
	reg a;
	
	//wriet write race
	//IEEE LRM language reference manual
	
	initial a=1;//Thread1
	
	initial begin
		#1 $display(a);
	end
	
	//initial tb3.a=0;//Thread2
	
endmodule

module sub;

	initial tb3.a=0;//Thread2
	
endmodule