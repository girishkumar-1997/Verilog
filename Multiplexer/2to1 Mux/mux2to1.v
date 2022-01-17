`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.01.2022 19:20:51
// Design Name: 
// Module Name: mux2to1
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


module mux2to1_s(ins,sels,outs);
    input [1:0] ins ; input sels;
    output outs ;
    wire t1,t2,t3;
    
    not G1 (t1,sels);
    and G2 (t2,ins[0],t1);
    and G3 (t3,ins[1],sels);
    or G4  (outs,t2,t3); 
endmodule
