module my_not (output y, input a);

	pmos p1(y,1'b1,a);
	nmos n1(y,1'b0,a);
	
endmodule

module my_nand (output y, input a, input b);

	nmos n1(y,w1,b);
	nmos n2(w1,1'b0,a);
	
	pmos p1(y,1'b1,a);
	pmos p2(y,1'b1,b);
	
endmodule

module my_and (output y, input a, input b);

	my_nand a1(w1,  a,  b);
	my_not a2 (y,w1);
	
endmodule

module tb_and;
	reg a,b;
	wire y;
	integer i;
	
	my_and dut05_8(y,a,b);
	
	initial begin
		for(i=0; i<4;i=i+1)begin
			{a,b}=i;
			#2;
			$display("a=%b B =%b y=%b",a,b,y);
		end
	end
endmodule