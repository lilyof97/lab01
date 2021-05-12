module shift_register_v (
input clk,
input en,
input rst,
input in,
output reg [7:0] out);

always @ (posedge clk)
	if (rst == 1'b0) 
	out <= 8'b0;
	else begin
	if (en)
	out <= {out[6:0], in};
	else 
	out <= out;
	end

endmodule
