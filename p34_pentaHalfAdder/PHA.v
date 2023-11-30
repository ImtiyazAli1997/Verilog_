// two iputs of  size 3 bits in base 5 [penta system] are given add them and give output in pents number system [base=5]
//penta number system has 0,1,2,3,4,10,11,12,13...
//for 3 bit number  a and b max value in penta system are 4 
//other values of a and b like 5 6 7 when inputed its an error. as inputs are supposed to be in penta number system
//for max values of a and b 4 + 4 the out in decimal is 8 which is equivalent to 13 in penta number system

module PHA (input [2:0] a, input [2:0] b, output[2:0] sum, output cout);

	wire [3:0] s;
	wire [2:0] d;
	
	assign s = a+b;
	
	assign cout = (s>4);
	
	assign d=s-5;
	
	assign  sum = cout?d: s[2:0];

endmodule

module tb;
	reg	[2:0] a,b;
	wire [2:0] sum;
	wire cout;
	
	integer i,j;
	
	PHA dut6_01(a,b,sum,cout);
	
	initial begin
		for (i =0; i<=4;i=i+1) begin	
			a=i;
			for (j =0; j<=4;j=j+1) 	begin
				b=j;
				#10;
				$display (" %d +%d = %0d%0d",a,b,cout,sum);
			end
			$stop;	
		end
	end
endmodule
	