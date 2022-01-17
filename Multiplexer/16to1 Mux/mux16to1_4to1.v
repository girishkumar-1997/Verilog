`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2022 00:44:12
// Design Name: 
// Module Name: mux16to1_41s
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


module mux16to1_41s(
    input [15:0] in,
    input [3:0] sel,
    output out
    );
    wire [3:0] t ;
    
    mux4to1_d M0 (in[3:0],sel[1:0],t[0]);
    mux4to1_b M1 (in[7:4],sel[1:0],t[1]);
    mux4to1_s M2 (in[11:8],sel[1:0],t[2]);
    mux4to1_d M3 (in[15:12],sel[1:0],t[3]);
    mux4to1_cond M4 (t,sel[3:2],out);
endmodule
