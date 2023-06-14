module adder_tb(a,b,c,sum,cout);
input logic [7:0] a;
input logic [7:0] b;
input logic c;
output logic [7:0] sum;
output logic cout;

logic [8:0] result;

adder ad1 (a,b,c,sum,cout);
initial begin
#50; 
a=8'b00000101;b=8'b10010010;c=1'b0;
#50;

a=8'b00100101;b=8'b10010010;c=1'b1;
#50;
a=8'b11111111;
#50;
#100 $finish;
end 
endmodule
