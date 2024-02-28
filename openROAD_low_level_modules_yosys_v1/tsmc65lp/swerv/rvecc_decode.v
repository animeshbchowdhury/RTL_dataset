module rvecc_decode
(
  en,
  din,
  ecc_in,
  sed_ded,
  dout,
  ecc_out,
  single_ecc_error,
  double_ecc_error
);

  input [31:0] din;
  input [6:0] ecc_in;
  output [31:0] dout;
  output [6:0] ecc_out;
  input en;
  input sed_ded;
  output single_ecc_error;
  output double_ecc_error;
  wire [31:0] dout;
  wire [6:0] ecc_out,ecc_check;
  wire single_ecc_error,double_ecc_error,N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,
  N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,
  N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,
  N54,N55,N56,N57,N58,N59,N60,N61,N62,N63,N64,N65,N66,N67,N68,N69,N70,N71,N72,N73,
  N74,N75,N76,N77,N78,N79,N80,N81,N82,N83,N84,N85,N86,N87,N88,N89,N90,N91,N92,N93,
  N94,N95,N96,N97,N98,N99,N100,N101,N102,N103,N104,N105,N106,N107,N108,N109,N110,
  N111,N112,N113,N114,N115,N116,N117,N118,N119,N120,N121,N122,N123,N124,N125,N126,
  N127,N128,N129,N130,N131,N132,N133,N134,N135,N136,N137,N138,N139,N140,N141,N142,
  N143,N144,N145,N146,N147,N148,N149,N150,N151,N152,N153,N154,N155,N156,N157,N158,
  N159,N160,N161,N162,N163,N164,N165,N166,N167,N168,N169,N170,N171,N172,N173,N174,
  N175,N176,N177,N178,N179,N180,N181,N182,N183,N184,N185,N186,N187,N188,N189,N190,
  N191,N192,N193,N194,N195,N196,N197,N198,N199,N200,N201,N202,N203,N204,N205,N206,
  N207,N208,N209,N210,N211,N212,N213,N214,N215,N216,N217,N218,N219,N220,N221,N222,
  N223,N224,N225,N226,N227,N228,N229,N230,N231,N232,N233,N234,N235,N236,N237,N238,
  N239,N240,N241,N242,N243,N244,N245,N246,N247,N248,N249,N250,N251,N252,N253,N254,
  N255,N256,N257,N258,N259,N260,N261,N262,N263,N264,N265,N266,N267,N268,N269,N270,
  N271,N272,N273,N274,N275,N276,N277,N278,N279,N280,N281,N282,N283,N284,N285,N286,
  N287,N288,N289,N290,N291,N292,N293,N294,N295,N296,N297,N298,N299,N300,N301,N302,
  N303,N304,N305,N306,N307,N308,N309,N310,N311,N312,N313,N314,N315,N316,N317,N318,
  N319,N320,N321,N322,N323,N324,N325,N326,N327,N328,N329,N330,N331,N332,N333,N334,
  N335,N336,N337,N338,N339,N340,N341,N342,N343,N344,N345,N346,N347,N348,N349,N350,
  N351,N352,N353,N354,N355,N356,N357,N358,N359,N360,N361,N362,N363,N364,N365,N366,
  N367,N368,N369,N370,N371,N372,N373,N374,N375,N376,N377,N378,N379,N380,N381,N382,
  N383,N384,N385,N386,N387,N388,N389,N390,N391,N392,N393,N394,N395,N396,N397,N398,
  N399,N400,N401,N402,N403,N404,N405,N406,N407,N408,N409,N410,N411,N412,N413,N414,
  N415,N416,N417,N418,N419,N420,N421,N422,N423,N424,N425,N426;
  wire [38:38] dout_plus_parity;
  assign N42 = ~ecc_check[6];
  assign N43 = ecc_check[5] | N42;
  assign N44 = ecc_check[4] | N43;
  assign N45 = ecc_check[3] | N44;
  assign N46 = ecc_check[2] | N45;
  assign N47 = ecc_check[1] | N46;
  assign N48 = ecc_check[0] | N47;
  assign N49 = ~N48;
  assign N50 = ecc_check[5] | ecc_check[6];
  assign N51 = ecc_check[4] | N50;
  assign N52 = ecc_check[3] | N51;
  assign N53 = ecc_check[2] | N52;
  assign N54 = ecc_check[1] | N53;
  assign N55 = ecc_check[0] | N54;
  assign N56 = ~ecc_check[5];
  assign N57 = ~ecc_check[2];
  assign N58 = ~ecc_check[1];
  assign N59 = ecc_check[4] | N56;
  assign N60 = ecc_check[3] | N59;
  assign N61 = N57 | N60;
  assign N62 = N58 | N61;
  assign N63 = ecc_check[0] | N62;
  assign N64 = ~N63;
  assign N65 = ~ecc_check[0];
  assign N66 = ecc_check[4] | N56;
  assign N67 = ecc_check[3] | N66;
  assign N68 = N57 | N67;
  assign N69 = ecc_check[1] | N68;
  assign N70 = N65 | N69;
  assign N71 = ~N70;
  assign N72 = ecc_check[4] | N56;
  assign N73 = ecc_check[3] | N72;
  assign N74 = N57 | N73;
  assign N75 = ecc_check[1] | N74;
  assign N76 = ecc_check[0] | N75;
  assign N77 = ~N76;
  assign N78 = ecc_check[4] | N56;
  assign N79 = ecc_check[3] | N78;
  assign N80 = ecc_check[2] | N79;
  assign N81 = N58 | N80;
  assign N82 = N65 | N81;
  assign N83 = ~N82;
  assign N84 = ecc_check[4] | N56;
  assign N85 = ecc_check[3] | N84;
  assign N86 = ecc_check[2] | N85;
  assign N87 = N58 | N86;
  assign N88 = ecc_check[0] | N87;
  assign N89 = ~N88;
  assign N90 = ecc_check[4] | N56;
  assign N91 = ecc_check[3] | N90;
  assign N92 = ecc_check[2] | N91;
  assign N93 = ecc_check[1] | N92;
  assign N94 = N65 | N93;
  assign N95 = ~N94;
  assign N96 = ~ecc_check[4];
  assign N97 = ~ecc_check[3];
  assign N98 = N96 | ecc_check[5];
  assign N99 = N97 | N98;
  assign N100 = N57 | N99;
  assign N101 = N58 | N100;
  assign N102 = N65 | N101;
  assign N103 = ~N102;
  assign N104 = N96 | ecc_check[5];
  assign N105 = N97 | N104;
  assign N106 = N57 | N105;
  assign N107 = N58 | N106;
  assign N108 = ecc_check[0] | N107;
  assign N109 = ~N108;
  assign N110 = N96 | ecc_check[5];
  assign N111 = N97 | N110;
  assign N112 = N57 | N111;
  assign N113 = ecc_check[1] | N112;
  assign N114 = N65 | N113;
  assign N115 = ~N114;
  assign N116 = N96 | ecc_check[5];
  assign N117 = N97 | N116;
  assign N118 = N57 | N117;
  assign N119 = ecc_check[1] | N118;
  assign N120 = ecc_check[0] | N119;
  assign N121 = ~N120;
  assign N122 = N96 | ecc_check[5];
  assign N123 = N97 | N122;
  assign N124 = ecc_check[2] | N123;
  assign N125 = N58 | N124;
  assign N126 = N65 | N125;
  assign N127 = ~N126;
  assign N128 = N96 | ecc_check[5];
  assign N129 = N97 | N128;
  assign N130 = ecc_check[2] | N129;
  assign N131 = N58 | N130;
  assign N132 = ecc_check[0] | N131;
  assign N133 = ~N132;
  assign N134 = N96 | ecc_check[5];
  assign N135 = N97 | N134;
  assign N136 = ecc_check[2] | N135;
  assign N137 = ecc_check[1] | N136;
  assign N138 = N65 | N137;
  assign N139 = ~N138;
  assign N140 = N96 | ecc_check[5];
  assign N141 = N97 | N140;
  assign N142 = ecc_check[2] | N141;
  assign N143 = ecc_check[1] | N142;
  assign N144 = ecc_check[0] | N143;
  assign N145 = ~N144;
  assign N146 = N96 | ecc_check[5];
  assign N147 = ecc_check[3] | N146;
  assign N148 = N57 | N147;
  assign N149 = N58 | N148;
  assign N150 = N65 | N149;
  assign N151 = ~N150;
  assign N152 = N96 | ecc_check[5];
  assign N153 = ecc_check[3] | N152;
  assign N154 = N57 | N153;
  assign N155 = N58 | N154;
  assign N156 = ecc_check[0] | N155;
  assign N157 = ~N156;
  assign N158 = N96 | ecc_check[5];
  assign N159 = ecc_check[3] | N158;
  assign N160 = N57 | N159;
  assign N161 = ecc_check[1] | N160;
  assign N162 = N65 | N161;
  assign N163 = ~N162;
  assign N164 = N96 | ecc_check[5];
  assign N165 = ecc_check[3] | N164;
  assign N166 = N57 | N165;
  assign N167 = ecc_check[1] | N166;
  assign N168 = ecc_check[0] | N167;
  assign N169 = ~N168;
  assign N170 = N96 | ecc_check[5];
  assign N171 = ecc_check[3] | N170;
  assign N172 = ecc_check[2] | N171;
  assign N173 = N58 | N172;
  assign N174 = N65 | N173;
  assign N175 = ~N174;
  assign N176 = N96 | ecc_check[5];
  assign N177 = ecc_check[3] | N176;
  assign N178 = ecc_check[2] | N177;
  assign N179 = N58 | N178;
  assign N180 = ecc_check[0] | N179;
  assign N181 = ~N180;
  assign N182 = N96 | ecc_check[5];
  assign N183 = ecc_check[3] | N182;
  assign N184 = ecc_check[2] | N183;
  assign N185 = ecc_check[1] | N184;
  assign N186 = N65 | N185;
  assign N187 = ~N186;
  assign N188 = ecc_check[4] | ecc_check[5];
  assign N189 = N97 | N188;
  assign N190 = N57 | N189;
  assign N191 = N58 | N190;
  assign N192 = N65 | N191;
  assign N193 = ~N192;
  assign N194 = ecc_check[4] | ecc_check[5];
  assign N195 = N97 | N194;
  assign N196 = N57 | N195;
  assign N197 = N58 | N196;
  assign N198 = ecc_check[0] | N197;
  assign N199 = ~N198;
  assign N200 = ecc_check[4] | ecc_check[5];
  assign N201 = N97 | N200;
  assign N202 = N57 | N201;
  assign N203 = ecc_check[1] | N202;
  assign N204 = N65 | N203;
  assign N205 = ~N204;
  assign N206 = ecc_check[4] | ecc_check[5];
  assign N207 = N97 | N206;
  assign N208 = N57 | N207;
  assign N209 = ecc_check[1] | N208;
  assign N210 = ecc_check[0] | N209;
  assign N211 = ~N210;
  assign N212 = ecc_check[4] | ecc_check[5];
  assign N213 = N97 | N212;
  assign N214 = ecc_check[2] | N213;
  assign N215 = N58 | N214;
  assign N216 = N65 | N215;
  assign N217 = ~N216;
  assign N218 = ecc_check[4] | ecc_check[5];
  assign N219 = N97 | N218;
  assign N220 = ecc_check[2] | N219;
  assign N221 = N58 | N220;
  assign N222 = ecc_check[0] | N221;
  assign N223 = ~N222;
  assign N224 = ecc_check[4] | ecc_check[5];
  assign N225 = N97 | N224;
  assign N226 = ecc_check[2] | N225;
  assign N227 = ecc_check[1] | N226;
  assign N228 = N65 | N227;
  assign N229 = ~N228;
  assign N230 = ecc_check[4] | ecc_check[5];
  assign N231 = ecc_check[3] | N230;
  assign N232 = N57 | N231;
  assign N233 = N58 | N232;
  assign N234 = N65 | N233;
  assign N235 = ~N234;
  assign N236 = ecc_check[4] | ecc_check[5];
  assign N237 = ecc_check[3] | N236;
  assign N238 = N57 | N237;
  assign N239 = N58 | N238;
  assign N240 = ecc_check[0] | N239;
  assign N241 = ~N240;
  assign N242 = ecc_check[4] | ecc_check[5];
  assign N243 = ecc_check[3] | N242;
  assign N244 = N57 | N243;
  assign N245 = ecc_check[1] | N244;
  assign N246 = N65 | N245;
  assign N247 = ~N246;
  assign N248 = ecc_check[4] | ecc_check[5];
  assign N249 = ecc_check[3] | N248;
  assign N250 = ecc_check[2] | N249;
  assign N251 = N58 | N250;
  assign N252 = N65 | N251;
  assign N253 = ~N252;
  assign N254 = ecc_check[4] | N56;
  assign N255 = ecc_check[3] | N254;
  assign N256 = ecc_check[2] | N255;
  assign N257 = ecc_check[1] | N256;
  assign N258 = ecc_check[0] | N257;
  assign N259 = ~N258;
  assign N260 = N96 | ecc_check[5];
  assign N261 = ecc_check[3] | N260;
  assign N262 = ecc_check[2] | N261;
  assign N263 = ecc_check[1] | N262;
  assign N264 = ecc_check[0] | N263;
  assign N265 = ~N264;
  assign N266 = ecc_check[4] | ecc_check[5];
  assign N267 = N97 | N266;
  assign N268 = ecc_check[2] | N267;
  assign N269 = ecc_check[1] | N268;
  assign N270 = ecc_check[0] | N269;
  assign N271 = ~N270;
  assign N272 = ecc_check[4] | ecc_check[5];
  assign N273 = ecc_check[3] | N272;
  assign N274 = N57 | N273;
  assign N275 = ecc_check[1] | N274;
  assign N276 = ecc_check[0] | N275;
  assign N277 = ~N276;
  assign N278 = ecc_check[4] | ecc_check[5];
  assign N279 = ecc_check[3] | N278;
  assign N280 = ecc_check[2] | N279;
  assign N281 = N58 | N280;
  assign N282 = ecc_check[0] | N281;
  assign N283 = ~N282;
  assign N284 = ecc_check[4] | ecc_check[5];
  assign N285 = ecc_check[3] | N284;
  assign N286 = ecc_check[2] | N285;
  assign N287 = ecc_check[1] | N286;
  assign N288 = N65 | N287;
  assign N289 = ~N288;
  assign N290 = ecc_check[4] | N56;
  assign N291 = ecc_check[3] | N290;
  assign N292 = N57 | N291;
  assign N293 = N58 | N292;
  assign N294 = N65 | N293;
  assign N295 = ~N294;
  assign N296 = ecc_check[5] | ecc_check[6];
  assign N297 = ecc_check[4] | N296;
  assign N298 = ecc_check[3] | N297;
  assign N299 = ecc_check[2] | N298;
  assign N300 = ecc_check[1] | N299;
  assign N301 = ecc_check[0] | N300;
  assign { dout_plus_parity[38:38], dout[31:26], ecc_out[5:5], dout[25:11], ecc_out[4:4], dout[10:4], ecc_out[3:3], dout[3:1], ecc_out[2:2], dout[0:0], ecc_out[1:0] } = (N0)? { N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41 } :
                                                                                                                                                                         (N1)? { ecc_in[6:6], din[31:26], ecc_in[5:5], din[25:11], ecc_in[4:4], din[10:4], ecc_in[3:3], din[3:1], ecc_in[2:2], din[0:0], ecc_in[1:0] } : 1'b0;
  assign N0 = single_ecc_error;
  assign N1 = N2;
  assign ecc_check[0] = N318 ^ din[30];
  assign N318 = N317 ^ din[28];
  assign N317 = N316 ^ din[26];
  assign N316 = N315 ^ din[25];
  assign N315 = N314 ^ din[23];
  assign N314 = N313 ^ din[21];
  assign N313 = N312 ^ din[19];
  assign N312 = N311 ^ din[17];
  assign N311 = N310 ^ din[15];
  assign N310 = N309 ^ din[13];
  assign N309 = N308 ^ din[11];
  assign N308 = N307 ^ din[10];
  assign N307 = N306 ^ din[8];
  assign N306 = N305 ^ din[6];
  assign N305 = N304 ^ din[4];
  assign N304 = N303 ^ din[3];
  assign N303 = N302 ^ din[1];
  assign N302 = ecc_in[0] ^ din[0];
  assign ecc_check[1] = N335 ^ din[31];
  assign N335 = N334 ^ din[28];
  assign N334 = N333 ^ din[27];
  assign N333 = N332 ^ din[25];
  assign N332 = N331 ^ din[24];
  assign N331 = N330 ^ din[21];
  assign N330 = N329 ^ din[20];
  assign N329 = N328 ^ din[17];
  assign N328 = N327 ^ din[16];
  assign N327 = N326 ^ din[13];
  assign N326 = N325 ^ din[12];
  assign N325 = N324 ^ din[10];
  assign N324 = N323 ^ din[9];
  assign N323 = N322 ^ din[6];
  assign N322 = N321 ^ din[5];
  assign N321 = N320 ^ din[3];
  assign N320 = N319 ^ din[2];
  assign N319 = ecc_in[1] ^ din[0];
  assign ecc_check[2] = N352 ^ din[31];
  assign N352 = N351 ^ din[30];
  assign N351 = N350 ^ din[29];
  assign N350 = N349 ^ din[25];
  assign N349 = N348 ^ din[24];
  assign N348 = N347 ^ din[23];
  assign N347 = N346 ^ din[22];
  assign N346 = N345 ^ din[17];
  assign N345 = N344 ^ din[16];
  assign N344 = N343 ^ din[15];
  assign N343 = N342 ^ din[14];
  assign N342 = N341 ^ din[10];
  assign N341 = N340 ^ din[9];
  assign N340 = N339 ^ din[8];
  assign N339 = N338 ^ din[7];
  assign N338 = N337 ^ din[3];
  assign N337 = N336 ^ din[2];
  assign N336 = ecc_in[2] ^ din[1];
  assign ecc_check[3] = N366 ^ din[25];
  assign N366 = N365 ^ din[24];
  assign N365 = N364 ^ din[23];
  assign N364 = N363 ^ din[22];
  assign N363 = N362 ^ din[21];
  assign N362 = N361 ^ din[20];
  assign N361 = N360 ^ din[19];
  assign N360 = N359 ^ din[18];
  assign N359 = N358 ^ din[10];
  assign N358 = N357 ^ din[9];
  assign N357 = N356 ^ din[8];
  assign N356 = N355 ^ din[7];
  assign N355 = N354 ^ din[6];
  assign N354 = N353 ^ din[5];
  assign N353 = ecc_in[3] ^ din[4];
  assign ecc_check[4] = N380 ^ din[25];
  assign N380 = N379 ^ din[24];
  assign N379 = N378 ^ din[23];
  assign N378 = N377 ^ din[22];
  assign N377 = N376 ^ din[21];
  assign N376 = N375 ^ din[20];
  assign N375 = N374 ^ din[19];
  assign N374 = N373 ^ din[18];
  assign N373 = N372 ^ din[17];
  assign N372 = N371 ^ din[16];
  assign N371 = N370 ^ din[15];
  assign N370 = N369 ^ din[14];
  assign N369 = N368 ^ din[13];
  assign N368 = N367 ^ din[12];
  assign N367 = ecc_in[4] ^ din[11];
  assign ecc_check[5] = N385 ^ din[31];
  assign N385 = N384 ^ din[30];
  assign N384 = N383 ^ din[29];
  assign N383 = N382 ^ din[28];
  assign N382 = N381 ^ din[27];
  assign N381 = ecc_in[5] ^ din[26];
  assign ecc_check[6] = N423 & N424;
  assign N423 = N416 ^ N422;
  assign N416 = N415 ^ din[0];
  assign N415 = N414 ^ din[1];
  assign N414 = N413 ^ din[2];
  assign N413 = N412 ^ din[3];
  assign N412 = N411 ^ din[4];
  assign N411 = N410 ^ din[5];
  assign N410 = N409 ^ din[6];
  assign N409 = N408 ^ din[7];
  assign N408 = N407 ^ din[8];
  assign N407 = N406 ^ din[9];
  assign N406 = N405 ^ din[10];
  assign N405 = N404 ^ din[11];
  assign N404 = N403 ^ din[12];
  assign N403 = N402 ^ din[13];
  assign N402 = N401 ^ din[14];
  assign N401 = N400 ^ din[15];
  assign N400 = N399 ^ din[16];
  assign N399 = N398 ^ din[17];
  assign N398 = N397 ^ din[18];
  assign N397 = N396 ^ din[19];
  assign N396 = N395 ^ din[20];
  assign N395 = N394 ^ din[21];
  assign N394 = N393 ^ din[22];
  assign N393 = N392 ^ din[23];
  assign N392 = N391 ^ din[24];
  assign N391 = N390 ^ din[25];
  assign N390 = N389 ^ din[26];
  assign N389 = N388 ^ din[27];
  assign N388 = N387 ^ din[28];
  assign N387 = N386 ^ din[29];
  assign N386 = din[31] ^ din[30];
  assign N422 = N421 ^ ecc_in[0];
  assign N421 = N420 ^ ecc_in[1];
  assign N420 = N419 ^ ecc_in[2];
  assign N419 = N418 ^ ecc_in[3];
  assign N418 = N417 ^ ecc_in[4];
  assign N417 = ecc_in[6] ^ ecc_in[5];
  assign N424 = ~sed_ded;
  assign single_ecc_error = N425 & ecc_check[6];
  assign N425 = en & N301;
  assign double_ecc_error = N426 & N42;
  assign N426 = en & N55;
  assign N2 = ~single_ecc_error;
  assign N3 = N295 ^ ecc_in[6];
  assign N4 = N64 ^ din[31];
  assign N5 = N71 ^ din[30];
  assign N6 = N77 ^ din[29];
  assign N7 = N83 ^ din[28];
  assign N8 = N89 ^ din[27];
  assign N9 = N95 ^ din[26];
  assign N10 = N259 ^ ecc_in[5];
  assign N11 = N103 ^ din[25];
  assign N12 = N109 ^ din[24];
  assign N13 = N115 ^ din[23];
  assign N14 = N121 ^ din[22];
  assign N15 = N127 ^ din[21];
  assign N16 = N133 ^ din[20];
  assign N17 = N139 ^ din[19];
  assign N18 = N145 ^ din[18];
  assign N19 = N151 ^ din[17];
  assign N20 = N157 ^ din[16];
  assign N21 = N163 ^ din[15];
  assign N22 = N169 ^ din[14];
  assign N23 = N175 ^ din[13];
  assign N24 = N181 ^ din[12];
  assign N25 = N187 ^ din[11];
  assign N26 = N265 ^ ecc_in[4];
  assign N27 = N193 ^ din[10];
  assign N28 = N199 ^ din[9];
  assign N29 = N205 ^ din[8];
  assign N30 = N211 ^ din[7];
  assign N31 = N217 ^ din[6];
  assign N32 = N223 ^ din[5];
  assign N33 = N229 ^ din[4];
  assign N34 = N271 ^ ecc_in[3];
  assign N35 = N235 ^ din[3];
  assign N36 = N241 ^ din[2];
  assign N37 = N247 ^ din[1];
  assign N38 = N277 ^ ecc_in[2];
  assign N39 = N253 ^ din[0];
  assign N40 = N283 ^ ecc_in[1];
  assign N41 = N289 ^ ecc_in[0];
  assign ecc_out[6] = dout_plus_parity[38] ^ N49;

endmodule