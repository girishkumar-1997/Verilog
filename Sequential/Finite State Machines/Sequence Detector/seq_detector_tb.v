`timescale 1ns / 1ps

module seq_detector_tb;
    reg clk,x,rst;
    wire z;
    
    seq_detector uut (.clk(clk),.x(x),.z(z),.rst(rst));
    
    initial
        begin
            clk = 0 ;
            rst = 1;
            #15 rst = 0;
            repeat(20) #5 clk = ~clk ;
        end
    
    initial
        begin
            #12 x = 0; #10 x = 0; #10 x = 1; #10 x = 1;
            #10 x = 0; #10 x = 1; #10 x = 1; #10 x = 0;
            #10 x = 0; #10 x = 1; #10 x = 1; #10 x = 0;
            #10 $finish;
        end
        
     initial
        begin 
            $dumpfile ("sequencedetector.vcd");
            $dumpvars(0,seq_detector_tb);
        end
endmodule


