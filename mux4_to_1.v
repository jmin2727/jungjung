`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/28 13:29:01
// Design Name: 
// Module Name: mux4_to_1
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


module mux4_to_1(i0, i1, i2, i3, s0, s1, out);
input i0;
input i1;
input i2;
input i3;
input s0;
input s1;

output out;

assign out = s1 ? (s0 ? i3 : i2) : (s0 ? i1 : i0);

endmodule
