`timescale 1ns / 1ps

module cyclic_lamp_tb;
    reg clk;
    wire [0:2] light;
    
    //cyclic_lamp uut (clk,light);
      cyclic_lamp_mod uut (clk,light);
    initial
        begin
            clk = 0;
            repeat(20) #5 clk = ~clk;
            #100 $finish;
        end
     
     initial
        begin
            $dumpfile ("cycliclamp.vcd");
            $dumpvars(0,cyclic_lamp_tb);
            $monitor($time,"RGY : %b",light);
        end 
endmodule
