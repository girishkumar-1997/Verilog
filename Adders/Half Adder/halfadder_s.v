`timescale 1ns / 1ps


module halfadder_s(
    input a, b,
    output sout, cout
    );
    
    xor G0 (sout,a,b);
    and G1 (cout,a,b);
endmodule
