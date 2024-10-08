`timescale 1ns/1ns
`include "Fulladder.v"

module Fulladder_tb();
reg Cin;
reg [3:0] a;
reg [3:0] b;
wire [3:0] Sum;
wire Cout;
Fulladder fa(a,b,Cin,Sum,Carry);

initial
begin
$dumpfile("Fulladder_tb.vcd");
$dumpvars(0, Fulladder_tb);

a=4'b0000; b=4'b0000; Cin=1'b0; 
#50;
a=4'b1111; b=4'b0011; Cin=1'b1; 
#50;
a=4'b0100; b=4'b0001; Cin=1'b0; 
#50;
a=4'b1110; b=4'b0101; Cin=1'b1; 
#50;
a=4'b0011; b=4'b0000; Cin=1'b0; 
#50;
a=4'b0010; b=4'b1001; Cin=1'b1; 
#50;

$display("Test complete");
end
endmodule
