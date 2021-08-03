`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:29:37 08/03/2021
// Design Name:   DADDA_Multiplier
// Module Name:   E:/GRADUATION PROJECT/Projects/DADDA/DADDA_tb.v
// Project Name:  DADDA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DADDA_Multiplier
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DADDA_tb;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;

	// Outputs
	wire [15:0] Y;

	// Instantiate the Unit Under Test (UUT)
	DADDA_Multiplier uut (
		.A(A), 
		.B(B), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		$display ("*** TEST CASE 1 ***");
    
		A = 8'd3;
		B= 8'd4;
		
		

		#10
			 
			if (Y==8'd12)
				 $display (" PASSED") ;
			else
				begin
				 $display (" FAILED ",Y) ;
				end


		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule
