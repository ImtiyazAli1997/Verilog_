	initial begin
		letter<="p";
		repeat (5) 
		@(posedge clk);letter<="C";
		@(posedge clk);letter<="O";
		@(posedge clk);letter<="L";
		@(posedge clk);letter<="O";
		@(posedge clk);letter<="R";
		@(posedge clk);letter<="T";
		@(posedge clk);letter<="C";
		@(posedge clk);letter<="O";
		@(posedge clk);letter<="L";
		@(posedge clk);letter<="O";
		@(posedge clk);letter<="U";
		@(posedge clk);letter<="R";
		@(posedge clk);letter<="C";
		@(posedge clk);letter<="p";
		@(posedge clk);
		@(posedge clk);
		$finish;
	end