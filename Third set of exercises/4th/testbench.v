// Code your testbench here
// or browse Examples

`timescale 	1ns/1ps
module testing; 
  reg clk, rst, x ; 
  wire Output ; 
  thirdfsm DUT(.clk(clk), .rst(rst), .x(x), .Output(Output));
  initial 
    begin 
      $dumpfile("dump.vcd");
      $dumpvars();
      
      clk = 0; 
      rst = 0; 
      x = 1; 
      
      
      #0.1 clk =1 ; 
      		x = 0; 
      
      #0.1 clk = 0; 
      #0.1 clk =1 ; 
      #0.1 clk = 0; 
      #0.1 clk =1 ;
      #0.25 clk = 0;
      		x = 0; 
      
      #0.3 rst = 1; //
      
      #0.3clk =1 ; 
      		x = 1; 
      
      #0.3 clk = 0; 
      #0.3 clk =1 ; 
      #0.3 clk = 0; 
      #0.3 clk =1 ;
      #0.4 clk = 0;
      		x = 1; 
      
    end 
endmodule 