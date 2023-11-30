
module FS(
input a,
input b,
input Borrow_in,
output Borrow_out,
output Difference);


	HS h1 ( .Diff(w1), .b(b),.a(a),.Borrow(w2)); //does a-b  if .b(a), .a(b) then its b-a
	HS h2 ( .Diff(Difference), .a(w1),.b(Borrow_in),.Borrow(w3));
	or o1 (Borrow_out,w2,w3);
	
endmodule
