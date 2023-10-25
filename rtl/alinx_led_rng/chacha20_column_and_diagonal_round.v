module chacha20_column_and_diagonal_round (
    round_input,
    round_output
);

    input [511:0] round_input;
    output [511:0] round_output;

    /* signal declarations */
    wire [447:0] _286;
    wire [287:0] _283;
    wire [127:0] _280;
    wire [6:0] _278;
    wire [7:0] _273;
    wire [31:0] _271;
    wire [23:0] _272;
    wire [31:0] _274;
    wire [31:0] _275;
    wire [31:0] _276;
    wire [24:0] _277;
    wire [31:0] _279;
    wire [95:0] _268;
    wire [11:0] _265;
    wire [15:0] _260;
    wire [31:0] _257;
    wire [31:0] _258;
    wire [15:0] _259;
    wire [31:0] _261;
    wire [31:0] _256;
    wire [31:0] _262;
    wire [31:0] _263;
    wire [19:0] _264;
    wire [31:0] _266;
    wire [31:0] _254;
    wire [31:0] _253;
    wire [31:0] _255;
    wire [31:0] _267;
    wire [415:0] _250;
    wire [255:0] _247;
    wire [223:0] _244;
    wire [6:0] _242;
    wire [7:0] _237;
    wire [31:0] _235;
    wire [23:0] _236;
    wire [31:0] _238;
    wire [31:0] _239;
    wire [31:0] _240;
    wire [24:0] _241;
    wire [31:0] _243;
    wire [63:0] _232;
    wire [11:0] _229;
    wire [15:0] _224;
    wire [31:0] _221;
    wire [31:0] _222;
    wire [15:0] _223;
    wire [31:0] _225;
    wire [31:0] _220;
    wire [31:0] _226;
    wire [31:0] _227;
    wire [19:0] _228;
    wire [31:0] _230;
    wire [31:0] _218;
    wire [31:0] _217;
    wire [31:0] _219;
    wire [31:0] _231;
    wire [383:0] _214;
    wire [351:0] _211;
    wire [191:0] _208;
    wire [6:0] _206;
    wire [7:0] _201;
    wire [31:0] _199;
    wire [23:0] _200;
    wire [31:0] _202;
    wire [31:0] _203;
    wire [31:0] _204;
    wire [24:0] _205;
    wire [31:0] _207;
    wire [31:0] _196;
    wire [11:0] _193;
    wire [15:0] _188;
    wire [31:0] _185;
    wire [31:0] _186;
    wire [15:0] _187;
    wire [31:0] _189;
    wire [31:0] _184;
    wire [31:0] _190;
    wire [31:0] _191;
    wire [19:0] _192;
    wire [31:0] _194;
    wire [31:0] _182;
    wire [31:0] _181;
    wire [31:0] _183;
    wire [31:0] _195;
    wire [319:0] _176;
    wire [159:0] _173;
    wire [6:0] _171;
    wire [31:0] _168;
    wire [31:0] _169;
    wire [24:0] _170;
    wire [31:0] _172;
    wire [479:0] _165;
    wire [511:0] _166;
    wire [319:0] _167;
    wire [511:0] _174;
    wire [159:0] _175;
    wire [511:0] _177;
    wire [479:0] _178;
    wire [7:0] _163;
    wire [11:0] _158;
    wire [31:0] _154;
    wire [31:0] _155;
    wire [31:0] _156;
    wire [19:0] _157;
    wire [31:0] _159;
    wire [31:0] _160;
    wire [15:0] _152;
    wire [31:0] _148;
    wire [31:0] _147;
    wire [31:0] _149;
    wire [351:0] _142;
    wire [223:0] _139;
    wire [6:0] _137;
    wire [31:0] _134;
    wire [31:0] _135;
    wire [24:0] _136;
    wire [31:0] _138;
    wire [95:0] _131;
    wire [383:0] _130;
    wire [511:0] _132;
    wire [255:0] _133;
    wire [511:0] _140;
    wire [127:0] _141;
    wire [511:0] _143;
    wire [479:0] _144;
    wire [7:0] _128;
    wire [11:0] _123;
    wire [31:0] _119;
    wire [31:0] _120;
    wire [31:0] _121;
    wire [19:0] _122;
    wire [31:0] _124;
    wire [31:0] _125;
    wire [15:0] _117;
    wire [31:0] _113;
    wire [31:0] _112;
    wire [31:0] _114;
    wire [447:0] _109;
    wire [319:0] _106;
    wire [191:0] _103;
    wire [6:0] _101;
    wire [7:0] _96;
    wire [31:0] _94;
    wire [23:0] _95;
    wire [31:0] _97;
    wire [31:0] _98;
    wire [31:0] _99;
    wire [24:0] _100;
    wire [31:0] _102;
    wire [63:0] _91;
    wire [11:0] _88;
    wire [15:0] _83;
    wire [31:0] _80;
    wire [31:0] _81;
    wire [15:0] _82;
    wire [31:0] _84;
    wire [31:0] _79;
    wire [31:0] _85;
    wire [31:0] _86;
    wire [19:0] _87;
    wire [31:0] _89;
    wire [31:0] _77;
    wire [31:0] _76;
    wire [31:0] _78;
    wire [31:0] _90;
    wire [415:0] _73;
    wire [287:0] _70;
    wire [159:0] _67;
    wire [6:0] _65;
    wire [7:0] _60;
    wire [31:0] _58;
    wire [23:0] _59;
    wire [31:0] _61;
    wire [31:0] _62;
    wire [31:0] _63;
    wire [24:0] _64;
    wire [31:0] _66;
    wire [31:0] _55;
    wire [11:0] _52;
    wire [15:0] _47;
    wire [31:0] _44;
    wire [31:0] _45;
    wire [15:0] _46;
    wire [31:0] _48;
    wire [31:0] _43;
    wire [31:0] _49;
    wire [31:0] _50;
    wire [19:0] _51;
    wire [31:0] _53;
    wire [31:0] _41;
    wire [31:0] _40;
    wire [31:0] _42;
    wire [31:0] _54;
    wire [383:0] _37;
    wire [255:0] _34;
    wire [127:0] _31;
    wire [6:0] _29;
    wire [7:0] _24;
    wire [31:0] _22;
    wire [23:0] _23;
    wire [31:0] _25;
    wire [31:0] _26;
    wire [31:0] _27;
    wire [24:0] _28;
    wire [31:0] _30;
    wire [11:0] _17;
    wire [15:0] _12;
    wire [31:0] _9;
    wire [31:0] _10;
    wire [15:0] _11;
    wire [31:0] _13;
    wire [31:0] _8;
    wire [31:0] _14;
    wire [31:0] _15;
    wire [19:0] _16;
    wire [31:0] _18;
    wire [31:0] _6;
    wire [31:0] _5;
    wire [31:0] _7;
    wire [31:0] _19;
    wire [511:0] _2;
    wire [479:0] _4;
    wire [511:0] _20;
    wire [351:0] _21;
    wire [511:0] _32;
    wire [223:0] _33;
    wire [511:0] _35;
    wire [95:0] _36;
    wire [511:0] _38;
    wire [447:0] _39;
    wire [511:0] _56;
    wire [319:0] _57;
    wire [511:0] _68;
    wire [191:0] _69;
    wire [511:0] _71;
    wire [63:0] _72;
    wire [511:0] _74;
    wire [415:0] _75;
    wire [511:0] _92;
    wire [287:0] _93;
    wire [511:0] _104;
    wire [159:0] _105;
    wire [511:0] _107;
    wire [31:0] _108;
    wire [511:0] _110;
    wire [31:0] _111;
    wire [31:0] _115;
    wire [15:0] _116;
    wire [31:0] _118;
    wire [31:0] _126;
    wire [23:0] _127;
    wire [31:0] _129;
    wire [511:0] _145;
    wire [31:0] _146;
    wire [31:0] _150;
    wire [15:0] _151;
    wire [31:0] _153;
    wire [31:0] _161;
    wire [23:0] _162;
    wire [31:0] _164;
    wire [511:0] _179;
    wire [447:0] _180;
    wire [511:0] _197;
    wire [287:0] _198;
    wire [511:0] _209;
    wire [127:0] _210;
    wire [511:0] _212;
    wire [95:0] _213;
    wire [511:0] _215;
    wire [415:0] _216;
    wire [511:0] _233;
    wire [255:0] _234;
    wire [511:0] _245;
    wire [223:0] _246;
    wire [511:0] _248;
    wire [63:0] _249;
    wire [511:0] _251;
    wire [383:0] _252;
    wire [511:0] _269;
    wire [351:0] _270;
    wire [511:0] _281;
    wire [191:0] _282;
    wire [511:0] _284;
    wire [31:0] _285;
    wire [511:0] _287;

    /* logic */
    assign _286 = _284[447:0];
    assign _283 = _281[287:0];
    assign _280 = _269[127:0];
    assign _278 = _276[31:25];
    assign _273 = _271[31:24];
    assign _271 = _261 ^ _267;
    assign _272 = _271[23:0];
    assign _274 = { _272, _273 };
    assign _275 = _262 + _274;
    assign _276 = _266 ^ _275;
    assign _277 = _276[24:0];
    assign _279 = { _277, _278 };
    assign _268 = _251[95:0];
    assign _265 = _263[31:20];
    assign _260 = _258[31:16];
    assign _257 = _251[479:448];
    assign _258 = _257 ^ _255;
    assign _259 = _258[15:0];
    assign _261 = { _259, _260 };
    assign _256 = _251[319:288];
    assign _262 = _256 + _261;
    assign _263 = _254 ^ _262;
    assign _264 = _263[19:0];
    assign _266 = { _264, _265 };
    assign _254 = _251[159:128];
    assign _253 = _251[127:96];
    assign _255 = _253 + _254;
    assign _267 = _255 + _266;
    assign _250 = _248[415:0];
    assign _247 = _245[255:0];
    assign _244 = _233[223:0];
    assign _242 = _240[31:25];
    assign _237 = _235[31:24];
    assign _235 = _225 ^ _231;
    assign _236 = _235[23:0];
    assign _238 = { _236, _237 };
    assign _239 = _226 + _238;
    assign _240 = _230 ^ _239;
    assign _241 = _240[24:0];
    assign _243 = { _241, _242 };
    assign _232 = _215[63:0];
    assign _229 = _227[31:20];
    assign _224 = _222[31:16];
    assign _221 = _215[447:416];
    assign _222 = _221 ^ _219;
    assign _223 = _222[15:0];
    assign _225 = { _223, _224 };
    assign _220 = _215[287:256];
    assign _226 = _220 + _225;
    assign _227 = _218 ^ _226;
    assign _228 = _227[19:0];
    assign _230 = { _228, _229 };
    assign _218 = _215[255:224];
    assign _217 = _215[95:64];
    assign _219 = _217 + _218;
    assign _231 = _219 + _230;
    assign _214 = _212[383:0];
    assign _211 = _209[351:0];
    assign _208 = _197[191:0];
    assign _206 = _204[31:25];
    assign _201 = _199[31:24];
    assign _199 = _189 ^ _195;
    assign _200 = _199[23:0];
    assign _202 = { _200, _201 };
    assign _203 = _190 + _202;
    assign _204 = _194 ^ _203;
    assign _205 = _204[24:0];
    assign _207 = { _205, _206 };
    assign _196 = _179[31:0];
    assign _193 = _191[31:20];
    assign _188 = _186[31:16];
    assign _185 = _179[415:384];
    assign _186 = _185 ^ _183;
    assign _187 = _186[15:0];
    assign _189 = { _187, _188 };
    assign _184 = _179[383:352];
    assign _190 = _184 + _189;
    assign _191 = _182 ^ _190;
    assign _192 = _191[19:0];
    assign _194 = { _192, _193 };
    assign _182 = _179[223:192];
    assign _181 = _179[63:32];
    assign _183 = _181 + _182;
    assign _195 = _183 + _194;
    assign _176 = _174[319:0];
    assign _173 = _166[159:0];
    assign _171 = _169[31:25];
    assign _168 = _155 + _164;
    assign _169 = _159 ^ _168;
    assign _170 = _169[24:0];
    assign _172 = { _170, _171 };
    assign _165 = _145[511:32];
    assign _166 = { _165, _160 };
    assign _167 = _166[511:192];
    assign _174 = { _167, _172, _173 };
    assign _175 = _174[511:352];
    assign _177 = { _175, _168, _176 };
    assign _178 = _177[479:0];
    assign _163 = _161[31:24];
    assign _158 = _156[31:20];
    assign _154 = _145[351:320];
    assign _155 = _154 + _153;
    assign _156 = _148 ^ _155;
    assign _157 = _156[19:0];
    assign _159 = { _157, _158 };
    assign _160 = _149 + _159;
    assign _152 = _150[31:16];
    assign _148 = _145[191:160];
    assign _147 = _145[31:0];
    assign _149 = _147 + _148;
    assign _142 = _140[351:0];
    assign _139 = _132[223:0];
    assign _137 = _135[31:25];
    assign _134 = _120 + _129;
    assign _135 = _124 ^ _134;
    assign _136 = _135[24:0];
    assign _138 = { _136, _137 };
    assign _131 = _110[95:0];
    assign _130 = _110[511:128];
    assign _132 = { _130, _125, _131 };
    assign _133 = _132[511:256];
    assign _140 = { _133, _138, _139 };
    assign _141 = _140[511:384];
    assign _143 = { _141, _134, _142 };
    assign _144 = _143[479:0];
    assign _128 = _126[31:24];
    assign _123 = _121[31:20];
    assign _119 = _110[383:352];
    assign _120 = _119 + _118;
    assign _121 = _113 ^ _120;
    assign _122 = _121[19:0];
    assign _124 = { _122, _123 };
    assign _125 = _114 + _124;
    assign _117 = _115[31:16];
    assign _113 = _110[255:224];
    assign _112 = _110[127:96];
    assign _114 = _112 + _113;
    assign _109 = _107[447:0];
    assign _106 = _104[319:0];
    assign _103 = _92[191:0];
    assign _101 = _99[31:25];
    assign _96 = _94[31:24];
    assign _94 = _84 ^ _90;
    assign _95 = _94[23:0];
    assign _97 = { _95, _96 };
    assign _98 = _85 + _97;
    assign _99 = _89 ^ _98;
    assign _100 = _99[24:0];
    assign _102 = { _100, _101 };
    assign _91 = _74[63:0];
    assign _88 = _86[31:20];
    assign _83 = _81[31:16];
    assign _80 = _74[479:448];
    assign _81 = _80 ^ _78;
    assign _82 = _81[15:0];
    assign _84 = { _82, _83 };
    assign _79 = _74[351:320];
    assign _85 = _79 + _84;
    assign _86 = _77 ^ _85;
    assign _87 = _86[19:0];
    assign _89 = { _87, _88 };
    assign _77 = _74[223:192];
    assign _76 = _74[95:64];
    assign _78 = _76 + _77;
    assign _90 = _78 + _89;
    assign _73 = _71[415:0];
    assign _70 = _68[287:0];
    assign _67 = _56[159:0];
    assign _65 = _63[31:25];
    assign _60 = _58[31:24];
    assign _58 = _48 ^ _54;
    assign _59 = _58[23:0];
    assign _61 = { _59, _60 };
    assign _62 = _49 + _61;
    assign _63 = _53 ^ _62;
    assign _64 = _63[24:0];
    assign _66 = { _64, _65 };
    assign _55 = _38[31:0];
    assign _52 = _50[31:20];
    assign _47 = _45[31:16];
    assign _44 = _38[447:416];
    assign _45 = _44 ^ _42;
    assign _46 = _45[15:0];
    assign _48 = { _46, _47 };
    assign _43 = _38[319:288];
    assign _49 = _43 + _48;
    assign _50 = _41 ^ _49;
    assign _51 = _50[19:0];
    assign _53 = { _51, _52 };
    assign _41 = _38[191:160];
    assign _40 = _38[63:32];
    assign _42 = _40 + _41;
    assign _54 = _42 + _53;
    assign _37 = _35[383:0];
    assign _34 = _32[255:0];
    assign _31 = _20[127:0];
    assign _29 = _27[31:25];
    assign _24 = _22[31:24];
    assign _22 = _13 ^ _19;
    assign _23 = _22[23:0];
    assign _25 = { _23, _24 };
    assign _26 = _14 + _25;
    assign _27 = _18 ^ _26;
    assign _28 = _27[24:0];
    assign _30 = { _28, _29 };
    assign _17 = _15[31:20];
    assign _12 = _10[31:16];
    assign _9 = _2[415:384];
    assign _10 = _9 ^ _7;
    assign _11 = _10[15:0];
    assign _13 = { _11, _12 };
    assign _8 = _2[287:256];
    assign _14 = _8 + _13;
    assign _15 = _6 ^ _14;
    assign _16 = _15[19:0];
    assign _18 = { _16, _17 };
    assign _6 = _2[159:128];
    assign _5 = _2[31:0];
    assign _7 = _5 + _6;
    assign _19 = _7 + _18;
    assign _2 = round_input;
    assign _4 = _2[511:32];
    assign _20 = { _4, _19 };
    assign _21 = _20[511:160];
    assign _32 = { _21, _30, _31 };
    assign _33 = _32[511:288];
    assign _35 = { _33, _26, _34 };
    assign _36 = _35[511:416];
    assign _38 = { _36, _25, _37 };
    assign _39 = _38[511:64];
    assign _56 = { _39, _54, _55 };
    assign _57 = _56[511:192];
    assign _68 = { _57, _66, _67 };
    assign _69 = _68[511:320];
    assign _71 = { _69, _62, _70 };
    assign _72 = _71[511:448];
    assign _74 = { _72, _61, _73 };
    assign _75 = _74[511:96];
    assign _92 = { _75, _90, _91 };
    assign _93 = _92[511:224];
    assign _104 = { _93, _102, _103 };
    assign _105 = _104[511:352];
    assign _107 = { _105, _98, _106 };
    assign _108 = _107[511:480];
    assign _110 = { _108, _97, _109 };
    assign _111 = _110[511:480];
    assign _115 = _111 ^ _114;
    assign _116 = _115[15:0];
    assign _118 = { _116, _117 };
    assign _126 = _118 ^ _125;
    assign _127 = _126[23:0];
    assign _129 = { _127, _128 };
    assign _145 = { _129, _144 };
    assign _146 = _145[511:480];
    assign _150 = _146 ^ _149;
    assign _151 = _150[15:0];
    assign _153 = { _151, _152 };
    assign _161 = _153 ^ _160;
    assign _162 = _161[23:0];
    assign _164 = { _162, _163 };
    assign _179 = { _164, _178 };
    assign _180 = _179[511:64];
    assign _197 = { _180, _195, _196 };
    assign _198 = _197[511:224];
    assign _209 = { _198, _207, _208 };
    assign _210 = _209[511:384];
    assign _212 = { _210, _203, _211 };
    assign _213 = _212[511:416];
    assign _215 = { _213, _202, _214 };
    assign _216 = _215[511:96];
    assign _233 = { _216, _231, _232 };
    assign _234 = _233[511:256];
    assign _245 = { _234, _243, _244 };
    assign _246 = _245[511:288];
    assign _248 = { _246, _239, _247 };
    assign _249 = _248[511:448];
    assign _251 = { _249, _238, _250 };
    assign _252 = _251[511:128];
    assign _269 = { _252, _267, _268 };
    assign _270 = _269[511:160];
    assign _281 = { _270, _279, _280 };
    assign _282 = _281[511:320];
    assign _284 = { _282, _275, _283 };
    assign _285 = _284[511:480];
    assign _287 = { _285, _274, _286 };

    /* aliases */

    /* output assignments */
    assign round_output = _287;

endmodule