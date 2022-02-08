`timescale 1ns / 1ps

module ram_4(clk,addr,data_in,data_out,cs,wr,oe);
    input clk;      
    input cs;           //Chip Select
    input wr;           //Write/Read
    input oe;           //output enable
    
    parameter addr_size = 5 ,
              word_size = 8 ,
              mem_size = 1024;
              
    input [addr_size-1:0] addr ;
    input [word_size-1:0] data_in ;
    output [word_size-1:0] data_out ;
    
    reg [word_size-1:0] mem[mem_size-1:0] ;   //Mmeory Array
    reg [word_size-1:0] temp_data ;
    
    assign data_out = (oe && cs && !wr ) ? temp_data : 8'bz;
   
    always @(posedge clk)
      begin
        if (wr && cs)
          mem[addr] = data_in ;
      end
    
    always @(posedge clk)
      begin
        if (!wr && cs)
          temp_data = mem[addr] ;
      end  
endmodule
