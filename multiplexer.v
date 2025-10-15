`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2025 03:06:35 PM
// Design Name: 
// Module Name: multiplexer
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


module multiplexer(
    input [7:0] J,
    input [7:0] K,
    input [7:0] L,
    input [7:0] M,
    input [1:0] S,
    output reg [7:0] Y
    );
    
    always @(*) begin
        case(S)
            2'b00: Y = J;
            2'b01: Y = K;
            2'b10: Y = L;
            2'b11: Y = M;
            default: Y = 8'b00000000;
        endcase
    end //always
endmodule
