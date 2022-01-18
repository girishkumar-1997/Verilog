`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2022 11:19:50
// Design Name: 
// Module Name: halfadder_s
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


module halfadder_s(
    input a, b,
    output sout, cout
    );
    
    xor G0 (sout,a,b);
    and G1 (cout,a,b);
endmodule
