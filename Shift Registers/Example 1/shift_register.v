`timescale 1ns / 1ps

module shift_register(
    input a , clk,
    output reg q1,q2

    );
    
    always @(posedge clk)
        begin
            q2 = q1 ;
            q1 = a ;
        end
endmodule
