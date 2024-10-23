// process returns for Nordstrom

module returns (discounted, stolen, U, P, C, M);
	output logic discounted, stolen;
	input U, P, C, M;
	
	assign discounted = P | (U & C);
	assign stolen = (~M & ~P) & (~C | U);
endmodule


module returns_testbench();
	logic discounted, stolen;
	logic U, P, C, M;
	
	returns dut (.discounted, .stolen, .U, .P, .C, .M);
	
	// try all combinations
	integer i;
	initial begin
		for (i=0; i < 16; i++) begin
			{U, P, C, M} = i; #10;
		end
	end
endmodule
