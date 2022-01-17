`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2022 00:02:08
// Design Name: 
// Module Name: mux4to1_tb
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


module mux4to1_tb;

 reg [3:0] d ; reg [1:0] s ; wire f;
 
   //mux4to1_d    M1(.in_d(d), .sel_d(s), .out_d(f));
   //mux4to1_s    M2(.in_s(d), .sel_s(s), .out_s(f));
   //mux4to1_b    M3(.in_b(d), .sel_b(s), .out_b(f));
   mux4to1_cond M4(.in_c(d), .sel_c(s), .out_c(f));
   
   initial
       begin
       #100 d = 4'b1010 ; s = 00;
       #100 s=01;
       #100 s=10;
       #100 s=11;
       end

endmodule
