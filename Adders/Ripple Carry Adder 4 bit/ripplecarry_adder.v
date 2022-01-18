`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2022 15:10:45
// Design Name: 
// Module Name: ripplecarry_adder
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


module ripplecarry_adder4bit(sum,cout,a,b,cin);
    input [3:0] a,b ; input cin ;
    output [3:0] sum ; output cout ;
    
    wire c1,c2,c3 ;
    
    fulladder_HA FA0 (.sout(sum[0]),.cout(c1),.a(a[0]),.b(b[0]),.cin(cin));
    fulladder_HA FA1 (.sout(sum[1]),.cout(c2),.a(a[1]),.b(b[1]),.cin(c1));
    fulladder_HA FA2 (.sout(sum[2]),.cout(c3),.a(a[2]),.b(b[2]),.cin(c2));
    fulladder_HA FA3 (.sout(sum[3]),.cout(cout),.a(a[3]),.b(b[3]),.cin(c3));
endmodule
