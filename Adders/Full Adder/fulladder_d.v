`timescale 1ns / 1ps

module fulladder_d(
    input a,b,cin,
    output sout,cout
    );
    
    assign sout = a^b^cin;
    assign cout = cin&(a^b)|(a&b); 
endmodule
