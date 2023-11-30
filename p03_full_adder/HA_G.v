// 2Q. gate level implementation of half adder
module HA(
input a,
input b,

output c_out,
output sum);

	xor x1(sum,a,b);

	and A1(c_out,a,b);
	
endmodule