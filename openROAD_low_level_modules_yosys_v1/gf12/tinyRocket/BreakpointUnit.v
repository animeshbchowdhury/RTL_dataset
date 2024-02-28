module BreakpointUnit( // @[:freechips.rocketchip.system.TinyConfig.fir@123153.2]
  input         io_status_debug, // @[:freechips.rocketchip.system.TinyConfig.fir@123156.4]
  input         io_bp_0_control_action, // @[:freechips.rocketchip.system.TinyConfig.fir@123156.4]
  input  [1:0]  io_bp_0_control_tmatch, // @[:freechips.rocketchip.system.TinyConfig.fir@123156.4]
  input         io_bp_0_control_x, // @[:freechips.rocketchip.system.TinyConfig.fir@123156.4]
  input         io_bp_0_control_w, // @[:freechips.rocketchip.system.TinyConfig.fir@123156.4]
  input         io_bp_0_control_r, // @[:freechips.rocketchip.system.TinyConfig.fir@123156.4]
  input  [31:0] io_bp_0_address, // @[:freechips.rocketchip.system.TinyConfig.fir@123156.4]
  input  [31:0] io_pc, // @[:freechips.rocketchip.system.TinyConfig.fir@123156.4]
  input  [31:0] io_ea, // @[:freechips.rocketchip.system.TinyConfig.fir@123156.4]
  output        io_xcpt_if, // @[:freechips.rocketchip.system.TinyConfig.fir@123156.4]
  output        io_xcpt_ld, // @[:freechips.rocketchip.system.TinyConfig.fir@123156.4]
  output        io_xcpt_st, // @[:freechips.rocketchip.system.TinyConfig.fir@123156.4]
  output        io_debug_if, // @[:freechips.rocketchip.system.TinyConfig.fir@123156.4]
  output        io_debug_ld, // @[:freechips.rocketchip.system.TinyConfig.fir@123156.4]
  output        io_debug_st // @[:freechips.rocketchip.system.TinyConfig.fir@123156.4]
);
  wire  _T; // @[Breakpoint.scala 30:35:freechips.rocketchip.system.TinyConfig.fir@123167.4]
  wire  _T_7; // @[Breakpoint.scala 79:16:freechips.rocketchip.system.TinyConfig.fir@123174.4]
  wire  _T_8; // @[Breakpoint.scala 47:23:freechips.rocketchip.system.TinyConfig.fir@123175.4]
  wire  _T_9; // @[Breakpoint.scala 44:8:freechips.rocketchip.system.TinyConfig.fir@123176.4]
  wire  _T_10; // @[Breakpoint.scala 44:36:freechips.rocketchip.system.TinyConfig.fir@123177.4]
  wire  _T_11; // @[Breakpoint.scala 44:20:freechips.rocketchip.system.TinyConfig.fir@123178.4]
  wire [31:0] _T_12; // @[Breakpoint.scala 41:6:freechips.rocketchip.system.TinyConfig.fir@123179.4]
  wire  _T_14; // @[Breakpoint.scala 38:83:freechips.rocketchip.system.TinyConfig.fir@123181.4]
  wire  _T_15; // @[Breakpoint.scala 38:73:freechips.rocketchip.system.TinyConfig.fir@123182.4]
  wire  _T_16; // @[Breakpoint.scala 38:83:freechips.rocketchip.system.TinyConfig.fir@123183.4]
  wire  _T_17; // @[Breakpoint.scala 38:73:freechips.rocketchip.system.TinyConfig.fir@123184.4]
  wire  _T_18; // @[Breakpoint.scala 38:83:freechips.rocketchip.system.TinyConfig.fir@123185.4]
  wire  _T_19; // @[Breakpoint.scala 38:73:freechips.rocketchip.system.TinyConfig.fir@123186.4]
  wire [3:0] _T_22; // @[Cat.scala 30:58:freechips.rocketchip.system.TinyConfig.fir@123189.4]
  wire [31:0] _GEN_9; // @[Breakpoint.scala 41:9:freechips.rocketchip.system.TinyConfig.fir@123190.4]
  wire [31:0] _T_23; // @[Breakpoint.scala 41:9:freechips.rocketchip.system.TinyConfig.fir@123190.4]
  wire [31:0] _T_24; // @[Breakpoint.scala 41:24:freechips.rocketchip.system.TinyConfig.fir@123191.4]
  wire [31:0] _T_35; // @[Breakpoint.scala 41:33:freechips.rocketchip.system.TinyConfig.fir@123202.4]
  wire  _T_36; // @[Breakpoint.scala 41:19:freechips.rocketchip.system.TinyConfig.fir@123203.4]
  wire  _T_37; // @[Breakpoint.scala 47:8:freechips.rocketchip.system.TinyConfig.fir@123204.4]
  wire  _T_38; // @[Breakpoint.scala 79:32:freechips.rocketchip.system.TinyConfig.fir@123205.4]
  wire  _T_39; // @[Breakpoint.scala 80:16:freechips.rocketchip.system.TinyConfig.fir@123206.4]
  wire  _T_70; // @[Breakpoint.scala 80:32:freechips.rocketchip.system.TinyConfig.fir@123237.4]
  wire  _T_71; // @[Breakpoint.scala 81:16:freechips.rocketchip.system.TinyConfig.fir@123238.4]
  wire  _T_73; // @[Breakpoint.scala 44:8:freechips.rocketchip.system.TinyConfig.fir@123240.4]
  wire  _T_75; // @[Breakpoint.scala 44:20:freechips.rocketchip.system.TinyConfig.fir@123242.4]
  wire [31:0] _T_76; // @[Breakpoint.scala 41:6:freechips.rocketchip.system.TinyConfig.fir@123243.4]
  wire [31:0] _T_87; // @[Breakpoint.scala 41:9:freechips.rocketchip.system.TinyConfig.fir@123254.4]
  wire  _T_100; // @[Breakpoint.scala 41:19:freechips.rocketchip.system.TinyConfig.fir@123267.4]
  wire  _T_101; // @[Breakpoint.scala 47:8:freechips.rocketchip.system.TinyConfig.fir@123268.4]
  wire  _T_102; // @[Breakpoint.scala 81:32:freechips.rocketchip.system.TinyConfig.fir@123269.4]
  wire  _T_106; // @[Breakpoint.scala 88:51:freechips.rocketchip.system.TinyConfig.fir@123276.6]
  assign _T = io_status_debug == 1'h0; // @[Breakpoint.scala 30:35:freechips.rocketchip.system.TinyConfig.fir@123167.4]
  assign _T_7 = _T & io_bp_0_control_r; // @[Breakpoint.scala 79:16:freechips.rocketchip.system.TinyConfig.fir@123174.4]
  assign _T_8 = io_bp_0_control_tmatch[1]; // @[Breakpoint.scala 47:23:freechips.rocketchip.system.TinyConfig.fir@123175.4]
  assign _T_9 = io_ea >= io_bp_0_address; // @[Breakpoint.scala 44:8:freechips.rocketchip.system.TinyConfig.fir@123176.4]
  assign _T_10 = io_bp_0_control_tmatch[0]; // @[Breakpoint.scala 44:36:freechips.rocketchip.system.TinyConfig.fir@123177.4]
  assign _T_11 = _T_9 ^ _T_10; // @[Breakpoint.scala 44:20:freechips.rocketchip.system.TinyConfig.fir@123178.4]
  assign _T_12 = ~ io_ea; // @[Breakpoint.scala 41:6:freechips.rocketchip.system.TinyConfig.fir@123179.4]
  assign _T_14 = io_bp_0_address[0]; // @[Breakpoint.scala 38:83:freechips.rocketchip.system.TinyConfig.fir@123181.4]
  assign _T_15 = _T_10 & _T_14; // @[Breakpoint.scala 38:73:freechips.rocketchip.system.TinyConfig.fir@123182.4]
  assign _T_16 = io_bp_0_address[1]; // @[Breakpoint.scala 38:83:freechips.rocketchip.system.TinyConfig.fir@123183.4]
  assign _T_17 = _T_15 & _T_16; // @[Breakpoint.scala 38:73:freechips.rocketchip.system.TinyConfig.fir@123184.4]
  assign _T_18 = io_bp_0_address[2]; // @[Breakpoint.scala 38:83:freechips.rocketchip.system.TinyConfig.fir@123185.4]
  assign _T_19 = _T_17 & _T_18; // @[Breakpoint.scala 38:73:freechips.rocketchip.system.TinyConfig.fir@123186.4]
  assign _T_22 = {_T_19,_T_17,_T_15,_T_10}; // @[Cat.scala 30:58:freechips.rocketchip.system.TinyConfig.fir@123189.4]
  assign _GEN_9 = {{28'd0}, _T_22}; // @[Breakpoint.scala 41:9:freechips.rocketchip.system.TinyConfig.fir@123190.4]
  assign _T_23 = _T_12 | _GEN_9; // @[Breakpoint.scala 41:9:freechips.rocketchip.system.TinyConfig.fir@123190.4]
  assign _T_24 = ~ io_bp_0_address; // @[Breakpoint.scala 41:24:freechips.rocketchip.system.TinyConfig.fir@123191.4]
  assign _T_35 = _T_24 | _GEN_9; // @[Breakpoint.scala 41:33:freechips.rocketchip.system.TinyConfig.fir@123202.4]
  assign _T_36 = _T_23 == _T_35; // @[Breakpoint.scala 41:19:freechips.rocketchip.system.TinyConfig.fir@123203.4]
  assign _T_37 = _T_8 ? _T_11 : _T_36; // @[Breakpoint.scala 47:8:freechips.rocketchip.system.TinyConfig.fir@123204.4]
  assign _T_38 = _T_7 & _T_37; // @[Breakpoint.scala 79:32:freechips.rocketchip.system.TinyConfig.fir@123205.4]
  assign _T_39 = _T & io_bp_0_control_w; // @[Breakpoint.scala 80:16:freechips.rocketchip.system.TinyConfig.fir@123206.4]
  assign _T_70 = _T_39 & _T_37; // @[Breakpoint.scala 80:32:freechips.rocketchip.system.TinyConfig.fir@123237.4]
  assign _T_71 = _T & io_bp_0_control_x; // @[Breakpoint.scala 81:16:freechips.rocketchip.system.TinyConfig.fir@123238.4]
  assign _T_73 = io_pc >= io_bp_0_address; // @[Breakpoint.scala 44:8:freechips.rocketchip.system.TinyConfig.fir@123240.4]
  assign _T_75 = _T_73 ^ _T_10; // @[Breakpoint.scala 44:20:freechips.rocketchip.system.TinyConfig.fir@123242.4]
  assign _T_76 = ~ io_pc; // @[Breakpoint.scala 41:6:freechips.rocketchip.system.TinyConfig.fir@123243.4]
  assign _T_87 = _T_76 | _GEN_9; // @[Breakpoint.scala 41:9:freechips.rocketchip.system.TinyConfig.fir@123254.4]
  assign _T_100 = _T_87 == _T_35; // @[Breakpoint.scala 41:19:freechips.rocketchip.system.TinyConfig.fir@123267.4]
  assign _T_101 = _T_8 ? _T_75 : _T_100; // @[Breakpoint.scala 47:8:freechips.rocketchip.system.TinyConfig.fir@123268.4]
  assign _T_102 = _T_71 & _T_101; // @[Breakpoint.scala 81:32:freechips.rocketchip.system.TinyConfig.fir@123269.4]
  assign _T_106 = io_bp_0_control_action == 1'h0; // @[Breakpoint.scala 88:51:freechips.rocketchip.system.TinyConfig.fir@123276.6]
  assign io_xcpt_if = _T_102 ? _T_106 : 1'h0; // @[Breakpoint.scala 70:14:freechips.rocketchip.system.TinyConfig.fir@123161.4 Breakpoint.scala 90:40:freechips.rocketchip.system.TinyConfig.fir@123295.6]
  assign io_xcpt_ld = _T_38 ? _T_106 : 1'h0; // @[Breakpoint.scala 71:14:freechips.rocketchip.system.TinyConfig.fir@123162.4 Breakpoint.scala 88:40:freechips.rocketchip.system.TinyConfig.fir@123277.6]
  assign io_xcpt_st = _T_70 ? _T_106 : 1'h0; // @[Breakpoint.scala 72:14:freechips.rocketchip.system.TinyConfig.fir@123163.4 Breakpoint.scala 89:40:freechips.rocketchip.system.TinyConfig.fir@123286.6]
  assign io_debug_if = _T_102 ? io_bp_0_control_action : 1'h0; // @[Breakpoint.scala 73:15:freechips.rocketchip.system.TinyConfig.fir@123164.4 Breakpoint.scala 90:73:freechips.rocketchip.system.TinyConfig.fir@123297.6]
  assign io_debug_ld = _T_38 ? io_bp_0_control_action : 1'h0; // @[Breakpoint.scala 74:15:freechips.rocketchip.system.TinyConfig.fir@123165.4 Breakpoint.scala 88:73:freechips.rocketchip.system.TinyConfig.fir@123279.6]
  assign io_debug_st = _T_70 ? io_bp_0_control_action : 1'h0; // @[Breakpoint.scala 75:15:freechips.rocketchip.system.TinyConfig.fir@123166.4 Breakpoint.scala 89:73:freechips.rocketchip.system.TinyConfig.fir@123288.6]
endmodule