`timescale 1ns / 1ps


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
