`timescale 1ns / 1ps

module DFF_Sync(
    input D, CLK, CLR,
    output reg Q //QN
    );
    
    always @(posedge CLK)
        begin
            if (CLR) 
                begin  
                    Q <= 0 ;
                    //QN <= ~Q ;
                end
            else 
                begin
                    Q <= D ;
                   // QN <= ~Q ;
                end
        end                 
endmodule
