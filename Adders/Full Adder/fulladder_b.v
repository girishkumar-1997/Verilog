`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2022 13:04:17
// Design Name: 
// Module Name: fulladder_b
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


module fulladder_b(
    input a,b,cin,
    output reg sout,cout
     );
     
     always @ (a or b or cin)
     assign {cout,sout} = a+b+cin;
endmodule
