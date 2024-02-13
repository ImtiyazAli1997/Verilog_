module add10 (sum,a,b);
	input[9:0] a,b;
	output [10:0] sum;
	//add10 (.sum(),.a(),.b());
	
	FA m0(  .cout(c1),   .sum(sum[0]),   .a(a[0]),  .b(b[0]) , .c(1'b0));
	FA m1(  .cout(c2),   .sum(sum[1]),   .a(a[1]),  .b(b[1]) , .c(c1)  );
	FA m2(  .cout(c3),   .sum(sum[2]),   .a(a[2]),  .b(b[2]) , .c(c2)  );
	FA m3(  .cout(c4),   .sum(sum[3]),   .a(a[3]),  .b(b[3]) , .c(c3)  );
	FA m4(  .cout(c5),   .sum(sum[4]),   .a(a[4]),  .b(b[4]) , .c(c4)  );
	FA m5(  .cout(c6),   .sum(sum[5]),   .a(a[5]),  .b(b[5]) , .c(c5)  );
	FA m6(  .cout(c7),   .sum(sum[6]),   .a(a[6]),  .b(b[6]) , .c(c6)  );
	FA m7(  .cout(c8),   .sum(sum[7]),   .a(a[7]),  .b(b[7]) , .c(c7)  );
	FA m8(  .cout(c9),   .sum(sum[8]),   .a(a[8]),  .b(b[8]) , .c(c8)  );
	FA m9(  .cout(sum[10]),   .sum(sum[9]),   .a(a[9]),  .b(b[9]) , .c(c9)  );

endmodule