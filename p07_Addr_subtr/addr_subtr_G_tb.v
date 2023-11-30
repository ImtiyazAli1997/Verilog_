 //7Q. gate level implementation of addr subractor [test bench) 
module tb;

	reg [3:0] in1,in2;
	reg M;
	wire [3:0]  sum_diff;
	wire borrow_carry_out;
	wire [3:0] diff_org;
	
	integer i,j;
	addr_subtr as1 ( 
			.a(in1),
			.b(in2),
			.control_signal(M),
			.sum_diff(sum_diff),
			.br_Ca_out(borrow_carry_out)
	);
	
	assign diff_org = (~sum_diff)+1'b1;
	
	initial begin
		repeat(18) begin
			{in1,in2,M}=$random;
			#10;
			if (M) begin
				if(borrow_carry_out == 1)
					$display("  M=%d subractor A-B = %d -%d =Diff = %d (positive ) with borrow %d",M,in1,in2,sum_diff,borrow_carry_out);
				else
					$display(" M=%d subractor A-B = %d -%d =Diff = %d (negative - %d) with borrow %d",M,in1,in2,sum_diff,diff_org,borrow_carry_out);
			end
			else
				$display(" M=%d Adder A+B = %d +%d =sum (%d) = %d with c_out %d",M,in1,in2,{borrow_carry_out,sum_diff},sum_diff,borrow_carry_out);
				
			#10;
		end
		
		M=0;
		{in1,in2}=8'hFF;
		#1 $display(" M=%d Adder A+B = %d +%d =sum (%d) = %d with c_out %d",M,in1,in2,{borrow_carry_out,sum_diff},sum_diff,borrow_carry_out);
		#1 M=1; 
		#1;
		if(borrow_carry_out == 1)
			$display("  M=%d subractor A-B = %d -%d =Diff = %d (positive ) with borrow %d",M,in1,in2,sum_diff,borrow_carry_out);
		else
			$display(" M=%d subractor A-B = %d -%d =Diff = %d (negative - %d) with borrow %d",M,in1,in2,sum_diff,diff_org,borrow_carry_out);
		
		
	end
endmodule

/*
	if there is a borrow (borrow_carry_out signal) generated in subraction then result is positive.
	else result is negative.
	

*/
		
		