module tb;
	integer i,j;
	
	initial begin
		
		for(i=0;i<4;i=i+1) begin
			for(j=0;j<4;j=j+1) begin
				$display(" and a%0d%0d (p%0d%0d,a[%0d],b[%0d]);",i,j,i,j,i,j);
			end
		end
	end
endmodule
	