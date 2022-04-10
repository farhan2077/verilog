module FA4 (cin, a, b, s, co);

input wire cin;
input wire [3:0] a, b;

output wire [3:0]s;
output wire co;

wire [3:1]c;

//FA1(cin, ain, bin, sout, cout);
FA1 FA_0 (cin, a[0], b[0], s[0], c[1]);
FA1 FA_1 (c[1], a[1], b[1], s[1], c[2]);
FA1 FA_2 (c[2], a[2], b[2], s[2], c[3]);
FA1 FA_3 (c[3], a[3], b[3], s[3], co);

endmodule