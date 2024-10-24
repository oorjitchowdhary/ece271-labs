// Top-level module that defines the I/Os for the DE-1 SoC board
module DE1_SoC (HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, KEY, LEDR, SW);
	output logic [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;
	output logic [9:0] LEDR;
	input logic [3:0] KEY;
	input logic [9:0] SW;
	
	
	// call main module that calls both Nordstrom and Fred's House functions
	main m(.HEX2, .HEX1, .HEX0, .discounted(LEDR[0]), .stolen(LEDR[1]), .U(SW[9]), .P(SW[8]), .C(SW[7]), .M(SW[0]);
	
	// unused HEX lights
	assign HEX3 = 7'b0111111;
	assign HEX4 = 7'b0111111;
	assign HEX5 = 7'b0111111;
endmodule
