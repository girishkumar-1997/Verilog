`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2022 11:33:26
// Design Name: 
// Module Name: nbit_comparator
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module nbit_comparator(A,B,lt,gt,eq );
    
    parameter word_size = 16 ;
    input [word_size-1 : 0] A,B;
    output reg lt,gt,eq;
    
    always @(A,B)
        begin
           // gt = 0; lt=0 ; eq =0;
            if(A>B) begin gt = 1;lt=0 ; eq =0; end
            else if (A<B) begin lt =1;gt = 0;eq =0; end
            else begin eq = 1;gt = 0; lt=0 ; end
        end
endmodule
