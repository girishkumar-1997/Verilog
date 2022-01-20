`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2022 13:15:03
// Design Name: 
// Module Name: comparator_1b_tb
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


module comparator_1b_tb;
    reg A,B;
    wire L,G,E;
    
    comparator_1bit UUT(.a(A),.b(B),.l(L),.g(G),.e(E));
    
    initial
        begin
            A=0;
            B=0;
            #10;
            A=0;
            B=1;
            #10;
            A=1;
            B=0;
            #10;
            A=1;
            B=1;
            #10
            $finish;
          end
endmodule
