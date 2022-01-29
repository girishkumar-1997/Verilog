`timescale 1ns / 1ps



module halfadder_b1(
    input a,b ,
    output reg sout,cout
    );
    
    always @(a or b)
    begin
        if(a == 0 & b == 0)
        sout = 0 ; cout = 0;
        if(a == 0 & b == 1)
        sout = 1 ; cout = 0;
        if(a == 1 & b == 0)
        sout = 1 ; cout = 0;
        if(a == 1 & b == 1)
        sout = 1 ; cout = 0;
     end
        
endmodule
