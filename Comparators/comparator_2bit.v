`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2022 13:37:34
// Design Name: 
// Module Name: comparator_2bit
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


module comparator_2bit(
    input [1:0] a,b,
    output reg l,g,e
    );
    
    always @(a,b)
        begin
            l = ({a}<{b});
            g = ({a}>{b});
            e = ({a}=={b});
        end  
endmodule
