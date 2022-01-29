`timescale 1ns / 1ps


module comparator_2bit(
    input [1:0] a,b,
    output reg l,g,e
    );
    
    always @(a,b)
        begin
            l = ({a}<{b});
            g = ({a}>{b});
            e = ({a}=={b});
        end  
endmodule
