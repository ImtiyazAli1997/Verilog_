module my_not_tb;
	reg a;
	wire y;
	
	integer i;
	
	my_not n(a,y);
	 
	initial begin
		a=1'b0; 
		#1 $display($time,"[display1] a=%b y=%b",a,y);
		a=1'b0; 
		#1 $display($time,"[display2]a=%b y=%b",a,y);
		
		// $finish;
	end
	
	initial begin
		for( i=0;i<15; i=i+1) begin
			#12 a=~a;
		end
	end
	
	initial begin
		#5 $monitor($time," [Monitor] a= %b y= %b",a,y);
	end
endmodule
	