
timescale 1ns/1ns
`include "EX.v"
module EX_tb();
reg [1:0]w;
reg En;
wire [0:3]f;
EX ex(w,f,En);
initial
begin
$dumpfile("EX_tb.vcd");
$dumpvars(0,EX_tb);
w=0;En=1;
#20;
w=1;En=1;
#20;
w=2;En=1;
#20;
w=3;En=1;
#20;
$display("test Complete");
end
endmodule
