`timescale 1ns / 1ps

module level_sensitive_Dlatch(
    input D,En, 
    output Q
    );
    
    assign Q = En ? D : Q ;
endmodule
