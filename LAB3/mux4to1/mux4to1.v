module mux4to1(w0,w1,w2,w3,s,f);
input w0,w1,w2,w3;
input [1:0]s;
output reg f;
always @ (w0,w1,w2,w3,s)begin
if(s==2'b00)
begin f=w0;end
else if(s==2'b01)
begin f=w1;end
else if(s==2'b10)
begin f=w2;end
else
begin f=w3;end
end
endmodule
