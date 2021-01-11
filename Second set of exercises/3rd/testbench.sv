// Code your testbench here
// or browse Examples
module test; 
   reg clk; 
   reg [7:0] d;
   reg reset;
   reg [2:0] delay; 
  wire [7:0] q;
  
  dffsyn dff (.d(d), .reset(reset), .clk(clk), .q(q));
  
  
  
  initial begin 
      $dumpfile("dumpfile.vcd");
		$dumpvars;
    clk <= 0; 
    d <= 0;
    reset <= 0;
    
    #5 d <= 1;
    #1 reset <=1;
    
  end 
endmodule
