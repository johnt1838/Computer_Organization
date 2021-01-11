module test;
  
  wire q;
  reg clk;
  reg reset;
  reg d;
  
  


  dff DFF( .clk(clk), .d(d), .q(q),.reset(reset));

initial
	begin 
		
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
