`timescale 1ns / 1ps


module halfadder_d(
    input a,b ,
    output sout,cout
    );
    
    assign sout = a^b ;
    assign cout = a&b ;
endmodule
