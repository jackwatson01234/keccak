`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/07/2020 01:25:02 PM
// Design Name: 
// Module Name: main_tb
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


module main_tb;

reg clk;
reg [31:0] dataIn;

wire gn_match;

main mm(clk, dataIn, gn_match);

initial
begin 
    clk = 0;
    dataIn = 0;
end

always begin
    #1  clk = ~clk;
end

endmodule
