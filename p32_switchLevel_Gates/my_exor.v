module my_nand (output y, input a, input b);

	nmos n1(y,w1,b);
	nmos n2(w1,1'b0,a);
	
	pmos p1(y,1'b1,a);
	pmos p2(y,1'b1,b);
	
endmodule

module my_exor (output y, input a, input b);
	
	my_nand n1(w1,a,b);
	my_nand n2(w2,a,w1);
	my_nand n3(w3,b,w1);
	my_nand n4(y,w2,w3);
	
endmodule



module tb_exor;
	reg a,b;
	wire y;
	integer i;
	
	my_exor dut05_6(y,a,b);
	
	initial begin
		for(i=0; i<4;i=i+1)begin
			{a,b}=i;
			#2;
			$display("a=%b B =%b y=%b",a,b,y);
		end
	end
endmodule