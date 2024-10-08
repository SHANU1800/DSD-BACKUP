module question1(A,B,C,D,f);
input A,B,C,D;
output f;
assign g=(~C & ~D);
assign h=(~A | ~B);
assign f = (g & h)|(~g & ~h);

endmodule






