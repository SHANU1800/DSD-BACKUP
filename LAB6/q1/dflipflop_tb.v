`timescale 1ns/1ns
`include "dflipflop.v"
module dflipflop_tb();

reg clk;
reg reset;
reg d;
wire q;

dflipflop fxn (clk, reset, d, q);

initial begin
    $dumpfile("dflipflop_tb.vcd");
    $dumpvars(0, dflipflop_tb);
    end
    initial begin
    clk = 0;
 forever #20 clk=~clk;
end

initial begin
d=0; reset=0; #20;
d=1; reset=0; #20;
d=0; reset=0; #20;
d=1; reset=0; #20;
d=0; reset=0; #20;
d=1; reset=1; #20;
d=1; reset=0; #20;
d=1; reset=0; #20;

#160 $finish;
$display("Test complete");
end
endmodule
