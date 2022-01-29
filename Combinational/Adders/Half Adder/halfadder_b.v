`timescale 1ns / 1ps



module halfadder_b(a,b,sout,cout);
    input a,b ;
    output sout,cout ;
    
    assign {cout,sout} = a+b ;
    
endmodule
