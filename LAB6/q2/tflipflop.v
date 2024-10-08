module tflipflop (
    input  logic clk,
    input  logic reset,
    input  logic t,
    output logic q
);
initial begin
q=1'b0;
end

always @(negedge clk) begin
    if (~reset) begin
        q <= 1'b0;
        end
    else if (t) 
    begin
        q <= ~q;
        end
        else
         begin
        q<=q; 
        end
        end
endmodule 
