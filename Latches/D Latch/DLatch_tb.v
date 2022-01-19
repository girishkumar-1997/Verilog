`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2022 12:15:57
// Design Name: 
// Module Name: DLatch_tb
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


module DLatch_tb;
    reg d,en; wire q;
    
    level_sensitive_Dlatch UUT (.D(d),.Q(q),.En(en));
    
    initial
        begin
            d = 0;
            en = 0;
         end
      
     always 
         #10 en = ~en ;
     always
         #20 d = ~d ; 
     initial
         #100 $finish;   
         
endmodule
