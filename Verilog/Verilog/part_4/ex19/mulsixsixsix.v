module mulsixsixsix (in,out);

input [8:0] in;
output [19:0] out;

mid = {in, 12'b0} +