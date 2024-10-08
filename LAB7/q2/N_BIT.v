module N_BIT(clk, d, q);
    input  clk;
    input  [N-1:0] d;
    output reg [N-1:0] q;

parameter N = 8;

always @(posedge clk) begin
    q<=d;
end
endmodule
