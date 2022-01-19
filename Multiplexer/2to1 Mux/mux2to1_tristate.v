`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.01.2022 09:52:48
// Design Name: 
// Module Name: mux_tristate
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


module mux2to1_tristate(out, a, b, control);
output out ;
input a,b,control ;
tri out;
wire a,b,control;

bufif0 b1(out,a,control) ;  //drives a when control = 0 
bufif1 b2(out,b,control) ;  //drives b when control = 1

endmodule
