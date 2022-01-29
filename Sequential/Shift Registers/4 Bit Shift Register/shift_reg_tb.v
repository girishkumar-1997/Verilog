`timescale 1ns / 1ps

module shift_reg_tb;

    reg clk,clr ,in ;
    wire q3,q2,q1,q0 ;
    
    shift_reg_4bit uut (.CLR(clr),.CLK(clk),.IN(in),.Q3(q3),.Q2(q2),.Q1(q1),.Q0(q0));
    
    initial
        begin
            clk = 1'b0 ;
            repeat (100) #5 clk = ~clk ;
        end 
    initial
        begin
            clr = 1 ;
            #10 ;
            
            clr = 0;
            in = 1 ;
            
            repeat(50) #10 in = ~in ;
            
            $finish;
        end  
endmodule
