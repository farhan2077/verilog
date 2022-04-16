module FBUC (clk, reset, out);
input wire clk, reset;
output [3:0] out;

reg [3:0] count = 0;

always @ (posedge clk)
begin
	if (reset) begin
		count <= 4'd0;
	end else begin
		count <= count + 4'd1;
	end
end
assign out = count;
endmodule