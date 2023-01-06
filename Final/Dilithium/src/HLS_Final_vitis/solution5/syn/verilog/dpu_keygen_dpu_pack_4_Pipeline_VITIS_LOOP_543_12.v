// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dpu_keygen_dpu_pack_4_Pipeline_VITIS_LOOP_543_12 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        this_5_10,
        sk_address0,
        sk_ce0,
        sk_q0,
        sk_address1,
        sk_ce1,
        sk_q1,
        this_5_11_out,
        this_5_11_out_ap_vld,
        ptr_i,
        ptr_o,
        ptr_o_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [8191:0] this_5_10;
output  [11:0] sk_address0;
output   sk_ce0;
input  [7:0] sk_q0;
output  [11:0] sk_address1;
output   sk_ce1;
input  [7:0] sk_q1;
output  [8191:0] this_5_11_out;
output   this_5_11_out_ap_vld;
input  [31:0] ptr_i;
output  [31:0] ptr_o;
output   ptr_o_ap_vld;

reg ap_idle;
reg[11:0] sk_address0;
reg sk_ce0;
reg[11:0] sk_address1;
reg sk_ce1;
reg this_5_11_out_ap_vld;
reg[31:0] ptr_o;
reg ptr_o_ap_vld;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state4_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln543_fu_177_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_state3_pp0_stage2_iter0;
wire    ap_block_pp0_stage2_subdone;
reg   [7:0] reg_156;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state2_pp0_stage1_iter0;
wire    ap_block_pp0_stage1_11001;
reg   [0:0] icmp_ln543_reg_480;
wire    ap_block_pp0_stage2_11001;
reg   [7:0] reg_160;
wire    ap_block_pp0_stage0_11001;
wire   [11:0] trunc_ln545_fu_193_p1;
reg   [11:0] trunc_ln545_reg_484;
wire   [6:0] trunc_ln547_fu_213_p1;
reg   [6:0] trunc_ln547_reg_501;
wire   [8191:0] zext_ln548_fu_346_p1;
reg   [8191:0] zext_ln548_reg_521;
wire   [8191:0] and_ln548_fu_362_p2;
reg   [8191:0] and_ln548_reg_526;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln545_fu_197_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln545_1_fu_208_p1;
wire   [63:0] zext_ln545_2_fu_239_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln546_fu_249_p1;
wire   [63:0] zext_ln546_2_fu_280_p1;
wire    ap_block_pp0_stage2;
wire   [31:0] add_ln549_fu_217_p2;
reg   [7:0] i_25_fu_86;
wire   [7:0] add_ln543_fu_183_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_i;
reg   [8191:0] this_5_11_fu_90;
wire   [8191:0] or_ln548_1_fu_451_p2;
wire    ap_block_pp0_stage0_01001;
wire   [11:0] add_ln545_fu_202_p2;
wire   [11:0] add_ln545_1_fu_234_p2;
wire   [11:0] add_ln546_fu_244_p2;
wire   [3:0] trunc_ln545_1_fu_257_p1;
wire   [19:0] t_fu_261_p4;
wire   [11:0] add_ln546_1_fu_275_p2;
wire   [20:0] zext_ln544_fu_271_p1;
wire   [20:0] sub_ln547_fu_285_p2;
wire   [12:0] shl_ln8_fu_295_p3;
wire   [8191:0] zext_ln547_fu_302_p1;
wire   [8191:0] shl_ln547_fu_306_p2;
wire   [8191:0] xor_ln547_fu_312_p2;
wire  signed [31:0] sext_ln547_fu_291_p1;
wire   [8191:0] zext_ln547_1_fu_324_p1;
wire   [8191:0] and_ln547_fu_318_p2;
wire   [8191:0] shl_ln547_1_fu_328_p2;
wire   [12:0] or_ln548_fu_340_p2;
wire   [8191:0] shl_ln548_fu_350_p2;
wire   [8191:0] or_ln547_fu_334_p2;
wire   [8191:0] xor_ln548_fu_356_p2;
wire   [3:0] lshr_ln_fu_368_p4;
wire   [7:0] zext_ln546_1_fu_378_p1;
wire   [4:0] trunc_ln546_fu_382_p1;
wire   [8:0] tmp_1031_fu_394_p3;
wire   [8:0] tmp_fu_386_p3;
wire   [2:0] tmp_1032_fu_408_p4;
wire   [8:0] or_ln546_fu_402_p2;
wire   [19:0] t_1_fu_418_p4;
wire   [20:0] zext_ln544_1_fu_428_p1;
wire   [20:0] sub_ln548_fu_432_p2;
wire  signed [31:0] sext_ln548_fu_438_p1;
wire   [8191:0] zext_ln548_1_fu_442_p1;
wire   [8191:0] shl_ln548_1_fu_446_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 ap_done_reg = 1'b0;
end

dpu_keygen_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln543_fu_177_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_25_fu_86 <= add_ln543_fu_183_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_25_fu_86 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            this_5_11_fu_90 <= this_5_10;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            this_5_11_fu_90 <= or_ln548_1_fu_451_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln543_reg_480 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        and_ln548_reg_526 <= and_ln548_fu_362_p2;
        zext_ln548_reg_521[12 : 6] <= zext_ln548_fu_346_p1[12 : 6];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln543_reg_480 <= icmp_ln543_fu_177_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((((icmp_ln543_reg_480 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln543_reg_480 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_156 <= sk_q1;
        reg_160 <= sk_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln543_fu_177_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        trunc_ln545_reg_484 <= trunc_ln545_fu_193_p1;
        trunc_ln547_reg_501 <= trunc_ln547_fu_213_p1;
    end
end

always @ (*) begin
    if (((icmp_ln543_fu_177_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i = 8'd0;
    end else begin
        ap_sig_allocacmp_i = i_25_fu_86;
    end
end

always @ (*) begin
    if (((icmp_ln543_fu_177_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ptr_o = add_ln549_fu_217_p2;
    end else begin
        ptr_o = ptr_i;
    end
end

always @ (*) begin
    if (((icmp_ln543_fu_177_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ptr_o_ap_vld = 1'b1;
    end else begin
        ptr_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            sk_address0 = zext_ln546_2_fu_280_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            sk_address0 = zext_ln546_fu_249_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            sk_address0 = zext_ln545_1_fu_208_p1;
        end else begin
            sk_address0 = 'bx;
        end
    end else begin
        sk_address0 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            sk_address1 = zext_ln545_2_fu_239_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            sk_address1 = zext_ln545_fu_197_p1;
        end else begin
            sk_address1 = 'bx;
        end
    end else begin
        sk_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sk_ce0 = 1'b1;
    end else begin
        sk_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        sk_ce1 = 1'b1;
    end else begin
        sk_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln543_fu_177_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        this_5_11_out_ap_vld = 1'b1;
    end else begin
        this_5_11_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln543_fu_183_p2 = (ap_sig_allocacmp_i + 8'd1);

assign add_ln545_1_fu_234_p2 = (trunc_ln545_reg_484 + 12'd2);

assign add_ln545_fu_202_p2 = (trunc_ln545_fu_193_p1 + 12'd1);

assign add_ln546_1_fu_275_p2 = (trunc_ln545_reg_484 + 12'd4);

assign add_ln546_fu_244_p2 = (trunc_ln545_reg_484 + 12'd3);

assign add_ln549_fu_217_p2 = (ptr_i + 32'd5);

assign and_ln547_fu_318_p2 = (xor_ln547_fu_312_p2 & this_5_11_fu_90);

assign and_ln548_fu_362_p2 = (xor_ln548_fu_356_p2 & or_ln547_fu_334_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage2_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln543_fu_177_p2 = ((ap_sig_allocacmp_i == 8'd128) ? 1'b1 : 1'b0);

assign lshr_ln_fu_368_p4 = {{reg_156[7:4]}};

assign or_ln546_fu_402_p2 = (tmp_fu_386_p3 | tmp_1031_fu_394_p3);

assign or_ln547_fu_334_p2 = (shl_ln547_1_fu_328_p2 | and_ln547_fu_318_p2);

assign or_ln548_1_fu_451_p2 = (shl_ln548_1_fu_446_p2 | and_ln548_reg_526);

assign or_ln548_fu_340_p2 = (shl_ln8_fu_295_p3 | 13'd32);

assign sext_ln547_fu_291_p1 = $signed(sub_ln547_fu_285_p2);

assign sext_ln548_fu_438_p1 = $signed(sub_ln548_fu_432_p2);

assign shl_ln547_1_fu_328_p2 = zext_ln547_1_fu_324_p1 << zext_ln547_fu_302_p1;

assign shl_ln547_fu_306_p2 = 8192'd4294967295 << zext_ln547_fu_302_p1;

assign shl_ln548_1_fu_446_p2 = zext_ln548_1_fu_442_p1 << zext_ln548_reg_521;

assign shl_ln548_fu_350_p2 = 8192'd4294967295 << zext_ln548_fu_346_p1;

assign shl_ln8_fu_295_p3 = {{trunc_ln547_reg_501}, {6'd0}};

assign sub_ln547_fu_285_p2 = (21'd524288 - zext_ln544_fu_271_p1);

assign sub_ln548_fu_432_p2 = (21'd524288 - zext_ln544_1_fu_428_p1);

assign t_1_fu_418_p4 = {{{sk_q0}, {tmp_1032_fu_408_p4}}, {or_ln546_fu_402_p2}};

assign t_fu_261_p4 = {{{trunc_ln545_1_fu_257_p1}, {reg_160}}, {reg_156}};

assign this_5_11_out = this_5_11_fu_90;

assign tmp_1031_fu_394_p3 = {{trunc_ln546_fu_382_p1}, {4'd0}};

assign tmp_1032_fu_408_p4 = {{reg_160[7:5]}};

assign tmp_fu_386_p3 = {{1'd0}, {zext_ln546_1_fu_378_p1}};

assign trunc_ln545_1_fu_257_p1 = sk_q1[3:0];

assign trunc_ln545_fu_193_p1 = ptr_i[11:0];

assign trunc_ln546_fu_382_p1 = reg_160[4:0];

assign trunc_ln547_fu_213_p1 = ap_sig_allocacmp_i[6:0];

assign xor_ln547_fu_312_p2 = (shl_ln547_fu_306_p2 ^ 8192'd1090748135619415929462984244733782862448264161996232692431832786189721331849119295216264234525201987223957291796157025273109870820177184063610979765077554799078906298842192989538609825228048205159696851613591638196771886542609324560121290553901886301017900252535799917200010079600026535836800905297805880952350501630195475653911005312364560014847426035293551245843928918752768696279344088055617515694349945406677825140814900616105920256438504578013326493565836047242407382442812245131517757519164899226365743722432277368075027627883045206501792761700945699168497257879683851737049996900961120515655050115561271491492515342105748966629547032786321505730828430221664970324396138635251626409516168005427623435996308921691446181187406395310665404885739434832877428167407495370993511868756359970390117021823616749458620969857006263612082706715408157066575137281027022310927564910276759160520878304632411049364568754920967322982459184763427383790272448438018526977764941072715611580434690827459339991961414242741410599117426060556483763756314527611362658628383368621157993638020878537675545336789915694234433955666315070087213535470255670312004130725495834508357439653828936077080978550578912967907352780054935621561090795845172954115972927479877527738560008204118558930004777748727761853813510493840581861598652211605960308356405941821189714037868726219481498727603653616298856174822413033485438785324024751419417183012281078209729303537372804574372095228703622776363945290869806258422355148507571039619387449629866808188769662815778153079393179093143648340761738581819563002994422790754955061288818308430079648693232179158765918035565216157115402992120276155607873107937477466841528362987708699450152031231862594203085693838944657061346236704234026821102958954951197087076546186622796294536451620756509351018906023773821539532776208676978589731966330308893304665169436185078350641568336944530051437491311298834367265238595404904273455928723949525227184617404367854754610474377019768025576605881038077270707717942221977090385438585844095492116099852538903974655703943973086090930596963360767529964938414598185705963754561497355827813623833288906309004288017321424808663962671333528009232758350873059614118723781422101460198615747386855096896089189180441339558524822867541113212638793675567650340362970031930023397828465318547238244232028015189689660418822976000815437610652254270163595650875433851147123214227266605403581781469090806576468950587661997186505665475715792895);

assign xor_ln548_fu_356_p2 = (shl_ln548_fu_350_p2 ^ 8192'd1090748135619415929462984244733782862448264161996232692431832786189721331849119295216264234525201987223957291796157025273109870820177184063610979765077554799078906298842192989538609825228048205159696851613591638196771886542609324560121290553901886301017900252535799917200010079600026535836800905297805880952350501630195475653911005312364560014847426035293551245843928918752768696279344088055617515694349945406677825140814900616105920256438504578013326493565836047242407382442812245131517757519164899226365743722432277368075027627883045206501792761700945699168497257879683851737049996900961120515655050115561271491492515342105748966629547032786321505730828430221664970324396138635251626409516168005427623435996308921691446181187406395310665404885739434832877428167407495370993511868756359970390117021823616749458620969857006263612082706715408157066575137281027022310927564910276759160520878304632411049364568754920967322982459184763427383790272448438018526977764941072715611580434690827459339991961414242741410599117426060556483763756314527611362658628383368621157993638020878537675545336789915694234433955666315070087213535470255670312004130725495834508357439653828936077080978550578912967907352780054935621561090795845172954115972927479877527738560008204118558930004777748727761853813510493840581861598652211605960308356405941821189714037868726219481498727603653616298856174822413033485438785324024751419417183012281078209729303537372804574372095228703622776363945290869806258422355148507571039619387449629866808188769662815778153079393179093143648340761738581819563002994422790754955061288818308430079648693232179158765918035565216157115402992120276155607873107937477466841528362987708699450152031231862594203085693838944657061346236704234026821102958954951197087076546186622796294536451620756509351018906023773821539532776208676978589731966330308893304665169436185078350641568336944530051437491311298834367265238595404904273455928723949525227184617404367854754610474377019768025576605881038077270707717942221977090385438585844095492116099852538903974655703943973086090930596963360767529964938414598185705963754561497355827813623833288906309004288017321424808663962671333528009232758350873059614118723781422101460198615747386855096896089189180441339558524822867541113212638793675567650340362970031930023397828465318547238244232028015189689660418822976000815437610652254270163595650875433851147123214227266605403581781469090806576468950587661997186505665475715792895);

assign zext_ln544_1_fu_428_p1 = t_1_fu_418_p4;

assign zext_ln544_fu_271_p1 = t_fu_261_p4;

assign zext_ln545_1_fu_208_p1 = add_ln545_fu_202_p2;

assign zext_ln545_2_fu_239_p1 = add_ln545_1_fu_234_p2;

assign zext_ln545_fu_197_p1 = ptr_i;

assign zext_ln546_1_fu_378_p1 = lshr_ln_fu_368_p4;

assign zext_ln546_2_fu_280_p1 = add_ln546_1_fu_275_p2;

assign zext_ln546_fu_249_p1 = add_ln546_fu_244_p2;

assign zext_ln547_1_fu_324_p1 = $unsigned(sext_ln547_fu_291_p1);

assign zext_ln547_fu_302_p1 = shl_ln8_fu_295_p3;

assign zext_ln548_1_fu_442_p1 = $unsigned(sext_ln548_fu_438_p1);

assign zext_ln548_fu_346_p1 = or_ln548_fu_340_p2;

always @ (posedge ap_clk) begin
    zext_ln548_reg_521[5:0] <= 6'b100000;
    zext_ln548_reg_521[8191:13] <= 8179'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
end

endmodule //dpu_keygen_dpu_pack_4_Pipeline_VITIS_LOOP_543_12