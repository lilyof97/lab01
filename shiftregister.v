module shiftregister(
input wire clk, //clock del sistema
input wire en, //habilitacio del registre intern
input wire reset, //reset del sistema
input wire in, //dades d'entrada
output wire out //dades de sortida
);

//volem crear un registre de desplaçament de 500 bits
reg [499:0] registre_intern;
wire [499:0] next;
 
 
always @(posedge clk, negedge reset)
begin
if (reset == 0) //per reset=0
	registre_intern <= 500'b0; //el registre intern és 0
	else
	if (en) //quan enable sigui 1
	registre_intern <= {registre_intern[499:1], in}; //a cada pols de rellotge el registre intern agafa el valor de next
	else
	registre_intern <= registre_intern; //sino el registre intern mantindra el seu valor
	end	
 
//el valor del wire next sera el valor de la dada d'entrada+els 499 bits 
//restants del registre intern
assign out = registre_intern & en ; //la sortida agafara el valor del registre intern
 
 
endmodule
