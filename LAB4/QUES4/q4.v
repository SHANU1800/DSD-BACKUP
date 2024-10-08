module q4(in,en,out);
input[15:0] in;
input en;
output reg[3:0] out;
integer i;
reg found;
always@(in,en)begin
if(en==1)begin
out = 4'b0000;
found=0;
for(i=15;i>=0;i=i-1)begin
 if(in[i]==1 && !found)begin
 out=i[3:0];
 found=1;
 end
 end
 end
 else begin
 out=4'b0000;
 end
 end
 endmodule
