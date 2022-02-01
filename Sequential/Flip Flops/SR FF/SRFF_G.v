`timescale 1ns / 1ps

module SRFF_G(
    input S,R,CLK ,
    output Q,QN
    );
    
    wire t1,t2;
    
    nand n1 (t1,CLK,S);
    nand n2 (t2,CLK,R);
    nand n3 (Q,QN,t1);
    nand n4 (QN,Q,t2);
    
    
endmodule
