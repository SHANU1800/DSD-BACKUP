`timescale 1ns/1ns
`include "reduced.v"
module reduced_tb();
	reg clk;
	reg x;
	wire[2:0]state;
	wire out;
	reduced mod(x,state,clk,out);
	always #10 clk=~clk;
	initial begin
	$dumpfile("reduced_tb.vcd");
	$dumpvars(0,reduced_tb);
	clk=0;
	x=0;
	#10 x=0;
	#10 x=0;
	#10 x=1;
	#10 x=0;
	#10 x=1;
	#10 x=0;
	#100 $finish;
	$display("Test complete");
	end
	endmodule
