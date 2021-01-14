// Code your testbench here
// or browse Examples

`timescale 	1ns/1ps
module testing; 
  reg clk, rst, in ; 
  wire Output ; 
  thirdfsm DUT(.clk(clk), .rst(rst), .in(in), .Output(Output));
  initial 
    begin 
      $dumpfile("dump.vcd");
      $dumpvars();
      
      clk = 0; 
      rst = 0; 
      in = 1; 
      
      
      
      
      #0.1 clk =1 ; 
      		in = 0; 
      
      #0.1 clk = 0; 
      #0.1 clk =1 ; 
      #0.1 clk = 0; 
      #0.1 clk =1 ;
      #0.25 clk = 0;
      		in = 0; 
      
      #0.3 rst = 1; //
      
      #0.3clk =1 ; 
      		in = 1; 
      
      #0.3 clk = 0; 
      #0.3 clk =1 ; 
      #0.3 clk = 0; 
      #0.3 clk =1 ;
      #0.4 clk = 0;
      		in = 1; 
      
    end 
endmodule 