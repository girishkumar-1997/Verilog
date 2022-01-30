`timescale 1ns / 1ps

module parity_detector_tb;
    reg clk,x;
    wire z;
    
    parity_detector uut (.clk(clk),.x(x),.z(z));
    
    initial
        begin
            clk = 0 ;
            repeat(20) #5 clk = ~clk ;
        end
    
    initial
        begin
            #2 x = 0; #10 x = 1; #10 x = 1; #10 x = 1;
            #10 x = 0; #10 x = 1; #10 x = 1; #10 x = 0;
            #2 x = 0; #10 x = 1; #10 x = 1; #10 x = 0;
            #10 $finish;
        end
        
     initial
        begin 
            $dumpfile ("paritydetector.vcd");
            $dumpvars(0,parity_detector_tb);
        end
endmodule
