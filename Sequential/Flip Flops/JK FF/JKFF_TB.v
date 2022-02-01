`timescale 1ns / 1ps

module JKFF_TB;
    reg CLK,J,K,RST;
    wire Q,QN;
    
    JKFF_B UUT (.CLK(CLK),.J(J),.K(K),.Q(Q),.QN(QN),.RST(RST));
    
    initial
            begin
                CLK = 0;
                forever #5 CLK = ~CLK ;
                 
            end
        
        initial
            begin
                 RST = 1;
                 #80 RST = 0;
                  J=1 ; K=0;
                #80 J= 0; K=0; 
                #80 J= 0; K=1; 
                #80 J= 0; K=0; 
                #80 J= 1; K=1; 
                #80 $finish;
            end    
    endmodule
    

