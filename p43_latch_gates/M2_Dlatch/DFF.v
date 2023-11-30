module dff (output wire q, q_bar, input clk,d);
	
	`idef GATE
		not n1(clk_bar,clk);
		
		dlatch MASTER 	(q1,q1_bar,clk_bar,d);
		dlatch SLAVE	(q,q_bar,clk,q1);
	`endif
	
	
	`ifdef BEH
		always @(posedge clk)
			q<=d;		//NBA assignment		NBA:non blobking assignment
	`endif
	
	
	
	
	
endmodule