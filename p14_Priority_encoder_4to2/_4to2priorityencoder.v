module MSB_priority_encoder_4to2(y,i);
	input [3:0] i;
	output [1:0] y;
	wire [1:0] w1,w2,w3,w4;
	
	/*
		MSB_priority_encoder_4to2  z1(.y(),.i());
		//							   4    2
	*/
	mux2x1_2bit G1(.y(y),.s(i[3]),.i1(2'b11),.i0(w1));
	mux2x1_2bit G2(.y(w1),.s(i[2]),.i1(2'b10),.i0(w2));
	mux2x1_2bit G3(.y(w2),.s(i[1]),.i1(2'b01),.i0(w3));
	mux2x1_2bit G4(.y(w3),.s(i[0]),.i1(2'b00),.i0(2'b00));

endmodule