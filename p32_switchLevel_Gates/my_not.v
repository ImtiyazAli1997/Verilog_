module my_not (output y, input a);

	pmos p1(y,1'b1,a);
	nmos n1(y,1'b0,a);
	
endmodule

module tb_not;

	wire a; // the input need not be reg
	wire y;
	
	reg a_in_reg;  
	
	assign a = a_in_reg;  // the variables which are generated in the initial block has to be reg
	
	my_not dut05_5( y,  a);
	
	
	initial begin
		repeat (10) begin
			a_in_reg =$random;
			#1;
			$display ("a= %b y=%b",a,y);
		end
	end
endmodule
		
	