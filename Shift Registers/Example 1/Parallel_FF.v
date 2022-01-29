`timescale 1ns / 1ps

module Parallel_FF(
    input clk,a,
    output reg q2,q1
    );
    
     
    
    always @(posedge clk)
        begin
            q1 = a ;
            q2 = q1 ;
         end
endmodule
