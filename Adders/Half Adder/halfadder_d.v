`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2022 10:39:16
// Design Name: 
// Module Name: halfadder_d
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


module halfadder_d(
    input a,b ,
    output sout,cout
    );
    
    assign sout = a^b ;
    assign cout = a&b ;
endmodule
