`timescale 1ns/1ns
`include "shft4.v"

module SHIFT_4_tb();
    reg clk, S1, S0;
    reg [3:0] D;
    wire [3:0] Q;

    shft4 sf(clk, S1, S0, D, Q);

    initial begin
        $dumpfile("shft4_tb.vcd");
        $dumpvars(0, shft4_tb);
    end

    initial begin
        clk = 0;
        S1 = 0;
        S0 = 0;
        D = 4'b1010;
        #10 clk = 1;
        #10 clk = 0;

        S1 = 0;
        S0 = 0;
        #10 clk = 1;
        #10 clk = 0;

        S1 = 0;
        S0 = 1;
        D = 4'b1100;
        #10 clk = 1;
        #10 clk = 0;

        S1 = 1;
        S0 = 0;
        #10 clk = 1;
        #10 clk = 0;

        S1 = 1;
        S0 = 1;
        #10 clk = 1;
        #10 clk = 0;

        #100 $finish;
    end
endmodule
