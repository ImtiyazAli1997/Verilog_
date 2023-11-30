//use run1.do

module bin_to_BCD (I,MSD,LSD);
	input [4:0] I;
	output [3:0] MSD,LSD;
	
	wire [7:0] w1,w2;
	wire gt9,gt19,gt29;
	wire [3:0] sub10,sub20,sub30; 
	
	assign gt9 =(I>9);
	assign gt19 =(I>19);
	assign gt29= (I>29);
	
	assign sub10 =I-4'd10;
	assign sub20 =I-4'd20;
	assign sub30 = I-4'd30;
	
	assign w1 =gt9?{4'd1,sub10}:{4'd0,I};
	assign w2 = gt19?{4'd2,sub20}:w1;
	assign {MSD,LSD} =gt29?{4'd3,sub30}:w2;
	
endmodule

module tb;
	reg [4:0]i;
	wire [3:0] msd,lsd;
	integer j;
	
	bin_to_BCD dut07_3(i,msd,lsd);
	
	initial begin
		
		for(j=0;j<=37;j=j+1) begin
			i=j;
			#1;
			$display ("i =%d : %b msd =%d lsd =%d",i,i,msd,lsd);
		end
		
		
		`ifdef DEBUG
			i=5'd11;
			#1;
			$display ("i =%d : %b msd =%d lsd =%d",dut07_3.I,dut07_3.I,dut07_3.MSD,dut07_3.LSD);
			$display(" >9 %b \t >19 %b \t >19%b",dut07_3.gt9,dut07_3.gt19,dut07_3.gt29);
			$display (" w1= %d %d \nw2= %d  d \n msd= %d lsd = %d",dut07_3.w1[7:4],dut07_3.w1[3:0],dut07_3.w2[7:4],dut07_3.w2[3:0],dut07_3.MSD,dut07_3.LSD);
			
			$display("{4'd1,sub10}= %b",{dut07_3.sub10});
		`endif
	end
	
endmodule