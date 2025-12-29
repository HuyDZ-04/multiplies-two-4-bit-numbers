`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/29/2025 08:13:41 AM
// Design Name: 
// Module Name: sim
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


module sim();
    reg clk, rst;
    reg [3:0] A, B;
    wire [7:0] P;
    wire done;
    
    mul dut( .A(A),
             .B(B),
             .done(done),
             .P(P),
             .clk(clk),
             .rst(rst) 
    );
    initial begin 
        forever #5 clk = ~clk;
    end
    initial begin
        rst = 1;
        clk = 0;
        #100;
        rst = 0;
        A = 4'b0010;
        B = 4'b0111;
        #100;
        A = 4'b1111;
        B = 4'b0011;
        #100;
        $finish;
    end
endmodule
