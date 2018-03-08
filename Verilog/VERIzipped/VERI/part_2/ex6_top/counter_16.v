`timescale 1ns / 100ps //unit time is 1ns, resolution 100ps

//Design name: count_8
//function : an 8-bit synchronous counter with enable input

module counter_16 (
  clock,
  enable,
  count,
  reset
 );
 
 //declare ports
 
   parameter BIT_SZ = 16;
	input clock;
	input enable, reset;
	output [BIT_SZ-1:0] count;
	
 //count needs to declared as reg
 
   reg [BIT_SZ-1:0] count;
	
 //alaways initialise storage elements such as D-FF
 
  initial count = 0;

  
 //main body of the module
 
  always @ (posedge clock)
  if (enable == 1'b1)
    case (reset)
	 1'b0:  count <= count + 1'b1;
	 1'b1:	count <= 0;
	 endcase
	 
endmodule //end of module