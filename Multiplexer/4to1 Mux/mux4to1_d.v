`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.01.2022 22:27:09
// Design Name: 
// Module Name: mux4to1_d
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


module mux4to1_d(in_d, sel_d, out_d );
    input [3:0] in_d ;
    input [1:0] sel_d;
    output out_d;
    
    assign out_d = (in_d[0]&(~sel_d[1])&(~sel_d[0])) | (in_d[1]&(~sel_d[1])&(sel_d[0])) | (in_d[2]&(sel_d[1])&(~sel_d[0])) | (in_d[3]&(sel_d[1])&(sel_d[0]));
endmodule
