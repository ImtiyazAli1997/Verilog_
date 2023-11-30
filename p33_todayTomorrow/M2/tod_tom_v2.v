// in this problem we have an input x which decides the number of days x=1 then its 31 days if x=0 its 30 days

module today_tom (input [4:0] tod, output [4:0] tom, output err,input x);
	
	wire [4:0] sum;
	wire [4:0] Ndays;
	
	assign sum = tod+ 1;
	
	assign cntrl_eqNdays =(tod==Ndays);
	
	assign tom = (cntrl_eqNdays)?1:sum;
	
	assign err =(tod>Ndays|| tod == 0);
	
	assign Ndays = x?31:30;
	
endmodule

	module tb;
		reg [4:0] today;
		wire [4:0] tomorow;
		wire err;
		reg x;
		integer i;
		
		today_tom dut05_10(today,tomorow, err,x);
		
		initial begin
			x=1'b0;
			repeat (2) begin
				for (i=0;i<38; i=i+1) begin
					today =i;
					
					#1;
					$display(" x = %d today =%d tomorrow =%d err =%d",x,today,tomorow,err);
				end
				
				x=!x;
			end
		end
	endmodule