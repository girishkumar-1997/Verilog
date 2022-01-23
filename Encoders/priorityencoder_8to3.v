`timescale 1ns / 1ps


module priorityencoder_8to3(
    input [7:0] i,
    output reg [2:0] o
    );
    
    always @ (*)
        begin
            if(i[7])      o = 3'd7 ;
            else if(i[6]) o = 3'd6 ;
            else if(i[5]) o = 3'd5 ;
            else if(i[4]) o = 3'd4 ;
            else if(i[3]) o = 3'd3 ;
            else if(i[2]) o = 3'd2 ;
            else if(i[1]) o = 3'd1 ;
            else if(i[0]) o = 3'd0 ;    
            else          o = 3'dx ;
        end
endmodule
