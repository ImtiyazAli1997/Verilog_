module mul8_v4 (input [7:0] a,b, output [15:0] y);

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
	
	assign R[0] = {7'b0000000,p[0]};
	assign R[1] = {6'b000000,p[1],1'b0};
	assign R[2] = {5'b00000,p[2],2'b00};
	assign R[3] = {4'b0000,p[3],3'b00};
	assign R[4] = {3'b00,p[4],4'b0000};
	assign R[5] = {2'b00,p[5],5'b00000};
	assign R[6] = {1'b0,p[6],6'b000000};
	assign R[7] = {p[7],7'b0000000};
	
	assign y=R[0]+R[1]+R[2]+R[3]+R[4]+R[5]+R[6]+R[7];
endmodule
			