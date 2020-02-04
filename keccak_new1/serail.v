`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/07/2020 01:45:47 AM
// Design Name: 
// Module Name: serail
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


module serail(clk, dataIn, dataOut, nonce, target1);

input clk;
input [31:0] dataIn;

output [607:0] dataOut;
output [31:0] nonce;
output [31:0] target1;

reg [671:0] in;
reg [671:0] tmp;

reg [5:0] cnt = 0;


//always @(posedge clk)
//  cnt <= cnt + 1;

assign dataOut = tmp[671:64];
assign nonce = tmp[63:32];
assign target1 = tmp[31:0];

always @(posedge clk) begin
  case (cnt)
    5'd0: in[31:0] = dataIn;
    5'd1: in[63:32] = dataIn;
    5'd2: in[95:64] = dataIn;
    5'd3: in[127:96] = dataIn;
    5'd4: in[159:128] = dataIn;
    5'd5: in[191:160] = dataIn;
    5'd6: in[223:192] = dataIn;
    5'd7: in[255:224] = dataIn;
    5'd8: in[287:256] = dataIn;
    5'd9: in[319:288] = dataIn;
    5'd10: in[351:320] = dataIn;
    5'd11: in[383:352] = dataIn;
    5'd12: in[415:384] = dataIn;
    5'd13: in[447:416] = dataIn;
    5'd14: in[479:448] = dataIn;
    5'd15: in[511:480] = dataIn;
    5'd16: in[543:512] = dataIn;
    5'd17: in[575:544] = dataIn;
    5'd18: in[607:576] = dataIn;
    5'd19: in[639:608] = dataIn;
    5'd20: in[671:640] = dataIn; 
//    default: in = 8'h00;
  endcase
    
  
  
  if (cnt == 20) begin
    cnt = 0; tmp = in; end
  else
    cnt = cnt + 1;
end

endmodule
