module bin2oct ( input [3:0] i, output [2:0] msd,lsd);
	
	assign lsd =i[2:0];
	assign msd = {3'd0,i[3]};
	
endmodule

module tb;
	reg [3:0] i;
	wire [2:0] msd,lsd;
	
	integer j;
	
	bin2oct dut07_3(i,msd,lsd);
	
	initial begin
		for (j=0;j<18;j=j+1) begin
			i=j;
			#1;
			$display("i=%d msd= %d lsd =%d",i,msd,lsd);
		end
	end
endmodule