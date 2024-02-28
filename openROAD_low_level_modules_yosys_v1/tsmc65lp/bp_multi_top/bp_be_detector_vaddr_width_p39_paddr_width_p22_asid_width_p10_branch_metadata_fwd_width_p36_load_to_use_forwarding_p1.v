module bp_be_detector_vaddr_width_p39_paddr_width_p22_asid_width_p10_branch_metadata_fwd_width_p36_load_to_use_forwarding_p1
(
  clk_i,
  reset_i,
  calc_status_i,
  expected_npc_i,
  mmu_cmd_ready_i,
  chk_dispatch_v_o,
  chk_roll_o,
  chk_poison_isd_o,
  chk_poison_ex1_o,
  chk_poison_ex2_o,
  chk_poison_ex3_o
);

  input [306:0] calc_status_i;
  input [63:0] expected_npc_i;
  input clk_i;
  input reset_i;
  input mmu_cmd_ready_i;
  output chk_dispatch_v_o;
  output chk_roll_o;
  output chk_poison_isd_o;
  output chk_poison_ex1_o;
  output chk_poison_ex2_o;
  output chk_poison_ex3_o;
  wire chk_dispatch_v_o,chk_roll_o,chk_poison_isd_o,chk_poison_ex1_o,chk_poison_ex2_o,
  chk_poison_ex3_o,N0,N1,N2,N3,N4,N5,stall_haz_v,data_haz_v,struct_haz_v,N6,
  mispredict_v,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,N17,N18,N19,N20,N21,N22,N23,N24,N25,
  N26,N27,N28,N29,N30,N31,N32,N33,N34,N35,N36,N37,N38,N39,N40,N41,N42,N43,N44,N45,
  N46,N47,N48,N49,N50,N51,N52;
  wire [2:0] rs1_match_vector,rs2_match_vector,frs1_data_haz_v,frs2_data_haz_v;
  wire [1:0] irs1_data_haz_v,irs2_data_haz_v;
  assign chk_roll_o = calc_status_i[3];
  assign N0 = calc_status_i[303:299] == calc_status_i[73:69];
  assign N1 = calc_status_i[296:292] == calc_status_i[73:69];
  assign N2 = calc_status_i[303:299] == calc_status_i[84:80];
  assign N3 = calc_status_i[296:292] == calc_status_i[84:80];
  assign N4 = calc_status_i[303:299] == calc_status_i[95:91];
  assign N5 = calc_status_i[296:292] == calc_status_i[95:91];
  assign N6 = calc_status_i[187:124] != expected_npc_i;
  assign N7 = calc_status_i[302] | calc_status_i[303];
  assign N8 = calc_status_i[301] | N7;
  assign N9 = calc_status_i[300] | N8;
  assign N10 = calc_status_i[299] | N9;
  assign N11 = calc_status_i[295] | calc_status_i[296];
  assign N12 = calc_status_i[294] | N11;
  assign N13 = calc_status_i[293] | N12;
  assign N14 = calc_status_i[292] | N13;
  assign rs1_match_vector[0] = N10 & N0;
  assign rs2_match_vector[0] = N14 & N1;
  assign rs1_match_vector[1] = N10 & N2;
  assign rs2_match_vector[1] = N14 & N3;
  assign rs1_match_vector[2] = N10 & N4;
  assign rs2_match_vector[2] = N14 & N5;
  assign irs1_data_haz_v[0] = N15 & N16;
  assign N15 = calc_status_i[305] & rs1_match_vector[0];
  assign N16 = calc_status_i[78] | calc_status_i[77];
  assign irs2_data_haz_v[0] = N17 & N18;
  assign N17 = calc_status_i[298] & rs2_match_vector[0];
  assign N18 = calc_status_i[78] | calc_status_i[77];
  assign frs1_data_haz_v[0] = N19 & N20;
  assign N19 = calc_status_i[304] & rs1_match_vector[0];
  assign N20 = calc_status_i[76] | calc_status_i[75];
  assign frs2_data_haz_v[0] = N21 & N22;
  assign N21 = calc_status_i[297] & rs2_match_vector[0];
  assign N22 = calc_status_i[76] | calc_status_i[75];
  assign irs1_data_haz_v[1] = N23 & calc_status_i[88];
  assign N23 = calc_status_i[305] & rs1_match_vector[1];
  assign irs2_data_haz_v[1] = N24 & calc_status_i[88];
  assign N24 = calc_status_i[298] & rs2_match_vector[1];
  assign frs1_data_haz_v[1] = N25 & N26;
  assign N25 = calc_status_i[304] & rs1_match_vector[1];
  assign N26 = calc_status_i[87] | calc_status_i[86];
  assign frs2_data_haz_v[1] = N27 & N28;
  assign N27 = calc_status_i[297] & rs2_match_vector[1];
  assign N28 = calc_status_i[87] | calc_status_i[86];
  assign frs1_data_haz_v[2] = N29 & calc_status_i[97];
  assign N29 = calc_status_i[304] & rs1_match_vector[2];
  assign frs2_data_haz_v[2] = N30 & calc_status_i[97];
  assign N30 = calc_status_i[297] & rs2_match_vector[2];
  assign stall_haz_v = N32 | calc_status_i[107];
  assign N32 = N31 | calc_status_i[96];
  assign N31 = calc_status_i[74] | calc_status_i[85];
  assign data_haz_v = N39 | N41;
  assign N39 = N36 | N38;
  assign N36 = N34 | N35;
  assign N34 = stall_haz_v | N33;
  assign N33 = irs1_data_haz_v[1] | irs1_data_haz_v[0];
  assign N35 = irs2_data_haz_v[1] | irs2_data_haz_v[0];
  assign N38 = N37 | frs1_data_haz_v[0];
  assign N37 = frs1_data_haz_v[2] | frs1_data_haz_v[1];
  assign N41 = N40 | frs2_data_haz_v[0];
  assign N40 = frs2_data_haz_v[2] | frs2_data_haz_v[1];
  assign struct_haz_v = ~mmu_cmd_ready_i;
  assign mispredict_v = calc_status_i[188] & N6;
  assign chk_dispatch_v_o = N43 | calc_status_i[3];
  assign N43 = ~N42;
  assign N42 = data_haz_v | struct_haz_v;
  assign chk_poison_isd_o = N45 | calc_status_i[1];
  assign N45 = N44 | calc_status_i[2];
  assign N44 = reset_i | calc_status_i[3];
  assign chk_poison_ex1_o = N48 | calc_status_i[1];
  assign N48 = N47 | calc_status_i[2];
  assign N47 = N46 | calc_status_i[3];
  assign N46 = reset_i | mispredict_v;
  assign chk_poison_ex2_o = N50 | calc_status_i[1];
  assign N50 = N49 | calc_status_i[2];
  assign N49 = reset_i | calc_status_i[3];
  assign chk_poison_ex3_o = N52 | calc_status_i[1];
  assign N52 = N51 | calc_status_i[2];
  assign N51 = reset_i | calc_status_i[3];

endmodule