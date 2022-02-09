`timescale 1ns / 1ps

`timescale 1ns / 1ps

module regfile_test;

    reg clk, write, reset;
    reg [4:0] sr1,sr2,dr ;           
    reg [31:0] wrData ;
    wire [31:0] rdData1, rdData2 ;
    
    integer i ;
    
    regbank_v4 rb1 (.clk(clk),.write(write),.reset(reset),.sr1(sr1),.sr2(sr2),.dr(dr),.wrData(wrData),.rdData1(rdData1),.rdData2(rdData2));
   
    
    initial clk = 0 ;
    
    always #5 clk = ~clk ;
    
    initial
      begin
        #1 reset = 1 ; write = 0 ;
        #5 reset = 0 ;
      end
      
    initial
      begin 
        #7
        for(i = 0 ; i < 32 ; i = i+1)
          begin
            dr = i ;
            wrData = 10*i ;
            write = 1;
            #10 write = 0 ;
          end
     
    #20
    for (i=0;i<32;i = i+1)
      begin
        sr1 = i;
        sr2 = i+1 ;
        #5 ;
        $display("reg(%2d) = %d, reg(%2d) = %d", sr1,rdData1,sr2,rdData2);
      end        
    #500 $finish ;
  end        
endmodule

