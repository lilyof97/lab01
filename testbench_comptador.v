`timescale 1ns/1ps
module testbench_comptador();
reg clk, rst, en;
wire [7:0] out;

comptador_8_bits uut(
 .clk(clk),
 .rst(rst),
 .en(en),
 .out(out)
 );


initial begin
clk <= 1'b1;
forever #10 clk=~clk;
end
initial begin
//inicialitzem els inputs
// comprovem per rst 0 i en 0
rst <= 1'b0;
en <= 1'b0; #20
//per rst 1 i en 0
rst <= 1'b1;
en <= 1'b0; #20
//per rst 1 i en 1
rst <= 1'b1;
en <= 1'b1; #40
//per rst 1 i en 0
rst <= 1'b1;
en <= 1'b0; #20
//per rst 1 i en 1
rst <= 1'b1;
en <= 1'b1; 

#200

 $stop;
end
endmodule

