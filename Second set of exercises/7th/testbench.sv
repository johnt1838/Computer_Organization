  // Code your testbench here
  // or browse Examples
  module test; 
     reg clk; 
    reg  in;
     //reg reset;
    wire out;

    top_module dff (.in(in), .clk(clk), .out(out));

    //always #5 clk = ~clk;

    initial begin 
        $dumpfile("dumpfile.vcd");
          $dumpvars;

          
      //   reset = 0;
          clk <= 0;
          in <= 1; #1;
          in <= 0; #1;

      
      //  reset = 1;
          clk <= 1;
          in <= 1; #1;
          in <= 0; #1;

         
      //  reset = 0;
          clk <= 0;
          in <= 1; #1;
          in <= 0; #1;

        
        //  reset = 1;
          clk <= 1;
          in <= 0; #1;
          in <= 1; #1;




          $finish;

    end 
  endmodule
