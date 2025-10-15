`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2025 02:58:59 PM
// Design Name: 
// Module Name: left_shifter
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


module left_shifter(
    input [3:0] A,
    input [3:0] B,
    output reg [7:0] OUT
    );
    
    always@(*) begin
        if (B > 7)
            OUT = 8'b00000000;
        else
            OUT = {4'b0, A} << B;
    end //always
endmodule
