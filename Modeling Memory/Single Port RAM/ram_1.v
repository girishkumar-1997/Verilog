`timescale 1ns / 1ps

module ram_1(addr, data, clk, rd, wr, cs);
    input [9:0] addr ;
    input clk, rd, wr, cs ;
    inout [7:0] data ; 
    reg [7:0] mem [1023:0] ;
    reg [7:0] d_out ;
    
    assign data = (cs && rd) ? d_out : 8'bz ; 
    
    always @(posedge clk)
        if (cs && wr && !rd) mem[addr] = data ; // Memory Write
        
    always @(posedge clk)
        if (cs && rd && !wr) d_out = mem[addr];  //  Memory Read    
endmodule
