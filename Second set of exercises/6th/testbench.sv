// Code your testbench here
// or browse Examples
module test; 
   reg clk; 
  reg  [7:0]d;
   reg reset;
  reg [1:0] ena;
  wire [7:0]q;
  
 dff16 dff (.d(d), .reset(reset),.ena(ena), .clk(clk), .q(q));
  
  //always #5 clk = ~clk;
  
  initial begin 
      $dumpfile("dumpfile.vcd");
		$dumpvars;
    	
    	ena =0;
       reset = 0;
		clk <= 0;
		d <= 1; #1;
		d <= 0; #1;
		
    ena =1;
      reset = 1;
		clk <= 1;
		d <= 1; #1;
		d <= 0; #1;
    
		ena =0;
      reset = 0;
		clk <= 0;
		d <= 1; #1;
		d <= 0; #1;
    
      ena =1;
		reset = 1;
		clk <= 1;
		d <= 0; #1;
		d <= 1; #1;
      
      


		$finish;
    
  end 
endmodule
