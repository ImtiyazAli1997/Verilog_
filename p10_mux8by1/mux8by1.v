module mux8x1(I,S,y);
	input[7:0] I;
	input [2:0] S;
	output reg y;
	
	always@(I,S) begin
		case(S)
			0:	y=I[0];
			1:	y=I[1];
			2:	y=I[2];
			3: 	y=I[3];
			4:	y=I[4];
			5:	y=I[5];
			6:	y=I[6];
			7:	y=I[7];
		endcase
	end
endmodule
			