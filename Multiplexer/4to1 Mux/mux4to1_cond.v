`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.01.2022 23:48:49
// Design Name: 
// Module Name: mux4to1_cond
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

// Data Flow
module mux4to1_cond(
    input [3:0] in_c,
    input [1:0] sel_c,
    output out_c
    );
    
    assign out_c = sel_c[1] ? ( sel_c[0] ? in_c[3] : in_c[2] ) : ( sel_c[0] ? in_c[1] : in_c[0] ) ;
endmodule
