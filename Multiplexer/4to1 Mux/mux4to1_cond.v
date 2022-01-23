`timescale 1ns / 1ps

// Data Flow
module mux4to1_cond(
    input [3:0] in_c,
    input [1:0] sel_c,
    output out_c
    );
    
    assign out_c = sel_c[1] ? ( sel_c[0] ? in_c[3] : in_c[2] ) : ( sel_c[0] ? in_c[1] : in_c[0] ) ;
endmodule
