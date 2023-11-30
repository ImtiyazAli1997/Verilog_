module tb;
	reg a,b;
	wire u,v;
	
	latch KABALI (u,v,a,b);
	
	initial
		begin
			a=0;		b=1;
			#1;		$display (a,b,":",u,v);
			a=0;		b=0;
			#1;	$display (a,b,":",u,v);
			a=1;		b=1;
			#1;	$display (a,b,":",u,v);
		end
endmodule