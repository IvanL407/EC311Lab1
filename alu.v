`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2025 03:11:58 PM
// Design Name: 
// Module Name: alu
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


module alu(
    input [3:0] A,
    input [3:0] B,
    input [1:0] S,
    output [7:0] Y
    );
    
    wire [7:0] add_out;
    wire [7:0] mult_out;
    wire [7:0] concat_out;
    wire [7:0] shift_out;
    
    adder_4bit a1 (.A(A), .B(B), .Sum(add_out));
    multiplier_4by4 m1 (.A(A), .B(B), .Prod(mult_out));
    concatenator c1 (.A(A), .B(B), .AB(concat_out));
    left_shifter l1 (.A(A), .B(B), .OUT(shift_out));
    
    multiplexer mux (.J(concat_out), .K(add_out), .L(shift_out), .M(mult_out), .S(S), .Y(Y));
    
endmodule
