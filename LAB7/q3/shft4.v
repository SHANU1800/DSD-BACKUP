module shft4(clk, S1, S0, D, Q);
    input clk, S1, S0;
    input [3:0] D;
    output reg [3:0] Q;

    always @(posedge clk) begin
        case ({S1, S0})
            2'b00: Q <= {Q[2], Q[3], D[0], D[1]};
            2'b01: Q <= D;
            2'b10: Q <= ~Q; 
            2'b11: Q <= Q; 
        endcase
    end
endmodule




