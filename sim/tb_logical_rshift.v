`default_nettype none
`timescale 1ps/1ps
module tb_module;
	reg [7:0] tb_in;
	wire tb_cout;
	wire [7:0] tb_out;
	logical_rshift rshft_inst(
		.in(tb_in),
		.out(tb_out),
		.cout(tb_cout)
	);
	initial begin
	$dumpfile("sim_output.vcd"); $dumpvars(0, tb_module);
	tb_in = {8{1'b0}};
	#500;
	$finish;
	end
	always begin
	#1 tb_in[0] = ~ tb_in[0];
	end
	always begin
	#2 tb_in[1] = ~ tb_in[1];
	end
	always begin
	#4 tb_in[2] = ~ tb_in[2];
	end
	always begin
	#8 tb_in[3] = ~ tb_in[3];
	end
	always begin 
	#16 tb_in[4] = ~ tb_in[4];
	end
	always begin
	#32 tb_in[5] = ~ tb_in[5];
	end
	always begin
	#64 tb_in[6] = ~ tb_in[6];
	end
	always begin
	#128 tb_in[7] = ~ tb_in[7];
	end
endmodule
