module counting_ones (d_in, count1);
	input [7:0] d_in;
	output [3:0] count1;
	
	wire [3:0] w[6:0];
	
	obc m1 (.s_in(4'd0),.current_bit(d_in[0]),.s_out(w[0]));
	obc m2 (.s_in(w[0]),.current_bit(d_in[1]),.s_out(w[1]));
	obc m3 (.s_in(w[1]),.current_bit(d_in[2]),.s_out(w[2]));
	obc m4 (.s_in(w[2]),.current_bit(d_in[3]),.s_out(w[3]));
	obc m5 (.s_in(w[3]),.current_bit(d_in[4]),.s_out(w[4]));
	obc m6 (.s_in(w[4]),.current_bit(d_in[5]),.s_out(w[5]));
	obc m7 (.s_in(w[5]),.current_bit(d_in[6]),.s_out(w[6]));
	obc m8 (.s_in(w[6]),.current_bit(d_in[7]),.s_out(count1));
	
endmodule