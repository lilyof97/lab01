`timescale 1ns/1ns

module testbench_shr;
reg clk;
reg en;
reg rst;
reg in;
wire[7:0] out;

shift_register_v uut(
.clk(clk),
.en(en),
.rst(rst),
.in(in),
.out(out)
);

initial begin
clk <= 1'b1;
forever #10 clk=!clk;
end

initial begin
rst <= 1'b0;
en <= 1'b0;
in <= 1'b0;
#20
rst <= 1'b1;
en <= 1'b1;
in <= 1'b0;
#20
rst <= 1'b1;
en <= 1'b1;
in <= 1'b1;
#20
rst <= 1'b1;
en <= 1'b1;
in <= 1'b0;
#20
rst <= 1'b1;
en <= 1'b1;
in <= 1'b1;
#20
rst <= 1'b1;
en <= 1'b0;
in <= 1'b1;
#20
rst <= 1'b1;
en <= 1'b1;
in <= 1'b1;

#200

$stop;
end
endmodule
