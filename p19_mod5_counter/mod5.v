module mod5 (clk,rst,q2,q1,q0);
	input clk,rst;
	output q2,q1,q0;
	reg q2,q1,q0;//any sized regs are mandatory
	
	wire d2,d1,d0; //one bit wires are optional

	and G1 (d2,q1,q0);
	xor G2 (d1,q1,q0);
	nor G3 (d0,q2,q0);
	
	always @(posedge clk or posedge rst)
	begin
		if (rst) q2<=0;
		else q2<=d2;
	end

	always @(posedge clk or posedge rst)
	begin
		if (rst) q1<=0;
		else q1<=d1;
	end

	always @(posedge clk or posedge rst)
	begin
		if (rst) q0<=0;
		else q0<=d0;
	end
endmodule