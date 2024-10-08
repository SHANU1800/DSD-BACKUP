module QUES2(A,B,C,D,f);
input A,B,C,D;
output f;
assign f = (~A & ~D) |(C & ~D)|(~A & B & C)|(A & B & ~C);
endmodule






