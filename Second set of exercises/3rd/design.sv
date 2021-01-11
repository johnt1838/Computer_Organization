// Code your design here
module dffsyn (
    input clk,
    input reset,            
    input [7:0] d,
    output reg [7:0] q
);
    always@(posedge clk) begin
        if(reset)
            q<=8'b00000000;
        else
            q<=d;
    end
endmodule