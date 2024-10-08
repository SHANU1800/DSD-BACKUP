module pe4to2(in,en,out);
input[3:0]in;
input en;
output reg[1:0]out;
always@(in,en)
begin
if(en==1)
   begin
casex(in)
4'b1XXX:out=2'b11;
#20;
4'b01XX:out=2'b10;
#20;
4'b001X:out=2'b01;
#20;
4'b0000:out=2'b00;
#20;
endcase
end
else
begin
out=2'b00;
end
end
endmodule
