//one bit processor which increments 1 if input bit is 1 else does not increment

module count_ones (y,i);
	input [7:0] i;
	output [3:0] y;
	wire [3:0] c1,c2,c3,c4,c5,c6,c7,c8;
	reg [3:0] c = 4'b0000;
	
	//count_ones g1(.y(),.i());
	//rca r1( .a(),.b(),.c_in(),.c_out(),.sum());
	rca r1( .a(c),.b({3'b000,i[0]}),.c_in(1'b0),.c_out(w0),.sum(c1));
	rca r2( .a(c1),.b({3'b000,i[1]}),.c_in(w0),.c_out(w1),.sum(c2));
	rca r3( .a(c2),.b({3'b000,i[2]}),.c_in(w1),.c_out(w2),.sum(c3));
	rca r4( .a(c3),.b({3'b000,i[3]}),.c_in(w2),.c_out(w3),.sum(c4));
	rca r5( .a(c4),.b({3'b000,i[4]}),.c_in(w3),.c_out(w4),.sum(c5));
	rca r6( .a(c5),.b({3'b000,i[5]}),.c_in(w4),.c_out(w5),.sum(c6));
	rca r7( .a(c6),.b({3'b000,i[6]}),.c_in(w5),.c_out(w6),.sum(c7));
	rca r8( .a(c7),.b({3'b000,i[7]}),.c_in(w6),.c_out(w7),.sum(y));
	
endmodule