
module top_module (
    input clk,
    input resetn,   
    input in,
    output out);
    
    reg q1, q2, q3, q4;
    always@(posedge clk) begin
        if(~resetn) begin
            q1 <= 0;
            q2 <= 0;
            q3 <= 0;
            q4 <= 0;
        end
        else begin
            q4 <= q3;
            q3 <= q2;
            q2 <= q1;
            q1 <= in;
        end
    end
    assign out = q4;
 
endmodule