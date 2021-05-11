`timescale 1ns / 1ns //Unitat de temps de simulació / Resolucio

module testbench_d24;
//Inputs
reg clock;
reg [1:0] sel;
reg en;
//Outputs
wire[3:0] out;

decoder2_4 instdut( //Instancia, primer el nom del modul
.clock (clock),
.en (en),
.sel (sel),
.out (out)
);

always #5 clock=!clock; //Canviem el valor logic de clk. Always fora de l'initial


//Condicions inicials de les variables per al test
initial begin
clock = 1'b0;
sel = 2'b00;
en = 1'b0; #10 
//entrada 00
sel = 2'b00;
en = 1'b1; #10
//entrada 01
sel = 2'b01;
en = 1'b1; #10
//entrada 10
sel = 2'b10;
en = 1'b1; #10
//entrada 11
sel = 2'b11;
en = 1'b1;


#50

 $stop; 
end

endmodule
