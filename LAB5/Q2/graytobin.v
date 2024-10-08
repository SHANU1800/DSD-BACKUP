module mux8to1(
    input[2:0] s,
    input in0, in1, in2, in3, in4, in5, in6, in7,
    output reg op
);
    always @(*) begin
        case(s)
            1:op = in0;
            2:op = in1;
            3:op = in2;
            4:op = in3;
            5:op = in4;
            6:op = in5;
            7:op = in6;
            8:op = in7;
            default: op = 1'b0;
        endcase
    end
endmodule

module graytobin(
    input [3:0] g,
    output [3:0] b
);
    mux8to1 m3(g[3:1], 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, b[3]);
    mux8to1 m2(g[3:1], 1'b0, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, b[2]);
    mux8to1 m1(g[3:1], 1'b0, 1'b1, 1'b1, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1, b[1]);
    mux8to1 m0(g[3:1], g[0], ~g[0], ~g[0], g[0], ~g[0], g[0], g[0], ~g[0], b[0]);
endmodule

