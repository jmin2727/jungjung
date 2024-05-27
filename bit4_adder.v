`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/25 19:56:21
// Design Name: 
// Module Name: bit4_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module bit4_adder(x,y,c_in,sum,c_out);

input [3:0] x,y;
input c_in;
output [3:0] sum;
output c_out;

wire c1, c2, c3;

full_adder fa_1 (x[0], y[0], c_in, sum[0], c1);
full_adder fa_2 (x[1], y[1], c1, sum[1], c2);
full_adder fa_3 (x[2], y[2], c2, sum[2], c3);
full_adder fa_4 (x[3], y[3], c3, sum[3], c_out);

endmodule
