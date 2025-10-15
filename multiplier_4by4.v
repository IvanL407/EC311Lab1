`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2025 02:53:18 PM
// Design Name: 
// Module Name: multiplier_4by4
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


module multiplier_4by4(
    input [3:0] A,
    input [3:0] B,
    output [7:0] Prod
    );
    
    assign Prod = A * B;
    
endmodule
