`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2022 21:37:18
// Design Name: 
// Module Name: binarytogray_d
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


module binarytogray_d(
    input [3:0] b,
    output [3:0] g
    );
    
    assign g[3] = b[3];
    assign g[2] = b[3] ^ b[2];
    assign g[1] = b[2] ^ b[1];
    assign g[0] = b[1] ^ b[0];
    
endmodule
