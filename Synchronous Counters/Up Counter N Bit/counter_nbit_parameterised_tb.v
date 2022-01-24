`timescale 1ns / 1ps


module counter_nbit_parameterized_tb;
    reg clr,clk;
    wire [3:0] count ;
    
    counter_nbit_parameterized #(.N(7)) U0 (.clr(clr),.clk(clk),.count(count));
    
    always
            begin
                clk = 0 ;
                repeat(150) #5 clk = ~clk ;
                //#750 $finish;
            end
    
    initial
        begin
            clr = 1;
            #10;
            
            clr=0;
            #100;
            
            $finish;
         end          
endmodule
