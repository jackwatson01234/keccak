`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/07/2020 11:22:57 AM
// Design Name: 
// Module Name: serail_tb
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


module serail_tb;

reg clk;
reg [31:0] dataIn;

wire [607:0] dataOut;
wire [31:0] nonce;
wire [31:0] target1;

serail ss (.clk(clk), .dataIn(dataIn), .dataOut(dataOut), .nonce(nonce), .target1(target1));

initial
begin 
    clk = 0;
    dataIn = 0;
end

always begin
    #200  clk = ~clk;
end


endmodule
