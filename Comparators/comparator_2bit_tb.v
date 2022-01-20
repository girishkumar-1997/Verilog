`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2022 13:59:58
// Design Name: 
// Module Name: comparator_2bit_tb
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


module comparator_2bit_tb;
    reg [1:0] a,b; wire l,g,e;
    
    comparator_2bit UUT (.a(a),.b(b),.l(l),.g(g),.e(e));
    
    initial
        begin
           repeat(50) 
            begin
              a = $random; //apply random stimulus
              b = $random;
              #10;
            end
          end
            
endmodule
