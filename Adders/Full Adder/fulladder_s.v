`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2022 13:11:30
// Design Name: 
// Module Name: fulladder_s
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


module fulladder_s(
    input a,b,cin,
    output sout,cout
    );
    
    wire w1,w2,w3;
    
    xor g0 (w1,a,b);
    xor g1 (sout,cin,w1);
    and g2 (w2,a,b);
    and g3 (w3,w2,cin);
    or  g4 (cout,w2,w3);
endmodule
