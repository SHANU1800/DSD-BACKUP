module q1(w,en,op);
input[1:0]w;
input en;
output reg[3:0]op;
always@(w,en)
begin
if(en==0 && w==0)
op=1;
else if(en==0 && w==1)
op=2;
else if(en==0 && w==2)
op=4;
else if(en==0 && w==3)
op=8;
else
op=0;
end
endmodule
