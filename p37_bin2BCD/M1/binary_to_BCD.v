//here the input binary is 4 bits in nxt problem its 5 bits

module bin_to_BCD (I,MSD,LSD);
	input [3:0] I;
	output [3:0] MSD,LSD;
	
	wire [3:0] w1;
	wire w2;
	
	`ifdef SUBTRACT
		assign w1 = I-4'd10;
	`endif
	
	`ifdef ADD
		assign w1 = I+4'd6;
	`endif
	
	assign w2 = (I<10)?1:0;
	
	assign {MSD,LSD}= w2?{4'd0,I}:{4'd1,w1};
	
endmodule


module tb;
	reg [3:0]i;
	wire [3:0] msd,lsd;
	integer j;
	
	bin_to_BCD dut07_2(i,msd,lsd);
	
	initial begin
		`ifdef SUBTRACT
			$display ("subtract tick define is used");
		`endif
	
		`ifdef ADD
			$display ("add tick define is used");
		`endif
		for(j=0;j<=20;j=j+1) begin
			i=j;
			#1;
			$display ("i =%d : %b msd =%d lsd =%d",i,i,msd,lsd);
		end
	end
	
endmodule