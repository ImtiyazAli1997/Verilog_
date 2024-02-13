task modepulse;
	begin
		@(negedge clk);
		mode=1'b1;
		@(negedge clk);
		mode=1'b0;
		
	end
endtask

task selpulse;
	begin
		@(negedge clk);
		sel=1'b1;
		@(negedge clk);
		sel=1'b0;
		
	end
endtask


task inc_pulse;
	begin
		@(negedge clk);
		inc=1'b1;
		@(negedge clk);
		inc=1'b0;
		
	end
endtask

task dec_pulse;
	begin
		@(negedge clk);
		dec=1'b1;
		@(negedge clk);
		dec=1'b0;
		
	end
endtask

/*
task pulse (automatic ref  p, input n);
	begin
		repeat(n) begin
			@(negedge clk) p=1;
			@(negedge clk) p=0;
		end
	end
endtask
*/