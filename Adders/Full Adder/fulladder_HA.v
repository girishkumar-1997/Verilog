`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2022 13:19:08
// Design Name: 
// Module Name: fulladder_HA
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


module fulladder_HA(
    input a,b,cin,
    output sout,cout
    );
    
    wire w1,w2,w3;
    
    halfadder_s h1 (a,b,w1,w2);
    halfadder_s h2 (w1,cin,sout,w3);
    or (cout,w2,w3);
    
endmodule