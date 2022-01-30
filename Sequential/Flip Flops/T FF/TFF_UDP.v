`timescale 1ns / 1ps

primitive TFF_UDP(q,clk,clr);
    input clk,clr;
    output reg q;
    
    table
    // clk  clr  : q : q_new
        ?    1   : ? :  0   ;
        ?  (10)  : ? :  -   ; // falling edge, ignore -ve edge of "clr"
       (10)  0   : 1 :  0   ;
       (10)  0   : 0 :  1   ;
       (0?)  0   : ? :  -   ; // ignore +ve edge of "clk"
    endtable
endprimitive
