`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2022 12:33:27
// Design Name: 
// Module Name: fulladder_d
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


module fulladder_d(
    input a,b,cin,
    output sout,cout
    );
    
    assign sout = a^b^cin;
    assign cout = cin&(a^b)|(a&b); 
endmodule
