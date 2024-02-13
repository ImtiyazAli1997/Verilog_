module mul8_v11 (input [7:0] a,b, output [15:0] y);

	genvar i,j;
	wire [7:0]p[0:7];
	wire [14:0] R[0:7];
	wire [15:0] S[0:7];

	for(i=0;i<8;i=i+1)	begin
		for (j=0;j<8;j=j+1) begin
			and Gij	(p[i][j],a[i],b[j]);
		end
		
		assign R[i]=p[i]<<i;
		
		if(i==0)		assign S[i]=R[i];			//S[0]=R[0];
		else if (i==7)	assign y=S[i-1]+R[i];		//y=S[7]; S[7]=S[6]+R[7];
		else			assign S[i]=S[i-1]+R[i];	//i=1,2,3,...6
	end
			
endmodule		