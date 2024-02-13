module mul8_v3 (input [7:0] a,b, output [15:0] y);

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
	
	//same as v2 just changing p[0][7],p[0][6],p[0][5],p[0][4],p[0][3],p[0][2],p[0][1],p[0][0] ->p[0]
	//p[i][7],p[i][6],p[i][5],p[i][4],p[i][3],p[i][2],p[i][1],p[i][0] ->p[i] 
	wire [14:0] R0,R1,R2,R3,R4,R5,R6,R7;;
	
	assign R0 = {7'b0000000,p[0]};
	assign R1 = {6'b000000,p[1],1'b0};
	assign R2 = {5'b00000,p[2],2'b00};
	assign R3 = {4'b0000,p[3],3'b00};
	assign R4 = {3'b00,p[4],4'b0000};
	assign R5 = {2'b00,p[5],5'b00000};
	assign R6 = {1'b0,p[6],6'b000000};
	assign R7 = {p[7],7'b0000000};
	
	assign y=R0+R1+R2+R3+R4+R5+R6+R7;
endmodule
			