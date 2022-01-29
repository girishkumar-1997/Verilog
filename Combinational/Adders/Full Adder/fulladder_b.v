`timescale 1ns / 1ps



module fulladder_b(
    input a,b,cin,
    output reg sout,cout
     );
     
     always @ (a or b or cin)
     assign {cout,sout} = a+b+cin;
endmodule
