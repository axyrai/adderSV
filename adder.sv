module adder(a,b,c,sum,cout);
input logic [7:0] a;
input logic [7:0] b;
input logic c;
output logic [7:0] sum;
output logic cout;

logic [8:0] result;

assign result =a+b+c;
assign sum =result[7:0];
assign cout = result[8];

endmodule:adder
