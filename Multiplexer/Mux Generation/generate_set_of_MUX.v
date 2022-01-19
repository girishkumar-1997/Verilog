`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2022 10:21:06
// Design Name: 
// Module Name: generate_set_of_MUX
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


module generate_set_of_MUX(
    input [0:3] a,b , input sel ,
    output [0:3] f
    );
    
    assign f = sel ? a : b ;
endmodule
