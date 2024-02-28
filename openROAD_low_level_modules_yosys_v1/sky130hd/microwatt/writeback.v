module writeback(clk, rst, \e_in.valid , \e_in.instr_tag , \e_in.rc , \e_in.mode_32bit , \e_in.write_enable , \e_in.write_reg , \e_in.write_data , \e_in.write_cr_enable , \e_in.write_cr_mask , \e_in.write_cr_data , \e_in.write_xerc_enable , \e_in.xerc , \e_in.interrupt , \e_in.intr_vec , \e_in.redirect , \e_in.redir_mode , \e_in.last_nia , \e_in.br_offset , \e_in.br_last , \e_in.br_taken , \e_in.abs_br , \e_in.srr1 , \e_in.msr , \l_in.valid , \l_in.instr_tag , \l_in.write_enable , \l_in.write_reg , \l_in.write_data , \l_in.xerc , \l_in.rc , \l_in.store_done , \l_in.interrupt , \l_in.intr_vec , \l_in.srr0 , \l_in.srr1 , \fp_in.valid , \fp_in.interrupt , \fp_in.instr_tag , \fp_in.write_enable , \fp_in.write_reg , \fp_in.write_data , \fp_in.write_cr_enable , \fp_in.write_cr_mask , \fp_in.write_cr_data , \fp_in.intr_vec , \fp_in.srr0 , \fp_in.srr1 , \w_out.write_reg , \w_out.write_data , \w_out.write_enable , \c_out.write_cr_enable , \c_out.write_cr_mask , \c_out.write_cr_data , \c_out.write_xerc_enable , \c_out.write_xerc_data , \f_out.redirect , \f_out.virt_mode , \f_out.priv_mode , \f_out.big_endian , \f_out.mode_32bit , \f_out.redirect_nia , \f_out.br_nia , \f_out.br_last , \f_out.br_taken , \events.instr_complete , \events.fp_complete , flush_out, interrupt_out, \complete_out.tag , \complete_out.valid );
  wire [64:0] _00_;
  reg [64:0] _01_;
  wire [2:0] _02_;
  wire [2:0] _03_;
  wire [2:0] _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire [63:0] _08_;
  wire [11:0] _09_;
  wire [15:0] _10_;
  wire [63:0] _11_;
  wire [11:0] _12_;
  wire [15:0] _13_;
  wire [63:0] _14_;
  wire [11:0] _15_;
  wire [15:0] _16_;
  wire [71:0] _17_;
  wire [5:0] _18_;
  wire [71:0] _19_;
  wire [71:0] _20_;
  wire [8:0] _21_;
  wire [8:0] _22_;
  wire [8:0] _23_;
  wire [3:0] _24_;
  wire [3:0] _25_;
  wire [3:0] _26_;
  wire [27:0] _27_;
  wire [27:0] _28_;
  wire _29_;
  wire _30_;
  wire _31_;
  wire _32_;
  wire _33_;
  wire _34_;
  wire _35_;
  wire _36_;
  wire _37_;
  wire _38_;
  wire _39_;
  wire _40_;
  wire [8:0] _41_;
  wire [3:0] _42_;
  wire [71:0] _43_;
  wire [46:0] _44_;
  wire [64:0] _45_;
  wire [11:0] _46_;
  wire [71:0] _47_;
  wire [46:0] _48_;
  wire _49_;
  wire _50_;
  wire [63:0] _51_;
  wire [11:0] _52_;
  wire [63:0] _53_;
  wire [63:0] _54_;
  wire _55_;
  wire [67:0] _56_;
  wire _57_;
  output [31:0] \c_out.write_cr_data ;
  wire [31:0] \c_out.write_cr_data ;
  output \c_out.write_cr_enable ;
  wire \c_out.write_cr_enable ;
  output [7:0] \c_out.write_cr_mask ;
  wire [7:0] \c_out.write_cr_mask ;
  output [4:0] \c_out.write_xerc_data ;
  wire [4:0] \c_out.write_xerc_data ;
  output \c_out.write_xerc_enable ;
  wire \c_out.write_xerc_enable ;
  input clk;
  wire clk;
  output [1:0] \complete_out.tag ;
  wire [1:0] \complete_out.tag ;
  output \complete_out.valid ;
  wire \complete_out.valid ;
  input \e_in.abs_br ;
  wire \e_in.abs_br ;
  input \e_in.br_last ;
  wire \e_in.br_last ;
  input [63:0] \e_in.br_offset ;
  wire [63:0] \e_in.br_offset ;
  input \e_in.br_taken ;
  wire \e_in.br_taken ;
  input [2:0] \e_in.instr_tag ;
  wire [2:0] \e_in.instr_tag ;
  input \e_in.interrupt ;
  wire \e_in.interrupt ;
  input [11:0] \e_in.intr_vec ;
  wire [11:0] \e_in.intr_vec ;
  input [63:0] \e_in.last_nia ;
  wire [63:0] \e_in.last_nia ;
  input \e_in.mode_32bit ;
  wire \e_in.mode_32bit ;
  input [63:0] \e_in.msr ;
  wire [63:0] \e_in.msr ;
  input \e_in.rc ;
  wire \e_in.rc ;
  input [3:0] \e_in.redir_mode ;
  wire [3:0] \e_in.redir_mode ;
  input \e_in.redirect ;
  wire \e_in.redirect ;
  input [15:0] \e_in.srr1 ;
  wire [15:0] \e_in.srr1 ;
  input \e_in.valid ;
  wire \e_in.valid ;
  input [31:0] \e_in.write_cr_data ;
  wire [31:0] \e_in.write_cr_data ;
  input \e_in.write_cr_enable ;
  wire \e_in.write_cr_enable ;
  input [7:0] \e_in.write_cr_mask ;
  wire [7:0] \e_in.write_cr_mask ;
  input [63:0] \e_in.write_data ;
  wire [63:0] \e_in.write_data ;
  input \e_in.write_enable ;
  wire \e_in.write_enable ;
  input [6:0] \e_in.write_reg ;
  wire [6:0] \e_in.write_reg ;
  input \e_in.write_xerc_enable ;
  wire \e_in.write_xerc_enable ;
  input [4:0] \e_in.xerc ;
  wire [4:0] \e_in.xerc ;
  output \events.fp_complete ;
  wire \events.fp_complete ;
  output \events.instr_complete ;
  wire \events.instr_complete ;
  output \f_out.big_endian ;
  wire \f_out.big_endian ;
  output \f_out.br_last ;
  wire \f_out.br_last ;
  output [63:0] \f_out.br_nia ;
  wire [63:0] \f_out.br_nia ;
  output \f_out.br_taken ;
  wire \f_out.br_taken ;
  output \f_out.mode_32bit ;
  wire \f_out.mode_32bit ;
  output \f_out.priv_mode ;
  wire \f_out.priv_mode ;
  output \f_out.redirect ;
  wire \f_out.redirect ;
  output [63:0] \f_out.redirect_nia ;
  wire [63:0] \f_out.redirect_nia ;
  output \f_out.virt_mode ;
  wire \f_out.virt_mode ;
  output flush_out;
  wire flush_out;
  input [2:0] \fp_in.instr_tag ;
  wire [2:0] \fp_in.instr_tag ;
  input \fp_in.interrupt ;
  wire \fp_in.interrupt ;
  input [11:0] \fp_in.intr_vec ;
  wire [11:0] \fp_in.intr_vec ;
  input [63:0] \fp_in.srr0 ;
  wire [63:0] \fp_in.srr0 ;
  input [15:0] \fp_in.srr1 ;
  wire [15:0] \fp_in.srr1 ;
  input \fp_in.valid ;
  wire \fp_in.valid ;
  input [31:0] \fp_in.write_cr_data ;
  wire [31:0] \fp_in.write_cr_data ;
  input \fp_in.write_cr_enable ;
  wire \fp_in.write_cr_enable ;
  input [7:0] \fp_in.write_cr_mask ;
  wire [7:0] \fp_in.write_cr_mask ;
  input [63:0] \fp_in.write_data ;
  wire [63:0] \fp_in.write_data ;
  input \fp_in.write_enable ;
  wire \fp_in.write_enable ;
  input [6:0] \fp_in.write_reg ;
  wire [6:0] \fp_in.write_reg ;
  output interrupt_out;
  wire interrupt_out;
  input [2:0] \l_in.instr_tag ;
  wire [2:0] \l_in.instr_tag ;
  input \l_in.interrupt ;
  wire \l_in.interrupt ;
  input [11:0] \l_in.intr_vec ;
  wire [11:0] \l_in.intr_vec ;
  input \l_in.rc ;
  wire \l_in.rc ;
  input [63:0] \l_in.srr0 ;
  wire [63:0] \l_in.srr0 ;
  input [15:0] \l_in.srr1 ;
  wire [15:0] \l_in.srr1 ;
  input \l_in.store_done ;
  wire \l_in.store_done ;
  input \l_in.valid ;
  wire \l_in.valid ;
  input [63:0] \l_in.write_data ;
  wire [63:0] \l_in.write_data ;
  input \l_in.write_enable ;
  wire \l_in.write_enable ;
  input [6:0] \l_in.write_reg ;
  wire [6:0] \l_in.write_reg ;
  input [4:0] \l_in.xerc ;
  wire [4:0] \l_in.xerc ;
  wire [64:0] r;
  wire [64:0] rin;
  input rst;
  wire rst;
  output [63:0] \w_out.write_data ;
  wire [63:0] \w_out.write_data ;
  output \w_out.write_enable ;
  wire \w_out.write_enable ;
  output [6:0] \w_out.write_reg ;
  wire [6:0] \w_out.write_reg ;
  assign _00_ = rst ? 65'h00000000000000000 : rin;
  always @(posedge clk)
    _01_ <= _00_;
  assign _02_ = \fp_in.valid  ? \fp_in.instr_tag  : 3'h0;
  assign _03_ = \l_in.valid  ? \l_in.instr_tag  : _02_;
  assign _04_ = \e_in.valid  ? \e_in.instr_tag  : _03_;
  assign _05_ = \e_in.interrupt  | \l_in.interrupt ;
  assign _06_ = _05_ | \fp_in.interrupt ;
  assign _07_ = r[0] == 1'h1;
  assign _08_ = \fp_in.interrupt  ? \fp_in.srr0  : 64'h0000000000000000;
  assign _09_ = \fp_in.interrupt  ? \fp_in.intr_vec  : 12'h000;
  assign _10_ = \fp_in.interrupt  ? \fp_in.srr1  : 16'h0000;
  assign _11_ = \l_in.interrupt  ? \l_in.srr0  : _08_;
  assign _12_ = \l_in.interrupt  ? \l_in.intr_vec  : _09_;
  assign _13_ = \l_in.interrupt  ? \l_in.srr1  : _10_;
  assign _14_ = \e_in.interrupt  ? \e_in.last_nia  : _11_;
  assign _15_ = \e_in.interrupt  ? \e_in.intr_vec  : _12_;
  assign _16_ = \e_in.interrupt  ? \e_in.srr1  : _13_;
  assign _17_ = \e_in.write_enable  ? { 1'h1, \e_in.write_data , \e_in.write_reg  } : 72'h000000000000000000;
  assign _18_ = \e_in.write_xerc_enable  ? { \e_in.xerc , 1'h1 } : 6'h00;
  assign _19_ = \fp_in.write_enable  ? { 1'h1, \fp_in.write_data , \fp_in.write_reg  } : _17_;
  assign _20_ = \l_in.write_enable  ? { 1'h1, \l_in.write_data , \l_in.write_reg  } : _19_;
  assign _21_ = \e_in.write_cr_enable  ? { \e_in.write_cr_mask , 1'h1 } : 9'h000;
  assign _22_ = \fp_in.write_cr_enable  ? { \fp_in.write_cr_mask , 1'h1 } : _21_;
  assign _23_ = \l_in.rc  ? 9'h101 : _22_;
  assign _24_ = \e_in.write_cr_enable  ? \e_in.write_cr_data [31:28] : 4'h0;
  assign _25_ = \fp_in.write_cr_enable  ? \fp_in.write_cr_data [31:28] : _24_;
  assign _26_ = \l_in.rc  ? { 2'h0, \l_in.store_done , \l_in.xerc [4] } : _25_;
  assign _27_ = \e_in.write_cr_enable  ? \e_in.write_cr_data [27:0] : 28'h0000000;
  assign _28_ = \fp_in.write_cr_enable  ? \fp_in.write_cr_data [27:0] : _27_;
  assign _29_ = \e_in.rc  & \e_in.write_enable ;
  assign _30_ = | \e_in.write_data [31:0];
  assign _31_ = ~ _30_;
  assign _32_ = ~ \e_in.mode_32bit ;
  assign _33_ = | \e_in.write_data [63:32];
  assign _34_ = ~ _33_;
  assign _35_ = _31_ & _34_;
  assign _36_ = _32_ ? _35_ : _31_;
  assign _37_ = _32_ ? \e_in.write_data [63] : \e_in.write_data [31];
  assign _38_ = ~ _37_;
  assign _39_ = ~ _36_;
  assign _40_ = _38_ & _39_;
  assign _41_ = _29_ ? 9'h101 : _23_;
  assign _42_ = _29_ ? { _37_, _40_, _36_, \e_in.xerc [4] } : _26_;
  assign _43_ = _06_ ? { 1'h1, _14_, 7'h22 } : _20_;
  assign _44_ = _06_ ? 47'h000000000000 : { _18_, _42_, _28_, _41_ };
  assign _45_ = _06_ ? { \e_in.msr [63:31], _16_[14:11], \e_in.msr [26:22], _16_[5:0], \e_in.msr [15:0], 1'h1 } : r;
  assign _46_ = _06_ ? _15_ : 12'h000;
  assign _47_ = _07_ ? { 1'h1, r[64:1], 7'h23 } : _43_;
  assign _48_ = _07_ ? 47'h000000000000 : _44_;
  assign _49_ = _07_ ? 1'h1 : 1'h0;
  assign _50_ = _07_ ? 1'h0 : _45_[0];
  assign _51_ = _07_ ? r[64:1] : _45_[64:1];
  assign _52_ = _07_ ? 12'h000 : _46_;
  assign _53_ = \e_in.last_nia  + \e_in.br_offset ;
  assign _54_ = \e_in.abs_br  ? \e_in.br_offset  : _53_;
  assign _55_ = _06_ ? 1'h1 : \e_in.redirect ;
  assign _56_ = _06_ ? { 52'h0000000000000, _52_, 4'h2 } : { _54_, \e_in.redir_mode [0], \e_in.redir_mode [1], \e_in.redir_mode [2], \e_in.redir_mode [3] };
  assign _57_ = _06_ ? 1'h0 : \e_in.br_last ;
  assign r = _01_;
  assign rin = { _51_, _50_ };
  assign \w_out.write_reg  = _47_[6:0];
  assign \w_out.write_data  = _47_[70:7];
  assign \w_out.write_enable  = _47_[71];
  assign \c_out.write_cr_enable  = _48_[0];
  assign \c_out.write_cr_mask  = _48_[8:1];
  assign \c_out.write_cr_data  = _48_[40:9];
  assign \c_out.write_xerc_enable  = _48_[41];
  assign \c_out.write_xerc_data  = _48_[46:42];
  assign \f_out.redirect  = _55_;
  assign \f_out.virt_mode  = _56_[0];
  assign \f_out.priv_mode  = _56_[1];
  assign \f_out.big_endian  = _56_[2];
  assign \f_out.mode_32bit  = _56_[3];
  assign \f_out.redirect_nia  = _56_[67:4];
  assign \f_out.br_nia  = \e_in.last_nia ;
  assign \f_out.br_last  = _57_;
  assign \f_out.br_taken  = \e_in.br_taken ;
  assign \events.instr_complete  = _04_[2];
  assign \events.fp_complete  = \fp_in.valid ;
  assign flush_out = _55_;
  assign interrupt_out = _49_;
  assign \complete_out.tag  = _04_[1:0];
  assign \complete_out.valid  = _04_[2];
endmodule