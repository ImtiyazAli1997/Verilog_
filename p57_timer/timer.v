module timer (
	input clk,
	input rst,
	input leap,
	
	output reg [4:0] day,
	output reg [4:0] hrs,
	output reg [5:0] min,
	output reg [5:0] sec);
	
	reg [4:0] ul; //upper _limit
	
	reg [3:0] mon; //month
	
	reg incr_mon; //increment month
	
	wire incr_min,incr_hr,incr_day;
	
	enum {Jan,Feb,March,April,May,June,July,August,Sept,Oct,Nov,Dec} month;
	
	always @(posedge clk or posedge rst)
	begin
		if(rst)
			sec<=1'b0;
		else
			sec<= (sec==59)?6'd0:sec+1'b1;
	end
	
	
	assign incr_min = sec==6'd59;
	
	always @(posedge clk or posedge rst)
	begin
		if(rst)
			min<=1'b0;
		else
			if(incr_min)	min<= (min==59)?6'd0:min+1'b1;
			else			min<=min;
	end
	
	assign incr_hr = {min,sec}=={6'd59,6'd59};
	
	always @(posedge clk or posedge rst)
	begin
		if(rst)
			hrs<=1'b0;
		else
			if(incr_hr) 	hrs<=(hrs==23)?5'd0:hrs+1'b1;
			else			hrs<=hrs;
	end
	
	assign incr_day = {hrs,min,sec}=={5'd23,6'd59,6'd59};
	
	always @*
	begin
		case(mon)
			4,6,9,11: ul=30;
			2: ul =(leap)?29:28;// not considering leap year. taking non leap year
			default: ul=31;
		endcase
		//Jan,Feb,March,April,May,June,July,August,Sept,Oct,Nov,Dec
		/*case(month)
			April,June,Sept,Nov: ul=30;
			2: ul =(leap)?29:28;// not considering leap year. taking non leap year
			default: ul=31;
		endcase*/
		
	end
		
		
	always @(posedge clk or posedge rst)
	begin
		if(rst)
			day<=5'd1;
		else
			if(incr_day)		day<=(day==ul)?1:day+1'b1;
			else				day<=day;
	end
	
	
	always @*
	begin
		incr_mon = {day,hrs,min,sec}=={ul,5'd23,6'd59,6'd59};
	end
	
	
	always @(posedge clk or posedge rst)
	begin
		if(rst)
			mon<=4'd1;
		else
			if(incr_mon)		mon<=(mon==12)?1:mon+1'b1;
			else				mon<=mon;
	end
	
	always @(posedge clk or posedge rst)
	begin
		if(rst)
			month<=Jan;
		else
			if(incr_mon)		month<=(month==Dec)?Jan:month.next();
			else				month<=month;
	end

endmodule
	