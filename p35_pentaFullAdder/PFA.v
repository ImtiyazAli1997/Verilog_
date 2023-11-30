// penta full adder
// 3 inputs each of 4 bits 

module PHA (input [2:0] a, input [2:0] b, output[2:0] sum, output cout);

	wire [3:0] s;
	wire [2:0] d;
	
	assign s = a+b;
	
	assign cout = (s>4);
	
	assign d=s-5;
	
	assign  sum = cout?d: s[2:0];

endmodule

module PFA (input [2:0] a, input [2:0] b, input [2:0] c, output[2:0] sum, output [1:0] cout);

	wire [2:0] s0;
	wire c0;
	wire c1;
	
	wire dummy1,dummy2;
	
	PHA p1(a,b,s0,c0);
	PHA p2(s0,c,sum,c1);
	PHA p3({2'b00,c0},{2'b00,c1},{dummy1,cout},dummy2);
	
endmodule

module tb;
	reg	[2:0] a,b,c;
	wire [2:0] sum;
	wire [1:0]cout;
	
	integer i,j,k;
	
	PFA dut6_02(a,b,c,sum,cout);
	
	initial begin
		for (i =0; i<=4;i=i+1) 
			begin	
				a=i;
				for (j =0; j<=4;j=j+1) 
					begin
						b=j;
						for (k =0; k<=4;k=k+1)
							begin
								c=k;
								#10;
								$display (" %d +%d+%d= %0d%0d",a,b,c,cout,sum);
							end
					end
			end
	end
endmodule