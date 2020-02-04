`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/07/2020 01:09:21 PM
// Design Name: 
// Module Name: main
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


module main(clk, dataIn, gn_match);

input clk;
input [31:0] dataIn;

output gn_match;

wire [607:0] dataOut;
wire [31:0] nonce;
wire [31:0] target1;

reg reset = 0;
wire locked;   
wire clk_out1; 

clk_wiz_0 instance_name( .clk_out1(clk_out1), .reset(reset), .locked(locked), .clk_in1(clk));      

serail ss(.clk(clk_out1), .dataIn(dataIn), .dataOut(dataOut), .nonce(nonce), .target1(target1)); 

keccak kk(.clk(clk_out1), .in(dataOut), .nonce(nonce), .target1(target1), .gn_match(gn_match));   


endmodule
