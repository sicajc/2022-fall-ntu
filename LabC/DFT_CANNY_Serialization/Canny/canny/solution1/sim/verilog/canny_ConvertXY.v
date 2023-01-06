// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module canny_ConvertXY (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        x_sobel_dout,
        x_sobel_num_data_valid,
        x_sobel_fifo_cap,
        x_sobel_empty_n,
        x_sobel_read,
        y_sobel_dout,
        y_sobel_num_data_valid,
        y_sobel_fifo_cap,
        y_sobel_empty_n,
        y_sobel_read,
        y_sobel_7_dout,
        y_sobel_7_num_data_valid,
        y_sobel_7_fifo_cap,
        y_sobel_7_empty_n,
        y_sobel_7_read,
        magnitude_din,
        magnitude_num_data_valid,
        magnitude_fifo_cap,
        magnitude_full_n,
        magnitude_write,
        tangent_y_din,
        tangent_y_num_data_valid,
        tangent_y_fifo_cap,
        tangent_y_full_n,
        tangent_y_write,
        tangent_x_225_din,
        tangent_x_225_num_data_valid,
        tangent_x_225_fifo_cap,
        tangent_x_225_full_n,
        tangent_x_225_write,
        tangent_x_675_din,
        tangent_x_675_num_data_valid,
        tangent_x_675_fifo_cap,
        tangent_x_675_full_n,
        tangent_x_675_write
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [12:0] x_sobel_dout;
input  [14:0] x_sobel_num_data_valid;
input  [14:0] x_sobel_fifo_cap;
input   x_sobel_empty_n;
output   x_sobel_read;
input  [12:0] y_sobel_dout;
input  [14:0] y_sobel_num_data_valid;
input  [14:0] y_sobel_fifo_cap;
input   y_sobel_empty_n;
output   y_sobel_read;
input  [19:0] y_sobel_7_dout;
input  [15:0] y_sobel_7_num_data_valid;
input  [15:0] y_sobel_7_fifo_cap;
input   y_sobel_7_empty_n;
output   y_sobel_7_read;
output  [25:0] magnitude_din;
input  [14:0] magnitude_num_data_valid;
input  [14:0] magnitude_fifo_cap;
input   magnitude_full_n;
output   magnitude_write;
output  [31:0] tangent_y_din;
input  [14:0] tangent_y_num_data_valid;
input  [14:0] tangent_y_fifo_cap;
input   tangent_y_full_n;
output   tangent_y_write;
output  [31:0] tangent_x_225_din;
input  [14:0] tangent_x_225_num_data_valid;
input  [14:0] tangent_x_225_fifo_cap;
input   tangent_x_225_full_n;
output   tangent_x_225_write;
output  [31:0] tangent_x_675_din;
input  [14:0] tangent_x_675_num_data_valid;
input  [14:0] tangent_x_675_fifo_cap;
input   tangent_x_675_full_n;
output   tangent_x_675_write;

reg ap_idle;
reg x_sobel_read;
reg y_sobel_read;
reg y_sobel_7_read;
reg magnitude_write;
reg tangent_y_write;
reg tangent_x_225_write;
reg tangent_x_675_write;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_state6_pp0_stage0_iter5;
wire    ap_block_state7_pp0_stage0_iter6;
wire    ap_block_state8_pp0_stage0_iter7;
wire    ap_block_state9_pp0_stage0_iter8;
wire    ap_block_state10_pp0_stage0_iter9;
reg    ap_block_state11_pp0_stage0_iter10;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln141_fu_112_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    x_sobel_blk_n;
wire    ap_block_pp0_stage0;
reg    y_sobel_blk_n;
reg    y_sobel_7_blk_n;
reg    magnitude_blk_n;
reg    tangent_y_blk_n;
reg    tangent_x_225_blk_n;
reg    tangent_x_675_blk_n;
reg    ap_block_pp0_stage0_11001;
wire   [14:0] add_ln141_fu_118_p2;
reg   [14:0] add_ln141_reg_185;
reg  signed [12:0] pixel_tmp_1_V_reg_190;
reg   [12:0] y_sobel_read_reg_196;
reg   [12:0] y_sobel_read_reg_196_pp0_iter2_reg;
reg   [12:0] y_sobel_read_reg_196_pp0_iter3_reg;
reg  signed [19:0] pixel_tmp_3_V_reg_201;
wire  signed [25:0] sext_ln1494_fu_128_p1;
wire  signed [25:0] sext_ln1494_1_fu_137_p1;
wire  signed [25:0] grp_fu_143_p2;
reg  signed [25:0] ret_V_reg_228;
wire  signed [31:0] grp_fu_149_p2;
reg  signed [31:0] mul_ln147_reg_234;
reg  signed [31:0] mul_ln147_reg_234_pp0_iter6_reg;
reg  signed [31:0] mul_ln147_reg_234_pp0_iter7_reg;
reg  signed [31:0] mul_ln147_reg_234_pp0_iter8_reg;
reg  signed [31:0] mul_ln147_reg_234_pp0_iter9_reg;
wire  signed [31:0] sext_ln1494_2_fu_140_p1;
wire  signed [25:0] grp_fu_155_p3;
reg  signed [25:0] add_ln146_reg_245;
reg  signed [25:0] add_ln146_reg_245_pp0_iter8_reg;
reg  signed [25:0] add_ln146_reg_245_pp0_iter9_reg;
wire  signed [31:0] grp_fu_162_p2;
reg  signed [31:0] mul_ln148_reg_250;
wire  signed [31:0] grp_fu_168_p2;
reg  signed [31:0] mul_ln149_reg_255;
reg   [14:0] xy_fu_54;
reg   [14:0] ap_sig_allocacmp_xy_3;
wire    ap_loop_init;
reg    ap_block_pp0_stage0_01001;
wire  signed [12:0] grp_fu_143_p0;
wire  signed [12:0] grp_fu_143_p1;
wire  signed [12:0] grp_fu_155_p0;
wire  signed [12:0] grp_fu_155_p1;
wire  signed [25:0] grp_fu_162_p0;
wire   [5:0] grp_fu_162_p1;
wire  signed [25:0] grp_fu_168_p0;
wire   [8:0] grp_fu_168_p1;
reg    grp_fu_143_ce;
reg    grp_fu_149_ce;
reg    grp_fu_155_ce;
reg    grp_fu_162_ce;
reg    grp_fu_168_ce;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_done_reg = 1'b0;
end

canny_mul_mul_13s_13s_26_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 13 ),
    .din1_WIDTH( 13 ),
    .dout_WIDTH( 26 ))
mul_mul_13s_13s_26_4_1_U68(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_143_p0),
    .din1(grp_fu_143_p1),
    .ce(grp_fu_143_ce),
    .dout(grp_fu_143_p2)
);

canny_mul_mul_20s_13s_32_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 20 ),
    .din1_WIDTH( 13 ),
    .dout_WIDTH( 32 ))
mul_mul_20s_13s_32_4_1_U69(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(pixel_tmp_3_V_reg_201),
    .din1(pixel_tmp_1_V_reg_190),
    .ce(grp_fu_149_ce),
    .dout(grp_fu_149_p2)
);

canny_mac_muladd_13s_13s_26s_26_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 13 ),
    .din1_WIDTH( 13 ),
    .din2_WIDTH( 26 ),
    .dout_WIDTH( 26 ))
mac_muladd_13s_13s_26s_26_4_1_U70(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_155_p0),
    .din1(grp_fu_155_p1),
    .din2(ret_V_reg_228),
    .ce(grp_fu_155_ce),
    .dout(grp_fu_155_p3)
);

canny_mul_mul_26s_6ns_32_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 26 ),
    .din1_WIDTH( 6 ),
    .dout_WIDTH( 32 ))
mul_mul_26s_6ns_32_4_1_U71(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_162_p0),
    .din1(grp_fu_162_p1),
    .ce(grp_fu_162_ce),
    .dout(grp_fu_162_p2)
);

canny_mul_mul_26s_9ns_32_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 26 ),
    .din1_WIDTH( 9 ),
    .dout_WIDTH( 32 ))
mul_mul_26s_9ns_32_4_1_U72(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_168_p0),
    .din1(grp_fu_168_p1),
    .ce(grp_fu_168_ce),
    .dout(grp_fu_168_p2)
);

canny_flow_control_loop_pipe flow_control_loop_pipe_U(
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
    .ap_done_int(ap_done_int),
    .ap_continue(ap_continue)
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
        end else if (((ap_loop_exit_ready_pp0_iter9_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
            xy_fu_54 <= 15'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            xy_fu_54 <= add_ln141_reg_185;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add_ln141_reg_185 <= add_ln141_fu_118_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        pixel_tmp_1_V_reg_190 <= x_sobel_dout;
        pixel_tmp_3_V_reg_201 <= y_sobel_7_dout;
        y_sobel_read_reg_196 <= y_sobel_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add_ln146_reg_245 <= grp_fu_155_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln146_reg_245_pp0_iter8_reg <= add_ln146_reg_245;
        add_ln146_reg_245_pp0_iter9_reg <= add_ln146_reg_245_pp0_iter8_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        mul_ln147_reg_234 <= grp_fu_149_p2;
        mul_ln147_reg_234_pp0_iter6_reg <= mul_ln147_reg_234;
        mul_ln147_reg_234_pp0_iter7_reg <= mul_ln147_reg_234_pp0_iter6_reg;
        mul_ln147_reg_234_pp0_iter8_reg <= mul_ln147_reg_234_pp0_iter7_reg;
        mul_ln147_reg_234_pp0_iter9_reg <= mul_ln147_reg_234_pp0_iter8_reg;
        mul_ln148_reg_250 <= grp_fu_162_p2;
        mul_ln149_reg_255 <= grp_fu_168_p2;
        ret_V_reg_228 <= grp_fu_143_p2;
        y_sobel_read_reg_196_pp0_iter2_reg <= y_sobel_read_reg_196;
        y_sobel_read_reg_196_pp0_iter3_reg <= y_sobel_read_reg_196_pp0_iter2_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln141_fu_112_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter9_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
            ap_sig_allocacmp_xy_3 = 15'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            ap_sig_allocacmp_xy_3 = add_ln141_reg_185;
        end else begin
            ap_sig_allocacmp_xy_3 = xy_fu_54;
        end
    end else begin
        ap_sig_allocacmp_xy_3 = xy_fu_54;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        grp_fu_143_ce = 1'b1;
    end else begin
        grp_fu_143_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        grp_fu_149_ce = 1'b1;
    end else begin
        grp_fu_149_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        grp_fu_155_ce = 1'b1;
    end else begin
        grp_fu_155_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        grp_fu_162_ce = 1'b1;
    end else begin
        grp_fu_162_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        grp_fu_168_ce = 1'b1;
    end else begin
        grp_fu_168_ce = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter10 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        magnitude_blk_n = magnitude_full_n;
    end else begin
        magnitude_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        magnitude_write = 1'b1;
    end else begin
        magnitude_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter10 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        tangent_x_225_blk_n = tangent_x_225_full_n;
    end else begin
        tangent_x_225_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tangent_x_225_write = 1'b1;
    end else begin
        tangent_x_225_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter10 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        tangent_x_675_blk_n = tangent_x_675_full_n;
    end else begin
        tangent_x_675_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tangent_x_675_write = 1'b1;
    end else begin
        tangent_x_675_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter10 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        tangent_y_blk_n = tangent_y_full_n;
    end else begin
        tangent_y_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tangent_y_write = 1'b1;
    end else begin
        tangent_y_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        x_sobel_blk_n = x_sobel_empty_n;
    end else begin
        x_sobel_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        x_sobel_read = 1'b1;
    end else begin
        x_sobel_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        y_sobel_7_blk_n = y_sobel_7_empty_n;
    end else begin
        y_sobel_7_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        y_sobel_7_read = 1'b1;
    end else begin
        y_sobel_7_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        y_sobel_blk_n = y_sobel_empty_n;
    end else begin
        y_sobel_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        y_sobel_read = 1'b1;
    end else begin
        y_sobel_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln141_fu_118_p2 = (ap_sig_allocacmp_xy_3 + 15'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((y_sobel_7_empty_n == 1'b0) | (y_sobel_empty_n == 1'b0) | (x_sobel_empty_n == 1'b0))) | ((ap_done_reg == 1'b1) & (ap_start_int == 1'b1)) | ((ap_enable_reg_pp0_iter10 == 1'b1) & ((tangent_x_675_full_n == 1'b0) | (tangent_x_225_full_n == 1'b0) | (tangent_y_full_n == 1'b0) | (magnitude_full_n == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((y_sobel_7_empty_n == 1'b0) | (y_sobel_empty_n == 1'b0) | (x_sobel_empty_n == 1'b0))) | ((ap_done_reg == 1'b1) & (ap_start_int == 1'b1)) | ((ap_enable_reg_pp0_iter10 == 1'b1) & ((tangent_x_675_full_n == 1'b0) | (tangent_x_225_full_n == 1'b0) | (tangent_y_full_n == 1'b0) | (magnitude_full_n == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((y_sobel_7_empty_n == 1'b0) | (y_sobel_empty_n == 1'b0) | (x_sobel_empty_n == 1'b0))) | ((ap_done_reg == 1'b1) & (ap_start_int == 1'b1)) | ((ap_enable_reg_pp0_iter10 == 1'b1) & ((tangent_x_675_full_n == 1'b0) | (tangent_x_225_full_n == 1'b0) | (tangent_y_full_n == 1'b0) | (magnitude_full_n == 1'b0))));
end

assign ap_block_state10_pp0_stage0_iter9 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state11_pp0_stage0_iter10 = ((tangent_x_675_full_n == 1'b0) | (tangent_x_225_full_n == 1'b0) | (tangent_y_full_n == 1'b0) | (magnitude_full_n == 1'b0));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_done_reg == 1'b1);
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = ((y_sobel_7_empty_n == 1'b0) | (y_sobel_empty_n == 1'b0) | (x_sobel_empty_n == 1'b0));
end

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter8 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign grp_fu_143_p0 = sext_ln1494_fu_128_p1;

assign grp_fu_143_p1 = sext_ln1494_fu_128_p1;

assign grp_fu_155_p0 = sext_ln1494_1_fu_137_p1;

assign grp_fu_155_p1 = sext_ln1494_1_fu_137_p1;

assign grp_fu_162_p0 = sext_ln1494_2_fu_140_p1;

assign grp_fu_162_p1 = 32'd53;

assign grp_fu_168_p0 = sext_ln1494_2_fu_140_p1;

assign grp_fu_168_p1 = 32'd309;

assign icmp_ln141_fu_112_p2 = ((ap_sig_allocacmp_xy_3 == 15'd16384) ? 1'b1 : 1'b0);

assign magnitude_din = add_ln146_reg_245_pp0_iter9_reg;

assign sext_ln1494_1_fu_137_p1 = $signed(y_sobel_read_reg_196_pp0_iter3_reg);

assign sext_ln1494_2_fu_140_p1 = ret_V_reg_228;

assign sext_ln1494_fu_128_p1 = pixel_tmp_1_V_reg_190;

assign tangent_x_225_din = mul_ln148_reg_250;

assign tangent_x_675_din = mul_ln149_reg_255;

assign tangent_y_din = mul_ln147_reg_234_pp0_iter9_reg;

endmodule //canny_ConvertXY