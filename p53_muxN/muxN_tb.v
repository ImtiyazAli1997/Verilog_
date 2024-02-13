module tb;
	parameter SIZE=6;
	
	reg [SIZE-1:0] i0,i1;
	reg s;
	wire [SIZE-1:0] y;
	
	muxN #(.N(SIZE))uut ( y,s,i0,i1);
	
	initial begin
		repeat(10) begin
			{i0,i1,s}=$random;
			$strobe ("i0=%0d i1= %0d s=%0d y=%0d",i0,i1,s,y);
			#1;
		end
	end

endmodule