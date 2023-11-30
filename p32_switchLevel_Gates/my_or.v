module my_not (output y, input a);

	pmos p1(y,1'b1,a);
	nmos n1(y,1'b0,a);
	
endmodule

module my_nor (output y, input a, input b);

	pmos n1(y,w1,b);
	pmos n2(w1,1'b1,a);
	
	nmos p1(y,1'b0,a);
	nmos p2(y,1'b0,b);
	
endmodule

module my_or (output y, input a, input b);

	my_nor a1(w1,  a,  b);
	my_not a2 (y,w1);
	
endmodule

module tb_or;
	reg a,b;
	wire y;
	integer i;
	
	my_or dut05_8(y,a,b);
	
	initial begin
		for(i=0; i<4;i=i+1)begin
			{a,b}=i;
			#2;
			$display("a=%b B =%b y=%b",a,b,y);
		end
	end
endmodule
