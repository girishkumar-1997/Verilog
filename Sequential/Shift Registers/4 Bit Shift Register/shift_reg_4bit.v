`timescale 1ns / 1ps

module shift_reg_4bit(
    input CLK,CLR,IN,
    output wire  Q3,Q2,Q1,Q0
    );
    
    DFF_Sync M (.CLK(CLK),.CLR(CLR),.D(IN),.Q(Q3));
    DFF_Sync N (.CLK(CLK),.CLR(CLR),.D(Q3),.Q(Q2));
    DFF_Sync O (.CLK(CLK),.CLR(CLR),.D(Q2),.Q(Q1));
    DFF_Sync P (.CLK(CLK),.CLR(CLR),.D(Q1),.Q(Q0));    
       
endmodule
