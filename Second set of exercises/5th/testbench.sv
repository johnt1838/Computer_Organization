// Code your testbench here
// or browse Examples
module test; 
   reg clk; 
   reg  d;
   reg reset;
  wire q;
  
  dffsyn dff (.d(d), .reset(reset), .clk(clk), .q(q));
  
  
  
  initial begin 
      $dumpfile("dumpfile.vcd");
		$dumpvars;
   reset = 0;
		clk <= 0;
		d <= 1; #1;
		d <= 0; #1;
		
      reset = 1;
		clk <= 1;
		d <= 1; #1;
		d <= 0; #1;

      reset = 0;
		clk <= 0;
		d <= 1; #1;
		d <= 0; #1;
      
		reset = 1;
		clk <= 1;
		d <= 0; #1;
		d <= 1; #1;
      
      
		reset = 0;
		clk <= 0;
		d <= 1; #1;
		d <= 0; #1;
		
      	reset = 1;
		clk <= 1;
		d <= 1; #1;
		d <= 0; #1;

      
      reset = 1;
		clk <= 0;
		d <= 1; #1;
		d <= 0; #1;


	

		reset = 0;
		clk <= 1;
		d <= 1; #1;
		d <= 0; #1;

		$finish;
    
  end 
endmodule
