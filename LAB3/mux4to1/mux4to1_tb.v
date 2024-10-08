`timescale 1ns/1ns
`include "mux4to1.v"
module mux4to1_tb();
reg w0,w1,w2,w3;
reg [1:0]s;
wire f;
mux4to1 mux1(w0,w1,w2,w3,s,f);
initial 
begin
$dumpfile("mux4to1_tb.vcd");
$dumpvars(0,mux4to1_tb);
s=2'b00; w0=1'b1 ; w1=1'b0 ; w2=1'b0 ; w3=1'b0 ;
#20;
s=2'b01; w0=1'b0 ; w1=1'b1 ; w2=1'b0 ; w3=1'b0 ;
#20;
s=2'b10; w0=1'b0 ; w1=1'b0 ; w2=1'b1 ; w3=1'b0 ;
#20;
s=2'b11; w0=1'b0 ; w1=1'b0 ; w2=1'b0 ; w3=1'b1 ;
#20;
s=2'b00; w0=1'b0  ; w1=1'b1 ; w2=1'b1 ; w3=1'b1 ;
#20;
s=2'b01; w0=1'b1  ; w1=1'b0 ; w2=1'b1 ; w3=1'b1 ;
#20;
s=2'b10; w0=1'b1 ; w1=1'b1 ; w2=1'b0 ; w3=1'b1 ;
#20;
s=2'b11; w0=1'b1  ; w1=1'b1 ; w2=1'b1 ; w3=1'b0 ;
#20;

$display("Test complete");
end
endmodule
