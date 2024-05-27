`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/25 19:57:10
// Design Name: 
// Module Name: full_adder
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

module full_adder(x,y,c_in,s,c_out);

input x,y,c_in;
output s,c_out;

wire s1,c1,c2;

half_adder ha1 (x,y,s1,c1);
half_adder ha2 (c_in,s1,s,c2);

or (c_out, c2, c1);

endmodule
