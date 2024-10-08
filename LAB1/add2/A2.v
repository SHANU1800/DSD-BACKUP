module A2(A,B,C,D,f);
input A,B,C,D;
output f;
assign f = (A & B & C)|(A & B & D)|(D & B & C)|(A & D & C);
endmodule






