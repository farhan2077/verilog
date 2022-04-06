module FA4_tb;

reg cin;
reg [3:0]a, b;

wire [3:0]s;
wire co;

initial
begin
#0    cin = 0;    a = 1;    b = 2;
#10   cin = 0;    a = 2;    b = 3;
#10   cin = 1;    a = 3;    b = 5;
end

FA4 FA4ins(.cin(cin), .a(a), .b(b), .s(s), .co(co));
endmodule