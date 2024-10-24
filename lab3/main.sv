module main (HEX2, HEX1, HEX0, discounted, stolen, U, P, C, M);
	input logic U, P, C, M;
	output logic discounted, stolen;
	output logic [6:0] HEX2, HEX1, HEX0;
	
	// Nordstrom's returns
	returns r(.discounted, .stolen, .U, .P, .C, .M);
	
	// Fred's House of Useful Stuff returns
	display d(.HEX2, .HEX1, .HEX0, .U, .P, .C);
endmodule

module main_testbench();
	logic U, P, C, M;
	logic discounted, stolen;
	logic [6:0] HEX2, HEX1, HEX0;
	
	main dut (.HEX2, .HEX1, .HEX0, .discounted, .stolen, .U, .P, .C, .M);

	// try all combinations
	integer i;
	initial begin
		for (i=0; i < 16; i++) begin
			{U, P, C, M} = i; #10;
		end
	end
endmodule
