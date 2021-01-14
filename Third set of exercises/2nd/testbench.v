// Code your testbench here
// or browse Examples

`timescale 	1ns/1ps
module testing; 
  reg clk, areset, j,k ; 
  wire out ; 
  secondfsm DUT(.clk(clk), .areset(areset), .j(j),.k(k), .out(out));
  initial 
    begin 
      $dumpfile("dump.vcd");
      $dumpvars();
      
      #0.1 areset = 0; 
      	 clk = 0 ; 
      	j = 0 ; 
      	k = 0 ; 
      
      #0.15 areset = 1; 
     	 clk= 1;
     	 j = 1;
     	 k =1; 
 
      #0.2 areset = 0;
      	 clk =1 ;
      	j= 0;
      	k = 1;
      #0.25 areset = 1;
      	 clk =0 ;
      	j= 1;
      	k = 0;
      
 
      
     
      
    end 
endmodule 
      
  