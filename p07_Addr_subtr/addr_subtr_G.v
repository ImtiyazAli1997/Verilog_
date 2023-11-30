//q7 implementation of addr and subractor
module addr_subtr (
	input [3:0] a,
	input [3:0] b,
	
	input control_signal, // =1 sub or =0 adder
	
	output br_Ca_out,
	output [3:0] sum_diff);
	
	// ones complement logic for b
	xor (w1,control_signal,b[0]);
	xor (w2,control_signal,b[1]);
	xor (w3,control_signal,b[2]);
	xor (w4,control_signal,b[3]);
	
	rca r1 ( 
			.b({w4,w3,w2,w1}),
			.a(a),
			.c_in(control_signal),   // adds 1 inorder to make b in 2's complement form
			.sum(sum_diff),
			.c_out(br_Ca_out)
	);
	
endmodule