`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2022 12:07:00
// Design Name: 
// Module Name: comparator_1bit
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


module comparator_1bit(
    input a,b,
    output reg l,g,e
    );
    
   always @(a,b)
   begin
   if (a == 1 & b == 0) begin g = 1 ;l=0;e=0; end
   else if (a == 0 & b ==1) begin l = 1;g=0;e=0; end
   else if ((a == 0 & b == 0) | (a == 1 & b == 1)) begin e = 1;l=0;g=0; end
   end
endmodule
