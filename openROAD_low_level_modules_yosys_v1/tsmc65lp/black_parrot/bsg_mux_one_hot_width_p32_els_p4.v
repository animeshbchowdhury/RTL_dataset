module bsg_mux_one_hot_width_p32_els_p4
(
  data_i,
  sel_one_hot_i,
  data_o
);

  input [127:0] data_i;
  input [3:0] sel_one_hot_i;
  output [31:0] data_o;
  wire [31:0] data_o;
  wire N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,
  N22,N23,N24,N25,N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,
  N42,N43,N44,N45,N46,N47,N48,N49,N50,N51,N52,N53,N54,N55,N56,N57,N58,N59,N60,N61,
  N62,N63;
  wire [127:0] data_masked;
  assign data_masked[31] = data_i[31] & sel_one_hot_i[0];
  assign data_masked[30] = data_i[30] & sel_one_hot_i[0];
  assign data_masked[29] = data_i[29] & sel_one_hot_i[0];
  assign data_masked[28] = data_i[28] & sel_one_hot_i[0];
  assign data_masked[27] = data_i[27] & sel_one_hot_i[0];
  assign data_masked[26] = data_i[26] & sel_one_hot_i[0];
  assign data_masked[25] = data_i[25] & sel_one_hot_i[0];
  assign data_masked[24] = data_i[24] & sel_one_hot_i[0];
  assign data_masked[23] = data_i[23] & sel_one_hot_i[0];
  assign data_masked[22] = data_i[22] & sel_one_hot_i[0];
  assign data_masked[21] = data_i[21] & sel_one_hot_i[0];
  assign data_masked[20] = data_i[20] & sel_one_hot_i[0];
  assign data_masked[19] = data_i[19] & sel_one_hot_i[0];
  assign data_masked[18] = data_i[18] & sel_one_hot_i[0];
  assign data_masked[17] = data_i[17] & sel_one_hot_i[0];
  assign data_masked[16] = data_i[16] & sel_one_hot_i[0];
  assign data_masked[15] = data_i[15] & sel_one_hot_i[0];
  assign data_masked[14] = data_i[14] & sel_one_hot_i[0];
  assign data_masked[13] = data_i[13] & sel_one_hot_i[0];
  assign data_masked[12] = data_i[12] & sel_one_hot_i[0];
  assign data_masked[11] = data_i[11] & sel_one_hot_i[0];
  assign data_masked[10] = data_i[10] & sel_one_hot_i[0];
  assign data_masked[9] = data_i[9] & sel_one_hot_i[0];
  assign data_masked[8] = data_i[8] & sel_one_hot_i[0];
  assign data_masked[7] = data_i[7] & sel_one_hot_i[0];
  assign data_masked[6] = data_i[6] & sel_one_hot_i[0];
  assign data_masked[5] = data_i[5] & sel_one_hot_i[0];
  assign data_masked[4] = data_i[4] & sel_one_hot_i[0];
  assign data_masked[3] = data_i[3] & sel_one_hot_i[0];
  assign data_masked[2] = data_i[2] & sel_one_hot_i[0];
  assign data_masked[1] = data_i[1] & sel_one_hot_i[0];
  assign data_masked[0] = data_i[0] & sel_one_hot_i[0];
  assign data_masked[63] = data_i[63] & sel_one_hot_i[1];
  assign data_masked[62] = data_i[62] & sel_one_hot_i[1];
  assign data_masked[61] = data_i[61] & sel_one_hot_i[1];
  assign data_masked[60] = data_i[60] & sel_one_hot_i[1];
  assign data_masked[59] = data_i[59] & sel_one_hot_i[1];
  assign data_masked[58] = data_i[58] & sel_one_hot_i[1];
  assign data_masked[57] = data_i[57] & sel_one_hot_i[1];
  assign data_masked[56] = data_i[56] & sel_one_hot_i[1];
  assign data_masked[55] = data_i[55] & sel_one_hot_i[1];
  assign data_masked[54] = data_i[54] & sel_one_hot_i[1];
  assign data_masked[53] = data_i[53] & sel_one_hot_i[1];
  assign data_masked[52] = data_i[52] & sel_one_hot_i[1];
  assign data_masked[51] = data_i[51] & sel_one_hot_i[1];
  assign data_masked[50] = data_i[50] & sel_one_hot_i[1];
  assign data_masked[49] = data_i[49] & sel_one_hot_i[1];
  assign data_masked[48] = data_i[48] & sel_one_hot_i[1];
  assign data_masked[47] = data_i[47] & sel_one_hot_i[1];
  assign data_masked[46] = data_i[46] & sel_one_hot_i[1];
  assign data_masked[45] = data_i[45] & sel_one_hot_i[1];
  assign data_masked[44] = data_i[44] & sel_one_hot_i[1];
  assign data_masked[43] = data_i[43] & sel_one_hot_i[1];
  assign data_masked[42] = data_i[42] & sel_one_hot_i[1];
  assign data_masked[41] = data_i[41] & sel_one_hot_i[1];
  assign data_masked[40] = data_i[40] & sel_one_hot_i[1];
  assign data_masked[39] = data_i[39] & sel_one_hot_i[1];
  assign data_masked[38] = data_i[38] & sel_one_hot_i[1];
  assign data_masked[37] = data_i[37] & sel_one_hot_i[1];
  assign data_masked[36] = data_i[36] & sel_one_hot_i[1];
  assign data_masked[35] = data_i[35] & sel_one_hot_i[1];
  assign data_masked[34] = data_i[34] & sel_one_hot_i[1];
  assign data_masked[33] = data_i[33] & sel_one_hot_i[1];
  assign data_masked[32] = data_i[32] & sel_one_hot_i[1];
  assign data_masked[95] = data_i[95] & sel_one_hot_i[2];
  assign data_masked[94] = data_i[94] & sel_one_hot_i[2];
  assign data_masked[93] = data_i[93] & sel_one_hot_i[2];
  assign data_masked[92] = data_i[92] & sel_one_hot_i[2];
  assign data_masked[91] = data_i[91] & sel_one_hot_i[2];
  assign data_masked[90] = data_i[90] & sel_one_hot_i[2];
  assign data_masked[89] = data_i[89] & sel_one_hot_i[2];
  assign data_masked[88] = data_i[88] & sel_one_hot_i[2];
  assign data_masked[87] = data_i[87] & sel_one_hot_i[2];
  assign data_masked[86] = data_i[86] & sel_one_hot_i[2];
  assign data_masked[85] = data_i[85] & sel_one_hot_i[2];
  assign data_masked[84] = data_i[84] & sel_one_hot_i[2];
  assign data_masked[83] = data_i[83] & sel_one_hot_i[2];
  assign data_masked[82] = data_i[82] & sel_one_hot_i[2];
  assign data_masked[81] = data_i[81] & sel_one_hot_i[2];
  assign data_masked[80] = data_i[80] & sel_one_hot_i[2];
  assign data_masked[79] = data_i[79] & sel_one_hot_i[2];
  assign data_masked[78] = data_i[78] & sel_one_hot_i[2];
  assign data_masked[77] = data_i[77] & sel_one_hot_i[2];
  assign data_masked[76] = data_i[76] & sel_one_hot_i[2];
  assign data_masked[75] = data_i[75] & sel_one_hot_i[2];
  assign data_masked[74] = data_i[74] & sel_one_hot_i[2];
  assign data_masked[73] = data_i[73] & sel_one_hot_i[2];
  assign data_masked[72] = data_i[72] & sel_one_hot_i[2];
  assign data_masked[71] = data_i[71] & sel_one_hot_i[2];
  assign data_masked[70] = data_i[70] & sel_one_hot_i[2];
  assign data_masked[69] = data_i[69] & sel_one_hot_i[2];
  assign data_masked[68] = data_i[68] & sel_one_hot_i[2];
  assign data_masked[67] = data_i[67] & sel_one_hot_i[2];
  assign data_masked[66] = data_i[66] & sel_one_hot_i[2];
  assign data_masked[65] = data_i[65] & sel_one_hot_i[2];
  assign data_masked[64] = data_i[64] & sel_one_hot_i[2];
  assign data_masked[127] = data_i[127] & sel_one_hot_i[3];
  assign data_masked[126] = data_i[126] & sel_one_hot_i[3];
  assign data_masked[125] = data_i[125] & sel_one_hot_i[3];
  assign data_masked[124] = data_i[124] & sel_one_hot_i[3];
  assign data_masked[123] = data_i[123] & sel_one_hot_i[3];
  assign data_masked[122] = data_i[122] & sel_one_hot_i[3];
  assign data_masked[121] = data_i[121] & sel_one_hot_i[3];
  assign data_masked[120] = data_i[120] & sel_one_hot_i[3];
  assign data_masked[119] = data_i[119] & sel_one_hot_i[3];
  assign data_masked[118] = data_i[118] & sel_one_hot_i[3];
  assign data_masked[117] = data_i[117] & sel_one_hot_i[3];
  assign data_masked[116] = data_i[116] & sel_one_hot_i[3];
  assign data_masked[115] = data_i[115] & sel_one_hot_i[3];
  assign data_masked[114] = data_i[114] & sel_one_hot_i[3];
  assign data_masked[113] = data_i[113] & sel_one_hot_i[3];
  assign data_masked[112] = data_i[112] & sel_one_hot_i[3];
  assign data_masked[111] = data_i[111] & sel_one_hot_i[3];
  assign data_masked[110] = data_i[110] & sel_one_hot_i[3];
  assign data_masked[109] = data_i[109] & sel_one_hot_i[3];
  assign data_masked[108] = data_i[108] & sel_one_hot_i[3];
  assign data_masked[107] = data_i[107] & sel_one_hot_i[3];
  assign data_masked[106] = data_i[106] & sel_one_hot_i[3];
  assign data_masked[105] = data_i[105] & sel_one_hot_i[3];
  assign data_masked[104] = data_i[104] & sel_one_hot_i[3];
  assign data_masked[103] = data_i[103] & sel_one_hot_i[3];
  assign data_masked[102] = data_i[102] & sel_one_hot_i[3];
  assign data_masked[101] = data_i[101] & sel_one_hot_i[3];
  assign data_masked[100] = data_i[100] & sel_one_hot_i[3];
  assign data_masked[99] = data_i[99] & sel_one_hot_i[3];
  assign data_masked[98] = data_i[98] & sel_one_hot_i[3];
  assign data_masked[97] = data_i[97] & sel_one_hot_i[3];
  assign data_masked[96] = data_i[96] & sel_one_hot_i[3];
  assign data_o[0] = N1 | data_masked[0];
  assign N1 = N0 | data_masked[32];
  assign N0 = data_masked[96] | data_masked[64];
  assign data_o[1] = N3 | data_masked[1];
  assign N3 = N2 | data_masked[33];
  assign N2 = data_masked[97] | data_masked[65];
  assign data_o[2] = N5 | data_masked[2];
  assign N5 = N4 | data_masked[34];
  assign N4 = data_masked[98] | data_masked[66];
  assign data_o[3] = N7 | data_masked[3];
  assign N7 = N6 | data_masked[35];
  assign N6 = data_masked[99] | data_masked[67];
  assign data_o[4] = N9 | data_masked[4];
  assign N9 = N8 | data_masked[36];
  assign N8 = data_masked[100] | data_masked[68];
  assign data_o[5] = N11 | data_masked[5];
  assign N11 = N10 | data_masked[37];
  assign N10 = data_masked[101] | data_masked[69];
  assign data_o[6] = N13 | data_masked[6];
  assign N13 = N12 | data_masked[38];
  assign N12 = data_masked[102] | data_masked[70];
  assign data_o[7] = N15 | data_masked[7];
  assign N15 = N14 | data_masked[39];
  assign N14 = data_masked[103] | data_masked[71];
  assign data_o[8] = N17 | data_masked[8];
  assign N17 = N16 | data_masked[40];
  assign N16 = data_masked[104] | data_masked[72];
  assign data_o[9] = N19 | data_masked[9];
  assign N19 = N18 | data_masked[41];
  assign N18 = data_masked[105] | data_masked[73];
  assign data_o[10] = N21 | data_masked[10];
  assign N21 = N20 | data_masked[42];
  assign N20 = data_masked[106] | data_masked[74];
  assign data_o[11] = N23 | data_masked[11];
  assign N23 = N22 | data_masked[43];
  assign N22 = data_masked[107] | data_masked[75];
  assign data_o[12] = N25 | data_masked[12];
  assign N25 = N24 | data_masked[44];
  assign N24 = data_masked[108] | data_masked[76];
  assign data_o[13] = N27 | data_masked[13];
  assign N27 = N26 | data_masked[45];
  assign N26 = data_masked[109] | data_masked[77];
  assign data_o[14] = N29 | data_masked[14];
  assign N29 = N28 | data_masked[46];
  assign N28 = data_masked[110] | data_masked[78];
  assign data_o[15] = N31 | data_masked[15];
  assign N31 = N30 | data_masked[47];
  assign N30 = data_masked[111] | data_masked[79];
  assign data_o[16] = N33 | data_masked[16];
  assign N33 = N32 | data_masked[48];
  assign N32 = data_masked[112] | data_masked[80];
  assign data_o[17] = N35 | data_masked[17];
  assign N35 = N34 | data_masked[49];
  assign N34 = data_masked[113] | data_masked[81];
  assign data_o[18] = N37 | data_masked[18];
  assign N37 = N36 | data_masked[50];
  assign N36 = data_masked[114] | data_masked[82];
  assign data_o[19] = N39 | data_masked[19];
  assign N39 = N38 | data_masked[51];
  assign N38 = data_masked[115] | data_masked[83];
  assign data_o[20] = N41 | data_masked[20];
  assign N41 = N40 | data_masked[52];
  assign N40 = data_masked[116] | data_masked[84];
  assign data_o[21] = N43 | data_masked[21];
  assign N43 = N42 | data_masked[53];
  assign N42 = data_masked[117] | data_masked[85];
  assign data_o[22] = N45 | data_masked[22];
  assign N45 = N44 | data_masked[54];
  assign N44 = data_masked[118] | data_masked[86];
  assign data_o[23] = N47 | data_masked[23];
  assign N47 = N46 | data_masked[55];
  assign N46 = data_masked[119] | data_masked[87];
  assign data_o[24] = N49 | data_masked[24];
  assign N49 = N48 | data_masked[56];
  assign N48 = data_masked[120] | data_masked[88];
  assign data_o[25] = N51 | data_masked[25];
  assign N51 = N50 | data_masked[57];
  assign N50 = data_masked[121] | data_masked[89];
  assign data_o[26] = N53 | data_masked[26];
  assign N53 = N52 | data_masked[58];
  assign N52 = data_masked[122] | data_masked[90];
  assign data_o[27] = N55 | data_masked[27];
  assign N55 = N54 | data_masked[59];
  assign N54 = data_masked[123] | data_masked[91];
  assign data_o[28] = N57 | data_masked[28];
  assign N57 = N56 | data_masked[60];
  assign N56 = data_masked[124] | data_masked[92];
  assign data_o[29] = N59 | data_masked[29];
  assign N59 = N58 | data_masked[61];
  assign N58 = data_masked[125] | data_masked[93];
  assign data_o[30] = N61 | data_masked[30];
  assign N61 = N60 | data_masked[62];
  assign N60 = data_masked[126] | data_masked[94];
  assign data_o[31] = N63 | data_masked[31];
  assign N63 = N62 | data_masked[63];
  assign N62 = data_masked[127] | data_masked[95];

endmodule