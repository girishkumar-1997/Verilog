`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2022 01:34:52
// Design Name: 
// Module Name: binarytoexcess3_cond_tb
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


module bcdtoexcess3_cond_tb;
    reg [3:0] b; wire [3:0] e; integer i;
    
    BCDtoExcess3_cond UUT (.b(b),.e(e));
    
    always
        begin
            b = 4'b0;
            #20
            for (i=0 ; i<9 ; i=i+1)
                begin
                    b = b+4'b0001;
                    #20;
                 end  
         end          
endmodule
