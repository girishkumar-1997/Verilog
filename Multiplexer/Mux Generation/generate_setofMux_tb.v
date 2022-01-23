`timescale 1ns / 1ps

module generate_setofMux_tb;
    reg [0:3] A,B ; reg SEL ;
    wire [0:3] F ;
    
    generate_set_of_MUX UUT (.a(A),.b(B),.sel(SEL),.f(F));
    
    initial
        begin
            #10 A = 4'b1010;B = 4'b1011; SEL = 0;
            #10 SEL = 1;
            #10 $finish;
        end          
endmodule
