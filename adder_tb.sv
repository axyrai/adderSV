module adder_tb();
logic [7:0] a;
logic [7:0] b;
logic c;
logic [7:0] sum;
logic cout;

logic [8:0] result;

adder ad1 (.a(a),.b(b),.c(c),.sum(sum),.cout(cout));
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
