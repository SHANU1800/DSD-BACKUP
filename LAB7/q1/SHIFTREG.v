module SHIFTREG(clk, si, so);
    input  clk;
    input  si;
    output [5:0] so;
reg [5:0] shr;

always @(posedge clk) begin
    shr <= {si, shr[5:1]};
end

assign so = shr;
endmodule
