module home_Work_pattern (clk,rst,letter,eurika);
	input clk,rst;
	output eurika;
	input[7:0] letter;
	
	enum {NO,SH,SFO,SM,SE,SW,SSO,SR,SK} state;
	
	always @(posedge clk, posedge rst) begin
		if(rst)		state<=NO;
		else	begin
			case(state)
			NO:
				case(letter)
				"H":	state<=SH;
				default: state<=NO;
				endcase
				
			SH:
				case(letter)
				"O":	state<=SFO;
				"H":	state<=SH;
				default:state<=NO;
				endcase
			
			SFO:
				case(letter)
				"M":	state<=SM;
				"H":	state<=SH;
				default:state<=NO;
				endcase
			
			SM:
				case(letter)
				"E":	state<=SE;
				"H":	state<=SH;
				default:state<=NO;
				endcase
				
			SE:
				case(letter)
				"W":	state<=SW;
				"H":	state<=SH;
				default:	state<=NO;
				endcase
			
			SW:
				case(letter)
				"O":	state<=SSO;
				"H":	state<=SH;
				default:	state<=NO;
				endcase
			
			SSO:
				case(letter)
				"R":	state<=SR;
				"H":	state<=SH;
				default:	state<=NO;
				endcase
			
			SR:
				case(letter)
				"K":	state<=SK;
				"H":	state<=SH;
				default: state<=NO;
				endcase
			
			SK:
				case(letter)
				"H":	state<=SH;
				default: state<=NO;
				endcase
			
			endcase
		end
	end

assign eurika = (state==SK);
endmodule
			