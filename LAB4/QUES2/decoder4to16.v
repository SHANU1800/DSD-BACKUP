module decoder2to4(w,en,op);
input[1:0]w;
input en;
output reg[3:0]op;
always@(w,en)
begin
if(en==1 && w==0)
op=1;
else if(en==1 && w==1)
op=2;
else if(en==1 && w==2)
op=4;
else if(en==1 && w==3)
op=8;
else
op=0;
end
endmodule

module decoder4to16(w,En,op);
input [3:0]w;
input En;
output [15:0]op;
wire[3:0]en;

decoder2to4 d1(w[3:2],En,en[3:0]);
decoder2to4 d2(w[1:0],en[0],op[3:0]);
decoder2to4 d3(w[1:0],en[1],op[7:4]);
decoder2to4 d4(w[1:0],en[2],op[11:8]);
decoder2to4 d5(w[1:0],en[3],op[15:12]);

endmodule

