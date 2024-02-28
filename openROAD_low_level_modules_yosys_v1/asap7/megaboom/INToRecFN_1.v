module INToRecFN_1(
  input   clock,
  input   reset,
  input   io_signedIn,
  input  [63:0] io_in,
  input  [1:0] io_roundingMode,
  output [64:0] io_out,
  output [4:0] io_exceptionFlags
);
  wire  _T_12;
  wire  sign;
  wire [64:0] _T_14;
  wire [63:0] _T_15;
  wire [63:0] absIn;
  wire [31:0] _T_17;
  wire [31:0] _T_18;
  wire  _T_20;
  wire [15:0] _T_21;
  wire [15:0] _T_22;
  wire  _T_24;
  wire [7:0] _T_25;
  wire [7:0] _T_26;
  wire  _T_28;
  wire [3:0] _T_29;
  wire [3:0] _T_30;
  wire  _T_32;
  wire  _T_33;
  wire  _T_35;
  wire  _T_37;
  wire [1:0] _T_39;
  wire [1:0] _T_40;
  wire  _T_41;
  wire  _T_43;
  wire  _T_45;
  wire [1:0] _T_47;
  wire [1:0] _T_48;
  wire [1:0] _T_49;
  wire [2:0] _T_50;
  wire [3:0] _T_51;
  wire [3:0] _T_52;
  wire  _T_54;
  wire  _T_55;
  wire  _T_57;
  wire  _T_59;
  wire [1:0] _T_61;
  wire [1:0] _T_62;
  wire  _T_63;
  wire  _T_65;
  wire  _T_67;
  wire [1:0] _T_69;
  wire [1:0] _T_70;
  wire [1:0] _T_71;
  wire [2:0] _T_72;
  wire [2:0] _T_73;
  wire [3:0] _T_74;
  wire [7:0] _T_75;
  wire [7:0] _T_76;
  wire  _T_78;
  wire [3:0] _T_79;
  wire [3:0] _T_80;
  wire  _T_82;
  wire  _T_83;
  wire  _T_85;
  wire  _T_87;
  wire [1:0] _T_89;
  wire [1:0] _T_90;
  wire  _T_91;
  wire  _T_93;
  wire  _T_95;
  wire [1:0] _T_97;
  wire [1:0] _T_98;
  wire [1:0] _T_99;
  wire [2:0] _T_100;
  wire [3:0] _T_101;
  wire [3:0] _T_102;
  wire  _T_104;
  wire  _T_105;
  wire  _T_107;
  wire  _T_109;
  wire [1:0] _T_111;
  wire [1:0] _T_112;
  wire  _T_113;
  wire  _T_115;
  wire  _T_117;
  wire [1:0] _T_119;
  wire [1:0] _T_120;
  wire [1:0] _T_121;
  wire [2:0] _T_122;
  wire [2:0] _T_123;
  wire [3:0] _T_124;
  wire [3:0] _T_125;
  wire [4:0] _T_126;
  wire [15:0] _T_127;
  wire [15:0] _T_128;
  wire  _T_130;
  wire [7:0] _T_131;
  wire [7:0] _T_132;
  wire  _T_134;
  wire [3:0] _T_135;
  wire [3:0] _T_136;
  wire  _T_138;
  wire  _T_139;
  wire  _T_141;
  wire  _T_143;
  wire [1:0] _T_145;
  wire [1:0] _T_146;
  wire  _T_147;
  wire  _T_149;
  wire  _T_151;
  wire [1:0] _T_153;
  wire [1:0] _T_154;
  wire [1:0] _T_155;
  wire [2:0] _T_156;
  wire [3:0] _T_157;
  wire [3:0] _T_158;
  wire  _T_160;
  wire  _T_161;
  wire  _T_163;
  wire  _T_165;
  wire [1:0] _T_167;
  wire [1:0] _T_168;
  wire  _T_169;
  wire  _T_171;
  wire  _T_173;
  wire [1:0] _T_175;
  wire [1:0] _T_176;
  wire [1:0] _T_177;
  wire [2:0] _T_178;
  wire [2:0] _T_179;
  wire [3:0] _T_180;
  wire [7:0] _T_181;
  wire [7:0] _T_182;
  wire  _T_184;
  wire [3:0] _T_185;
  wire [3:0] _T_186;
  wire  _T_188;
  wire  _T_189;
  wire  _T_191;
  wire  _T_193;
  wire [1:0] _T_195;
  wire [1:0] _T_196;
  wire  _T_197;
  wire  _T_199;
  wire  _T_201;
  wire [1:0] _T_203;
  wire [1:0] _T_204;
  wire [1:0] _T_205;
  wire [2:0] _T_206;
  wire [3:0] _T_207;
  wire [3:0] _T_208;
  wire  _T_210;
  wire  _T_211;
  wire  _T_213;
  wire  _T_215;
  wire [1:0] _T_217;
  wire [1:0] _T_218;
  wire  _T_219;
  wire  _T_221;
  wire  _T_223;
  wire [1:0] _T_225;
  wire [1:0] _T_226;
  wire [1:0] _T_227;
  wire [2:0] _T_228;
  wire [2:0] _T_229;
  wire [3:0] _T_230;
  wire [3:0] _T_231;
  wire [4:0] _T_232;
  wire [4:0] _T_233;
  wire [5:0] _T_234;
  wire [5:0] normCount;
  wire [126:0] _GEN_0;
  wire [126:0] _T_235;
  wire [63:0] normAbsIn;
  wire [1:0] _T_237;
  wire [9:0] _T_238;
  wire  _T_240;
  wire [2:0] roundBits;
  wire [1:0] _T_241;
  wire  roundInexact;
  wire  _T_243;
  wire [1:0] _T_244;
  wire [1:0] _T_245;
  wire  _T_247;
  wire [1:0] _T_249;
  wire  _T_251;
  wire  _T_252;
  wire  _T_254;
  wire  _T_255;
  wire  _T_256;
  wire  _T_258;
  wire  _T_259;
  wire  _T_260;
  wire  _T_262;
  wire  _T_263;
  wire  _T_265;
  wire  round;
  wire [52:0] _T_267;
  wire [53:0] unroundedNorm;
  wire [54:0] _T_270;
  wire [53:0] _T_271;
  wire [53:0] roundedNorm;
  wire [5:0] _T_272;
  wire [9:0] unroundedExp;
  wire [10:0] _T_275;
  wire  _T_276;
  wire [10:0] _GEN_1;
  wire [11:0] _T_277;
  wire [10:0] roundedExp;
  wire  _T_278;
  wire [11:0] expOut;
  wire [51:0] _T_282;
  wire [12:0] _T_283;
  wire [64:0] _T_284;
  wire [1:0] _T_287;
  wire [4:0] _T_289;
  assign io_out = _T_284;
  assign io_exceptionFlags = _T_289;
  assign _T_12 = io_in[63];
  assign sign = io_signedIn & _T_12;
  assign _T_14 = 64'h0 - io_in;
  assign _T_15 = _T_14[63:0];
  assign absIn = sign ? _T_15 : io_in;
  assign _T_17 = absIn[63:32];
  assign _T_18 = absIn[31:0];
  assign _T_20 = _T_17 != 32'h0;
  assign _T_21 = _T_17[31:16];
  assign _T_22 = _T_17[15:0];
  assign _T_24 = _T_21 != 16'h0;
  assign _T_25 = _T_21[15:8];
  assign _T_26 = _T_21[7:0];
  assign _T_28 = _T_25 != 8'h0;
  assign _T_29 = _T_25[7:4];
  assign _T_30 = _T_25[3:0];
  assign _T_32 = _T_29 != 4'h0;
  assign _T_33 = _T_29[3];
  assign _T_35 = _T_29[2];
  assign _T_37 = _T_29[1];
  assign _T_39 = _T_35 ? 2'h2 : {{1'd0}, _T_37};
  assign _T_40 = _T_33 ? 2'h3 : _T_39;
  assign _T_41 = _T_30[3];
  assign _T_43 = _T_30[2];
  assign _T_45 = _T_30[1];
  assign _T_47 = _T_43 ? 2'h2 : {{1'd0}, _T_45};
  assign _T_48 = _T_41 ? 2'h3 : _T_47;
  assign _T_49 = _T_32 ? _T_40 : _T_48;
  assign _T_50 = {_T_32,_T_49};
  assign _T_51 = _T_26[7:4];
  assign _T_52 = _T_26[3:0];
  assign _T_54 = _T_51 != 4'h0;
  assign _T_55 = _T_51[3];
  assign _T_57 = _T_51[2];
  assign _T_59 = _T_51[1];
  assign _T_61 = _T_57 ? 2'h2 : {{1'd0}, _T_59};
  assign _T_62 = _T_55 ? 2'h3 : _T_61;
  assign _T_63 = _T_52[3];
  assign _T_65 = _T_52[2];
  assign _T_67 = _T_52[1];
  assign _T_69 = _T_65 ? 2'h2 : {{1'd0}, _T_67};
  assign _T_70 = _T_63 ? 2'h3 : _T_69;
  assign _T_71 = _T_54 ? _T_62 : _T_70;
  assign _T_72 = {_T_54,_T_71};
  assign _T_73 = _T_28 ? _T_50 : _T_72;
  assign _T_74 = {_T_28,_T_73};
  assign _T_75 = _T_22[15:8];
  assign _T_76 = _T_22[7:0];
  assign _T_78 = _T_75 != 8'h0;
  assign _T_79 = _T_75[7:4];
  assign _T_80 = _T_75[3:0];
  assign _T_82 = _T_79 != 4'h0;
  assign _T_83 = _T_79[3];
  assign _T_85 = _T_79[2];
  assign _T_87 = _T_79[1];
  assign _T_89 = _T_85 ? 2'h2 : {{1'd0}, _T_87};
  assign _T_90 = _T_83 ? 2'h3 : _T_89;
  assign _T_91 = _T_80[3];
  assign _T_93 = _T_80[2];
  assign _T_95 = _T_80[1];
  assign _T_97 = _T_93 ? 2'h2 : {{1'd0}, _T_95};
  assign _T_98 = _T_91 ? 2'h3 : _T_97;
  assign _T_99 = _T_82 ? _T_90 : _T_98;
  assign _T_100 = {_T_82,_T_99};
  assign _T_101 = _T_76[7:4];
  assign _T_102 = _T_76[3:0];
  assign _T_104 = _T_101 != 4'h0;
  assign _T_105 = _T_101[3];
  assign _T_107 = _T_101[2];
  assign _T_109 = _T_101[1];
  assign _T_111 = _T_107 ? 2'h2 : {{1'd0}, _T_109};
  assign _T_112 = _T_105 ? 2'h3 : _T_111;
  assign _T_113 = _T_102[3];
  assign _T_115 = _T_102[2];
  assign _T_117 = _T_102[1];
  assign _T_119 = _T_115 ? 2'h2 : {{1'd0}, _T_117};
  assign _T_120 = _T_113 ? 2'h3 : _T_119;
  assign _T_121 = _T_104 ? _T_112 : _T_120;
  assign _T_122 = {_T_104,_T_121};
  assign _T_123 = _T_78 ? _T_100 : _T_122;
  assign _T_124 = {_T_78,_T_123};
  assign _T_125 = _T_24 ? _T_74 : _T_124;
  assign _T_126 = {_T_24,_T_125};
  assign _T_127 = _T_18[31:16];
  assign _T_128 = _T_18[15:0];
  assign _T_130 = _T_127 != 16'h0;
  assign _T_131 = _T_127[15:8];
  assign _T_132 = _T_127[7:0];
  assign _T_134 = _T_131 != 8'h0;
  assign _T_135 = _T_131[7:4];
  assign _T_136 = _T_131[3:0];
  assign _T_138 = _T_135 != 4'h0;
  assign _T_139 = _T_135[3];
  assign _T_141 = _T_135[2];
  assign _T_143 = _T_135[1];
  assign _T_145 = _T_141 ? 2'h2 : {{1'd0}, _T_143};
  assign _T_146 = _T_139 ? 2'h3 : _T_145;
  assign _T_147 = _T_136[3];
  assign _T_149 = _T_136[2];
  assign _T_151 = _T_136[1];
  assign _T_153 = _T_149 ? 2'h2 : {{1'd0}, _T_151};
  assign _T_154 = _T_147 ? 2'h3 : _T_153;
  assign _T_155 = _T_138 ? _T_146 : _T_154;
  assign _T_156 = {_T_138,_T_155};
  assign _T_157 = _T_132[7:4];
  assign _T_158 = _T_132[3:0];
  assign _T_160 = _T_157 != 4'h0;
  assign _T_161 = _T_157[3];
  assign _T_163 = _T_157[2];
  assign _T_165 = _T_157[1];
  assign _T_167 = _T_163 ? 2'h2 : {{1'd0}, _T_165};
  assign _T_168 = _T_161 ? 2'h3 : _T_167;
  assign _T_169 = _T_158[3];
  assign _T_171 = _T_158[2];
  assign _T_173 = _T_158[1];
  assign _T_175 = _T_171 ? 2'h2 : {{1'd0}, _T_173};
  assign _T_176 = _T_169 ? 2'h3 : _T_175;
  assign _T_177 = _T_160 ? _T_168 : _T_176;
  assign _T_178 = {_T_160,_T_177};
  assign _T_179 = _T_134 ? _T_156 : _T_178;
  assign _T_180 = {_T_134,_T_179};
  assign _T_181 = _T_128[15:8];
  assign _T_182 = _T_128[7:0];
  assign _T_184 = _T_181 != 8'h0;
  assign _T_185 = _T_181[7:4];
  assign _T_186 = _T_181[3:0];
  assign _T_188 = _T_185 != 4'h0;
  assign _T_189 = _T_185[3];
  assign _T_191 = _T_185[2];
  assign _T_193 = _T_185[1];
  assign _T_195 = _T_191 ? 2'h2 : {{1'd0}, _T_193};
  assign _T_196 = _T_189 ? 2'h3 : _T_195;
  assign _T_197 = _T_186[3];
  assign _T_199 = _T_186[2];
  assign _T_201 = _T_186[1];
  assign _T_203 = _T_199 ? 2'h2 : {{1'd0}, _T_201};
  assign _T_204 = _T_197 ? 2'h3 : _T_203;
  assign _T_205 = _T_188 ? _T_196 : _T_204;
  assign _T_206 = {_T_188,_T_205};
  assign _T_207 = _T_182[7:4];
  assign _T_208 = _T_182[3:0];
  assign _T_210 = _T_207 != 4'h0;
  assign _T_211 = _T_207[3];
  assign _T_213 = _T_207[2];
  assign _T_215 = _T_207[1];
  assign _T_217 = _T_213 ? 2'h2 : {{1'd0}, _T_215};
  assign _T_218 = _T_211 ? 2'h3 : _T_217;
  assign _T_219 = _T_208[3];
  assign _T_221 = _T_208[2];
  assign _T_223 = _T_208[1];
  assign _T_225 = _T_221 ? 2'h2 : {{1'd0}, _T_223};
  assign _T_226 = _T_219 ? 2'h3 : _T_225;
  assign _T_227 = _T_210 ? _T_218 : _T_226;
  assign _T_228 = {_T_210,_T_227};
  assign _T_229 = _T_184 ? _T_206 : _T_228;
  assign _T_230 = {_T_184,_T_229};
  assign _T_231 = _T_130 ? _T_180 : _T_230;
  assign _T_232 = {_T_130,_T_231};
  assign _T_233 = _T_20 ? _T_126 : _T_232;
  assign _T_234 = {_T_20,_T_233};
  assign normCount = ~ _T_234;
  assign _GEN_0 = {{63'd0}, absIn};
  assign _T_235 = _GEN_0 << normCount;
  assign normAbsIn = _T_235[63:0];
  assign _T_237 = normAbsIn[11:10];
  assign _T_238 = normAbsIn[9:0];
  assign _T_240 = _T_238 != 10'h0;
  assign roundBits = {_T_237,_T_240};
  assign _T_241 = roundBits[1:0];
  assign roundInexact = _T_241 != 2'h0;
  assign _T_243 = io_roundingMode == 2'h0;
  assign _T_244 = roundBits[2:1];
  assign _T_245 = ~ _T_244;
  assign _T_247 = _T_245 == 2'h0;
  assign _T_249 = ~ _T_241;
  assign _T_251 = _T_249 == 2'h0;
  assign _T_252 = _T_247 | _T_251;
  assign _T_254 = _T_243 ? _T_252 : 1'h0;
  assign _T_255 = io_roundingMode == 2'h2;
  assign _T_256 = sign & roundInexact;
  assign _T_258 = _T_255 ? _T_256 : 1'h0;
  assign _T_259 = _T_254 | _T_258;
  assign _T_260 = io_roundingMode == 2'h3;
  assign _T_262 = sign == 1'h0;
  assign _T_263 = _T_262 & roundInexact;
  assign _T_265 = _T_260 ? _T_263 : 1'h0;
  assign round = _T_259 | _T_265;
  assign _T_267 = normAbsIn[63:11];
  assign unroundedNorm = {1'h0,_T_267};
  assign _T_270 = unroundedNorm + 54'h1;
  assign _T_271 = _T_270[53:0];
  assign roundedNorm = round ? _T_271 : unroundedNorm;
  assign _T_272 = ~ normCount;
  assign unroundedExp = {4'h0,_T_272};
  assign _T_275 = {1'h0,unroundedExp};
  assign _T_276 = roundedNorm[53];
  assign _GEN_1 = {{10'd0}, _T_276};
  assign _T_277 = _T_275 + _GEN_1;
  assign roundedExp = _T_277[10:0];
  assign _T_278 = normAbsIn[63];
  assign expOut = {_T_278,roundedExp};
  assign _T_282 = roundedNorm[51:0];
  assign _T_283 = {sign,expOut};
  assign _T_284 = {_T_283,_T_282};
  assign _T_287 = {1'h0,roundInexact};
  assign _T_289 = {3'h0,_T_287};
endmodule