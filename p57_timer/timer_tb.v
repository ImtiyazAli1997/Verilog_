module tb;
	reg clk;
	reg rst,leap;
	
	wire [4:0] day;
	wire [4:0] hrs;
	wire [5:0] min;
	wire [5:0] sec;

	integer d,h,m,s;
	integer mon;
	reg [5:0] ul;
	
	timer uut (clk,rst,leap,day,hrs,min,sec);
	
	always #5 clk = ~clk;
	initial begin
		rst=1'b1;
		clk=1'b1;leap=0;
		#2 rst=1'b0;
		#(10*60*60*23*31*13) $finish;
	end
		
	//self testing logic
	
	initial begin

		
		for (mon=1;mon<=12;mon=mon+1) begin
			case(mon)
				4,6,9,11: ul=30;
				2: ul =(leap)?29:28;// not considering leap year. taking non leap year
				default: ul=31;
			endcase
			
			
			for(d=1;d<=ul;d=d+1)	begin
				for(h=0;h<=23;h=h+1) begin
					for(m=0;m<=59;m=m+1) begin
						for(s=0;s<=59;s=s+1) begin
							#10;
							//$display("%0d: %0d : %0d : %0d : %0d",mon,d,h,m,s);
						end
					end
				end
			end
			
		end
		#1;	// as after the end of the loop s=60,m=60,h=24 d=32 m=13
		d=1;h=0;m=0;s=0;// you need to restart the  d=1;h=0;m=0;s=0 to recheck the days
		#100;
			$finish;
	end
	
	always@(negedge clk)
	begin
		if(sec!= s) begin
			$display("failed for seconds at time= %t",$time);
			$display("correct sec = %0d but design gives sec = %0d",s,sec);
			#50;
			$finish;
		end
	end
	
	always@(negedge clk)
	begin
		if(min!= m) begin
			$display("failed for minutes at time= %t",$time);
			$display("correct min = %0d but design gives min = %0d",m,min);
			#50;
			$finish;
		end
	end
	
	always@(negedge clk)
	begin
		if(hrs!= h) begin
			$display("failed for seconds at time= %t",$time);
			$display("correct sec = %0d but design gives sec = %0d",h,hrs);
			#50;
			$finish;
		end
	end
	
	always@(negedge clk)
	begin
		if(day!= d) begin
			$display("failed for seconds at time= %t",$time);
			$display("correct sec = %0d but design gives sec = %0d",d,day);
			#50;
			$finish;
		end
	end
	
endmodule