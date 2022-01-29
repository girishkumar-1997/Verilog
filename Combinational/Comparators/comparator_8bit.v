`timescale 1ns / 1ps

module comparator_8bit( 
    input [7:0] a,b,
    output reg lt,gt,eq
    );
    
    always @(a,b)
    begin
        assign lt = (a < b) ? 1'b1 : 1'b0 ;
        assign gt = (a > b) ? 1'b1 : 1'b0 ;
        assign eq = (a == b) ? 1'b1 : 1'b0 ;
    end    
endmodule
