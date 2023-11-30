module bcd2bin ( input [3:0] msd,lsd, output [6:0] i);
	
	assign i= msd*10+lsd;
	
endmodule

module tb;
	reg [3:0]msd,lsd;
	wire [6:0] i;
	
	integer j,k;
	
	bcd2bin dut07_4(msd,lsd,i);
	
	initial begin
		for (j=0; j<10;j=j+1) begin
			msd =j;
			for(k=0;k<10;k=k+1) begin
				lsd=k;
				#1;
				$display("msd = %d lsd =%d i=%b : %d",msd,lsd,i,i);
			end
		end
	end
	
endmodule