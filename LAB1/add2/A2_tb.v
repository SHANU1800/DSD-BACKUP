`timescale 1ns/1ns
`include "A2.v"

module A2_tb();
reg A,B,C,D;
wire f;

A2 plot(A,B,C,D,f);

initial
begin
$dumpfile("A2_tb.vcd");
$dumpvars(0, A2_tb);

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
