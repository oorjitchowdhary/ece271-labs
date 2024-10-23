// HEX display module
module display (HEX2, HEX1, HEX0, U, P, C);
	input logic U, P, C;
	output logic [6:0] HEX2, HEX1, HEX0;
	
	always_comb begin
		case (C)
			1'b0: HEX0 = 7'b1000000;
			1'b1: HEX0 = 7'b1111001;
			default: HEX0 = 7'b0111111;
		endcase
	end
	
	always_comb begin
		case (P)
			1'b0: HEX1 = 7'b1000000;
			1'b1: HEX1 = 7'b1111001;
			default: HEX1 = 7'b0111111;
		endcase
	end

	always_comb begin
		case (U)
			1'b0: HEX2 = 7'b1000000;
			1'b1: HEX2 = 7'b1111001;
			default: HEX2 = 7'b0111111;
		endcase
	end
endmodule

module display_testbench();
	logic U, P, C;
	logic [6:0] HEX2, HEX1, HEX0;
	
	display dut (.HEX2, .HEX1, .HEX0, .U, .P, .C);
	
	// try all combinations
	integer i;
	initial begin
		for (i=0; i<8; i++) begin
			{U, P, C} = i; #10;
		end
	end
endmodule
