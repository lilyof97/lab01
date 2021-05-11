`timescale 1ns / 1ps
module test_shiftreg;
// Inputs
reg clk ;
reg reset;
reg en;
reg in;

//Outputs
wire out;


shiftregister  uut (
.clk(clk), 
.reset(reset), 
.en(en),
.in(in),
.out(out)
);
 

initial begin
clk = 1'b0;
forever
#10 clk = ~clk;
end

initial begin
//inicialitzem in, rst i en a 0
en=1'b0;
in = 1'b0; 
reset = 1'b0; #20 
//per rst 1 iniciem el sistema, in es 0 i en es 0
en = 1'b0;
in = 1'b0 ; 
reset = 1'b1; #20
//volem posar la dada 111010
//rst a 1 i posem la primera dada diferent a 0
en = 1'b1;
in = 1'b0;
reset = 1'b1; #20
//
en = 1'b1;
in = 1'b1;
reset = 1'b1; #20
//
en = 1'b1;
in = 1'b0;
reset = 1'b1; #20
//
en = 1'b1;
in = 1'b1;
reset = 1'b1; #20
//
en = 1'b1;
in = 1'b1;
reset = 1'b1; #20
//
en = 1'b1;
in = 1'b1;
reset = 1'b1; 

#100
$stop;

end
 
endmodule
