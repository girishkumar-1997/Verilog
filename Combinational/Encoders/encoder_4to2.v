`timescale 1ns / 1ps

module encoder_4to2(
    input [3:0] in,
    output [1:0] out
    );
    
    assign out = (in == 1) ? 2'd0 :
                 (in == 2) ? 2'd1:
                 (in == 4) ? 2'd2:
                 (in == 8) ? 2'd3:
                  2'dx;
endmodule
