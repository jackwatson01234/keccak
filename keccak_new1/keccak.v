module keccak(clk, in, nonce, target1, gn_match);//target0, 
    input              		clk;
    input		[607:0] 	in;
    input      	[31:0]   	nonce;	
//	input  		[31:0]  	target0; 
	input  		[31:0]  	target1; 
	
	output gn_match;

    wire       [1087:0] padder_out;
    reg	       [63:0] f_out;
    reg       [63:0] 	hash; 

    reg       [255:0] hash_out;   

	
	
	index_relocation_in  
		index_relocation_in (.in({in[607:0],nonce,448'h0100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080}), .out(padder_out));
		
			


	reg [1599:0] round00_in; wire [1599:0] round00_out; 
//  reg [1599:0] round01_in; wire [1599:0] round01_out;
  reg [1599:0] round02_in; wire [1599:0] round02_out;
//  reg [1599:0] round03_in; wire [1599:0] round03_out;
  reg [1599:0] round04_in; wire [1599:0] round04_out;
//  reg [1599:0] round05_in; wire [1599:0] round05_out;
  reg [1599:0] round06_in; wire [1599:0] round06_out;
//  reg [1599:0] round07_in; wire [1599:0] round07_out;
  reg [1599:0] round08_in; wire [1599:0] round08_out;
//  reg [1599:0] round09_in; wire [1599:0] round09_out;
  reg [1599:0] round10_in; wire [1599:0] round10_out;
//  reg [1599:0] round11_in; wire [1599:0] round11_out;
  reg [1599:0] round12_in; wire [1599:0] round12_out;
//  reg [1599:0] round13_in; wire [1599:0] round13_out;
  reg [1599:0] round14_in; wire [1599:0] round14_out;
//  reg [1599:0] round15_in; wire [1599:0] round15_out;
  reg [1599:0] round16_in; wire [1599:0] round16_out;
//  reg [1599:0] round17_in; wire [1599:0] round17_out;
  reg [1599:0] round18_in; wire [1599:0] round18_out;
//  reg [1599:0] round19_in; wire [1599:0] round19_out;
  reg [1599:0] round20_in; wire [1599:0] round20_out;
//  reg [1599:0] round21_in; wire [1599:0] round21_out;
  reg [1599:0] round22_in; wire [1599:0] round22_out;  
//  reg [1599:0] round23_in; wire [1599:0] round23_out;	    
	  
	  
  reg [6:0] rc_00;
  reg [6:0] rc_02;
  reg [6:0] rc_04;
  reg [6:0] rc_06;
  reg [6:0] rc_08;
  reg [6:0] rc_10;
  reg [6:0] rc_12;
  reg [6:0] rc_14;
  reg [6:0] rc_16;
  reg [6:0] rc_18;
  reg [6:0] rc_20;
  reg [6:0] rc_22;	  
	  
//    round_f round_f00(.clk(clk), .in({padder_out, 512'b0}), .out(round00_out), .rc(7'b0000001) );
  
//    round_f round_f01(.clk(clk), .in(round01_in), .out(round01_out), .rc(7'b0011010) );
	  
  round_f round_f00(.clk(clk), .in(round00_in), .out(round00_out), .rc(rc_00) );
  // round_f round_f01(.clk(clk), .in(round01_in), .out(round01_out), .rc(7'b0011010) );
  round_f round_f02(.clk(clk), .in(round02_in), .out(round02_out), .rc(rc_02) );
  // round_f round_f03(.clk(clk), .in(round03_in), .out(round03_out), .rc(7'b1110000) );
  round_f round_f04(.clk(clk), .in(round04_in), .out(round04_out), .rc(rc_04) );
  // round_f round_f05(.clk(clk), .in(round05_in), .out(round05_out), .rc(7'b0100001) );
  round_f round_f06(.clk(clk), .in(round06_in), .out(round06_out), .rc(rc_06) );
  //   round_f round_f07(.clk(clk), .in(round07_in), .out(round07_out), .rc(7'b1010101) );
  round_f round_f08(.clk(clk), .in(round08_in), .out(round08_out), .rc(rc_08) );
  // round_f round_f09(.clk(clk), .in(round09_in), .out(round09_out), .rc(7'b0001100) );
  round_f round_f10(.clk(clk), .in(round10_in), .out(round10_out), .rc(rc_10) );
  // round_f round_f11(.clk(clk), .in(round11_in), .out(round11_out), .rc(7'b0100110) );
  round_f round_f12(.clk(clk), .in(round12_in), .out(round12_out), .rc(rc_12) );
  // round_f round_f13(.clk(clk), .in(round13_in), .out(round13_out), .rc(7'b1001111) );
  round_f round_f14(.clk(clk), .in(round14_in), .out(round14_out), .rc(rc_14) );
  // round_f round_f15(.clk(clk), .in(round15_in), .out(round15_out), .rc(7'b1010011) );
  round_f round_f16(.clk(clk), .in(round16_in), .out(round16_out), .rc(rc_16) );
  // round_f round_f17(.clk(clk), .in(round17_in), .out(round17_out), .rc(7'b1001000) );
  round_f round_f18(.clk(clk), .in(round18_in), .out(round18_out), .rc(rc_18) );
  // round_f round_f19(.clk(clk), .in(round19_in), .out(round19_out), .rc(7'b1100110) );
  round_f round_f20(.clk(clk), .in(round20_in), .out(round20_out), .rc(rc_20) );
  // round_f round_f21(.clk(clk), .in(round21_in), .out(round21_out), .rc(7'b1011000) );
  round_f round_f22(.clk(clk), .in(round22_in), .out(round22_out), .rc(rc_22) );
  // round_f round_f23(.clk(clk), .in(round23_in), .out(round23_out), .rc(7'b1110100) );

  // round_f23 round_f23(.clk(clk), .in(round23_in), .out(round23_out) );	//  , .rc(7'b1110100)
	  
	reg tmp0 = 1;
    reg tmp2 = 1;
	reg tmp4 = 1;
	reg tmp6 = 1;
	reg tmp8 = 1;
	reg tmp10 = 1;
	reg tmp12 = 1;
	reg tmp14 = 1;
	reg tmp16 = 1;
	reg tmp18 = 1;
	reg tmp20 = 1;
	reg tmp22 = 1;
	
	reg clk1 = 0;
	
	always @(posedge clk)
	begin
	   clk1 = ~ clk1;
	end
	

//    always @ (posedge clk)
//		round01_in <= round00_out;
	  
    always @ (posedge clk1)
    begin 
      if (tmp0) begin
        rc_00 = 7'b0011010;
        round00_in <= round00_out; tmp0 = 0; end  
      else begin 
        rc_00 = 7'b0000001;
        round00_in <= {padder_out, 512'b0}; tmp0 = 1; end
    end

    always @ (posedge clk1)
    begin 
      if (tmp2) begin
        rc_02 = 7'b1110000;
        round02_in <= round02_out; tmp2 = 0; end  
      else begin 
        rc_02 = 7'b1011110;
        round02_in <= round00_out; tmp2 = 1; end
    end
	  
    always @ (posedge clk1)
    begin 
      if (tmp4) begin
        rc_04 = 7'b0100001;
        round04_in <= round04_out; tmp4 = 0; end  
      else begin
        rc_04 = 7'b0011111;
        round04_in <= round02_out; tmp4 = 1; end
    end

    always @ (posedge clk1)
    begin 
      if (tmp6) begin
        rc_06 = 7'b1010101;
        round06_in <= round06_out; tmp6 = 0; end  
      else begin 
        rc_06 = 7'b1111001;
        round06_in <= round04_out; tmp6 = 1; end
    end

    always @ (posedge clk1)
    begin 
      if (tmp8) begin
        rc_08 = 7'b0001100;
        round08_in <= round08_out; tmp8 = 0; end  
      else begin 
        rc_08 = 7'b0001110;
        round08_in <= round06_out; tmp8 = 1; end
    end

    always @ (posedge clk1)
    begin 
      if (tmp10) begin
        rc_10 = 7'b0100110; 
        round10_in <= round10_out; tmp10 = 0; end  
      else begin
        rc_10 = 7'b0110101;
        round10_in <= round08_out; tmp10 = 1; end
    end

    always @ (posedge clk1)
    begin 
      if (tmp12) begin
        rc_12 = 7'b1001111;
        round12_in <= round12_out; tmp12 = 0; end  
      else begin 
        rc_12 = 7'b0111111;
        round12_in <= round10_out; tmp12 = 1; end
    end

    always @ (posedge clk1)
    begin 
      if (tmp14) begin
        rc_14 = 7'b1010011;
        round14_in <= round14_out; tmp14 = 0; end  
      else begin 
        rc_14 = 7'b1011101;
        round14_in <= round12_out; tmp14 = 1; end
    end

    always @ (posedge clk1)
    begin 
      if (tmp16) begin
        rc_16 = 7'b1001000;
        round16_in <= round16_out; tmp16 = 0; end  
      else begin
        rc_16 = 7'b1010010; 
        round16_in <= round14_out; tmp16 = 1; end
    end

    always @ (posedge clk1)
    begin 
      if (tmp18) begin
        rc_18 = 7'b1100110;
        round18_in <= round18_out; tmp18 = 0; end  
      else begin 
        rc_18 = 7'b0010110;
        round18_in <= round16_out; tmp18 = 1; end
    end

    always @ (posedge clk1)
    begin 
      if (tmp20) begin
        rc_20 = 7'b1011000;
        round20_in <= round20_out; tmp20 = 0; end  
      else begin 
        rc_20 = 7'b1111001;
        round20_in <= round18_out; tmp20 = 1; end
    end

    always @ (posedge clk1)
    begin 
      if (tmp22) begin
        rc_22 = 7'b1110100;
        round22_in <= round22_out; tmp22 = 0; end  
      else begin 
        rc_22 = 7'b0100001;
        round22_in <= round20_out; tmp22 = 1; end
    end


 

reg gn_match_d = 1'b0;
assign gn_match = gn_match_d; 



reg tmp_out = 0;

always @(posedge clk1)
begin

gn_match_d <= ((hash_out[255:32] == 224'h0) & (hash_out[31:0] <= target1));

if (tmp_out) begin

hash_out[199:192] <= round22_out[1599:1592];
hash_out[207:200] <= round22_out[1591:1584];
hash_out[215:208] <= round22_out[1583:1576];
hash_out[223:216] <= round22_out[1575:1568];

hash_out[231:224] <= round22_out[1567:1560];
hash_out[239:232] <= round22_out[1559:1552];
hash_out[247:240] <= round22_out[1551:1544];
hash_out[255:248] <= round22_out[1543:1536];

hash_out[135:128] <= round22_out[1535:1528];
hash_out[143:136] <= round22_out[1527:1520];
hash_out[151:144] <= round22_out[1519:1512];
hash_out[159:152] <= round22_out[1511:1504];

hash_out[167:160] <= round22_out[1503:1496];
hash_out[175:168] <= round22_out[1495:1488];
hash_out[183:176] <= round22_out[1487:1480];
hash_out[191:184] <= round22_out[1479:1472];


hash_out[71:64] <= round22_out[1471:1464];
hash_out[79:72] <= round22_out[1463:1456];
hash_out[87:80] <= round22_out[1455:1448];
hash_out[95:88] <= round22_out[1447:1440];

hash_out[103:96] <= round22_out[1439:1432];
hash_out[111:104] <= round22_out[1431:1424];
hash_out[119:112] <= round22_out[1423:1416];
hash_out[127:120] <= round22_out[1415:1408];

hash_out[7:0] <= round22_out[1407:1400];
hash_out[15:8] <= round22_out[1399:1392];
hash_out[23:16] <= round22_out[1391:1384];
hash_out[31:24] <= round22_out[1383:1376];
 
hash_out[39:32] <= round22_out[1375:1368];
hash_out[47:40] <= round22_out[1367:1360];
hash_out[55:48] <= round22_out[1359:1352];
hash_out[63:56] <= round22_out[1351:1344];

tmp_out = 0;
end	  
else begin
tmp_out = 1; end


	  
end	  
	  	
endmodule//keccak





`define add_1(x)            (x == 4 ? 0 : x + 1)
`define add_2(x)            (x == 3 ? 0 : x == 4 ? 1 : x + 2)
`define rot_up(in, n)       {in[63-n:0], in[63:63-n+1]}
`define rot_up_1(in)        {in[62:0], in[63]}

module round_f(clk, in, rc, out);
    input              		clk;
    input  [1599:0] in;
    input  [6:0] rc;/* round constant */
    output [1599:0] out;
	

	wire	[1599:0] d;
	reg		[1599:0] d1;	
    wire  	[63:0]   a[4:0][4:0];
    wire   	[63:0]   b[4:0];
    wire   	[63:0]   c[4:0][4:0], e[4:0][4:0], f[4:0][4:0], g[4:0][4:0];

    genvar x, y;	
	

	
	assign b[0] = in[1599:1536] ^ in[1279:1216] ^ in[959:896] ^ in[639:576] ^ in[319:256];	
	assign b[1] = in[1535:1472] ^ in[1215:1152] ^ in[895:832] ^ in[575:512] ^ in[255:192];	
	assign b[2] = in[1471:1408] ^ in[1151:1088] ^ in[831:768] ^ in[511:448] ^ in[191:128];		
	assign b[3] = in[1407:1344] ^ in[1087:1024] ^ in[767:704] ^ in[447:384] ^ in[127:64];		
	assign b[4] = in[1343:1280] ^ in[1023:960]  ^ in[703:640] ^ in[383:320] ^ in[63:0];	
	

	assign c[0][0] = in[1599:1536] ^ b[4] ^ `rot_up_1(b[1]);
	assign c[1][0] = in[1535:1472] ^ b[0] ^ `rot_up_1(b[2]);	
	assign c[2][0] = in[1471:1408] ^ b[1] ^ `rot_up_1(b[3]);	
	assign c[3][0] = in[1407:1344] ^ b[2] ^ `rot_up_1(b[4]);
	assign c[4][0] = in[1343:1280] ^ b[3] ^ `rot_up_1(b[0]);

	assign c[0][1] = in[1279:1216] ^ b[4] ^ `rot_up_1(b[1]);
	assign c[1][1] = in[1215:1152] ^ b[0] ^ `rot_up_1(b[2]);	
	assign c[2][1] = in[1151:1088] ^ b[1] ^ `rot_up_1(b[3]);	
	assign c[3][1] = in[1087:1024] ^ b[2] ^ `rot_up_1(b[4]);
	assign c[4][1] = in[1023:960]  ^ b[3] ^ `rot_up_1(b[0]);	
	
	assign c[0][2] = in[959:896] ^ b[4] ^ `rot_up_1(b[1]);
	assign c[1][2] = in[895:832] ^ b[0] ^ `rot_up_1(b[2]);	
	assign c[2][2] = in[831:768] ^ b[1] ^ `rot_up_1(b[3]);	
	assign c[3][2] = in[767:704] ^ b[2] ^ `rot_up_1(b[4]);
	assign c[4][2] = in[703:640] ^ b[3] ^ `rot_up_1(b[0]);	
	
	assign c[0][3] = in[639:576] ^ b[4] ^ `rot_up_1(b[1]);
	assign c[1][3] = in[575:512] ^ b[0] ^ `rot_up_1(b[2]);	
	assign c[2][3] = in[511:448] ^ b[1] ^ `rot_up_1(b[3]);	
	assign c[3][3] = in[447:384] ^ b[2] ^ `rot_up_1(b[4]);
	assign c[4][3] = in[383:320] ^ b[3] ^ `rot_up_1(b[0]);	
	
	assign c[0][4] = in[319:256] ^ b[4] ^ `rot_up_1(b[1]);
	assign c[1][4] = in[255:192] ^ b[0] ^ `rot_up_1(b[2]);	
	assign c[2][4] = in[191:128] ^ b[1] ^ `rot_up_1(b[3]);	
	assign c[3][4] = in[127:64]  ^ b[2] ^ `rot_up_1(b[4]);
	assign c[4][4] = in[63:0]    ^ b[3] ^ `rot_up_1(b[0]);	
	
	
	
	
	
    /* calc "d == rho(c)" */
    assign d[1599:1536] = c[0][0];
    assign d[1535:1472] = `rot_up_1(c[1][0]);
    assign d[1471:1408] = `rot_up(c[2][0], 62);
    assign d[1407:1344] = `rot_up(c[3][0], 28);
    assign d[1343:1280] = `rot_up(c[4][0], 27);
    assign d[1279:1216] = `rot_up(c[0][1], 36);
    assign d[1215:1152] = `rot_up(c[1][1], 44);
    assign d[1151:1088] = `rot_up(c[2][1], 6);
    assign d[1087:1024] = `rot_up(c[3][1], 55);
    assign d[1023:960] = `rot_up(c[4][1], 20);
    assign d[959:896] = `rot_up(c[0][2], 3);
    assign d[895:832] = `rot_up(c[1][2], 10);
    assign d[831:768] = `rot_up(c[2][2], 43);
    assign d[767:704] = `rot_up(c[3][2], 25);
    assign d[703:640] = `rot_up(c[4][2], 39);
    assign d[639:576] = `rot_up(c[0][3], 41);
    assign d[575:512] = `rot_up(c[1][3], 45);
    assign d[511:448] = `rot_up(c[2][3], 15);
    assign d[447:384] = `rot_up(c[3][3], 21);
    assign d[383:320] = `rot_up(c[4][3], 8);
    assign d[319:256] = `rot_up(c[0][4], 18);
    assign d[255:192] = `rot_up(c[1][4], 2);
    assign d[191:128] = `rot_up(c[2][4], 61);
    assign d[127:64]  = `rot_up(c[3][4], 56);
    assign d[63:0]    = `rot_up(c[4][4], 14);


    always @ (posedge clk)
		d1      <= d;	
	
    /* calc "e == pi(d)" */
    assign e[0][0] = d1[1599:1536];
    assign e[0][2] = d1[1535:1472];
    assign e[0][4] = d1[1471:1408];
    assign e[0][1] = d1[1407:1344];
    assign e[0][3] = d1[1343:1280];
    assign e[1][3] = d1[1279:1216];
    assign e[1][0] = d1[1215:1152];
    assign e[1][2] = d1[1151:1088];
    assign e[1][4] = d1[1087:1024];
    assign e[1][1] = d1[1023:960];
    assign e[2][1] = d1[959:896];
    assign e[2][3] = d1[895:832];
    assign e[2][0] = d1[831:768];
    assign e[2][2] = d1[767:704];
    assign e[2][4] = d1[703:640];
    assign e[3][4] = d1[639:576];
    assign e[3][1] = d1[575:512];
    assign e[3][3] = d1[511:448];
    assign e[3][0] = d1[447:384];
    assign e[3][2] = d1[383:320];
    assign e[4][2] = d1[319:256];
    assign e[4][4] = d1[255:192];
    assign e[4][1] = d1[191:128];
    assign e[4][3] = d1[127:64];
    assign e[4][0] = d1[63:0];

    /* calc "f = chi(e)" */
    generate
      for(y=0; y<5; y=y+1)
        begin : L5
          for(x=0; x<5; x=x+1)
            begin : L6
              assign f[x][y] = e[x][y] ^ ((~ e[`add_1(x)][y]) & e[`add_2(x)][y]);
            end
        end
    endgenerate


    assign g[0][0][0] = f[0][0][0] ^ rc[0];	
    assign g[0][0][1] = f[0][0][1] ^ rc[1];		
    assign g[0][0][2] = f[0][0][2];	
    assign g[0][0][3] = f[0][0][3] ^ rc[2];		
    assign g[0][0][4] = f[0][0][4];
    assign g[0][0][5] = f[0][0][5];
    assign g[0][0][6] = f[0][0][6];
    assign g[0][0][7] = f[0][0][7] ^ rc[3];		
    assign g[0][0][8] = f[0][0][8];	
    assign g[0][0][9] = f[0][0][9];	
    assign g[0][0][10] = f[0][0][10];	
    assign g[0][0][11] = f[0][0][11];	
    assign g[0][0][12] = f[0][0][12];
    assign g[0][0][13] = f[0][0][13];
    assign g[0][0][14] = f[0][0][14];	
    assign g[0][0][15] = f[0][0][15] ^ rc[4];	
    assign g[0][0][16] = f[0][0][16];
    assign g[0][0][17] = f[0][0][17];	
    assign g[0][0][18] = f[0][0][18];	
    assign g[0][0][19] = f[0][0][19];	
    assign g[0][0][20] = f[0][0][20];	
    assign g[0][0][21] = f[0][0][21];	
    assign g[0][0][22] = f[0][0][22];	
    assign g[0][0][23] = f[0][0][23];	
    assign g[0][0][24] = f[0][0][24];	
    assign g[0][0][25] = f[0][0][25];	
    assign g[0][0][26] = f[0][0][26];	
    assign g[0][0][27] = f[0][0][27];
    assign g[0][0][28] = f[0][0][28];
    assign g[0][0][29] = f[0][0][29];
    assign g[0][0][30] = f[0][0][30];	
    assign g[0][0][31] = f[0][0][31] ^ rc[5];	
    assign g[0][0][32] = f[0][0][32];
    assign g[0][0][33] = f[0][0][33];	
    assign g[0][0][34] = f[0][0][34];	
    assign g[0][0][35] = f[0][0][35];	
    assign g[0][0][36] = f[0][0][36];	
    assign g[0][0][37] = f[0][0][37];	
    assign g[0][0][38] = f[0][0][38];	
    assign g[0][0][39] = f[0][0][39];	
    assign g[0][0][40] = f[0][0][40];	
    assign g[0][0][41] = f[0][0][41];	
    assign g[0][0][42] = f[0][0][42];
    assign g[0][0][43] = f[0][0][43];
    assign g[0][0][44] = f[0][0][44];
    assign g[0][0][45] = f[0][0][45];
    assign g[0][0][46] = f[0][0][46];
    assign g[0][0][47] = f[0][0][47];
    assign g[0][0][48] = f[0][0][48];
    assign g[0][0][49] = f[0][0][49];
    assign g[0][0][50] = f[0][0][50];
    assign g[0][0][51] = f[0][0][51];
    assign g[0][0][52] = f[0][0][52];
    assign g[0][0][53] = f[0][0][53];
    assign g[0][0][54] = f[0][0][54];
    assign g[0][0][55] = f[0][0][55];
    assign g[0][0][56] = f[0][0][56];
    assign g[0][0][57] = f[0][0][57];
    assign g[0][0][58] = f[0][0][58];
    assign g[0][0][59] = f[0][0][59];
    assign g[0][0][60] = f[0][0][60];	
    assign g[0][0][61] = f[0][0][61];	
    assign g[0][0][62] = f[0][0][62];	
    assign g[0][0][63] = f[0][0][63] ^ rc[6];	
	
	
	
	
    generate
      for(y=0; y<5; y=y+1)
        begin : L7
          for(x=0; x<5; x=x+1)
            begin : L8
              if(x!=0 || y!=0)
                assign g[x][y] = f[x][y];
            end
        end
    endgenerate


	
	assign out[1599:1536] = g[0][0];
	assign out[1535:1472] = g[1][0];	
	assign out[1471:1408] = g[2][0];		
	assign out[1407:1344] = g[3][0];		
	assign out[1343:1280] = g[4][0];		
	
	assign out[1279:1216] = g[0][1];
	assign out[1215:1152] = g[1][1];	
	assign out[1151:1088] = g[2][1];		
	assign out[1087:1024] = g[3][1];		
	assign out[1023:960] = g[4][1];			
	
	assign out[959:896] = g[0][2];
	assign out[895:832] = g[1][2];	
	assign out[831:768] = g[2][2];		
	assign out[767:704] = g[3][2];		
	assign out[703:640] = g[4][2];		

	assign out[639:576] = g[0][3];
	assign out[575:512] = g[1][3];	
	assign out[511:448] = g[2][3];		
	assign out[447:384] = g[3][3];		
	assign out[383:320] = g[4][3];	
	
	assign out[319:256] = g[0][4];
	assign out[255:192] = g[1][4];	
	assign out[191:128] = g[2][4];		
	assign out[127:64] = g[3][4];		
	assign out[63:0] = g[4][4];			
	

	
endmodule

`undef add_1
`undef add_2
`undef rot_up











`define rot_up(in, n)       {in[63-n:0], in[63:63-n+1]}

// module round_f23(clk, in, out);//rc, 
//     input              		clk;
//     input  [1599:0] in;
// //    input  [6:0] rc;/* round constant */
//     output [63:0] out;
	

// 	wire	[63:0] d1;
// 	wire	[63:0] d2;	
// 	wire	[63:0] d3;	
	
	
// 	reg		[63:0] d11;	
// 	reg		[63:0] d22;
// 	reg		[63:0] d33;	
	
//     wire  	[63:0]   a[4:0][4:0];
//     wire   	[63:0]   b[4:0];
//     wire   	[63:0]   c[4:0][4:0], e[4:0][4:0], f[4:0][4:0], g[4:0][4:0];

//     genvar x, y;	
	

	
// 	assign b[0] = in[1599:1536] ^ in[1279:1216] ^ in[959:896] ^ in[639:576] ^ in[319:256];	
// 	assign b[1] = in[1535:1472] ^ in[1215:1152] ^ in[895:832] ^ in[575:512] ^ in[255:192];	
// 	assign b[2] = in[1471:1408] ^ in[1151:1088] ^ in[831:768] ^ in[511:448] ^ in[191:128];		
// 	assign b[3] = in[1407:1344] ^ in[1087:1024] ^ in[767:704] ^ in[447:384] ^ in[127:64];		
// 	assign b[4] = in[1343:1280] ^ in[1023:960]  ^ in[703:640] ^ in[383:320] ^ in[63:0];	
	

// 	assign c[0][0] = in[1599:1536] ^ b[4] ^ `rot_up_1(b[1]);

// 	assign c[3][3] = in[447:384] ^ b[2] ^ `rot_up_1(b[4]);

// 	assign c[4][4] = in[63:0]    ^ b[3] ^ `rot_up_1(b[0]);	
	
	
	
	
	
//     /* calc "d == rho(c)" */
//     assign d1[63:0] = c[0][0];

//     assign d2[63:0] = `rot_up(c[3][3], 21);

//     assign d3[63:0]    = `rot_up(c[4][4], 14);

//     always @ (posedge clk)
// 	begin
// 		d11      <= d1;	
// 		d22      <= d2;			
// 		d33      <= d3;			
// 	end
	
//     /* calc "e == pi(d)" */
//     assign e[0][0] = d11[63:0];
//     assign e[3][0] = d22[63:0];
//     assign e[4][0] = d33[63:0];

	
//     /* calc "f = chi(e)" */
//     assign f[3][0] = e[3][0] ^ ((~ e[4][0]) & e[0][0]);
		

// 	assign out[63:0] = f[3][0];			
	

	
// endmodule

`undef rot_up
`undef rot_up_1










/* reorder byte ~ ~ */
`define low_pos(w,b)      ((w)*64 + (b)*8)
`define low_pos2(w,b)     `low_pos(w,7-b)
`define high_pos(w,b)     (`low_pos(w,b) + 7)
`define high_pos2(w,b)    (`low_pos2(w,b) + 7)

module index_relocation_in(in, out);
  input  [1087:0] in;
  output [1087:0] out;
    genvar w, b;
	
    generate
      for(w=0; w<17; w=w+1)
        begin : L2
          for(b=0; b<8; b=b+1)
            begin : L3
              assign out[`high_pos(w,b):`low_pos(w,b)] = in[`high_pos2(w,b):`low_pos2(w,b)];
            end
        end
    endgenerate  
  
 endmodule // index_relocation_in

`undef low_pos
`undef low_pos2
`undef high_pos
`undef high_pos2


// //////////////////////////////////////////
// // [1599:1536]
// // 1001-0001-1111-1110-1110-1010-1111-0111
// hash_out[1543:1536] = round23_out[1599:1592];
// hash_out[1551:1544] = round23_out[1591:1584];
// hash_out[1559:1552] = round23_out[1583:1576];
// hash_out[1567:1560] = round23_out[1575:1568];
// // 0000-0001-1001-0011-0111-0000-0011-1010
// hash_out[1575:1568] = round23_out[1567:1560];
// hash_out[1583:1576] = round23_out[1559:1552];
// hash_out[1591:1584] = round23_out[1551:1544];
// hash_out[1599:1592] = round23_out[1543:1536];


// //////////////////////////////////////////
// // [1535:1472]
// // 1010-1001-0111-0111-1011-0000-0000-1001
// hash_out[1479:1472] = round23_out[1535:1528];
// hash_out[1487:1480] = round23_out[1527:1520];
// hash_out[1495:1488] = round23_out[1519:1512];
// hash_out[1503:1496] = round23_out[1511:1504];
// // 1110-0010-0000-0110-0111-1010-0111-1100 
// hash_out[1511:1504] = round23_out[1503:1496];
// hash_out[1519:1512] = round23_out[1495:1488];
// hash_out[1527:1520] = round23_out[1487:1480];
// hash_out[1535:1528] = round23_out[1479:1472];

// //////////////////////////////////////////
// // [1471:1408]
// // 0001-0011-1011-1001-0010-0100-1111-1011
// hash_out[1415:1408] = round23_out[1471:1464];
// hash_out[1423:1416] = round23_out[1463:1456];
// hash_out[1431:1424] = round23_out[1455:1448];
// hash_out[1439:1432] = round23_out[1447:1440];
// // 1001-1001-0010-0111-1001-0100-1111-0011 
// hash_out[1447:1440] = round23_out[1439:1432];
// hash_out[1455:1448] = round23_out[1431:1424];
// hash_out[1463:1456] = round23_out[1423:1416];
// hash_out[1471:1464] = round23_out[1415:1408];

// //////////////////////////////////////////
// // [1407:1344]
// // 1001-0011-0101-1000-0100-1000-1100-0001
// hash_out[1351:1344] = round23_out[1407:1400];
// hash_out[1359:1352] = round23_out[1399:1392];
// hash_out[1367:1360] = round23_out[1391:1384];
// hash_out[1375:1368] = round23_out[1383:1376];
// // 1010-0100-0111-0100-0111-0110-0100-0000 
// hash_out[1383:1376] = round23_out[1375:1368];
// hash_out[1391:1384] = round23_out[1367:1360];
// hash_out[1399:1392] = round23_out[1359:1352];
// hash_out[1407:1400] = round23_out[1351:1344];


// 100010000100100111100000101100011100111000100100110000110000011001011000110001000101010000101101000010010010101110110010010011001101110110001111111010100010000010001111100110101000110011001100000110110010000110010011010000001010100010111111111110000011010010100000000110000111011001110000100000110101100100100111100000101110011111111101111001011010000001011110111110010001111000011001011000011000110100111000110000101100110000100011100010110100000111111000100111110111011010110001111111101011111000011110101000011000101011111010110010011011101111000110010011100000111010110111100011101111010000110100001011111110101110011011010100010111010000100001011101110111111010010101100001000101001001100101100000011000111100000000111110101101010000000110001100010101001010000010...
