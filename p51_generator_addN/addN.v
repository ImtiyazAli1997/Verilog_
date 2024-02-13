module FA (a,b,c_in,sum,c_out);
	input a,b,c_in;
	output sum,c_out;
	
	assign c_out= (a & b)|(b & c_in)|(c_in & a);
	
	assign sum=a^b^c_in;
	
endmodule

module AdderN #(parameter N=4) (	input [N-1:0]a,
									input [N-1:0]b,
									output [N:0]s
								);
								
	genvar i;
	wire [N-1:0] c;
	
	for(i=0;i<N;i=i+1) begin
		if(N==1)					FA Gi (a[i],b[i],0,s[i],s[i+1]);
		else begin
			if(i==0)				FA Gi (a[i],b[i],0,s[i],c[i]);
			else if (i== N-1)		FA Gi (a[i],b[i],c[i-1],s[i],s[i+1]);
			else					FA Gi (a[i],b[i],c[i-1],s[i],c[i]);
		end
	end
	
endmodule
