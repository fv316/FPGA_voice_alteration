module ex14_top(SW, CLOCK_50, DAC_CS, DAC_SDI, DAC_LD, DAC_SCK, PWM_OUT,HEX0,HEX1,HEX2,HEX3);


input [9:0] SW;
input CLOCK_50;

output DAC_CS, DAC_SDI, DAC_LD, DAC_SCK, PWM_OUT;
output [6:0] HEX0,HEX1,HEX2,HEX3;

reg [9:0] A;
initial A = 10'b0 ;

wire [9:0] D;
wire tenk;


wire [9:0] intoreg;
assign intoreg = SW + A ;


 wire [3:0] BCD_0, BCD_1, BCD_2, BCD_3, BCD_4;
 wire [23:0] multiply_by_k;






div_5000 div1(CLOCK_50, tenk);

ROM rom1(A,tenk,D);

spi2dac_v3 spidac1(CLOCK_50, D, tenk, DAC_SDI, DAC_CS, DAC_scK, DAC_LD);

pwm pwm1(CLOCK_50, D, tenk, PWM_OUT);

multiply_k (SW,multiply_by_k);

bin2bcd_16 ({2'b0,multiply_by_k[23:10]}, BCD_0, BCD_1, BCD_2, BCD_3, BCD_4);

hex_to_7seg	(HEX0, BCD_0);
hex_to_7seg	(HEX1, BCD_1);
hex_to_7seg	(HEX2, BCD_2);
hex_to_7seg	(HEX3, BCD_3);


always @ (posedge tenk)

    A <= intoreg ;





endmodule