module QUES1(A,B,C,D,f);
input A,B,C,D;
output f;
assign f = (~A & ~B) |(~C & ~D)|(~B & ~C);
endmodule






