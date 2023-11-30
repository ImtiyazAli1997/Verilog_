module tb;
	reg e,f;
	wire q,q_bar;
	
	latch2 uut (e,f,q,q_bar);
	
	initial begin
		e=0;f=1;#10 $display(e,f,":",q,q_bar);
		e=1;f=1;#10 $display(e,f,":",q,q_bar);
		
		e=1;f=0;#10 $display(e,f,":",q,q_bar);
		e=1;f=1;#10 $display(e,f,":",q,q_bar);
		
		e=0;f=0;#10 $display(e,f,":",q,q_bar);
		e=1;f=1;#10 $display(e,f,":",q,q_bar);
	end
	
endmodule