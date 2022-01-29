`timescale 1ns / 1ps


module fulladder_HA(
    input a,b,cin,
    output sout,cout
    );
    
    wire w1,w2,w3;
    
    halfadder_s h1 (a,b,w1,w2);
    halfadder_s h2 (w1,cin,sout,w3);
    or (cout,w2,w3);
    
endmodule