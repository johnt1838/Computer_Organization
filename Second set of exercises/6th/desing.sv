module dff16 (
    input clk,
    input reset,
  input [1:0] ena,
    input [15:0] d,
    output reg[15:0] q
);
    always@(posedge clk) begin
        if (~reset)
            q<=16'd0;
        else begin
          if (ena[1])
                q[15:8]<=d[15:8];
            else
                 ;
          if (ena[0])
                q[7:0]<=d[7:0];
            else
                 ; 
        end
    end
endmodule