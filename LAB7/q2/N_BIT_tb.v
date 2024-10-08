`timescale 1ns/1ns
`include "N_BIT.v"
module N_BIT_tb();

reg clk;
reg [N-1:0] d;
wire [N-1:0] q;

N_BIT b1 (clk, d, q);

parameter N=8;

initial begin
    $dumpfile("N_BIT_tb.vcd");
    $dumpvars(0, N_BIT_tb);
end

initial begin
    clk = 0;
    d = 0;
    #10 d = 1;
    #10 d = 2;
    #10 d = 3;
    #10 d = 4;
    #10 $finish;
    
end
always #5 clk = ~clk;
endmodule
