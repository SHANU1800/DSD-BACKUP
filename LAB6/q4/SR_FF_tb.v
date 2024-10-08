`timescale 1ns/1ns
`include "SR_FF.v"
module SR_FF_tb();

reg clk;
reg reset;
reg s;
reg r;
wire q;

SR_FF sf (clk, reset, s, r, q);

initial begin
    $dumpfile("SR_FF_tb.vcd");
    $dumpvars(0, SR_FF_tb);
    clk = 0;
    reset = 0;
    s = 0;
    r = 0;
    #5 reset = 1;
    #10 reset = 0;
    #15 s = 1;
    r = 0;
    #25 s = 0;
    r = 1;
    #35 s = 1;
    r = 1;
    #45 $finish;
end

always #5 clk = ~clk;

endmodule
