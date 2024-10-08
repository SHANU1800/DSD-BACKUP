module question2(A,B,Cin,Sum,Carry);
input A,B,Cin;
output Sum,Carry;
assign Sum= A ^ B ^ Cin;
assign Carry=(A & B)|(B & Cin)|(Cin & A);

endmodule






