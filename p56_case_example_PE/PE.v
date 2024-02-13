module PE (y,i);
	
	input [3:0] i;
	output reg[1:0] y;
	
	`ifdef M1
	
	always@(i) begin
		if(i[3])		y=2'b11;
		else begin
			if(i[2])	y=2'b10;
			else begin	
				if(i[1])	y=2'b01;
				else begin
					if(i[0])	y=2'b00;
					else		y=2'bxx;
				end
			end
		end
	end
	`endif
	
	`ifdef M2
		always@(i) begin
			case(i)
				8,9,10,11,12,13,14,15: y=2'b11;
				4,5,6,7: 	y=2'b10;
				2,3:		y=2'b01;
				1:			y=2'b00;
				0:			y=2'bxx;
			endcase
		end
	`endif
	
	`ifdef M3
		always@(i) begin
			casex(i)
				4'b1xxx: 	y=2'b11;
				4'b01xx: 	y=2'b10;
				4'b001x:	y=2'b01;
				4'b001x:	y=2'b00;
				4'b0001:	y=2'b00;
				default:	y=2'bxx;
			endcase
		end
	`endif
	
	
	`ifdef M4
		always@(i) begin
			case(1)
				i[3]: 	y=2'b11;
				i[2]: 	y=2'b10;
				i[1]:	y=2'b01;
				i[0]:	y=2'b00;
				default:	y=2'bxx;
			endcase
		end
	`endif
	
endmodule