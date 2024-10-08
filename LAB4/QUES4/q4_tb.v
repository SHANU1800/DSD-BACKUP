`timescale 1ns/1ns
`include  "q4.v"
module q4_tb;
reg[15:0] in;
reg en;
wire[3:0] out;
q4 q(in,en,out);
initial
begin
$dumpfile("q4_tb.vcd");
$dumpvars(0,q4_tb);

en=1'b0 ;in=16'b0000001000000001;
#20;
en=1'b1 ;in=16'b0011111000000001;
#20;
en=1'b1 ;in=16'b1001000000100110;
#20;
en=1'b1 ;in=16'b0000000000000001;
#20;
en=1'b1 ;in=16'b0100000000000000;
#20;
en=1'b1 ;in=16'b0000000001100011;
#20;
$display("Test complete");
end
endmodule
