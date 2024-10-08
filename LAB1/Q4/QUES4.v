module QUES4(A,B,C,D,f);
input A,B,C,D;
output f;
assign f = (A & D) |(C & D)|(~A & ~C & ~D)|(~B & D);
endmodule






