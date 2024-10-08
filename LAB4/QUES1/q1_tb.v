`timescale 1ns/1ns
`include "q1.v"
module q1_tb;
reg[1:0]w;
reg en;
wire [3:0]op;
q1 dto4(w,en,op);
initial
begin
$dumpfile("q1_tb.vcd");
$dumpvars(op,q1_tb);
en=1'b0 ;w=2'b00 ;
#20;
en=1'b0 ;w=2'b01 ;
#20;
en=1'b0 ;w=2'b10 ;
#20;
en=1'b0 ;w=2'b11 ;
#20;
en=1'b1 ;w=2'b00 ;
#20;
en=1'b1 ;w=2'b01 ;
#20;
en=1'b1 ;w=2'b10 ;
#20;
en=1'b1 ;w=2'b11 ;
#20;

$display("Test complete");
end
endmodule
