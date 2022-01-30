`timescale 1ns / 1ps

primitive SRFF_UDP(q,s,r,clk,clr);
    input s,r,clk,clr;
    output reg q;
    
    table
    // s  r  clk  clr  :  q  :  q_new  
       ?  ?   ?    1   :  ?  :    0    ;  //clear
       ?  ?   ?    f   :  ?  :    -    ;  //ignore....no change
       0  0   f    0   :  ?  :    -    ;  //no change
       0  1   f    0   :  ?  :    0    ;  //reset condition
       1  0   f    0   :  ?  :    1    ;  //set condition
       1  1   f    0   :  ?  :    x    ;  //invalid condition
       ?  ?   r    0   :  ?  :    -    ;  //ignorte...no change   
    endtable
endprimitive
