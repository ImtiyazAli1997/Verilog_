module obc2 (s_in,current_bit,s_out);
	input[3:0] s_in;
	input current_bit;
	output [3:0] s_out;
	
	wire [3:0] s_in_Plus1;
	
	/*
	obc dut(.s_in(s),.current_bit(cb),.s_out(s_out));
	*/
	mux2x1_4bit z1(.y(s_out),.s(current_bit),.i1(s_in),.i0(s_in_Plus1));		//i0 and i1 are changed compared to obc1
	
	rca r1( .a(s_in),.b(4'd1),.c_in(1'b0),.c_out(),.sum(s_in_Plus1));
	
endmodule