module my_nand (output y, input a, input b);

	nmos n1(y,w1,b);
	nmos n2(w1,1'b0,a);
	
	pmos p1(y,1'b1,a);
	pmos p2(y,1'b1,b);
	
endmodule

module tb_nand;
	reg a,b;
	wire y;
	integer i;
	
	my_nand dut05_6(y,a,b);
	
	initial begin
		for(i=0; i<4;i=i+1)begin
			{a,b}=i;
			#2;
			$display("a=%b B =%b y=%b",a,b,y);
		end
	end
endmodule
	
	
	