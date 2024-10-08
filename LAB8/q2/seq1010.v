module dff(d,clk,q);
	input d,clk;
	output reg q=0;
	always @(posedge clk)
		q<=d;
endmodule
module seq1010(clk,w,state,z);
	input clk,w;
	output [1:0]state;
	output z;
	wire d1,d0;
	assign d1=(~w&state[0])|(w&state[1]&(~state[0]));
	assign d0=w;
	assign z=~w&state[1]&state[0];
	dff ff1(d1,clk,state[1]);
	dff ff0(d0,clk,state[0]);
endmodule
