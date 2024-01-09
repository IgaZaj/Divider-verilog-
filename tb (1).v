`timescale 1ns/1ps
module tb;

	reg clk_i,enable_i,rst_ni ;
	wire sig_1hz_no;
	defparam uut.DivRatio=5;
	//wstawienie modułu
	
	divider uut (clk_i,enable_i, rst_ni, sig_1hz_no); 
	//clk_i, enable_i, rst_ni, sig_1hz_no
	
	//generacja sygnałów
		initial
			begin
			clk_i=0;
			enable_i=0;
			rst_ni=0;
			#10
			rst_ni=1;
			#100
			enable_i=1;
			end

//generacja zegara
	always
	#10 clk_i =!clk_i;
endmodule 
