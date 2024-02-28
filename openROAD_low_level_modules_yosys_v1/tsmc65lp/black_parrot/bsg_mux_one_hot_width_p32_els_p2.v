module bsg_mux_one_hot_width_p32_els_p2
(
  data_i,
  sel_one_hot_i,
  data_o
);

  input [63:0] data_i;
  input [1:0] sel_one_hot_i;
  output [31:0] data_o;
  wire [31:0] data_o;
  wire [63:0] data_masked;
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
  assign data_o[0] = data_masked[32] | data_masked[0];
  assign data_o[1] = data_masked[33] | data_masked[1];
  assign data_o[2] = data_masked[34] | data_masked[2];
  assign data_o[3] = data_masked[35] | data_masked[3];
  assign data_o[4] = data_masked[36] | data_masked[4];
  assign data_o[5] = data_masked[37] | data_masked[5];
  assign data_o[6] = data_masked[38] | data_masked[6];
  assign data_o[7] = data_masked[39] | data_masked[7];
  assign data_o[8] = data_masked[40] | data_masked[8];
  assign data_o[9] = data_masked[41] | data_masked[9];
  assign data_o[10] = data_masked[42] | data_masked[10];
  assign data_o[11] = data_masked[43] | data_masked[11];
  assign data_o[12] = data_masked[44] | data_masked[12];
  assign data_o[13] = data_masked[45] | data_masked[13];
  assign data_o[14] = data_masked[46] | data_masked[14];
  assign data_o[15] = data_masked[47] | data_masked[15];
  assign data_o[16] = data_masked[48] | data_masked[16];
  assign data_o[17] = data_masked[49] | data_masked[17];
  assign data_o[18] = data_masked[50] | data_masked[18];
  assign data_o[19] = data_masked[51] | data_masked[19];
  assign data_o[20] = data_masked[52] | data_masked[20];
  assign data_o[21] = data_masked[53] | data_masked[21];
  assign data_o[22] = data_masked[54] | data_masked[22];
  assign data_o[23] = data_masked[55] | data_masked[23];
  assign data_o[24] = data_masked[56] | data_masked[24];
  assign data_o[25] = data_masked[57] | data_masked[25];
  assign data_o[26] = data_masked[58] | data_masked[26];
  assign data_o[27] = data_masked[59] | data_masked[27];
  assign data_o[28] = data_masked[60] | data_masked[28];
  assign data_o[29] = data_masked[61] | data_masked[29];
  assign data_o[30] = data_masked[62] | data_masked[30];
  assign data_o[31] = data_masked[63] | data_masked[31];

endmodule