  // Code your testbench here
  // or browse Examples
  module test; 
     reg clk; 
     reg resetn;
     reg in;
    
  wire out;

    top_module dffa10 (.clk(clk), .resetn(resetn), .in(in), .out(out));

   

    initial begin 
        $dumpfile("dumpfile.vcd");
          $dumpvars;

          
      	  resetn = 0;
          clk <= 0;
          in <= 0; #1;
       	  
      	  resetn= 0;
          clk <= 0;
          in <= 1; #1; 
      
		  resetn=0;
          clk <= 1;
          in <= 0; #1;
      
      		resetn=0;
      	  clk <= 1;
          in <= 1; #1;
      
      resetn=1;
      	  clk <= 0;
          in <= 0; #1;
      
      resetn=1;
      	  clk <=0;
          in <= 1; #1;
      
       resetn=1;
      	  clk <= 1;
          in <= 0; #1;
      
      
       resetn=1;
      	  clk <= 1;
          in <= 1; #1;
          $finish;

    end 
  endmodule
  
