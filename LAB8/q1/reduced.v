module jkff(j,k,clk,q);
	input j,k,clk;
	output reg q=0;
	always@(posedge clk)
	begin
		case({j,k})
			2'b00:q<=q;
			2'b01:q<=0;
			2'b10:q<=1;
			2'b11:q<=~q;
			default:q<=q;
		endcase
	end
endmodule
module reduced(x,state,clk,out);
input clk;
input x;
output [2:0]state;
output out;
assign out=(~x&(~state[2])&state[1])|(x&state[1]&(~state[0]));
jkff ff2(~x&state[1]&state[0],x,clk,state[2]);
jkff ff1(~x,x&(~state[2]),clk,state[1]);
jkff ff0(x,x|state[1],clk,state[0]);
endmodule
