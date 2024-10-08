`timescale 1ns/1ns
`include "sync.v"
//Name of the Verilog file
module sync_tb;
reg clear, clk;
wire [2:0] Q;
// Instanstiation
sync G0 (clear, clk, Q);
always #5 clk=~clk;
initial
begin
clear=0;
clk=1;
#150 $finish;
end
initial
begin
$dumpfile("sync_tb.vcd");
$dumpvars(0,sync_tb);
$monitor($time, " clear=%b, Q=%3b", clear, Q );
#12 clear =1;
end
endmodule