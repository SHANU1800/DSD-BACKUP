`timescale 1ns/1ns
`include "seq1010.v"
module seq1010_tb();
	reg clk;
	reg w;
	wire[1:0]state;
	wire z;
	seq1010 mod(clk,w,state,z);
	always #10 clk=~clk;
	initial begin
	clk=0;w=0;
	$dumpfile("seq1010_tb.vcd");
	$dumpvars(0,seq1010_tb);
	#10 w=0;
	#10 w=0;
	#10 w=1;
	#10 w=0;
	#10 w=1;
	#10 w=0;
	#10 w=1;
	#10 w=0;
	#10 w=1;
	#10 w=1;
	#200 $finish;
	$display("Test complete");
	end
	endmodule
