// this code detects both pattermns color and colour. 

module name_patter(clk,rst,letter,eurika);
	input clk;
	input rst;
	input [7:0] letter;
	output eurika;
	
	enum {NO,S_C,S_O1,S_L,S_O2,S_U,S_R} state;
	
	always@(posedge clk or posedge rst)
	begin
		if(rst) state<= NO;
		else begin
			case(state)
				NO:	state<=(letter =="C")?S_C:NO;
					
				S_C:
					case (letter)
						"O":state<=S_O1;
						"C":state<=S_C;
						default:state<=NO;
					endcase
					
				S_O1:
					case (letter)
						"L":state<=S_L;
						"C":state<=S_C;
						default:state<=NO;
					endcase
					
				S_L:
					case (letter)
						"O":state<=S_O2;
						"C":state<=S_C;
						default:state<=NO;
					endcase
					
				S_O2:
					case (letter)
						"U":state<=S_U;//comment if only color
						"R":state<=S_R;
						"C":state<=S_C;
						default:state<=NO;
					endcase
				
				S_U:
					case (letter)
						"R":state<=S_R;
						"C":state<=S_C;
						default:state<=NO;
					endcase
					
				S_R:
					case (letter)
						"C":state<=S_C;
						default:state<=NO;
					endcase
				
				default:state<=NO;// no there in sir. is this necessay or no?
			endcase
		end
	end
	
	assign eurika = (state==S_R);
	
endmodule