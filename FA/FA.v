module FA (cin, ain, bin, sout, cout);

input wire cin, ain, bin;
output wire sout, cout;

assign sout = ain ^ bin ^ cin;
assign cout = (ain & bin) | ((ain ^ bin) & cin);

endmodule