`timescale 1ns/1ns
`include "EX1.v"

module EX1_tb();
reg A,B,C,D;
wire f;

EX1 plot(A,B,C,D,f);

initial
begin
$dumpfile("EX1_tb.vcd");
$dumpvars(0, EX1_tb);

A=1'b0; B=1'b0; C=1'b0; D=1'b0;
#20;
A=1'b0; B=1'b0; C=1'b0; D=1'b1;
#20;
A=1'b0; B=1'b0; C=1'b1; D=1'b0;
#20;
A=1'b0; B=1'b0; C=1'b1; D=1'b1;
#20;
A=1'b0; B=1'b1; C=1'b0; D=1'b0;
#20;
A=1'b0; B=1'b1; C=1'b0; D=1'b1;
#20;
A=1'b0; B=1'b1; C=1'b1; D=1'b0;
#20;
A=1'b0; B=1'b1; C=1'b1; D=1'b1;
#20;
A=1'b1; B=1'b0; C=1'b0; D=1'b0;
#20;
A=1'b1; B=1'b0; C=1'b0; D=1'b1;
#20;
A=1'b1; B=1'b0; C=1'b1; D=1'b0;
#20;
A=1'b1; B=1'b0; C=1'b1; D=1'b1;
#20;
A=1'b1; B=1'b1; C=1'b0; D=1'b0;
#20;
A=1'b1; B=1'b1; C=1'b0; D=1'b1;
#20;
A=1'b1; B=1'b1; C=1'b1; D=1'b0;
#20;
A=1'b1; B=1'b1; C=1'b1; D=1'b1;
#20;

$display("Test complete");
end
endmodule
