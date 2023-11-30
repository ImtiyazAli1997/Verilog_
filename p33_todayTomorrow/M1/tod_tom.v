// tod refers to the date which we give to the circuit to generate the next date
//as dates vary from 1 to 31 we require only 5 bits for today date and tomorrow date variable
// in this problem lets consider its only 30 day month
//for the value of today date when it becomes 0 or 31 generate an error signal err

module today_tom (input [4:0] tod, output [4:0] tom, output err);
	
	wire [4:0] sum;
	
	assign sum = tod+1;
	
	assign cntrl_eq30 =(tod==30);
	
	assign tom = (cntrl_eq30)?5'b00001:sum;
	
	assign err =(tod>30 || tod == 0);
	
endmodule

	module tb;
		reg [4:0] today;
		wire [4:0] tomorow;
		wire err;
		integer i;
		
		today_tom dut05_10(today,tomorow, err);
		
		initial begin	
			for (i=0;i<38; i=i+1) begin
				today =i;
				#1;
				$display(" today =%d tomorrow =%d err =%d",today,tomorow,err);
			end
		end
	endmodule