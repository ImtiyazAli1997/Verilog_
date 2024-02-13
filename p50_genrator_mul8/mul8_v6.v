module mul8_v6 (input [7:0] a,b, output [15:0] y);

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
	
	//MSB zeros are removed
	assign R[0] = p[0];				//p[0] can be written as p[0]<<0
	assign R[1] = p[1]<<1;
	assign R[2] = p[2]<<2;
	assign R[3] = p[3]<<3;
	assign R[4] = p[4]<<4;
	assign R[5] = p[5]<<5;
	assign R[6] = p[6]<<6;
	assign R[7] = p[7]<<7;
	
	assign y=R[0]+R[1]+R[2]+R[3]+R[4]+R[5]+R[6]+R[7];
endmodule
			