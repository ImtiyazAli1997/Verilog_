module tb;
	reg[3:0] s;
	reg cb;
	wire [3:0] s_out;
	
	integer i;
	
	obc dut(.s_in(s),.current_bit(cb),.s_out(s_out));
	
	initial begin
		cb=0;
		repeat(2)	begin
			for(i=0; i<15;i=i+1) begin
				s=i;
				#1 $display($time,"  %0d + %0d =%0d",s,cb,s_out);
			end
			cb=1'b1;
		end
	end
		
endmodule