`timescale 1ns/1ns
`include "JKFLIPFLOP.v"
module JKFLIPFLOP_tb();
reg clk;
reg reset;
reg j;
reg k;
wire q;

JKFLIPFLOP jf (clk, reset, j, k, q);

initial begin
    $dumpfile("JKFLIPFLOP_tb.vcd");
    $dumpvars(0, JKFLIPFLOP_tb);
    clk = 0;
    reset = 1;
    j = 0;
    k = 0;
    #5 reset = 0;
    #10 j = 1;
    k = 0;
    #20 j = 0;
    k = 1;
    #30 j = 1;
    k = 1;
    #40 $finish;
end

always #5 clk = ~clk;

endmodule
