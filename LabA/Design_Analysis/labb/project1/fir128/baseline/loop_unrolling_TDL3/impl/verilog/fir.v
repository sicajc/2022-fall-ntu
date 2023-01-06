// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="fir,hls_ip_2020_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.510000,HLS_SYN_LAT=689,HLS_SYN_TPT=none,HLS_SYN_MEM=2,HLS_SYN_DSP=2,HLS_SYN_FF=197,HLS_SYN_LUT=323,HLS_VERSION=2020_1}" *)

module fir (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        y,
        y_ap_vld,
        x
);

parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_state2 = 10'd2;
parameter    ap_ST_fsm_state3 = 10'd4;
parameter    ap_ST_fsm_state4 = 10'd8;
parameter    ap_ST_fsm_state5 = 10'd16;
parameter    ap_ST_fsm_state6 = 10'd32;
parameter    ap_ST_fsm_state7 = 10'd64;
parameter    ap_ST_fsm_state8 = 10'd128;
parameter    ap_ST_fsm_state9 = 10'd256;
parameter    ap_ST_fsm_state10 = 10'd512;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [31:0] y;
output   y_ap_vld;
input  [31:0] x;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg y_ap_vld;

(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [6:0] shift_reg_address0;
reg    shift_reg_ce0;
reg    shift_reg_we0;
reg   [31:0] shift_reg_d0;
wire   [31:0] shift_reg_q0;
reg   [6:0] shift_reg_address1;
reg    shift_reg_ce1;
reg    shift_reg_we1;
reg   [31:0] shift_reg_d1;
wire   [31:0] shift_reg_q1;
wire   [6:0] c_address0;
reg    c_ce0;
wire   [4:0] c_q0;
wire  signed [31:0] i_0_0_cast_fu_165_p1;
reg  signed [31:0] i_0_0_cast_reg_274;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln30_fu_169_p2;
reg   [0:0] icmp_ln30_reg_279;
reg   [6:0] shift_reg_addr_reg_283;
wire   [0:0] icmp_ln30_1_fu_186_p2;
reg   [0:0] icmp_ln30_1_reg_289;
reg   [6:0] shift_reg_addr_3_reg_293;
wire    ap_CS_fsm_state3;
wire   [0:0] icmp_ln30_2_fu_211_p2;
reg   [0:0] icmp_ln30_2_reg_298;
wire  signed [7:0] add_ln31_2_fu_217_p2;
reg  signed [7:0] add_ln31_2_reg_302;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state7;
wire   [0:0] tmp_fu_236_p3;
wire   [7:0] i_fu_250_p2;
reg   [7:0] i_reg_325;
reg  signed [31:0] shift_reg_load_1_reg_330;
wire    ap_CS_fsm_state8;
reg   [4:0] c_load_reg_335;
wire   [31:0] mul_ln38_fu_259_p2;
reg   [31:0] mul_ln38_reg_340;
wire    ap_CS_fsm_state9;
wire   [31:0] acc_fu_264_p2;
wire    ap_CS_fsm_state10;
reg  signed [7:0] i_0_0_reg_129;
wire    ap_CS_fsm_state5;
reg   [31:0] acc_0_reg_141;
wire    ap_CS_fsm_state6;
reg  signed [7:0] i_1_reg_154;
wire   [63:0] zext_ln31_fu_181_p1;
wire   [63:0] zext_ln31_1_fu_192_p1;
wire   [63:0] zext_ln31_2_fu_206_p1;
wire   [63:0] zext_ln31_3_fu_227_p1;
wire   [63:0] zext_ln38_fu_244_p1;
wire   [7:0] add_ln31_fu_175_p2;
wire  signed [7:0] add_ln31_1_fu_196_p2;
wire  signed [31:0] sext_ln31_fu_202_p1;
wire  signed [31:0] sext_ln31_1_fu_223_p1;
wire  signed [31:0] sext_ln37_fu_232_p1;
wire  signed [4:0] mul_ln38_fu_259_p1;
reg   [9:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 10'd1;
end

fir_shift_reg #(
    .DataWidth( 32 ),
    .AddressRange( 128 ),
    .AddressWidth( 7 ))
shift_reg_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(shift_reg_address0),
    .ce0(shift_reg_ce0),
    .we0(shift_reg_we0),
    .d0(shift_reg_d0),
    .q0(shift_reg_q0),
    .address1(shift_reg_address1),
    .ce1(shift_reg_ce1),
    .we1(shift_reg_we1),
    .d1(shift_reg_d1),
    .q1(shift_reg_q1)
);

fir_c #(
    .DataWidth( 5 ),
    .AddressRange( 128 ),
    .AddressWidth( 7 ))
c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(c_address0),
    .ce0(c_ce0),
    .q0(c_q0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        acc_0_reg_141 <= acc_fu_264_p2;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        acc_0_reg_141 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_0_0_reg_129 <= 8'd127;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        i_0_0_reg_129 <= add_ln31_2_reg_302;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        i_1_reg_154 <= i_reg_325;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        i_1_reg_154 <= 8'd127;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln30_2_reg_298 == 1'd1) & (icmp_ln30_1_reg_289 == 1'd1) & (icmp_ln30_reg_279 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        add_ln31_2_reg_302 <= add_ln31_2_fu_217_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c_load_reg_335 <= c_q0;
        shift_reg_load_1_reg_330 <= shift_reg_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_0_0_cast_reg_274 <= i_0_0_cast_fu_165_p1;
        icmp_ln30_reg_279 <= icmp_ln30_fu_169_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state7) & (tmp_fu_236_p3 == 1'd0))) begin
        i_reg_325 <= i_fu_250_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln30_fu_169_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        icmp_ln30_1_reg_289 <= icmp_ln30_1_fu_186_p2;
        shift_reg_addr_reg_283 <= zext_ln31_fu_181_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln30_1_reg_289 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        icmp_ln30_2_reg_298 <= icmp_ln30_2_fu_211_p2;
        shift_reg_addr_3_reg_293 <= zext_ln31_2_fu_206_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        mul_ln38_reg_340 <= mul_ln38_fu_259_p2;
    end
end

always @ (*) begin
    if (((tmp_fu_236_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_fu_236_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        c_ce0 = 1'b1;
    end else begin
        c_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        shift_reg_address0 = 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        shift_reg_address0 = zext_ln31_3_fu_227_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        shift_reg_address0 = zext_ln31_1_fu_192_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        shift_reg_address0 = zext_ln31_fu_181_p1;
    end else begin
        shift_reg_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        shift_reg_address1 = zext_ln38_fu_244_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        shift_reg_address1 = shift_reg_addr_3_reg_293;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        shift_reg_address1 = shift_reg_addr_reg_283;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        shift_reg_address1 = zext_ln31_2_fu_206_p1;
    end else begin
        shift_reg_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state6))) begin
        shift_reg_ce0 = 1'b1;
    end else begin
        shift_reg_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state7))) begin
        shift_reg_ce1 = 1'b1;
    end else begin
        shift_reg_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        shift_reg_d0 = x;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        shift_reg_d0 = shift_reg_q0;
    end else begin
        shift_reg_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        shift_reg_d1 = shift_reg_q0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        shift_reg_d1 = shift_reg_q1;
    end else begin
        shift_reg_d1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state6))) begin
        shift_reg_we0 = 1'b1;
    end else begin
        shift_reg_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | ((icmp_ln30_1_reg_289 == 1'd1) & (icmp_ln30_reg_279 == 1'd1) & (1'b1 == ap_CS_fsm_state4)))) begin
        shift_reg_we1 = 1'b1;
    end else begin
        shift_reg_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_fu_236_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        y_ap_vld = 1'b1;
    end else begin
        y_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln30_fu_169_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & ((icmp_ln30_reg_279 == 1'd0) | ((icmp_ln30_2_reg_298 == 1'd0) | (icmp_ln30_1_reg_289 == 1'd0))))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((tmp_fu_236_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign acc_fu_264_p2 = (mul_ln38_reg_340 + acc_0_reg_141);

assign add_ln31_1_fu_196_p2 = ($signed(i_0_0_reg_129) + $signed(8'd254));

assign add_ln31_2_fu_217_p2 = ($signed(i_0_0_reg_129) + $signed(8'd253));

assign add_ln31_fu_175_p2 = ($signed(i_0_0_reg_129) + $signed(8'd255));

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign c_address0 = zext_ln38_fu_244_p1;

assign i_0_0_cast_fu_165_p1 = i_0_0_reg_129;

assign i_fu_250_p2 = ($signed(i_1_reg_154) + $signed(8'd255));

assign icmp_ln30_1_fu_186_p2 = (($signed(add_ln31_fu_175_p2) > $signed(8'd0)) ? 1'b1 : 1'b0);

assign icmp_ln30_2_fu_211_p2 = (($signed(add_ln31_1_fu_196_p2) > $signed(8'd0)) ? 1'b1 : 1'b0);

assign icmp_ln30_fu_169_p2 = (($signed(i_0_0_reg_129) > $signed(8'd0)) ? 1'b1 : 1'b0);

assign mul_ln38_fu_259_p1 = c_load_reg_335;

assign mul_ln38_fu_259_p2 = ($signed(shift_reg_load_1_reg_330) * $signed(mul_ln38_fu_259_p1));

assign sext_ln31_1_fu_223_p1 = add_ln31_2_fu_217_p2;

assign sext_ln31_fu_202_p1 = add_ln31_1_fu_196_p2;

assign sext_ln37_fu_232_p1 = i_1_reg_154;

assign tmp_fu_236_p3 = i_1_reg_154[32'd7];

assign y = acc_0_reg_141;

assign zext_ln31_1_fu_192_p1 = $unsigned(i_0_0_cast_reg_274);

assign zext_ln31_2_fu_206_p1 = $unsigned(sext_ln31_fu_202_p1);

assign zext_ln31_3_fu_227_p1 = $unsigned(sext_ln31_1_fu_223_p1);

assign zext_ln31_fu_181_p1 = add_ln31_fu_175_p2;

assign zext_ln38_fu_244_p1 = $unsigned(sext_ln37_fu_232_p1);

endmodule //fir