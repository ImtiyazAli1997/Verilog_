module tb;
	reg [7:0] i;
	reg [2:0] s;
	wire y;
	
	integer j;
	
	mux8x1 dut(i,s,y);
		
	initial begin
		i=$random;
		
		for( j=0; j<8; j=j+1)	begin
			s=j;
			#1 $display("i=%b s=%d y=%b",i,s,y);
		end
	end
	
endmodule