`default_nettype none
module logical_rshift(
	input [7:0] in, 
	output cout,
	output reg [7:0] out
);
	integer i;
	assign cout = in[0];
	always @(*) begin
		for ( i = 0; i < 8; i = i + 1 ) begin
			if ( i == 7 ) out[i] = 1'b0;
			else out[i] = in[i+1];
		end
	end
endmodule
