`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2022 22:36:19
// Design Name: 
// Module Name: binarytogray_tb
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


module binarytogray_tb;
    reg [3:0] b ; wire [3:0] g; integer i;
    
    binarytogray_d UUT (.b(b),.g(g));
    
    initial
        begin
            b = 4'b0;
            #20
            for (i=0 ; i<10 ; i=+1)
                begin
                    b = b+1;
                    #20;
                 end  
         end            
          
endmodule
