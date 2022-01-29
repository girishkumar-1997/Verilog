`timescale 1ns / 1ps

module mux16to1(out,in,sel);
input [15:0] in ;
input [3:0] sel ;
output out;

assign out = in[sel];
endmodule
