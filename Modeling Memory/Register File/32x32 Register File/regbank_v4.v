`timescale 1ns / 1ps

module regbank_v4(rdData1, rdData2, wrData, sr1, sr2, dr, write,reset, clk);

    input clk ;
    input write, reset ;
    input [4:0] sr1,sr2,dr ;            // Source Registers and Destination Registers
    input [31:0] wrData ;
    output [31:0] rdData1, rdData2 ;
    
    reg [31:0] regfile[0:31] ;
    integer i ;
    
    assign rdData1 = regfile[sr1] ;
    assign rdData2 = regfile[sr2] ;
    
    always @(posedge clk)
      begin
        if(reset) 
          begin
            for(i=0 ; i <32 ; i = i+1)
              begin
                regfile[i] <= 0 ;
              end
          end
         else
           begin
             if(write)
               regfile[dr] <= wrData ;
           end
      end
endmodule
