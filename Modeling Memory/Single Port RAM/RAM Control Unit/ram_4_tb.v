`timescale 1ns / 1ps

module ram_4_tb;
    reg clk,cs,wr,oe ;
    reg [4:0] addr;
    reg [7:0] data_in ;
    wire [7:0] data_out ;
    reg [7:0] temp_data ;
    integer i,myseed ;
    
    ram_4 uut (.clk(clk),.addr(addr),.data_in(data_in),.data_out(data_out),.cs(cs),.wr(wr),.oe(oe));
    
    always #10 clk = ~clk ;
    assign data_out = !oe ? temp_data : 'hz;
    
    initial 
      begin
        clk  = 0 ;
        cs   = 0 ;
        wr   = 0 ;
        oe   = 0 ;
        temp_data = 0;
    
        repeat (2) @(posedge clk);
        for (i=0 ; i < 31 ; i = i+1)
          begin
            repeat(1) @(posedge clk)
              addr = i ;
              wr = 1 ;
              cs = 1;
              oe = 0 ;
              data_in = (i+i)%256 ;
              $display ("Address : %5d , Data_In: %4d",addr,data_in);
          end
        
        
          repeat(20) @(posedge clk)
            begin
              addr = $random(myseed);
              wr = 0 ;
              cs = 1;
              oe = 1 ;
              $display ("Address : %5d , Data_Out: %4d",addr,data_out);
           end
         end 
           initial myseed=32 ;
        // #20 $finish ;
         
endmodule
