module name_patter(clk,rst,letter,eurika);
	input clk;
	input rst;
	input [7:0] letter;
	output eurika;
	
	enum {NO,S_I1,S_M,S_T,S_I2,S_Y,S_A,S_Z} state;
	
	always@(posedge clk or posedge rst)
	begin
		if(rst) state<= NO;
		else begin
			case(state)
				NO:	state<=(letter =="I")?S_I1:NO;
					
				S_I1:
					case (letter)
						"M":state<=S_M;
						"I":state<=S_I1;
						default:state<=NO;
					endcase
					
				S_M:
					case (letter)
						"T":state<=S_T;
						"I":state<=S_I1;
						default:state<=NO;
					endcase
					
				S_T:
					case (letter)
						"I":state<=S_I2;
						default:state<=NO;
					endcase
					
				S_I2:
					case (letter)
						"Y":state<=S_Y;
						"I":state<=S_I1;
						"M":state<=S_M;
						default:state<=NO;
					endcase
					
				S_Y:
					case (letter)
						"A":state<=S_A;
						"I":state<=S_I1;
						default:state<=NO;
					endcase
					
				S_A:
					case (letter)
						"Z":state<=S_Z;
						"I":state<=S_I1;
						default:state<=NO;
					endcase
					
				S_Z:
					case (letter)
						"I":state<=S_I1;
						default:state<=NO;
					endcase
					
				default:state<=NO;// no there in sir. is this necessay or no?
			endcase
		end
	end
	
	assign eurika = (state==S_Z);
	
endmodule