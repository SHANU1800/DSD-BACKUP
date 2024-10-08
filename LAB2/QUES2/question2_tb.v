`timescale 1ns/1ns
`include "question2.v"

module question2_tb();
reg A,B,Cin;
wire Sum,Carry;

question2 q2(A,B,Cin,Sum,Carry);

initial
begin
$dumpfile("question2_tb.vcd");
$dumpvars(0, question2_tb);

A=1'b0; B=1'b0; Cin=1'b0; 
#20;
A=1'b0; B=1'b0; Cin=1'b1; 
#20;
A=1'b0; B=1'b1; Cin=1'b0; 
#20;
A=1'b0; B=1'b1; Cin=1'b1; 
#20;
A=1'b1; B=1'b0; Cin=1'b0; 
#20;
A=1'b1; B=1'b0; Cin=1'b1; 
#20;
A=1'b1; B=1'b1; Cin=1'b0; 
#20;
A=1'b1; B=1'b1; Cin=1'b1; 
#20;

$display("Test complete");
end
endmodule
