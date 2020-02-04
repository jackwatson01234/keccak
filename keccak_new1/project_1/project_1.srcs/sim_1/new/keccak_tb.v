`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/20/2019 04:16:54 PM
// Design Name: 
// Module Name: keccak_tb
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


module keccak_tb;

reg clk;
reg [607:0] in;
reg [31:0] nonce;
reg [31:0] target1;

wire gn_match;

keccak kk (.clk(clk), .in(in), .nonce(nonce), .target1(target1), .gn_match(gn_match));

initial
begin 
    clk = 0;
    in = 0;
    nonce = 0;
end

always begin
    #200  clk = ~clk;
end

endmodule
