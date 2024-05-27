`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/28 13:38:16
// Design Name: 
// Module Name: mux8_to_1
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


module mux8_to_1(i0, i1, i2, i3, i4 ,i5, i6, i7, s, out);

input i0, i1, i2, i3 ,i4, i5, i6, i7;
input [2:0]s;

output out;
assign out = s[2] ? (s[1] ? (s[0] ? i7 : i6) : (s[0] ? i5 : i4)) : (s[1]?(s[0] ? i3 : i2) : (s[0] ? i1 : i0));

endmodule
