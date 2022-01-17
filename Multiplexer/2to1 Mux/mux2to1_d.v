`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.01.2022 19:28:12
// Design Name: 
// Module Name: mux2to1_d
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


module mux2to1_d(ind,seld,outd);
    input [1:0] ind ; input seld;
    output outd ;
    
    assign outd = (ind[0]&(~seld))|(ind[1]&(seld));
endmodule
