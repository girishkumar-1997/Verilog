`timescale 1ns / 1ps

module shift_register_nonblocking(
    input a , clk,
    output reg q1,q2

    );
    
    always @(posedge clk)
//        begin
//            q1 <= a ;
//            q2 <= q1 ;
//        end
        q1 <= a ;
    always @(posedge clk)
        q2 <= q1 ;
         
endmodule

