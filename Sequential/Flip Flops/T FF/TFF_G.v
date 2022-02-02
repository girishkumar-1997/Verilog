`timescale 1ns / 1ps

module TFF_G(
    input T,CLK,
    output Q,QN
    );
    
     wire t1,t2;
       
       nand n1 (t1,QN,T,CLK);
       nand n2 (t2,Q,T,CLK);
       nand n3 (Q,QN,t1);
       nand n4 (QN,Q,t2);
       
endmodule
