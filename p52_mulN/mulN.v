module mulN #(parameter N=8)(input [N-1:0] a,b, output [2*N-1:0] y);

	genvar i,j;
	wire [N-1:0]p[0:N-1];
	wire [2*N-2:0] R[0:N-1];
	wire [2*N-1:0] S[0:N-2];	//make N-1 id any changes in y equation

	for(i=0;i<N;i=i+1)	begin
		for (j=0;j<N;j=j+1) begin
			and Gij	(p[i][j],a[i],b[j]);
		end
		
		assign R[i]=p[i]<<i;		//{p[i],i{1'b0}}		//replication operator
		
		if(i==0)			assign S[i]=R[i];			//S[0]=R[0];
		else if (i==N-1)	assign y=S[i-1]+R[i];		//y=S[7]; S[7]=S[6]+R[7];
		else				assign S[i]=S[i-1]+R[i];	//i=1,2,3,...6
	end
			//assign y=S[N-1]
endmodule		