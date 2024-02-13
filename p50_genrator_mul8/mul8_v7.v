module mul8_v7 (input [7:0] a,b, output [15:0] y);

	genvar i,j;
	wire [7:0]p[0:7];
	//wire [7:0] p[0];
	//wire [7:0] p[1]
	//wire [7:0] p[2]
	//wire [7:0] p[3]
	//wire [7:0] p[4]..
	
	
	//the block outside the alwaus is generator block
	
	for(i=0;i<8;i=i+1)	begin
		for (j=0;j<8;j=j+1) begin
			and Gij	(p[i][j],a[i],b[j]);
		end
	end
	
	
	wire [14:0] R[0:7];;
	
	for(i=0;i<8;i=i+1) begin
		assign R[i]=p[i]<<i;
	end
	
	// making a genrator for addition of R[i]
	//make the size 1 bit extra than r as a carry migh generate
	
	wire [15:0] S[0:7];
	assign S[0]=R[0];
	
	assign S[1]=S[0]+R[1];
	assign S[2]=S[1]+R[2];
	assign S[3]=S[2]+R[3];
	assign S[4]=S[3]+R[4];
	assign S[5]=S[4]+R[5];
	assign S[6]=S[5]+R[6];
	
	assign S[7]=S[6]+R[7];
	assign y=S[7];
	
	//assign y=S[6]+R[7]
	
endmodule
			