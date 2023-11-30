// 5Q. gate level implementation of half subractor
module HS(
input a,
input b,

output Borrow,
output Diff);

	xor x1(Diff,a,b);
	
	not n1(a_bar,a);		//not declaring a_wire as by default its a wire datatype of 1 bit
	and A1(Borrow,a_bar,b);
	
endmodule