`timescale 1ns / 1ps

module ring_counter_tb;
    reg clk,init;
    wire [3:0] Q;
    
    ring_counter UUT (.clk(clk),.init(init),.Q(Q));
    
    initial
        begin
            clk = 0;
            repeat(60) #5 clk = ~clk ;
        end
        
     initial
        begin
            init = 1;
            #10;
            init = 0 ;
            #50 $finish ;
         end 
endmodule
