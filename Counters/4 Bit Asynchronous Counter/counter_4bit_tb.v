`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2022 18:36:27
// Design Name: 
// Module Name: counter_4bit_tb
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


module counter_4bit_tb;
    reg clk,rst ;
    wire [3:0] q;
    
    counter_4basync uut (.CLK(clk),.RST(rst),.Q(q));
    
    initial
        begin
            clk = 1'b0;
            forever #10 clk = ~clk;
        end
     initial
        begin
            #5 rst = 1'b1;
            #10 rst = 1'b0;
            #250 rst = 1'b1;
            #10 rst = 1'b0;
            #1000;   
        end
endmodule
