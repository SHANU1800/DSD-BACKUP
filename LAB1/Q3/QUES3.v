module QUES3(A,B,C,D,f);
input A,B,C,D;
output f;
assign f = (C & ~D) |(C & ~A)|(C & ~B)|(B & ~C & D);
endmodule






