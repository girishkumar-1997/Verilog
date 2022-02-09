`timescale 1ns / 1ps

module regbank_v2(rdData1, rdData2, wrData, sr1, sr2, dr, write, clk);
    input clk ;
    input write ;
    input [1:0] sr1,sr2,dr ;            // Source Registers and Destination Registers
    input [31:0] wrData ;
    output [31:0] rdData1, rdData2 ;
    
    reg [31:0] R0,R1,R2,R3 ;
    
    assign rdData1 = (sr1 == 0) ? R0 :
                     (sr1 == 1) ? R1 :
                     (sr1 == 2) ? R2 :
                     (sr1 == 3) ? R3 : 0;
    
    assign rdData2 = (sr2 == 0) ? R0 :   
                     (sr2 == 1) ? R1 :   
                     (sr2 == 2) ? R2 :   
                     (sr2 == 3) ? R3 : 0;
    
    always @(posedge clk)
      begin
        if(write)
          case(dr)
            0 : R0 <= wrData ;
            1 : R1 <= wrData;
            2 : R2 <= wrData;
            3 : R3 <= wrData;
          endcase
      end
endmodule
