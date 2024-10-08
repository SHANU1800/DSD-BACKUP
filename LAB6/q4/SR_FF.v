module SR_FF (
    input  logic clk,
    input  logic reset,
    input  logic s,
    input  logic r,
    output logic q
);

always @(negedge clk or negedge reset) 
    if (~reset) 
        q <= 1'b0;
    else 
        case ({s, r})
            2'b00: q <= q;
            2'b01: q <= 1'b1;
            2'b10: q <= 1'b0;
            2'b11: q <= 1'b0;
        endcase
        endmodule
