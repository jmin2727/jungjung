`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/28 13:36:29
// Design Name: 
// Module Name: tb_mux4_to_1
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


module mux4_to_1_tb;

  
  reg i0, i1, i2, i3, s0, s1;
  
  wire out;

  
  mux4_to_1 uut (
    .i0(i0),
    .i1(i1),
    .i2(i2),
    .i3(i3),
    .s0(s0),
    .s1(s1),
    .out(out)
  );

 
  initial begin
   
    s0 = 0; s1 = 0;
    i0 = 1; i1 = 0; i2 = 0; i3 = 0;
    #10; 
   

    
    s0 = 0; s1 = 1;
    i0 = 0; i1 = 1; i2 = 0; i3 = 0;
    #10; 
    
    s0 = 1; s1 = 0;
    i0 = 0; i1 = 0; i2 = 1; i3 = 0;
    #10; 
    

    
    s0 = 1; s1 = 1;
    i0 = 0; i1 = 0; i2 = 0; i3 = 1;
    #10; 
   
  end

endmodule