`timescale 1ns / 1ps

module generate_set_of_MUX(
    input [0:3] a,b , input sel ,
    output [0:3] f
    );
    
    assign f = sel ? a : b ;
endmodule
