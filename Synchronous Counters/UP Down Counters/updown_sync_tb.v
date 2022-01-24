`timescale 1ns / 1ps

module updown_sync_tb;
    reg mode,clr,ld,clk;
    reg [7:0] din ;
    wire [7:0] dout ;
    
    updowncounter_synchronous UUT (.mode(mode),.clr(clr),.ld(ld),.clk(clk)
                                    ,.din(din),.count(dout));
                                    
    always
        begin
            clk = 0 ;
            forever #5 clk = ~clk ;
        end
     
   initial
        begin
            //ld = 1;
            din = 8'b00000001;
            ld = 1;
            #10 ;
            
            ld=0;
            clr = 0;
            mode = 1;
            #250 ;
            
            ld=0;
            mode = 0 ;
            #200;
            
             ld=0;
             clr = 1;
             #10 ;
             
             ld=0;
             clr = 0;
             mode = 1;
             #100 ;
                       
         end
    initial #750 $finish;    
endmodule
