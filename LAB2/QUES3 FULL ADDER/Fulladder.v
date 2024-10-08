module Fulladder(a,b,Cin,Sum,Cout);
input [3:0] a;
input [3:0] b;
input Cin;
output Cout;
output [3:0] Sum;
assign {Cout,Sum}=a+b+Cin;

endmodule






