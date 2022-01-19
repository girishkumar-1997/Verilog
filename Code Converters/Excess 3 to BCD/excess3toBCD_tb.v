`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2022 01:10:28
// Design Name: 
// Module Name: excess3toBCD_tb
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


module excess3toBCD_tb;
    reg [3:0] e; wire [3:0] b; integer i;
    
    excess3_to_bcd UUT (.b(b),.e(e));
    
    always
        begin
            e = 4'b0011;
            #20
            for (i=1 ; i<10 ; i=i+1)
                begin
                    e = e+4'b0001;
                    #20;
                 end  
         end          
endmodule
