//		tod_in is input which gives today's date 1 to 30
//		N_in is the input for number of days
//		week_in is the day of the tod_in [sun=1,mon=2,tue=3,wed=4,thu=5,fri=6,sat=7] 
//		date_out should give next working day after N_in days
//		week out is the day of daate_out

module NextWorkDay (tod_in,N_in,week_in,date_out,week_out);
	input [4:0] tod_in;
	input [2:0] week_in;
	input [2:0] N_in;
	output reg [4:0] date_out;
	output reg [2:0] week_out;
	
	reg [5:0] sum;
	//parameter sunday=1,monday=2,tuesday=3,wednesday=4,thursday=5,friday=6,saturday=7;
	
	typedef enum {sunday=1,monday,tuesday,wednesday,thursday,friday,saturday} DAY_e;
	DAY_e day_in,day_out;
	
	assign day_in=DAY_e'(week_in);
	assign day_out=DAY_e'(week_out);
	
	assign date_out = (sum>30)?sum-30:sum;
	always @(week_in,N_in) begin
		case(day_in)
			sunday:	
				case(N_in)
				0,1,2,3,4,5:	begin week_out=day_in+N_in;		sum=tod_in+N_in; 	end
				6,7:			begin week_out=day_in+N_in+3;	sum=tod_in+N_in+2; end
				endcase
			monday:
				case(N_in)
				0,1,2,3,4:		begin week_out=day_in+N_in;		sum=tod_in+N_in; 	end
				5,6,7:			begin week_out=day_in+N_in+3;	sum=tod_in+N_in+2; end
				endcase
			
			tuesday:
				case(N_in)
				0,1,2,3:		begin week_out=day_in+N_in;		sum=tod_in+N_in; 	end
				4,5,6,7:		begin week_out=day_in+N_in+3;	sum=tod_in+N_in+2; end
				endcase
			
			wednesday:
				case(N_in)
				0,1,2:			begin week_out=day_in+N_in;		sum=tod_in+N_in; 	end
				3,4,5,6,7:		begin week_out=day_in+N_in+3;	sum=tod_in+N_in+2; end
				endcase
				
			thursday:
				case(N_in)
				0,1:			begin week_out=day_in+N_in;		sum=tod_in+N_in; 		end
				2,3,4,5,6:		begin week_out=day_in+N_in+3;	sum=tod_in+N_in+2; 	end
				7:				begin week_out=day_in+N_in+3+3;	sum=tod_in+N_in+2+2;	end
				endcase
				
			friday:
				case(N_in)
				0:				begin week_out=day_in+N_in;		sum=tod_in+N_in; 		end
				1,2,3,4,5:		begin week_out=day_in+N_in+3;	sum=tod_in+N_in+2; 	end
				6,7:			begin week_out=day_in+N_in+3+3;	sum=tod_in+N_in+2+2; 	end
				endcase
				
			saturday:
				case(N_in)
				0:				begin week_out=day_in+N_in;		sum=tod_in+N_in; 		end
				1,2,3,4,5:		begin week_out=day_in+N_in+2;	sum=tod_in+N_in+1; 	end
				6,7:			begin week_out=day_in+N_in+3+2;	sum=tod_in+N_in+2+1; 	end
				endcase
			
		endcase
	end
	
	
	
	
	
	
endmodule
			
			
			
			
		