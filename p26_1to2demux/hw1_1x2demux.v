module hw1 (y1,y0,i,s);
input i,s;
output y1,y0;
//add your code here
	not n1(sbar,s);
	and	a1(y0,sbar,i);
	and a2(y1,s,i);
	
endmodule
