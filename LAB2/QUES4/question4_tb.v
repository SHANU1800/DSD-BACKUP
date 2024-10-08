`timescale 1ns/1ns
`include "question4.v"

module question4_tb();
reg [2:0] a;
reg [2:0] b;
wire [5:0] p;
wire w1,w2,w3,w4;
question4 q4(a,b,p);

initial
begin
$dumpfile("question4_tb.vcd");
$dumpvars(0, question4_tb);

a=3'b010; b=3'b001; 
#20;
a=3'b011; b=3'b101; 
#20;
a=3'b101; b=3'b011; 
#20;
a=3'b011; b=3'b001; 
#20;
a=3'b001; b=3'b111; 
#20;

$display("Test complete");
end
endmodule
