`timescale 1ns/1ns
`include "SHIFTREG.v"
module SHIFTREG_tb();

reg clk, si;
wire [5:0] so;

SHIFTREG fxn (clk, si, so);

initial begin
    $dumpfile("SHIFTREG_tb.vcd");
    $dumpvars(0, SHIFTREG_tb);
end
initial begin
    clk = 0;
    si = 0;
    #10 si = 1;
    #10 si = 0;
    #10 si = 1;
    #10 si = 0;
    #10 si = 1;
    #10 si = 0;
    #10 $finish;
end
always #5 clk = ~clk;
endmodule
