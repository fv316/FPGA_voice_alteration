`timescale 1ns / 100ps //unit time is 1ns, resolution 100ps

module div_2500 (enable, clock, out);

   parameter BIT_SZ = 16;
	input clock;
	input enable;
	output out;
	
	
	reg [BIT_SZ-1:0] count;
	reg out;
	
	
	initial count = 0;
	
	always @ (posedge clock && enable == 1)
	begin
		if (count == 16'd2499) begin
			out <= 1'b1;
			count <= 1'b0; end
		else begin
		   count <= count + 1'b1;
			out <= 1'b0; end
		
end
endmodule