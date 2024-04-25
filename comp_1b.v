//---------------------------------------------------------
//-- comp_1b.v  
//-- Comparados de 1 bit
//---------------------------------------------------------
//-- BY Juan S. Fabi
//---------------------------------------------------------
//-- GPL license
//---------------------------------------------------------
//-----------------------------------
//-- Entradas: i0 e i1
//-- Salida: eq
//-- eq = i0.i1 + i0'.i1'
//-----------------------------------
module comp_1b(
	input wire i0, i1,
	output wire eq);

assign eq = i0&i1 | ~i0 & ~i1;

endmodule