`timescale 1ns / 1ps

module JKFF_G(
    input J,K,CLK,
    output Q,QN
    );
    
    wire t1,t2;
    
    nand n1 (t1,QN,J,CLK);
    nand n2 (t2,Q,K,CLK);
    nand n3 (Q,QN,t1);
    nand n4 (QN,Q,t2);
    
endmodule
