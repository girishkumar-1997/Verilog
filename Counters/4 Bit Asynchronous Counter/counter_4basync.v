`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2022 18:32:35
// Design Name: 
// Module Name: counter_4basync
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


module counter_4basync(
    input CLK,RST,
    output reg [3:0] Q
    );
    
    always @(posedge CLK,posedge RST)
        begin
            if(RST==1)
                Q <= 0;
            else
                Q <= Q + 1;
         end
endmodule
