`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/29/2025 08:07:15 AM
// Design Name: 
// Module Name: mul
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


module mul(
    input [3:0] A, B,
    input clk, rst,
    output reg [7:0] P,
    output reg done
    );
    wire [3:0] m0;
    wire [4:0] m1;
    wire [5:0] m2;
    wire [6:0] m3;
    
    wire [7:0] s1, s2, s3;
    
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            P<=8'd0;
            done <= 0;
        end
        else begin
            P <= s3;
            done<=1;        
        end  
    end
    
    assign m0 = {4{A[0]}} & B[3:0];
    assign m1 = {4{A[1]}} & B[3:0];
    assign m2 = {4{A[2]}} & B[3:0];
    assign m3 = {4{A[3]}} & B[3:0];  

    assign s1 = m0 + (m1 << 1);
    assign s2 = s1 + (m2 << 2);
    assign s3 = s2 + (m3 << 3);
endmodule

