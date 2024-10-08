`timescale 1ns/1ns
`include "QUES3.v"

module QUES3_tb();
reg A,B,C,D;
wire f;

QUES3 plot(A,B,C,D,f);

initial
begin
$dumpfile("QUES3_tb.vcd");
$dumpvars(0, QUES3_tb);

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
