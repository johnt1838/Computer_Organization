  // Code your testbench here
  // or browse Examples
  module test; 
     reg clk; 
     reg L;
     reg r_in;
     reg q_in;
    wire Q;

    top_module dff (.clk(clk), .L(L), .r_in(r_in), .q_in(q_in), .Q(Q));

    //always #5 clk = ~clk;

    initial begin 
        $dumpfile("dumpfile.vcd");
          $dumpvars;

          
      		L = 0;
          clk <= 0;
          r_in <= 1; #1;
          q_in <= 0; #1;

      
       	  L = 0;
          clk <= 1;
          r_in <= 1; #1;
          q_in <= 0; #1;

         
   		  L = 1;
          clk <= 0;
          r_in <= 0; #1;
          q_in <= 1; #1;
      
      		  L = 0;
          clk <= 0;
          r_in <= 0; #1;
          q_in <= 0; #1;

        
          L = 1;
          clk <= 1;
          r_in <= 0; #1;
          q_in <= 1; #1;
      
      	  L = 1;
          clk <= 1;
          r_in <= 1; #1;
          q_in <= 1; #1;




          $finish;

    end 
  endmodule