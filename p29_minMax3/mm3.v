module mm3 (a,b,c,min,mid,max);
	input [7:0] a,b,c;
	output [7:0] min,mid,max;
	
	wire [7:0] min1,max1,min2;
	wire [7:0] min,mid,max;
	
	//mm3 q1(.a(),.b(),.c(),.min(),.mid(),.max())
	minmax p1(	.a(a),		.b(b),		.min(min1),	.max(max1)	);
	minmax p2(	.a(max1),	.b(c),		.min(min2),	.max(max)	);
	
	minmax p3(	.a(min1),	.b(min2),	.min(min),	.max(mid)	);

endmodule