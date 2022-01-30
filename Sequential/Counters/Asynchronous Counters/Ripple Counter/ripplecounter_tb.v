`timescale 1ns / 1ps

module ripplecounter_tb;

    reg clk,clr; wire [2:0] q;
    
    ripplecounter_TFF uut (.clk(clk),.clr(clr),.count(q));
    
    initial
        begin
            clk = 0;
            repeat(50) #5 clk = ~clk ;
        end
     initial
        begin 
            clr = 1 ;
            #15 clr = 0;
            #250 $finish;
         end
       
endmodule
