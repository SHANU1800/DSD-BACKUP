`timescale 1ns/1ns
`include "tflipflop.v"
module tflipflop_tb();

reg clk;
reg reset;
reg t;
wire q;


tflipflop fxn(
    .clk(clk), 
    .reset(reset), 
    .t(t), 
    .q(q)
);

initial begin
    $dumpfile("tflipflop_tb.vcd");
    $dumpvars(0, tflipflop_tb);
    end
    initial begin
    clk = 0;
  forever #20 clk=~clk;
  end
  initial begin
t=1; reset=1 ;#20;
t=0; reset=1 ;#20;
t=1; reset=1 ;#20;
t=1; reset=0 ;#20;
t=1; reset=1 ;#20;
t=1; reset=1 ;#20;
t=0; reset=0 ;#20;
t=1; reset=1 ;#20;

#200 $finish;
$display("Done");

end
endmodule
