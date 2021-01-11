module test;
  
  wire [7:0] q;
  reg clk;
  reg [7:0] d;
  
  


  dff8 DFF( .clk(clk), .d(d), .q(q));

initial
	begin 
		
      $dumpfile("dumpfile.vcd");
		$dumpvars;
		

		clk <= 0;
		d <= 1; #1;
		d <= 0; #1;

		clk <= 1;
		d <= 1; #1;
		d <= 0; #1;

		clk <= 0;
		d <= 1; #1;
		d <= 0; #1;

		clk <= 1;
		d <= 0; #1;
		d <= 1; #1;

		clk <= 0;
		d <= 1; #1;
		d <= 0; #1;

		clk <= 1;
		d <= 1; #1;
		d <= 0; #1;

		clk <= 0;
		d <= 1; #1;
		d <= 0; #1;


	


		clk <= 1;
		d <= 1; #1;
		d <= 0; #1;

		$finish;
	end

endmodule