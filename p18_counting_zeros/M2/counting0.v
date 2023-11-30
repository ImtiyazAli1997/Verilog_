module counting_zeros (d_in, count0);
	input [7:0] d_in;
	output [3:0] count0;
	
	wire [3:0] w[6:0];
	
	obc2 m1 (.s_in(4'd0),.current_bit(d_in[0]),.s_out(w[0]));
	obc2 m2 (.s_in(w[0]),.current_bit(d_in[1]),.s_out(w[1]));
	obc2 m3 (.s_in(w[1]),.current_bit(d_in[2]),.s_out(w[2]));
	obc2 m4 (.s_in(w[2]),.current_bit(d_in[3]),.s_out(w[3]));
	obc2 m5 (.s_in(w[3]),.current_bit(d_in[4]),.s_out(w[4]));
	obc2 m6 (.s_in(w[4]),.current_bit(d_in[5]),.s_out(w[5]));
	obc2 m7 (.s_in(w[5]),.current_bit(d_in[6]),.s_out(w[6]));
	obc2 m8 (.s_in(w[6]),.current_bit(d_in[7]),.s_out(count0));
	
endmodule