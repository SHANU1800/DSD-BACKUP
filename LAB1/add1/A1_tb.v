`timescale 1ns/1ns
`include "A1.v"

module A1_tb();
reg x1,x2,x3;

wire f1,f2;

A1 OUT1(x1, x2, x3, f1, f2);


initial
begin
$dumpfile("A1_tb.vcd");
$dumpvars(0, A1_tb);

x1=1'b0; x2=1'b0; x3=1'b0;
#20;
x1=1'b0; x2=1'b0; x3=1'b1;
#20;
x1=1'b0; x2=1'b1; x3=1'b0;
#20;
x1=1'b0; x2=1'b1; x3=1'b1;
#20;
x1=1'b1; x2=1'b0; x3=1'b0;
#20;
x1=1'b1; x2=1'b0; x3=1'b1;
#20;
x1=1'b1; x2=1'b1; x3=1'b0;
#20;
x1=1'b1; x2=1'b1; x3=1'b1;
#20;
$display("Test complete");
end
endmodule
