//test4 -> %d and %b represent same number but in different number system
//-> note what happens when a larger size value is assigned to a smalled size value
//trucation - The MSB bits are removed[truncated] or left out and only 
//the #bits of the variable on LHS 
module tb4;
	reg[3:0] a;
	reg [2:0]b;
		
	initial begin
		a=4'b1101;
		$display("a=%0d a=%0b",a,a);//13 1101
		b=a;
		$display("b=%0d b=%0b",b,b);//5 101
		
	end
endmodule