  // Code your testbench here
  // or browse Examples
  module test; 
     reg clk; 
    reg  in;
    wire out;

    dffP dff (.in(in), .clk(clk), .out(out));

    

    initial begin 
        $dumpfile("dumpfile.vcd");
          $dumpvars;

          
      
          clk <= 0;
          in <= 1; #1;
          in <= 0; #1;

          clk <= 1;
          in <= 1; #1;
          in <= 0; #1;

          clk <= 0;
          in <= 1; #1;
          in <= 0; #1;

          clk <= 1;
          in <= 0; #1;
          in <= 1; #1;

          $finish;

    end 
  endmodule
