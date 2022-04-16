module FBUC_tb;
reg clk, reset;
wire [3:0] out;

initial
begin
#0    clk = 0;
forever 
#5    clk = ~clk;
end

initial
begin
#0	reset = 1;
#10	reset = 0;
end

FBUC FBUC_ins(.clk(clk), .reset(reset), .out(out));
endmodule