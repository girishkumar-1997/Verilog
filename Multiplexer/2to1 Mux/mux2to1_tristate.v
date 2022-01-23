`timescale 1ns / 1ps


module mux2to1_tristate(out, a, b, control);
output out ;
input a,b,control ;
tri out;
wire a,b,control;

bufif0 b1(out,a,control) ;  //drives a when control = 0 
bufif1 b2(out,b,control) ;  //drives b when control = 1

endmodule
