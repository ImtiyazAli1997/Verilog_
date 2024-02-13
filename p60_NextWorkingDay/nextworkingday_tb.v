module tb;
	reg [4:0] tod_in;
	reg [2:0] week_in;
	reg [2:0] N_in;
	wire [4:0] date_out;
	wire [2:0] week_out;
	
	integer i,j;
	
	NextWorkDay uut(tod_in,N_in,week_in,date_out,week_out);
	
	initial begin
		$monitor ("week_in=%0d tod_in =%0d N_in=%0d  \t week_out =%0d date_out =%0d",week_in,tod_in,N_in,week_out,date_out);
		tod_in=30; 
		
		for(i=1;i<=7;i=i+1) begin
			
			week_in=i;
			
			for(j=0;j<=7;j=j+1) begin
				N_in=j;
				#5;
			end
			$display("*************************");
		end
	end
	
endmodule
	
	
	