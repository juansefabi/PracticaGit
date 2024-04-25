//-------------------------------------------------------------------
//-- counter_tb.v
//-- Banco de pruebas para el contador
//-------------------------------------------------------------------
//-- BQ August 2015. Written by Juan Gonzalez (Obijuan)
//-------------------------------------------------------------------

module comp_1b_tb();

reg [1:0] test_in0, test_in1;
wire test_out;

//-- Instanciar el contador
comp_1b C1(
	.i0 (test_in0),
	.i1 (test_in1),
	.eq (test_out)
);

//-- Proceso al inicio
initial begin

	//-- Fichero donde almacenar los resultados
	$dumpfile("comp_1b_tb.vcd");
	$dumpvars(0, comp_1b_tb);


	test_in0 = 0;
	test_in1 = 0;
	# 20 
		if (test_out == 0)
			$display("ERROR! Comparador no funciono");
		else
			$display("Comparador OK.");

	test_in0 = 0;
	test_in1 = 1;
	# 40
		if (test_out == 1)
			$display("ERROR! Comparador no funciono");
		else
			$display("Comparador OK.");

	test_in0 = 1;
	test_in1 = 0;
	# 60 
		if (test_out == 1)
			$display("ERROR! Comparador no funciono");
		else
			$display("Comparador OK.");

	test_in0 = 1;
	test_in1 = 1;
	# 80 
		if (test_out == 0)
			$display("ERROR! Comparador no funciono");
		else
			$display("Comparador OK.");

	# 99 $display("FIN de la simulacion");
	# 100 $finish;
end

endmodule
