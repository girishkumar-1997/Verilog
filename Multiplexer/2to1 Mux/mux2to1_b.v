`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.01.2022 19:33:29
// Design Name: 
// Module Name: mux2to1_b
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


module mux2to1_b(inb,selb,outb);
    input [1:0] inb ; input selb;
    output outb;
    reg outb;
    
    always @(inb or selb)
    case(selb)
        0:outb = inb[0];
        1:outb = inb[1];
        default : outb = 1'bx;
     endcase
endmodule
