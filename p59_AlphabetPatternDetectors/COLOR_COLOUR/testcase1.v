initial begin
		letter<="p";
		repeat (5) @(negedge clk);
		letter<="C";@(negedge clk);
		letter<="O";@(negedge clk);
		letter<="L";@(negedge clk);
		letter<="O";@(negedge clk);
		letter<="R";@(negedge clk);
		letter<="T";@(negedge clk);
		letter<="C";@(negedge clk);
		letter<="O";@(negedge clk);
		letter<="L";@(negedge clk);
		letter<="O";@(negedge clk);
		letter<="U";@(negedge clk);
		letter<="R";@(negedge clk);
		letter<="C";@(negedge clk);
		letter<="p";@(negedge clk);
		$finish;
	end