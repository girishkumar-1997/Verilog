`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2022 11:46:07
// Design Name: 
// Module Name: nbitcomparator_tb
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


module nbitcomparator_tb;
    reg [16:0] A,B ;
    wire lt,gt,eq;
    
    nbit_comparator UUT (.A(A),.B(B),.lt(lt),.gt(gt),.eq(eq));
    
    initial
        begin 
        A = 0;
        B = 0;
        #50;
        A = 11;
        B = 10;
        #50;
        A = 8;
        B = 11;
        #50;
        A = 11;
        B = 11;
        end
endmodule
