module ALU(
  input   clock,
  input   reset,
  input   io_dw,
  input  [3:0] io_fn,
  input  [63:0] io_in2,
  input  [63:0] io_in1,
  output [63:0] io_out,
  output [63:0] io_adder_out,
  output  io_cmp_out
);
  wire  _T_16;
  wire [63:0] _T_17;
  wire [63:0] in2_inv;
  wire [63:0] in1_xor_in2;
  wire [64:0] _T_18;
  wire [63:0] _T_19;
  wire [63:0] _GEN_1;
  wire [64:0] _T_21;
  wire [63:0] _T_22;
  wire  _T_23;
  wire  _T_26;
  wire  _T_28;
  wire  _T_29;
  wire  _T_30;
  wire  _T_31;
  wire  _T_32;
  wire  _T_33;
  wire  _T_36;
  wire  _T_37;
  wire  _T_38;
  wire  _T_39;
  wire  _T_41;
  wire  _T_42;
  wire [31:0] _T_46;
  wire [31:0] _T_49;
  wire [31:0] _T_50;
  wire  _T_51;
  wire  _T_54;
  wire [4:0] _T_55;
  wire [5:0] shamt;
  wire [31:0] _T_56;
  wire [63:0] shin_r;
  wire  _T_58;
  wire  _T_60;
  wire  _T_61;
  wire [31:0] _T_66;
  wire [63:0] _T_67;
  wire [31:0] _T_68;
  wire [63:0] _GEN_2;
  wire [63:0] _T_69;
  wire [63:0] _T_71;
  wire [63:0] _T_72;
  wire [47:0] _T_76;
  wire [63:0] _GEN_3;
  wire [63:0] _T_77;
  wire [47:0] _T_78;
  wire [63:0] _GEN_4;
  wire [63:0] _T_79;
  wire [63:0] _T_81;
  wire [63:0] _T_82;
  wire [55:0] _T_86;
  wire [63:0] _GEN_5;
  wire [63:0] _T_87;
  wire [55:0] _T_88;
  wire [63:0] _GEN_6;
  wire [63:0] _T_89;
  wire [63:0] _T_91;
  wire [63:0] _T_92;
  wire [59:0] _T_96;
  wire [63:0] _GEN_7;
  wire [63:0] _T_97;
  wire [59:0] _T_98;
  wire [63:0] _GEN_8;
  wire [63:0] _T_99;
  wire [63:0] _T_101;
  wire [63:0] _T_102;
  wire [61:0] _T_106;
  wire [63:0] _GEN_9;
  wire [63:0] _T_107;
  wire [61:0] _T_108;
  wire [63:0] _GEN_10;
  wire [63:0] _T_109;
  wire [63:0] _T_111;
  wire [63:0] _T_112;
  wire [62:0] _T_116;
  wire [63:0] _GEN_11;
  wire [63:0] _T_117;
  wire [62:0] _T_118;
  wire [63:0] _GEN_12;
  wire [63:0] _T_119;
  wire [63:0] _T_121;
  wire [63:0] _T_122;
  wire [63:0] shin;
  wire  _T_124;
  wire  _T_125;
  wire [64:0] _T_126;
  wire [64:0] _T_127;
  wire [64:0] _T_128;
  wire [63:0] shout_r;
  wire [31:0] _T_133;
  wire [63:0] _T_134;
  wire [31:0] _T_135;
  wire [63:0] _GEN_13;
  wire [63:0] _T_136;
  wire [63:0] _T_138;
  wire [63:0] _T_139;
  wire [47:0] _T_143;
  wire [63:0] _GEN_14;
  wire [63:0] _T_144;
  wire [47:0] _T_145;
  wire [63:0] _GEN_15;
  wire [63:0] _T_146;
  wire [63:0] _T_148;
  wire [63:0] _T_149;
  wire [55:0] _T_153;
  wire [63:0] _GEN_16;
  wire [63:0] _T_154;
  wire [55:0] _T_155;
  wire [63:0] _GEN_17;
  wire [63:0] _T_156;
  wire [63:0] _T_158;
  wire [63:0] _T_159;
  wire [59:0] _T_163;
  wire [63:0] _GEN_18;
  wire [63:0] _T_164;
  wire [59:0] _T_165;
  wire [63:0] _GEN_19;
  wire [63:0] _T_166;
  wire [63:0] _T_168;
  wire [63:0] _T_169;
  wire [61:0] _T_173;
  wire [63:0] _GEN_20;
  wire [63:0] _T_174;
  wire [61:0] _T_175;
  wire [63:0] _GEN_21;
  wire [63:0] _T_176;
  wire [63:0] _T_178;
  wire [63:0] _T_179;
  wire [62:0] _T_183;
  wire [63:0] _GEN_22;
  wire [63:0] _T_184;
  wire [62:0] _T_185;
  wire [63:0] _GEN_23;
  wire [63:0] _T_186;
  wire [63:0] _T_188;
  wire [63:0] shout_l;
  wire [63:0] _T_195;
  wire  _T_197;
  wire [63:0] _T_199;
  wire [63:0] shout;
  wire  _T_201;
  wire  _T_203;
  wire  _T_204;
  wire [63:0] _T_206;
  wire  _T_210;
  wire  _T_211;
  wire [63:0] _T_212;
  wire [63:0] _T_214;
  wire [63:0] logic$;
  wire  _T_216;
  wire  _T_218;
  wire  _T_219;
  wire  _T_221;
  wire  _T_222;
  wire  _T_223;
  wire [63:0] _GEN_24;
  wire [63:0] _T_224;
  wire [63:0] shift_logic;
  wire  _T_226;
  wire  _T_228;
  wire  _T_229;
  wire [63:0] out;
  wire  _T_231;
  wire  _T_232;
  wire [31:0] _T_236;
  wire [31:0] _T_237;
  wire [63:0] _T_238;
  wire [63:0] _GEN_0;
  assign io_out = _GEN_0;
  assign io_adder_out = _T_22;
  assign io_cmp_out = _T_39;
  assign _T_16 = io_fn[3];
  assign _T_17 = ~ io_in2;
  assign in2_inv = _T_16 ? _T_17 : io_in2;
  assign in1_xor_in2 = io_in1 ^ in2_inv;
  assign _T_18 = io_in1 + in2_inv;
  assign _T_19 = _T_18[63:0];
  assign _GEN_1 = {{63'd0}, _T_16};
  assign _T_21 = _T_19 + _GEN_1;
  assign _T_22 = _T_21[63:0];
  assign _T_23 = io_fn[0];
  assign _T_26 = _T_16 == 1'h0;
  assign _T_28 = in1_xor_in2 == 64'h0;
  assign _T_29 = io_in1[63];
  assign _T_30 = io_in2[63];
  assign _T_31 = _T_29 == _T_30;
  assign _T_32 = io_adder_out[63];
  assign _T_33 = io_fn[1];
  assign _T_36 = _T_33 ? _T_30 : _T_29;
  assign _T_37 = _T_31 ? _T_32 : _T_36;
  assign _T_38 = _T_26 ? _T_28 : _T_37;
  assign _T_39 = _T_23 ^ _T_38;
  assign _T_41 = io_in1[31];
  assign _T_42 = _T_16 & _T_41;
  assign _T_46 = _T_42 ? 32'hffffffff : 32'h0;
  assign _T_49 = io_in1[63:32];
  assign _T_50 = io_dw ? _T_49 : _T_46;
  assign _T_51 = io_in2[5];
  assign _T_54 = _T_51 & io_dw;
  assign _T_55 = io_in2[4:0];
  assign shamt = {_T_54,_T_55};
  assign _T_56 = io_in1[31:0];
  assign shin_r = {_T_50,_T_56};
  assign _T_58 = io_fn == 4'h5;
  assign _T_60 = io_fn == 4'hb;
  assign _T_61 = _T_58 | _T_60;
  assign _T_66 = shin_r[63:32];
  assign _T_67 = {{32'd0}, _T_66};
  assign _T_68 = shin_r[31:0];
  assign _GEN_2 = {{32'd0}, _T_68};
  assign _T_69 = _GEN_2 << 32;
  assign _T_71 = _T_69 & 64'hffffffff00000000;
  assign _T_72 = _T_67 | _T_71;
  assign _T_76 = _T_72[63:16];
  assign _GEN_3 = {{16'd0}, _T_76};
  assign _T_77 = _GEN_3 & 64'hffff0000ffff;
  assign _T_78 = _T_72[47:0];
  assign _GEN_4 = {{16'd0}, _T_78};
  assign _T_79 = _GEN_4 << 16;
  assign _T_81 = _T_79 & 64'hffff0000ffff0000;
  assign _T_82 = _T_77 | _T_81;
  assign _T_86 = _T_82[63:8];
  assign _GEN_5 = {{8'd0}, _T_86};
  assign _T_87 = _GEN_5 & 64'hff00ff00ff00ff;
  assign _T_88 = _T_82[55:0];
  assign _GEN_6 = {{8'd0}, _T_88};
  assign _T_89 = _GEN_6 << 8;
  assign _T_91 = _T_89 & 64'hff00ff00ff00ff00;
  assign _T_92 = _T_87 | _T_91;
  assign _T_96 = _T_92[63:4];
  assign _GEN_7 = {{4'd0}, _T_96};
  assign _T_97 = _GEN_7 & 64'hf0f0f0f0f0f0f0f;
  assign _T_98 = _T_92[59:0];
  assign _GEN_8 = {{4'd0}, _T_98};
  assign _T_99 = _GEN_8 << 4;
  assign _T_101 = _T_99 & 64'hf0f0f0f0f0f0f0f0;
  assign _T_102 = _T_97 | _T_101;
  assign _T_106 = _T_102[63:2];
  assign _GEN_9 = {{2'd0}, _T_106};
  assign _T_107 = _GEN_9 & 64'h3333333333333333;
  assign _T_108 = _T_102[61:0];
  assign _GEN_10 = {{2'd0}, _T_108};
  assign _T_109 = _GEN_10 << 2;
  assign _T_111 = _T_109 & 64'hcccccccccccccccc;
  assign _T_112 = _T_107 | _T_111;
  assign _T_116 = _T_112[63:1];
  assign _GEN_11 = {{1'd0}, _T_116};
  assign _T_117 = _GEN_11 & 64'h5555555555555555;
  assign _T_118 = _T_112[62:0];
  assign _GEN_12 = {{1'd0}, _T_118};
  assign _T_119 = _GEN_12 << 1;
  assign _T_121 = _T_119 & 64'haaaaaaaaaaaaaaaa;
  assign _T_122 = _T_117 | _T_121;
  assign shin = _T_61 ? shin_r : _T_122;
  assign _T_124 = shin[63];
  assign _T_125 = _T_16 & _T_124;
  assign _T_126 = {_T_125,shin};
  assign _T_127 = $signed(_T_126);
  assign _T_128 = $signed(_T_127) >>> shamt;
  assign shout_r = _T_128[63:0];
  assign _T_133 = shout_r[63:32];
  assign _T_134 = {{32'd0}, _T_133};
  assign _T_135 = shout_r[31:0];
  assign _GEN_13 = {{32'd0}, _T_135};
  assign _T_136 = _GEN_13 << 32;
  assign _T_138 = _T_136 & 64'hffffffff00000000;
  assign _T_139 = _T_134 | _T_138;
  assign _T_143 = _T_139[63:16];
  assign _GEN_14 = {{16'd0}, _T_143};
  assign _T_144 = _GEN_14 & 64'hffff0000ffff;
  assign _T_145 = _T_139[47:0];
  assign _GEN_15 = {{16'd0}, _T_145};
  assign _T_146 = _GEN_15 << 16;
  assign _T_148 = _T_146 & 64'hffff0000ffff0000;
  assign _T_149 = _T_144 | _T_148;
  assign _T_153 = _T_149[63:8];
  assign _GEN_16 = {{8'd0}, _T_153};
  assign _T_154 = _GEN_16 & 64'hff00ff00ff00ff;
  assign _T_155 = _T_149[55:0];
  assign _GEN_17 = {{8'd0}, _T_155};
  assign _T_156 = _GEN_17 << 8;
  assign _T_158 = _T_156 & 64'hff00ff00ff00ff00;
  assign _T_159 = _T_154 | _T_158;
  assign _T_163 = _T_159[63:4];
  assign _GEN_18 = {{4'd0}, _T_163};
  assign _T_164 = _GEN_18 & 64'hf0f0f0f0f0f0f0f;
  assign _T_165 = _T_159[59:0];
  assign _GEN_19 = {{4'd0}, _T_165};
  assign _T_166 = _GEN_19 << 4;
  assign _T_168 = _T_166 & 64'hf0f0f0f0f0f0f0f0;
  assign _T_169 = _T_164 | _T_168;
  assign _T_173 = _T_169[63:2];
  assign _GEN_20 = {{2'd0}, _T_173};
  assign _T_174 = _GEN_20 & 64'h3333333333333333;
  assign _T_175 = _T_169[61:0];
  assign _GEN_21 = {{2'd0}, _T_175};
  assign _T_176 = _GEN_21 << 2;
  assign _T_178 = _T_176 & 64'hcccccccccccccccc;
  assign _T_179 = _T_174 | _T_178;
  assign _T_183 = _T_179[63:1];
  assign _GEN_22 = {{1'd0}, _T_183};
  assign _T_184 = _GEN_22 & 64'h5555555555555555;
  assign _T_185 = _T_179[62:0];
  assign _GEN_23 = {{1'd0}, _T_185};
  assign _T_186 = _GEN_23 << 1;
  assign _T_188 = _T_186 & 64'haaaaaaaaaaaaaaaa;
  assign shout_l = _T_184 | _T_188;
  assign _T_195 = _T_61 ? shout_r : 64'h0;
  assign _T_197 = io_fn == 4'h1;
  assign _T_199 = _T_197 ? shout_l : 64'h0;
  assign shout = _T_195 | _T_199;
  assign _T_201 = io_fn == 4'h4;
  assign _T_203 = io_fn == 4'h6;
  assign _T_204 = _T_201 | _T_203;
  assign _T_206 = _T_204 ? in1_xor_in2 : 64'h0;
  assign _T_210 = io_fn == 4'h7;
  assign _T_211 = _T_203 | _T_210;
  assign _T_212 = io_in1 & io_in2;
  assign _T_214 = _T_211 ? _T_212 : 64'h0;
  assign logic$ = _T_206 | _T_214;
  assign _T_216 = io_fn == 4'h2;
  assign _T_218 = io_fn == 4'h3;
  assign _T_219 = _T_216 | _T_218;
  assign _T_221 = io_fn >= 4'hc;
  assign _T_222 = _T_219 | _T_221;
  assign _T_223 = _T_222 & io_cmp_out;
  assign _GEN_24 = {{63'd0}, _T_223};
  assign _T_224 = _GEN_24 | logic$;
  assign shift_logic = _T_224 | shout;
  assign _T_226 = io_fn == 4'h0;
  assign _T_228 = io_fn == 4'ha;
  assign _T_229 = _T_226 | _T_228;
  assign out = _T_229 ? io_adder_out : shift_logic;
  assign _T_231 = io_dw == 1'h0;
  assign _T_232 = out[31];
  assign _T_236 = _T_232 ? 32'hffffffff : 32'h0;
  assign _T_237 = out[31:0];
  assign _T_238 = {_T_236,_T_237};
  assign _GEN_0 = _T_231 ? _T_238 : out;
endmodule