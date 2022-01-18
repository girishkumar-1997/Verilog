`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2022 10:47:19
// Design Name: 
// Module Name: halfadder_b
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


module halfadder_b(a,b,sout,cout);
    input a,b ;
    output sout,cout ;
    
    assign {cout,sout} = a+b ;
    
endmodule
