module tb;
	reg [3:0] i;
	wire [1:0] y;
	
	integer k;
	
	PE z1(.y(y),.i(i));
	
	initial begin
		for(k=0;k<16;k=k+1) begin
			i=k;
			#1;
			
		end
	end
	
	`ifdef M1
		initial $monitor($time,"\t[M1]  i=%b y=%0b =%0d",i,y,y);
	`endif
	
	`ifdef M2
		initial $monitor($time,"\t[M2]  i=%b y=%0b =%0d",i,y,y);
	`endif
	
	`ifdef M3
		initial $monitor($time,"\t[M3]  i=%b y=%0b =%0d",i,y,y);
	`endif
	
	`ifdef M4
		initial $monitor($time,"\t[M4]  i=%b y=%0b =%0d",i,y,y);
	`endif
endmodule