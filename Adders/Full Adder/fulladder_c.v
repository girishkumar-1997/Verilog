`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2022 13:24:47
// Design Name: 
// Module Name: fulladder_c
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


module fulladder_c(
    input a,b,cin,
    output sout,cout
    );
    
    assign sout = a?(b?( cin?cin:cin):(cin?~cin:~cin)):(b?(cin?~cin:~cin):(cin?cin:cin)); 
    assign cout = a?(b?( cin?1:1):(cin?cin:cin)):(b?(cin?cin:cin):(cin?0:0)); 
    
endmodule
