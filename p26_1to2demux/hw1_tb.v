module tb; 
reg i,s;
wire y1,y0;

hw1 DUT(y1,y0,i,s);
initial
 begin
  i=1'b0;s=1'b0;#1;$display("i=%b,s=%b : y1=%b,y0=%b",i,s,y1,y0); 
  i=1'b0;s=1'b1;#1;$display("i=%b,s=%b : y1=%b,y0=%b",i,s,y1,y0); 
  i=1'b1;s=1'b0;#1;$display("i=%b,s=%b : y1=%b,y0=%b",i,s,y1,y0); 
  i=1'b1;s=1'b1;#1;$display("i=%b,s=%b : y1=%b,y0=%b",i,s,y1,y0); 
 end
endmodule

/*
do run.do
# ** Warning: (vlib-34) Library already exists at "work".
# Model Technology ModelSim ALTERA vlog 6.3g_p1 Compiler 2008.08 Aug 13 2008
# -- Compiling module hw1
# 
# Top level modules:
# 	hw1
# Model Technology ModelSim ALTERA vlog 6.3g_p1 Compiler 2008.08 Aug 13 2008
# -- Compiling module tb
# 
# Top level modules:
# 	tb
# vsim work.tb 
# Loading work.tb
# Loading work.hw1
# i=0,s=0 : y1=0,y0=0
# i=0,s=1 : y1=0,y0=0
# i=1,s=0 : y1=0,y0=1
# i=1,s=1 : y1=1,y0=0
*/