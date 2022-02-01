`timescale 1ns / 1ps

module SRFF_tb;
    reg CLK,S,R ;
    wire Q,QN;
    
    SRFF_G UUT (.CLK(CLK),.S(S),.R(R),.Q(Q),.QN(QN));
    
    initial
        begin
            CLK = 0;
            forever #5 CLK = ~CLK ;
             
        end
    
    initial
        begin
            S=1 ; R=0;
            #80 S= 0; R=0; 
            #80 S= 0; R=1; 
            #80 S= 0; R=0; 
            #80 S= 1; R=1; 
             #80 $finish;
        end    
        
endmodule
