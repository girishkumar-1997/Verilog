`timescale 1ns / 1ps


module encoder8to3(
    input [7:0] in ,
    output reg [2:0] out
    );
    
    always @(*)
        begin
            case(in)
                1 : out = 3'd0;
                2 : out = 3'd1;
                4 : out = 3'd2;
                8 : out = 3'd3;
                16 : out =3'd4;
                32 : out = 3'd5;
                64 : out = 3'd6;
                128 : out = 3'd7;
                default : out = 3'dx;
              endcase
           end
endmodule
