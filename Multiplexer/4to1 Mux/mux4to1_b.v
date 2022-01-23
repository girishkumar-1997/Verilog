`timescale 1ns / 1ps

module mux4to1_b(
    input [3:0] in_b,
    input [1:0] sel_b,
    output reg out_b
    );
    
    always @(in_b or sel_b)
    case(sel_b)
        /*2'b00*/  0 : out_b = in_b[0];
        /*2'b01*/  1 : out_b = in_b[1];
        /*2'b10*/  2 : out_b = in_b[2];
        /*2'b11*/  3 : out_b = in_b[3];
        default : out_b = 1'bx;
        endcase
endmodule
