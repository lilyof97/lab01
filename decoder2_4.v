module decoder2_4(
input clock,
input en, // Senyal de "enable"
input [1:0] sel,
output reg [3:0] out // Senyal de sortida de 4 bits

);

always@(sel or en)begin
	if(en==1'b0) begin
	out = 4'b1111;
	end
	else begin
	case (sel)
	2'b00: begin out = 4'b1110; end
	2'b01: begin out= 4'b1101; end
	2'b10: begin out = 4'b1011; end
	2'b11: begin out = 4'b0111; end
	endcase
		
	end
end
endmodule
