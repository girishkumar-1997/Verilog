`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2022 23:40:51
// Design Name: 
// Module Name: bcdtoexcess3
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


module bcdtoexcess3(
    input [3:0] b ,
    output [3:0] e 
    );
     
  
      assign e[3] = b[3] | (b[2] & b[1]) | (b[2] & b[0]);
      assign e[2] =  ((~ b[2]) & (b[1] | b[0])) | (b[2] & (~ b[1]) & (~ b[0]));
      assign e[1] = b[1] ~^ b[0];
      assign e[0] = ~ b[0];
      
  
endmodule
