`timescale 1ns / 1ps

module TFF_TB;

    reg T,CLK,RST;
    wire Q,QN;
    
    TFF_B UUT (.CLK(CLK),.RST(RST),.T(T),.Q(Q),.QN(QN));
    
    initial
        begin
            CLK = 0;
            forever #5 CLK = ~CLK;
        end
     initial
        begin
            RST = 1;
            #10 RST = 0;
            T=0;
            #80 T= 1;  
            #80 T= 0; 
            #80 T= 1;  
            #80 T= 0;
            #80 $finish;
         end   
      initial
        $monitor("$time=%d,CLK=%b, RST=%b, T=%b, Q=%b, QNb=%b",$time, CLK, RST, T, Q, QN); 
             
endmodule
