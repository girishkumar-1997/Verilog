`timescale 1ns / 1ps


module fulladder_s(
    input a,b,cin,
    output sout,cout
    );
    
    wire w1,w2,w3;
    
    xor g0 (w1,a,b);
    xor g1 (sout,cin,w1);
    and g2 (w2,a,b);
    and g3 (w3,w2,cin);
    or  g4 (cout,w2,w3);
endmodule
