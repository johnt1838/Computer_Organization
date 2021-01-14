// Code your testbench here
// or browse Examples

`timescale 	1ns/1ps
module testing; 
  reg clk, areset, in ; 
  wire out ; 
  firstfsm DUT(.clk(clk), .areset(areset), .in(in), .out(out));
  initial 
    begin 
      $dumpfile("dump.vcd");
      $dumpvars();
      
      clk = 0; 
      areset = 0; 
      in = 1; 
      
      
      #0.1 areset=1 ;//
      
      #0.1 clk =1 ; 
      		in = 0; 
      
      #0.1 clk = 0; 
      #0.1 clk =1 ; 
      #0.1 clk = 0; 
      #0.1 clk =1 ;
      #0.25 clk = 0;
      		in = 0; 
      
      #0.3 areset = 1; //
      
      #0.3clk =1 ; 
      		in = 0; 
      
      #0.3 clk = 0; 
      #0.3 clk =1 ; 
      #0.3 clk = 0; 
      #0.3 clk =1 ;
      #0.4 clk = 0;
      		in = 0; 
      
    end 
endmodule 
      