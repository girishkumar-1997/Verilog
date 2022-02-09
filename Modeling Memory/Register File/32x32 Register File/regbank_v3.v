`timescale 1ns / 1ps

module regbank_v3(rdData1, rdData2, wrData, sr1, sr2, dr, write, clk);

    input clk ;
    input write ;
    input [4:0] sr1,sr2,dr ;            // Source Registers and Destination Registers
    input [31:0] wrData ;
    output [31:0] rdData1, rdData2 ;
    
    reg [31:0] regfile[0:31] ;
    
    assign rdData1 = regfile[sr1] ;
    assign rdData2 = regfile[sr2] ;
    
    always @(posedge clk)
      if(write) regfile[dr] <= wrData ;
endmodule
