module comptador_8_bits(
input clk,
input rst,
input en,
output reg [7:0] out
);

reg [7:0] counter; //registre temporal comptador

always @(posedge clk or negedge rst) begin
	if (rst == 1'b0) begin //quan reset es 0 (Actiu per nivell baix)
	counter <= 8'b0; //el comptador és 0
	end
	//per rst 1
	else if (en == 1'b0) begin //per enable 0  
	counter <= counter; //el comptador mantindra el seu valor
	end 

	else begin
	counter <= counter + 1'b1; //per enable 1 el comptador contara
	end
end

always @(posedge clk or negedge rst) begin
	if (rst == 1'b0) begin //quan rst es 0 la sortida es 0
        out <= 8'b0; 
	end
	//per reset 1
        else if (en == 1'b0) begin  //per en 0
        out <= 8'b0; //la sortida ha de ser 0
	end 

        else begin
        out <= counter + 1; //sino la sortida agafara el valor del comptador    
	end
end
endmodule 
