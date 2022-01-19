`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2022 13:18:51
// Design Name: 
// Module Name: SRLatch_tb
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


module SRLatch_tb;
    reg s,r;
    wire q,q_not;
    
    SRLatch_d UUT (.S(s), .R(r), .Q(q), .Qbar(q_not));
    
    initial
        begin
            s = 1;
            r = 1;
        end
     always
        begin
            #10 s = ~s;
            #20 r = ~r;
        end
     initial
        #120 $finish ;
        
endmodule
