`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2022 15:21:15
// Design Name: 
// Module Name: DFF_tb
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


module DFF_tb;
    reg d,clk,set,rst;
    wire q,qn;
    
    DFF_Synchronous UUT (.D(d),.Q(q),.QN(qn),.CLK(clk),.SET(set),.RST(rst));
    //DFF_Asynchronous UUT (.D(d),.Q(q),.QN(qn),.CLK(clk),.SET(set),.RST(rst));
    
    initial
    begin
        clk = 1'b0 ;
        forever #5 clk = ~clk ; //Clock Period = 10 units
        #1000 $finish;
    end
    
    initial
    begin
        rst = 1;
        d = 1'b1;
        #30
        
        set = 1 ;
        rst = 0 ;
        #30
     
        rst = 0 ;
        set = 0 ;
        forever #30 d = ~d ;
      
    end
    
endmodule
