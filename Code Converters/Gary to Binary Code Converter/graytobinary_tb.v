`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2022 23:16:17
// Design Name: 
// Module Name: graytobinary_tb
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


module graytobinary_tb;
    reg [3:0] g; wire [3:0] b; integer i;
    
    graytobinary_d UUT (.b(b),.g(g));
    
    initial
        begin
            g = 4'b0;
            #20
            for (i=0 ; i<10 ; i=+1)
                begin
                    g = g+1;
                    #20;
                 end  
         end          
endmodule
