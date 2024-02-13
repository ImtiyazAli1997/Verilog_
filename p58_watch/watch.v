module watch (clk,rst,mode,sel,inc,dec,hrs,mins,sec);
	input clk,rst,mode,sel,inc,dec;
	
	output reg[5:0] sec,mins;
	output reg[4:0] hrs;
	
	enum {NORMAL_OPERATION,SECONDS,MINUTES,HOURS} state;
	
	wire [5:0] secplus1,minsplus1,minsminus1,secminus1;
	wire [4:0] hrsplus1,hrsminus1;
	
	assign incmin = (sec==59);
	assign inchrs = (sec==59) && (mins==59);

	assign secplus1=(sec==59) ? 0 : (sec+1);
	assign secminus1=(sec==0)? 59:(sec-1);

	assign minsplus1=(mins==59) ? 0 : (mins+1);
	assign minsminus1=(mins==0)? 59:(mins-1);

	assign hrsplus1=(hrs==23) ? 0 : (hrs+1);
	assign hrsminus1=(hrs==0 )? 23:(hrs-1);

	always@(posedge clk or posedge rst) begin
		if(rst)		state<=NORMAL_OPERATION;
		else begin
			case(state)
			NORMAL_OPERATION:	begin	
				if(mode)	state<=	HOURS;
				else		state<=NORMAL_OPERATION;
			end
					
			HOURS:begin	
				case(1)
				mode:	state<=NORMAL_OPERATION;
				sel:	state<=MINUTES;
				default:	state<=HOURS;
				endcase
			end
					
			MINUTES:  begin	
				case(1)
					mode:	state<=NORMAL_OPERATION;
					sel:	state<=SECONDS;
					default:	state<=MINUTES;
				endcase
			end
					
			SECONDS: begin	
				case(1)
				mode:	state<=NORMAL_OPERATION;
				sel:	state<=HOURS;
				default:	state<=SECONDS;
				endcase
			end
							
			endcase
		end
	end
	
	
	always@(posedge clk, posedge rst) begin	
		if(rst)		sec<=0;
		else begin
			case(state)
			NORMAL_OPERATION:	
				if(mode) 	sec<=sec;
				else 	sec<=secplus1;
			
			SECONDS: begin
				if(mode) sec<=secplus1;
				else begin
					case(1)
					inc:	sec<=secplus1;
					dec:	sec<=secminus1;
					default:	sec<=sec;
					endcase
				end
			end	
				
			MINUTES:begin
				if(mode) 	sec<=secplus1;
				else		sec<=sec;
			end
			
			HOURS:begin
				if(mode) 	sec<=secplus1;
				else		sec<=sec;
			end
			endcase
		end
	end
	
	always@(posedge clk, posedge rst) begin	
		if(rst)		mins<=0;
		else begin
			case(state)
			NORMAL_OPERATION:	begin
				if(mode)		mins<=mins;
				else begin
					if(incmin) 	mins<=minsplus1;
					else		mins<=mins;	
				end
			end
			
			SECONDS:	
				if(mode) begin
					if(incmin)	mins<=minsplus1;
					else	mins<=mins;
				end
				else 			mins<=mins;
			
			MINUTES:
				if(mode)
					if(incmin)	mins<=minsplus1;
					else		mins<=mins;
				else 	begin
					case(1)
						inc:	mins<=minsplus1;
						dec:	mins<=minsminus1;
						default: mins<=mins;
					endcase
				end
			
			HOURS:	
				if(mode) begin
					if(incmin)	mins<=minsplus1;
					else		mins<=mins;
				end
				else 			mins<=mins;
				
			endcase
		end
	end

	always@(posedge clk, posedge rst) begin	
		if(rst)		hrs<=0;
		else begin
			case(state)
			NORMAL_OPERATION:	
				if(mode)		hrs<=hrs;
				else begin
					if(inchrs) 	hrs<=hrsplus1;
					else 		hrs<=hrs;
				end
				
			SECONDS:
				if(mode)	if(inchrs) 	hrs<=hrsplus1;
							else 		hrs<=hrs;
				else 		hrs<=hrs;
				
			MINUTES:
				if(mode)	if(inchrs) 	hrs<=hrsplus1;
							else 		hrs<=hrs;
				else 		hrs<=hrs;
				
			HOURS:
				if(mode)	if(inchrs) 	hrs<=hrsplus1;
							else 		hrs<=hrs;
				else begin
					case(1)
						inc:	hrs<=hrsplus1;
						dec:	hrs<=hrsminus1;
						default: hrs<=hrs;
					endcase
				end
				
			endcase
		end
	end
	
endmodule


	
	
				
		