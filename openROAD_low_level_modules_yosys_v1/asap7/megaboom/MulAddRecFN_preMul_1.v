module MulAddRecFN_preMul_1(
  input   clock,
  input   reset,
  input  [1:0] io_op,
  input  [64:0] io_a,
  input  [64:0] io_b,
  input  [64:0] io_c,
  input  [1:0] io_roundingMode,
  output [52:0] io_mulAddA,
  output [52:0] io_mulAddB,
  output [105:0] io_mulAddC,
  output [2:0] io_toPostMul_highExpA,
  output  io_toPostMul_isNaN_isQuietNaNA,
  output [2:0] io_toPostMul_highExpB,
  output  io_toPostMul_isNaN_isQuietNaNB,
  output  io_toPostMul_signProd,
  output  io_toPostMul_isZeroProd,
  output  io_toPostMul_opSignC,
  output [2:0] io_toPostMul_highExpC,
  output  io_toPostMul_isNaN_isQuietNaNC,
  output  io_toPostMul_isCDominant,
  output  io_toPostMul_CAlignDist_0,
  output [7:0] io_toPostMul_CAlignDist,
  output  io_toPostMul_bit0AlignedNegSigC,
  output [54:0] io_toPostMul_highAlignedNegSigC,
  output [13:0] io_toPostMul_sExpSum,
  output [1:0] io_toPostMul_roundingMode
);
  wire  signA;
  wire [11:0] expA;
  wire [51:0] fractA;
  wire [2:0] _T_52;
  wire  isZeroA;
  wire  _T_55;
  wire [52:0] sigA;
  wire  signB;
  wire [11:0] expB;
  wire [51:0] fractB;
  wire [2:0] _T_56;
  wire  isZeroB;
  wire  _T_59;
  wire [52:0] sigB;
  wire  _T_60;
  wire  _T_61;
  wire  opSignC;
  wire [11:0] expC;
  wire [51:0] fractC;
  wire [2:0] _T_62;
  wire  isZeroC;
  wire  _T_65;
  wire [52:0] sigC;
  wire  _T_66;
  wire  _T_67;
  wire  signProd;
  wire  isZeroProd;
  wire  _T_68;
  wire  _T_70;
  wire [2:0] _T_74;
  wire [10:0] _T_75;
  wire [13:0] _T_76;
  wire [13:0] _GEN_0;
  wire [14:0] _T_77;
  wire [13:0] _T_78;
  wire [14:0] _T_80;
  wire [13:0] sExpAlignedProd;
  wire  doSubMags;
  wire [13:0] _GEN_1;
  wire [14:0] _T_81;
  wire [13:0] sNatCAlignDist;
  wire  _T_82;
  wire  CAlignDist_floor;
  wire [12:0] _T_83;
  wire  _T_85;
  wire  CAlignDist_0;
  wire  _T_90;
  wire  _T_91;
  wire  isCDominant;
  wire  _T_95;
  wire [7:0] _T_96;
  wire [7:0] _T_98;
  wire [7:0] CAlignDist;
  wire [13:0] sExpSum;
  wire  _T_99;
  wire [6:0] _T_100;
  wire  _T_101;
  wire [5:0] _T_102;
  wire [64:0] _T_105;
  wire [32:0] _T_106;
  wire [31:0] _T_107;
  wire [15:0] _T_112;
  wire [31:0] _T_113;
  wire [15:0] _T_114;
  wire [31:0] _GEN_2;
  wire [31:0] _T_115;
  wire [31:0] _T_117;
  wire [31:0] _T_118;
  wire [23:0] _T_122;
  wire [31:0] _GEN_3;
  wire [31:0] _T_123;
  wire [23:0] _T_124;
  wire [31:0] _GEN_4;
  wire [31:0] _T_125;
  wire [31:0] _T_127;
  wire [31:0] _T_128;
  wire [27:0] _T_132;
  wire [31:0] _GEN_5;
  wire [31:0] _T_133;
  wire [27:0] _T_134;
  wire [31:0] _GEN_6;
  wire [31:0] _T_135;
  wire [31:0] _T_137;
  wire [31:0] _T_138;
  wire [29:0] _T_142;
  wire [31:0] _GEN_7;
  wire [31:0] _T_143;
  wire [29:0] _T_144;
  wire [31:0] _GEN_8;
  wire [31:0] _T_145;
  wire [31:0] _T_147;
  wire [31:0] _T_148;
  wire [30:0] _T_152;
  wire [31:0] _GEN_9;
  wire [31:0] _T_153;
  wire [30:0] _T_154;
  wire [31:0] _GEN_10;
  wire [31:0] _T_155;
  wire [31:0] _T_157;
  wire [31:0] _T_158;
  wire  _T_159;
  wire [32:0] _T_160;
  wire [32:0] _T_161;
  wire [32:0] _T_162;
  wire [32:0] _T_163;
  wire [52:0] _T_165;
  wire [19:0] _T_170;
  wire [15:0] _T_171;
  wire [7:0] _T_176;
  wire [15:0] _T_177;
  wire [7:0] _T_178;
  wire [15:0] _GEN_11;
  wire [15:0] _T_179;
  wire [15:0] _T_181;
  wire [15:0] _T_182;
  wire [11:0] _T_186;
  wire [15:0] _GEN_12;
  wire [15:0] _T_187;
  wire [11:0] _T_188;
  wire [15:0] _GEN_13;
  wire [15:0] _T_189;
  wire [15:0] _T_191;
  wire [15:0] _T_192;
  wire [13:0] _T_196;
  wire [15:0] _GEN_14;
  wire [15:0] _T_197;
  wire [13:0] _T_198;
  wire [15:0] _GEN_15;
  wire [15:0] _T_199;
  wire [15:0] _T_201;
  wire [15:0] _T_202;
  wire [14:0] _T_206;
  wire [15:0] _GEN_16;
  wire [15:0] _T_207;
  wire [14:0] _T_208;
  wire [15:0] _GEN_17;
  wire [15:0] _T_209;
  wire [15:0] _T_211;
  wire [15:0] _T_212;
  wire [3:0] _T_213;
  wire [1:0] _T_214;
  wire  _T_215;
  wire  _T_216;
  wire [1:0] _T_217;
  wire [1:0] _T_218;
  wire  _T_219;
  wire  _T_220;
  wire [1:0] _T_221;
  wire [3:0] _T_222;
  wire [19:0] _T_223;
  wire [19:0] _T_225;
  wire [52:0] CExtraMask;
  wire [52:0] _T_226;
  wire [52:0] negSigC;
  wire [107:0] _T_230;
  wire [53:0] _T_231;
  wire [161:0] _T_232;
  wire [161:0] _T_233;
  wire [161:0] _T_234;
  wire [52:0] _T_235;
  wire  _T_237;
  wire  _T_238;
  wire [161:0] _T_239;
  wire [162:0] _T_240;
  wire [161:0] alignedNegSigC;
  wire [105:0] _T_241;
  wire  _T_243;
  wire  _T_245;
  wire  _T_247;
  wire  _T_248;
  wire [54:0] _T_249;
  assign io_mulAddA = sigA;
  assign io_mulAddB = sigB;
  assign io_mulAddC = _T_241;
  assign io_toPostMul_highExpA = _T_52;
  assign io_toPostMul_isNaN_isQuietNaNA = _T_243;
  assign io_toPostMul_highExpB = _T_56;
  assign io_toPostMul_isNaN_isQuietNaNB = _T_245;
  assign io_toPostMul_signProd = signProd;
  assign io_toPostMul_isZeroProd = isZeroProd;
  assign io_toPostMul_opSignC = opSignC;
  assign io_toPostMul_highExpC = _T_62;
  assign io_toPostMul_isNaN_isQuietNaNC = _T_247;
  assign io_toPostMul_isCDominant = isCDominant;
  assign io_toPostMul_CAlignDist_0 = CAlignDist_0;
  assign io_toPostMul_CAlignDist = CAlignDist;
  assign io_toPostMul_bit0AlignedNegSigC = _T_248;
  assign io_toPostMul_highAlignedNegSigC = _T_249;
  assign io_toPostMul_sExpSum = sExpSum;
  assign io_toPostMul_roundingMode = io_roundingMode;
  assign signA = io_a[64];
  assign expA = io_a[63:52];
  assign fractA = io_a[51:0];
  assign _T_52 = expA[11:9];
  assign isZeroA = _T_52 == 3'h0;
  assign _T_55 = isZeroA == 1'h0;
  assign sigA = {_T_55,fractA};
  assign signB = io_b[64];
  assign expB = io_b[63:52];
  assign fractB = io_b[51:0];
  assign _T_56 = expB[11:9];
  assign isZeroB = _T_56 == 3'h0;
  assign _T_59 = isZeroB == 1'h0;
  assign sigB = {_T_59,fractB};
  assign _T_60 = io_c[64];
  assign _T_61 = io_op[0];
  assign opSignC = _T_60 ^ _T_61;
  assign expC = io_c[63:52];
  assign fractC = io_c[51:0];
  assign _T_62 = expC[11:9];
  assign isZeroC = _T_62 == 3'h0;
  assign _T_65 = isZeroC == 1'h0;
  assign sigC = {_T_65,fractC};
  assign _T_66 = signA ^ signB;
  assign _T_67 = io_op[1];
  assign signProd = _T_66 ^ _T_67;
  assign isZeroProd = isZeroA | isZeroB;
  assign _T_68 = expB[11];
  assign _T_70 = _T_68 == 1'h0;
  assign _T_74 = _T_70 ? 3'h7 : 3'h0;
  assign _T_75 = expB[10:0];
  assign _T_76 = {_T_74,_T_75};
  assign _GEN_0 = {{2'd0}, expA};
  assign _T_77 = _GEN_0 + _T_76;
  assign _T_78 = _T_77[13:0];
  assign _T_80 = _T_78 + 14'h38;
  assign sExpAlignedProd = _T_80[13:0];
  assign doSubMags = signProd ^ opSignC;
  assign _GEN_1 = {{2'd0}, expC};
  assign _T_81 = sExpAlignedProd - _GEN_1;
  assign sNatCAlignDist = _T_81[13:0];
  assign _T_82 = sNatCAlignDist[13];
  assign CAlignDist_floor = isZeroProd | _T_82;
  assign _T_83 = sNatCAlignDist[12:0];
  assign _T_85 = _T_83 == 13'h0;
  assign CAlignDist_0 = CAlignDist_floor | _T_85;
  assign _T_90 = _T_83 < 13'h36;
  assign _T_91 = CAlignDist_floor | _T_90;
  assign isCDominant = _T_65 & _T_91;
  assign _T_95 = _T_83 < 13'ha1;
  assign _T_96 = sNatCAlignDist[7:0];
  assign _T_98 = _T_95 ? _T_96 : 8'ha1;
  assign CAlignDist = CAlignDist_floor ? 8'h0 : _T_98;
  assign sExpSum = CAlignDist_floor ? {{2'd0}, expC} : sExpAlignedProd;
  assign _T_99 = CAlignDist[7];
  assign _T_100 = CAlignDist[6:0];
  assign _T_101 = _T_100[6];
  assign _T_102 = _T_100[5:0];
  assign _T_105 = $signed(65'sh10000000000000000) >>> _T_102;
  assign _T_106 = _T_105[63:31];
  assign _T_107 = _T_106[31:0];
  assign _T_112 = _T_107[31:16];
  assign _T_113 = {{16'd0}, _T_112};
  assign _T_114 = _T_107[15:0];
  assign _GEN_2 = {{16'd0}, _T_114};
  assign _T_115 = _GEN_2 << 16;
  assign _T_117 = _T_115 & 32'hffff0000;
  assign _T_118 = _T_113 | _T_117;
  assign _T_122 = _T_118[31:8];
  assign _GEN_3 = {{8'd0}, _T_122};
  assign _T_123 = _GEN_3 & 32'hff00ff;
  assign _T_124 = _T_118[23:0];
  assign _GEN_4 = {{8'd0}, _T_124};
  assign _T_125 = _GEN_4 << 8;
  assign _T_127 = _T_125 & 32'hff00ff00;
  assign _T_128 = _T_123 | _T_127;
  assign _T_132 = _T_128[31:4];
  assign _GEN_5 = {{4'd0}, _T_132};
  assign _T_133 = _GEN_5 & 32'hf0f0f0f;
  assign _T_134 = _T_128[27:0];
  assign _GEN_6 = {{4'd0}, _T_134};
  assign _T_135 = _GEN_6 << 4;
  assign _T_137 = _T_135 & 32'hf0f0f0f0;
  assign _T_138 = _T_133 | _T_137;
  assign _T_142 = _T_138[31:2];
  assign _GEN_7 = {{2'd0}, _T_142};
  assign _T_143 = _GEN_7 & 32'h33333333;
  assign _T_144 = _T_138[29:0];
  assign _GEN_8 = {{2'd0}, _T_144};
  assign _T_145 = _GEN_8 << 2;
  assign _T_147 = _T_145 & 32'hcccccccc;
  assign _T_148 = _T_143 | _T_147;
  assign _T_152 = _T_148[31:1];
  assign _GEN_9 = {{1'd0}, _T_152};
  assign _T_153 = _GEN_9 & 32'h55555555;
  assign _T_154 = _T_148[30:0];
  assign _GEN_10 = {{1'd0}, _T_154};
  assign _T_155 = _GEN_10 << 1;
  assign _T_157 = _T_155 & 32'haaaaaaaa;
  assign _T_158 = _T_153 | _T_157;
  assign _T_159 = _T_106[32];
  assign _T_160 = {_T_158,_T_159};
  assign _T_161 = ~ _T_160;
  assign _T_162 = _T_101 ? 33'h0 : _T_161;
  assign _T_163 = ~ _T_162;
  assign _T_165 = {_T_163,20'hfffff};
  assign _T_170 = _T_105[19:0];
  assign _T_171 = _T_170[15:0];
  assign _T_176 = _T_171[15:8];
  assign _T_177 = {{8'd0}, _T_176};
  assign _T_178 = _T_171[7:0];
  assign _GEN_11 = {{8'd0}, _T_178};
  assign _T_179 = _GEN_11 << 8;
  assign _T_181 = _T_179 & 16'hff00;
  assign _T_182 = _T_177 | _T_181;
  assign _T_186 = _T_182[15:4];
  assign _GEN_12 = {{4'd0}, _T_186};
  assign _T_187 = _GEN_12 & 16'hf0f;
  assign _T_188 = _T_182[11:0];
  assign _GEN_13 = {{4'd0}, _T_188};
  assign _T_189 = _GEN_13 << 4;
  assign _T_191 = _T_189 & 16'hf0f0;
  assign _T_192 = _T_187 | _T_191;
  assign _T_196 = _T_192[15:2];
  assign _GEN_14 = {{2'd0}, _T_196};
  assign _T_197 = _GEN_14 & 16'h3333;
  assign _T_198 = _T_192[13:0];
  assign _GEN_15 = {{2'd0}, _T_198};
  assign _T_199 = _GEN_15 << 2;
  assign _T_201 = _T_199 & 16'hcccc;
  assign _T_202 = _T_197 | _T_201;
  assign _T_206 = _T_202[15:1];
  assign _GEN_16 = {{1'd0}, _T_206};
  assign _T_207 = _GEN_16 & 16'h5555;
  assign _T_208 = _T_202[14:0];
  assign _GEN_17 = {{1'd0}, _T_208};
  assign _T_209 = _GEN_17 << 1;
  assign _T_211 = _T_209 & 16'haaaa;
  assign _T_212 = _T_207 | _T_211;
  assign _T_213 = _T_170[19:16];
  assign _T_214 = _T_213[1:0];
  assign _T_215 = _T_214[0];
  assign _T_216 = _T_214[1];
  assign _T_217 = {_T_215,_T_216};
  assign _T_218 = _T_213[3:2];
  assign _T_219 = _T_218[0];
  assign _T_220 = _T_218[1];
  assign _T_221 = {_T_219,_T_220};
  assign _T_222 = {_T_217,_T_221};
  assign _T_223 = {_T_212,_T_222};
  assign _T_225 = _T_101 ? _T_223 : 20'h0;
  assign CExtraMask = _T_99 ? _T_165 : {{33'd0}, _T_225};
  assign _T_226 = ~ sigC;
  assign negSigC = doSubMags ? _T_226 : sigC;
  assign _T_230 = doSubMags ? 108'hfffffffffffffffffffffffffff : 108'h0;
  assign _T_231 = {doSubMags,negSigC};
  assign _T_232 = {_T_231,_T_230};
  assign _T_233 = $signed(_T_232);
  assign _T_234 = $signed(_T_233) >>> CAlignDist;
  assign _T_235 = sigC & CExtraMask;
  assign _T_237 = _T_235 != 53'h0;
  assign _T_238 = _T_237 ^ doSubMags;
  assign _T_239 = $unsigned(_T_234);
  assign _T_240 = {_T_239,_T_238};
  assign alignedNegSigC = _T_240[161:0];
  assign _T_241 = alignedNegSigC[106:1];
  assign _T_243 = fractA[51];
  assign _T_245 = fractB[51];
  assign _T_247 = fractC[51];
  assign _T_248 = alignedNegSigC[0];
  assign _T_249 = alignedNegSigC[161:107];
endmodule