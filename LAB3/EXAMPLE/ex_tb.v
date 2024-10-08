`timescale 1ns/1ns
`include "ex.v"
module ex_tb();
reg x1,x2,s;
wire f;
ex ex2(x1,x2,s,f);
initial
begin
$dumpfile("ex_tb.vcd");
$dumpvars(0,ex_tb);
s=1'b0;x1=1'b0;x2=1'b0;
#20;
s=1'b0;x1=1'b0;x2=1'b1;
#20;
s=1'b0;x1=1'b1;x2=1'b0;
#20;
s=1'b0;x1=1'b1;x2=1'b1;
#20;
s=1'b1;x1=1'b0;x2=1'b0;
#20;
s=1'b1;x1=1'b0;x2=1'b1;
#20;
s=1'b1;x1=1'b1;x2=1'b0;
#20;
s=1'b1;x1=1'b1;x2=1'b1;
#20;
$display("test Complete");
end
endmodule
