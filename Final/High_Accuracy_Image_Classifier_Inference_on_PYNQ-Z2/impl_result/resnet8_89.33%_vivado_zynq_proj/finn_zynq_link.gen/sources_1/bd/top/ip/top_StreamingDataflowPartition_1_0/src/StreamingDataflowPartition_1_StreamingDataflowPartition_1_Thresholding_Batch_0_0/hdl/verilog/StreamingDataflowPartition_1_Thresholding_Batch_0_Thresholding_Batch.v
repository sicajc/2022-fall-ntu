// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module StreamingDataflowPartition_1_Thresholding_Batch_0_Thresholding_Batch (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        in0_V_TVALID,
        out_V_TREADY,
        in0_V_TDATA,
        in0_V_TREADY,
        out_V_TDATA,
        out_V_TVALID
);

parameter    ap_ST_iter0_fsm_state1 = 1'd1;
parameter    ap_ST_iter1_fsm_state2 = 2'd2;
parameter    ap_ST_iter2_fsm_state3 = 2'd2;
parameter    ap_ST_iter3_fsm_state4 = 2'd2;
parameter    ap_ST_iter1_fsm_state0 = 2'd1;
parameter    ap_ST_iter2_fsm_state0 = 2'd1;
parameter    ap_ST_iter3_fsm_state0 = 2'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   in0_V_TVALID;
input   out_V_TREADY;
input  [7:0] in0_V_TDATA;
output   in0_V_TREADY;
output  [7:0] out_V_TDATA;
output   out_V_TVALID;

reg ap_idle;
reg in0_V_TREADY;
reg out_V_TVALID;

reg   [0:0] ap_CS_iter0_fsm;
wire    ap_CS_iter0_fsm_state1;
reg   [1:0] ap_CS_iter1_fsm;
wire    ap_CS_iter1_fsm_state0;
reg   [1:0] ap_CS_iter2_fsm;
wire    ap_CS_iter2_fsm_state0;
reg   [1:0] ap_CS_iter3_fsm;
wire    ap_CS_iter3_fsm_state0;
wire   [0:0] icmp_ln295_fu_349_p2;
reg    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_CS_iter1_fsm_state2;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_CS_iter2_fsm_state3;
reg   [0:0] icmp_ln295_reg_844;
reg   [0:0] icmp_ln295_reg_844_pp0_iter2_reg;
reg    ap_block_state4_pp0_stage0_iter3;
reg    ap_block_state4_io;
wire    ap_CS_iter3_fsm_state4;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [1:0] p_ZL7threshs_16_address0;
reg    p_ZL7threshs_16_ce0;
wire   [0:0] p_ZL7threshs_16_q0;
wire   [1:0] p_ZL7threshs_17_address0;
reg    p_ZL7threshs_17_ce0;
wire   [0:0] p_ZL7threshs_17_q0;
wire   [1:0] p_ZL7threshs_18_address0;
reg    p_ZL7threshs_18_ce0;
wire   [0:0] p_ZL7threshs_18_q0;
wire   [1:0] p_ZL7threshs_19_address0;
reg    p_ZL7threshs_19_ce0;
wire   [0:0] p_ZL7threshs_19_q0;
wire   [1:0] p_ZL7threshs_20_address0;
reg    p_ZL7threshs_20_ce0;
wire   [0:0] p_ZL7threshs_20_q0;
wire   [1:0] p_ZL7threshs_21_address0;
reg    p_ZL7threshs_21_ce0;
wire   [0:0] p_ZL7threshs_21_q0;
wire   [1:0] p_ZL7threshs_22_address0;
reg    p_ZL7threshs_22_ce0;
wire   [1:0] p_ZL7threshs_22_q0;
wire   [1:0] p_ZL7threshs_23_address0;
reg    p_ZL7threshs_23_ce0;
wire   [1:0] p_ZL7threshs_23_q0;
wire   [1:0] p_ZL7threshs_24_address0;
reg    p_ZL7threshs_24_ce0;
wire   [1:0] p_ZL7threshs_24_q0;
wire   [1:0] p_ZL7threshs_25_address0;
reg    p_ZL7threshs_25_ce0;
wire   [1:0] p_ZL7threshs_25_q0;
wire   [1:0] p_ZL7threshs_26_address0;
reg    p_ZL7threshs_26_ce0;
wire   [1:0] p_ZL7threshs_26_q0;
wire   [1:0] p_ZL7threshs_27_address0;
reg    p_ZL7threshs_27_ce0;
wire   [1:0] p_ZL7threshs_27_q0;
wire   [1:0] p_ZL7threshs_28_address0;
reg    p_ZL7threshs_28_ce0;
wire   [1:0] p_ZL7threshs_28_q0;
wire   [1:0] p_ZL7threshs_29_address0;
reg    p_ZL7threshs_29_ce0;
wire   [0:0] p_ZL7threshs_29_q0;
wire   [1:0] p_ZL7threshs_30_address0;
reg    p_ZL7threshs_30_ce0;
wire   [0:0] p_ZL7threshs_30_q0;
reg    in0_V_TDATA_blk_n;
reg    out_V_TDATA_blk_n;
wire   [0:0] icmp_ln295_reg_844_pp0_iter0_reg;
reg   [0:0] icmp_ln295_reg_844_pp0_iter1_reg;
reg   [7:0] tmp_reg_848;
reg   [7:0] tmp_reg_848_pp0_iter1_reg;
wire   [1:0] add_ln886_1_fu_712_p2;
reg   [1:0] add_ln886_1_reg_942;
wire   [1:0] add_ln886_2_fu_718_p2;
reg   [1:0] add_ln886_2_reg_947;
wire   [1:0] add_ln886_3_fu_724_p2;
reg   [1:0] add_ln886_3_reg_952;
wire   [2:0] add_ln886_8_fu_750_p2;
reg   [2:0] add_ln886_8_reg_957;
wire   [2:0] add_ln886_11_fu_776_p2;
reg   [2:0] add_ln886_11_reg_962;
wire   [63:0] idxprom2_i_fu_369_p1;
reg   [31:0] nf_1_fu_120;
wire   [31:0] nf_2_fu_400_p3;
wire    ap_loop_init;
reg   [21:0] i_fu_124;
wire   [21:0] i_2_fu_355_p2;
reg   [21:0] ap_sig_allocacmp_i_1;
wire   [31:0] nf_fu_388_p2;
wire   [0:0] icmp_ln307_fu_394_p2;
wire   [7:0] zext_ln1085_fu_413_p1;
wire   [0:0] icmp_ln1085_fu_417_p2;
wire   [0:0] result_V_1_fu_422_p2;
wire   [7:0] zext_ln1085_1_fu_432_p1;
wire   [0:0] icmp_ln1085_1_fu_436_p2;
wire   [0:0] xor_ln1085_fu_441_p2;
wire   [7:0] zext_ln1085_2_fu_451_p1;
wire   [0:0] icmp_ln1085_2_fu_455_p2;
wire   [0:0] xor_ln1085_1_fu_460_p2;
wire   [7:0] zext_ln1085_3_fu_470_p1;
wire   [0:0] icmp_ln1085_3_fu_474_p2;
wire   [0:0] xor_ln1085_2_fu_479_p2;
wire   [7:0] zext_ln1085_4_fu_489_p1;
wire   [0:0] icmp_ln1085_4_fu_493_p2;
wire   [0:0] xor_ln1085_3_fu_498_p2;
wire   [7:0] zext_ln1085_5_fu_508_p1;
wire   [0:0] icmp_ln1085_5_fu_512_p2;
wire   [0:0] xor_ln1085_4_fu_517_p2;
wire   [7:0] zext_ln1085_6_fu_527_p1;
wire   [0:0] icmp_ln1085_6_fu_531_p2;
wire   [0:0] xor_ln1085_5_fu_536_p2;
wire   [7:0] zext_ln1085_7_fu_546_p1;
wire   [0:0] icmp_ln1085_7_fu_550_p2;
wire   [0:0] xor_ln1085_6_fu_555_p2;
wire   [7:0] zext_ln1085_8_fu_565_p1;
wire   [0:0] icmp_ln1085_8_fu_569_p2;
wire   [0:0] xor_ln1085_7_fu_574_p2;
wire   [7:0] zext_ln1085_9_fu_584_p1;
wire   [0:0] icmp_ln1085_9_fu_588_p2;
wire   [0:0] xor_ln1085_8_fu_593_p2;
wire   [7:0] zext_ln1085_10_fu_603_p1;
wire   [0:0] icmp_ln1085_10_fu_607_p2;
wire   [0:0] xor_ln1085_9_fu_612_p2;
wire   [7:0] zext_ln1085_11_fu_622_p1;
wire   [0:0] icmp_ln1085_11_fu_626_p2;
wire   [0:0] xor_ln1085_10_fu_631_p2;
wire   [7:0] zext_ln1085_12_fu_641_p1;
wire   [0:0] icmp_ln1085_12_fu_645_p2;
wire   [0:0] xor_ln1085_11_fu_650_p2;
wire   [7:0] select_ln1085_fu_660_p3;
wire   [0:0] icmp_ln1085_13_fu_668_p2;
wire   [0:0] xor_ln1085_12_fu_673_p2;
wire   [7:0] select_ln1085_1_fu_683_p3;
wire   [0:0] icmp_ln1085_14_fu_691_p2;
wire   [0:0] xor_ln1085_13_fu_696_p2;
wire   [1:0] zext_ln218_fu_447_p1;
wire   [1:0] zext_ln218_1_fu_466_p1;
wire   [1:0] add_ln886_fu_706_p2;
wire   [1:0] zext_ln215_fu_428_p1;
wire   [1:0] zext_ln218_2_fu_485_p1;
wire   [1:0] zext_ln218_3_fu_504_p1;
wire   [1:0] zext_ln218_4_fu_523_p1;
wire   [1:0] zext_ln218_5_fu_542_p1;
wire   [1:0] zext_ln218_6_fu_561_p1;
wire   [1:0] zext_ln218_7_fu_580_p1;
wire   [1:0] add_ln886_6_fu_730_p2;
wire   [1:0] zext_ln218_8_fu_599_p1;
wire   [1:0] zext_ln218_9_fu_618_p1;
wire   [1:0] add_ln886_7_fu_740_p2;
wire   [2:0] zext_ln886_6_fu_746_p1;
wire   [2:0] zext_ln886_5_fu_736_p1;
wire   [1:0] zext_ln218_10_fu_637_p1;
wire   [1:0] zext_ln218_11_fu_656_p1;
wire   [1:0] add_ln886_9_fu_756_p2;
wire   [1:0] zext_ln218_12_fu_679_p1;
wire   [1:0] zext_ln886_fu_702_p1;
wire   [1:0] add_ln886_10_fu_766_p2;
wire   [2:0] zext_ln886_9_fu_772_p1;
wire   [2:0] zext_ln886_8_fu_762_p1;
wire   [2:0] zext_ln886_3_fu_788_p1;
wire   [2:0] zext_ln886_2_fu_785_p1;
wire   [2:0] add_ln886_4_fu_791_p2;
wire   [2:0] zext_ln886_1_fu_782_p1;
wire   [2:0] add_ln886_5_fu_797_p2;
wire   [3:0] zext_ln886_10_fu_810_p1;
wire   [3:0] zext_ln886_7_fu_807_p1;
wire   [3:0] add_ln886_12_fu_813_p2;
wire   [3:0] zext_ln886_4_fu_803_p1;
wire   [3:0] result_V_fu_819_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [0:0] ap_NS_iter0_fsm;
reg   [1:0] ap_NS_iter1_fsm;
reg   [1:0] ap_NS_iter2_fsm;
reg   [1:0] ap_NS_iter3_fsm;
reg    ap_ST_iter0_fsm_state1_blk;
wire    ap_ST_iter1_fsm_state2_blk;
wire    ap_ST_iter2_fsm_state3_blk;
reg    ap_ST_iter3_fsm_state4_blk;
wire    ap_start_int;
reg    ap_condition_708;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_iter0_fsm = 1'd1;
#0 ap_CS_iter1_fsm = 2'd1;
#0 ap_CS_iter2_fsm = 2'd1;
#0 ap_CS_iter3_fsm = 2'd1;
#0 ap_done_reg = 1'b0;
end

StreamingDataflowPartition_1_Thresholding_Batch_0_Thresholding_Batch_p_ZL7threshs_16_ROM_2P_LUTRAM_1R #(
    .DataWidth( 1 ),
    .AddressRange( 3 ),
    .AddressWidth( 2 ))
p_ZL7threshs_16_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(p_ZL7threshs_16_address0),
    .ce0(p_ZL7threshs_16_ce0),
    .q0(p_ZL7threshs_16_q0)
);

StreamingDataflowPartition_1_Thresholding_Batch_0_Thresholding_Batch_p_ZL7threshs_16_ROM_2P_LUTRAM_1R #(
    .DataWidth( 1 ),
    .AddressRange( 3 ),
    .AddressWidth( 2 ))
p_ZL7threshs_17_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(p_ZL7threshs_17_address0),
    .ce0(p_ZL7threshs_17_ce0),
    .q0(p_ZL7threshs_17_q0)
);

StreamingDataflowPartition_1_Thresholding_Batch_0_Thresholding_Batch_p_ZL7threshs_16_ROM_2P_LUTRAM_1R #(
    .DataWidth( 1 ),
    .AddressRange( 3 ),
    .AddressWidth( 2 ))
p_ZL7threshs_18_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(p_ZL7threshs_18_address0),
    .ce0(p_ZL7threshs_18_ce0),
    .q0(p_ZL7threshs_18_q0)
);

StreamingDataflowPartition_1_Thresholding_Batch_0_Thresholding_Batch_p_ZL7threshs_16_ROM_2P_LUTRAM_1R #(
    .DataWidth( 1 ),
    .AddressRange( 3 ),
    .AddressWidth( 2 ))
p_ZL7threshs_19_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(p_ZL7threshs_19_address0),
    .ce0(p_ZL7threshs_19_ce0),
    .q0(p_ZL7threshs_19_q0)
);

StreamingDataflowPartition_1_Thresholding_Batch_0_Thresholding_Batch_p_ZL7threshs_16_ROM_2P_LUTRAM_1R #(
    .DataWidth( 1 ),
    .AddressRange( 3 ),
    .AddressWidth( 2 ))
p_ZL7threshs_20_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(p_ZL7threshs_20_address0),
    .ce0(p_ZL7threshs_20_ce0),
    .q0(p_ZL7threshs_20_q0)
);

StreamingDataflowPartition_1_Thresholding_Batch_0_Thresholding_Batch_p_ZL7threshs_16_ROM_2P_LUTRAM_1R #(
    .DataWidth( 1 ),
    .AddressRange( 3 ),
    .AddressWidth( 2 ))
p_ZL7threshs_21_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(p_ZL7threshs_21_address0),
    .ce0(p_ZL7threshs_21_ce0),
    .q0(p_ZL7threshs_21_q0)
);

StreamingDataflowPartition_1_Thresholding_Batch_0_Thresholding_Batch_p_ZL7threshs_22_ROM_2P_LUTRAM_1R #(
    .DataWidth( 2 ),
    .AddressRange( 3 ),
    .AddressWidth( 2 ))
p_ZL7threshs_22_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(p_ZL7threshs_22_address0),
    .ce0(p_ZL7threshs_22_ce0),
    .q0(p_ZL7threshs_22_q0)
);

StreamingDataflowPartition_1_Thresholding_Batch_0_Thresholding_Batch_p_ZL7threshs_22_ROM_2P_LUTRAM_1R #(
    .DataWidth( 2 ),
    .AddressRange( 3 ),
    .AddressWidth( 2 ))
p_ZL7threshs_23_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(p_ZL7threshs_23_address0),
    .ce0(p_ZL7threshs_23_ce0),
    .q0(p_ZL7threshs_23_q0)
);

StreamingDataflowPartition_1_Thresholding_Batch_0_Thresholding_Batch_p_ZL7threshs_22_ROM_2P_LUTRAM_1R #(
    .DataWidth( 2 ),
    .AddressRange( 3 ),
    .AddressWidth( 2 ))
p_ZL7threshs_24_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(p_ZL7threshs_24_address0),
    .ce0(p_ZL7threshs_24_ce0),
    .q0(p_ZL7threshs_24_q0)
);

StreamingDataflowPartition_1_Thresholding_Batch_0_Thresholding_Batch_p_ZL7threshs_22_ROM_2P_LUTRAM_1R #(
    .DataWidth( 2 ),
    .AddressRange( 3 ),
    .AddressWidth( 2 ))
p_ZL7threshs_25_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(p_ZL7threshs_25_address0),
    .ce0(p_ZL7threshs_25_ce0),
    .q0(p_ZL7threshs_25_q0)
);

StreamingDataflowPartition_1_Thresholding_Batch_0_Thresholding_Batch_p_ZL7threshs_22_ROM_2P_LUTRAM_1R #(
    .DataWidth( 2 ),
    .AddressRange( 3 ),
    .AddressWidth( 2 ))
p_ZL7threshs_26_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(p_ZL7threshs_26_address0),
    .ce0(p_ZL7threshs_26_ce0),
    .q0(p_ZL7threshs_26_q0)
);

StreamingDataflowPartition_1_Thresholding_Batch_0_Thresholding_Batch_p_ZL7threshs_22_ROM_2P_LUTRAM_1R #(
    .DataWidth( 2 ),
    .AddressRange( 3 ),
    .AddressWidth( 2 ))
p_ZL7threshs_27_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(p_ZL7threshs_27_address0),
    .ce0(p_ZL7threshs_27_ce0),
    .q0(p_ZL7threshs_27_q0)
);

StreamingDataflowPartition_1_Thresholding_Batch_0_Thresholding_Batch_p_ZL7threshs_22_ROM_2P_LUTRAM_1R #(
    .DataWidth( 2 ),
    .AddressRange( 3 ),
    .AddressWidth( 2 ))
p_ZL7threshs_28_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(p_ZL7threshs_28_address0),
    .ce0(p_ZL7threshs_28_ce0),
    .q0(p_ZL7threshs_28_q0)
);

StreamingDataflowPartition_1_Thresholding_Batch_0_Thresholding_Batch_p_ZL7threshs_16_ROM_2P_LUTRAM_1R #(
    .DataWidth( 1 ),
    .AddressRange( 3 ),
    .AddressWidth( 2 ))
p_ZL7threshs_29_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(p_ZL7threshs_29_address0),
    .ce0(p_ZL7threshs_29_ce0),
    .q0(p_ZL7threshs_29_q0)
);

StreamingDataflowPartition_1_Thresholding_Batch_0_Thresholding_Batch_p_ZL7threshs_16_ROM_2P_LUTRAM_1R #(
    .DataWidth( 1 ),
    .AddressRange( 3 ),
    .AddressWidth( 2 ))
p_ZL7threshs_30_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(p_ZL7threshs_30_address0),
    .ce0(p_ZL7threshs_30_ce0),
    .q0(p_ZL7threshs_30_q0)
);

StreamingDataflowPartition_1_Thresholding_Batch_0_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
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
        ap_CS_iter0_fsm <= ap_ST_iter0_fsm_state1;
    end else begin
        ap_CS_iter0_fsm <= ap_NS_iter0_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_iter1_fsm <= ap_ST_iter1_fsm_state0;
    end else begin
        ap_CS_iter1_fsm <= ap_NS_iter1_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_iter2_fsm <= ap_ST_iter2_fsm_state0;
    end else begin
        ap_CS_iter2_fsm <= ap_NS_iter2_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_iter3_fsm <= ap_ST_iter3_fsm_state0;
    end else begin
        ap_CS_iter3_fsm <= ap_NS_iter3_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((~((1'b1 == ap_block_state4_io) | ((icmp_ln295_reg_844_pp0_iter2_reg == 1'd0) & (out_V_TREADY == 1'b0))) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_iter3_fsm_state4))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((1'b1 == ap_block_state4_io) | ((icmp_ln295_reg_844_pp0_iter2_reg == 1'd0) & (out_V_TREADY == 1'b0))) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b0) & (1'b1 == ap_CS_iter3_fsm_state4))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if ((~((1'b1 == ap_CS_iter3_fsm_state4) & ((1'b1 == ap_block_state4_io) | ((icmp_ln295_reg_844_pp0_iter2_reg == 1'd0) & (out_V_TREADY == 1'b0)))) & (1'b1 == ap_CS_iter2_fsm_state3))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_708)) begin
        if ((icmp_ln295_fu_349_p2 == 1'd0)) begin
            i_fu_124 <= i_2_fu_355_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_124 <= 22'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start_int == 1'b0) | ((1'b1 == ap_CS_iter3_fsm_state4) & ((1'b1 == ap_block_state4_io) | ((icmp_ln295_reg_844_pp0_iter2_reg == 1'd0) & (out_V_TREADY == 1'b0)))) | ((icmp_ln295_fu_349_p2 == 1'd0) & (in0_V_TVALID == 1'b0))) & (1'b1 == ap_CS_iter0_fsm_state1) & (ap_loop_init == 1'b1))) begin
        nf_1_fu_120 <= 32'd0;
    end else if ((~((1'b1 == ap_CS_iter3_fsm_state4) & ((1'b1 == ap_block_state4_io) | ((icmp_ln295_reg_844_pp0_iter2_reg == 1'd0) & (out_V_TREADY == 1'b0)))) & (1'b1 == ap_CS_iter1_fsm_state2) & (icmp_ln295_reg_844_pp0_iter0_reg == 1'd0))) begin
        nf_1_fu_120 <= nf_2_fu_400_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((~((1'b1 == ap_CS_iter3_fsm_state4) & ((1'b1 == ap_block_state4_io) | ((icmp_ln295_reg_844_pp0_iter2_reg == 1'd0) & (out_V_TREADY == 1'b0)))) & (1'b1 == ap_CS_iter2_fsm_state3) & (icmp_ln295_reg_844_pp0_iter1_reg == 1'd0))) begin
        add_ln886_11_reg_962 <= add_ln886_11_fu_776_p2;
        add_ln886_1_reg_942 <= add_ln886_1_fu_712_p2;
        add_ln886_2_reg_947 <= add_ln886_2_fu_718_p2;
        add_ln886_3_reg_952 <= add_ln886_3_fu_724_p2;
        add_ln886_8_reg_957 <= add_ln886_8_fu_750_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start_int == 1'b0) | ((1'b1 == ap_CS_iter3_fsm_state4) & ((1'b1 == ap_block_state4_io) | ((icmp_ln295_reg_844_pp0_iter2_reg == 1'd0) & (out_V_TREADY == 1'b0)))) | ((icmp_ln295_fu_349_p2 == 1'd0) & (in0_V_TVALID == 1'b0))) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln295_reg_844 <= icmp_ln295_fu_349_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((1'b1 == ap_CS_iter3_fsm_state4) & ((1'b1 == ap_block_state4_io) | ((icmp_ln295_reg_844_pp0_iter2_reg == 1'd0) & (out_V_TREADY == 1'b0)))) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln295_reg_844_pp0_iter1_reg <= icmp_ln295_reg_844;
        tmp_reg_848_pp0_iter1_reg <= tmp_reg_848;
    end
end

always @ (posedge ap_clk) begin
    if ((~((1'b1 == ap_CS_iter3_fsm_state4) & ((1'b1 == ap_block_state4_io) | ((icmp_ln295_reg_844_pp0_iter2_reg == 1'd0) & (out_V_TREADY == 1'b0)))) & (1'b1 == ap_CS_iter2_fsm_state3))) begin
        icmp_ln295_reg_844_pp0_iter2_reg <= icmp_ln295_reg_844_pp0_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start_int == 1'b0) | ((1'b1 == ap_CS_iter3_fsm_state4) & ((1'b1 == ap_block_state4_io) | ((icmp_ln295_reg_844_pp0_iter2_reg == 1'd0) & (out_V_TREADY == 1'b0)))) | ((icmp_ln295_fu_349_p2 == 1'd0) & (in0_V_TVALID == 1'b0))) & (icmp_ln295_fu_349_p2 == 1'd0) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
        tmp_reg_848 <= in0_V_TDATA;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) | ((icmp_ln295_fu_349_p2 == 1'd0) & (in0_V_TVALID == 1'b0)))) begin
        ap_ST_iter0_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_iter0_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_iter1_fsm_state2_blk = 1'b0;

assign ap_ST_iter2_fsm_state3_blk = 1'b0;

always @ (*) begin
    if (((1'b1 == ap_block_state4_io) | ((icmp_ln295_reg_844_pp0_iter2_reg == 1'd0) & (out_V_TREADY == 1'b0)))) begin
        ap_ST_iter3_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_iter3_fsm_state4_blk = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start_int == 1'b0) | ((1'b1 == ap_CS_iter3_fsm_state4) & ((1'b1 == ap_block_state4_io) | ((icmp_ln295_reg_844_pp0_iter2_reg == 1'd0) & (out_V_TREADY == 1'b0)))) | ((icmp_ln295_fu_349_p2 == 1'd0) & (in0_V_TVALID == 1'b0))) & (icmp_ln295_fu_349_p2 == 1'd1) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((1'b1 == ap_block_state4_io) | ((icmp_ln295_reg_844_pp0_iter2_reg == 1'd0) & (out_V_TREADY == 1'b0))) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_iter3_fsm_state4))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (1'b1 == ap_CS_iter3_fsm_state0) & (1'b1 == ap_CS_iter2_fsm_state0) & (1'b1 == ap_CS_iter1_fsm_state0) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start_int == 1'b0) | ((1'b1 == ap_CS_iter3_fsm_state4) & ((1'b1 == ap_block_state4_io) | ((icmp_ln295_reg_844_pp0_iter2_reg == 1'd0) & (out_V_TREADY == 1'b0)))) | ((icmp_ln295_fu_349_p2 == 1'd0) & (in0_V_TVALID == 1'b0))) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_iter0_fsm_state1) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_1 = 22'd0;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_124;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln295_fu_349_p2 == 1'd0) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
        in0_V_TDATA_blk_n = in0_V_TVALID;
    end else begin
        in0_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start_int == 1'b0) | ((1'b1 == ap_CS_iter3_fsm_state4) & ((1'b1 == ap_block_state4_io) | ((icmp_ln295_reg_844_pp0_iter2_reg == 1'd0) & (out_V_TREADY == 1'b0)))) | ((icmp_ln295_fu_349_p2 == 1'd0) & (in0_V_TVALID == 1'b0))) & (icmp_ln295_fu_349_p2 == 1'd0) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
        in0_V_TREADY = 1'b1;
    end else begin
        in0_V_TREADY = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln295_reg_844_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_iter3_fsm_state4))) begin
        out_V_TDATA_blk_n = out_V_TREADY;
    end else begin
        out_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((1'b1 == ap_block_state4_io) | ((icmp_ln295_reg_844_pp0_iter2_reg == 1'd0) & (out_V_TREADY == 1'b0))) & (icmp_ln295_reg_844_pp0_iter2_reg == 1'd0) & (1'b1 == ap_CS_iter3_fsm_state4))) begin
        out_V_TVALID = 1'b1;
    end else begin
        out_V_TVALID = 1'b0;
    end
end

always @ (*) begin
    if ((~((1'b1 == ap_CS_iter3_fsm_state4) & ((1'b1 == ap_block_state4_io) | ((icmp_ln295_reg_844_pp0_iter2_reg == 1'd0) & (out_V_TREADY == 1'b0)))) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
        p_ZL7threshs_16_ce0 = 1'b1;
    end else begin
        p_ZL7threshs_16_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((1'b1 == ap_CS_iter3_fsm_state4) & ((1'b1 == ap_block_state4_io) | ((icmp_ln295_reg_844_pp0_iter2_reg == 1'd0) & (out_V_TREADY == 1'b0)))) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
        p_ZL7threshs_17_ce0 = 1'b1;
    end else begin
        p_ZL7threshs_17_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((1'b1 == ap_CS_iter3_fsm_state4) & ((1'b1 == ap_block_state4_io) | ((icmp_ln295_reg_844_pp0_iter2_reg == 1'd0) & (out_V_TREADY == 1'b0)))) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
        p_ZL7threshs_18_ce0 = 1'b1;
    end else begin
        p_ZL7threshs_18_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((1'b1 == ap_CS_iter3_fsm_state4) & ((1'b1 == ap_block_state4_io) | ((icmp_ln295_reg_844_pp0_iter2_reg == 1'd0) & (out_V_TREADY == 1'b0)))) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
        p_ZL7threshs_19_ce0 = 1'b1;
    end else begin
        p_ZL7threshs_19_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((1'b1 == ap_CS_iter3_fsm_state4) & ((1'b1 == ap_block_state4_io) | ((icmp_ln295_reg_844_pp0_iter2_reg == 1'd0) & (out_V_TREADY == 1'b0)))) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
        p_ZL7threshs_20_ce0 = 1'b1;
    end else begin
        p_ZL7threshs_20_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((1'b1 == ap_CS_iter3_fsm_state4) & ((1'b1 == ap_block_state4_io) | ((icmp_ln295_reg_844_pp0_iter2_reg == 1'd0) & (out_V_TREADY == 1'b0)))) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
        p_ZL7threshs_21_ce0 = 1'b1;
    end else begin
        p_ZL7threshs_21_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((1'b1 == ap_CS_iter3_fsm_state4) & ((1'b1 == ap_block_state4_io) | ((icmp_ln295_reg_844_pp0_iter2_reg == 1'd0) & (out_V_TREADY == 1'b0)))) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
        p_ZL7threshs_22_ce0 = 1'b1;
    end else begin
        p_ZL7threshs_22_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((1'b1 == ap_CS_iter3_fsm_state4) & ((1'b1 == ap_block_state4_io) | ((icmp_ln295_reg_844_pp0_iter2_reg == 1'd0) & (out_V_TREADY == 1'b0)))) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
        p_ZL7threshs_23_ce0 = 1'b1;
    end else begin
        p_ZL7threshs_23_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((1'b1 == ap_CS_iter3_fsm_state4) & ((1'b1 == ap_block_state4_io) | ((icmp_ln295_reg_844_pp0_iter2_reg == 1'd0) & (out_V_TREADY == 1'b0)))) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
        p_ZL7threshs_24_ce0 = 1'b1;
    end else begin
        p_ZL7threshs_24_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((1'b1 == ap_CS_iter3_fsm_state4) & ((1'b1 == ap_block_state4_io) | ((icmp_ln295_reg_844_pp0_iter2_reg == 1'd0) & (out_V_TREADY == 1'b0)))) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
        p_ZL7threshs_25_ce0 = 1'b1;
    end else begin
        p_ZL7threshs_25_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((1'b1 == ap_CS_iter3_fsm_state4) & ((1'b1 == ap_block_state4_io) | ((icmp_ln295_reg_844_pp0_iter2_reg == 1'd0) & (out_V_TREADY == 1'b0)))) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
        p_ZL7threshs_26_ce0 = 1'b1;
    end else begin
        p_ZL7threshs_26_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((1'b1 == ap_CS_iter3_fsm_state4) & ((1'b1 == ap_block_state4_io) | ((icmp_ln295_reg_844_pp0_iter2_reg == 1'd0) & (out_V_TREADY == 1'b0)))) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
        p_ZL7threshs_27_ce0 = 1'b1;
    end else begin
        p_ZL7threshs_27_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((1'b1 == ap_CS_iter3_fsm_state4) & ((1'b1 == ap_block_state4_io) | ((icmp_ln295_reg_844_pp0_iter2_reg == 1'd0) & (out_V_TREADY == 1'b0)))) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
        p_ZL7threshs_28_ce0 = 1'b1;
    end else begin
        p_ZL7threshs_28_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((1'b1 == ap_CS_iter3_fsm_state4) & ((1'b1 == ap_block_state4_io) | ((icmp_ln295_reg_844_pp0_iter2_reg == 1'd0) & (out_V_TREADY == 1'b0)))) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
        p_ZL7threshs_29_ce0 = 1'b1;
    end else begin
        p_ZL7threshs_29_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((1'b1 == ap_CS_iter3_fsm_state4) & ((1'b1 == ap_block_state4_io) | ((icmp_ln295_reg_844_pp0_iter2_reg == 1'd0) & (out_V_TREADY == 1'b0)))) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
        p_ZL7threshs_30_ce0 = 1'b1;
    end else begin
        p_ZL7threshs_30_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_iter0_fsm)
        ap_ST_iter0_fsm_state1 : begin
            ap_NS_iter0_fsm = ap_ST_iter0_fsm_state1;
        end
        default : begin
            ap_NS_iter0_fsm = 'bx;
        end
    endcase
end

always @ (*) begin
    case (ap_CS_iter1_fsm)
        ap_ST_iter1_fsm_state2 : begin
            if ((~((1'b1 == ap_CS_iter3_fsm_state4) & ((1'b1 == ap_block_state4_io) | ((icmp_ln295_reg_844_pp0_iter2_reg == 1'd0) & (out_V_TREADY == 1'b0)))) & ~((ap_start_int == 1'b0) | ((icmp_ln295_fu_349_p2 == 1'd0) & (in0_V_TVALID == 1'b0))) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
                ap_NS_iter1_fsm = ap_ST_iter1_fsm_state2;
            end else if ((~((1'b1 == ap_CS_iter3_fsm_state4) & ((1'b1 == ap_block_state4_io) | ((icmp_ln295_reg_844_pp0_iter2_reg == 1'd0) & (out_V_TREADY == 1'b0)))) & ((1'b0 == ap_CS_iter0_fsm_state1) | ((1'b1 == ap_CS_iter0_fsm_state1) & ((ap_start_int == 1'b0) | ((icmp_ln295_fu_349_p2 == 1'd0) & (in0_V_TVALID == 1'b0))))))) begin
                ap_NS_iter1_fsm = ap_ST_iter1_fsm_state0;
            end else begin
                ap_NS_iter1_fsm = ap_ST_iter1_fsm_state2;
            end
        end
        ap_ST_iter1_fsm_state0 : begin
            if ((~((ap_start_int == 1'b0) | ((1'b1 == ap_CS_iter3_fsm_state4) & ((1'b1 == ap_block_state4_io) | ((icmp_ln295_reg_844_pp0_iter2_reg == 1'd0) & (out_V_TREADY == 1'b0)))) | ((icmp_ln295_fu_349_p2 == 1'd0) & (in0_V_TVALID == 1'b0))) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
                ap_NS_iter1_fsm = ap_ST_iter1_fsm_state2;
            end else begin
                ap_NS_iter1_fsm = ap_ST_iter1_fsm_state0;
            end
        end
        default : begin
            ap_NS_iter1_fsm = 'bx;
        end
    endcase
end

always @ (*) begin
    case (ap_CS_iter2_fsm)
        ap_ST_iter2_fsm_state3 : begin
            if ((~((1'b1 == ap_CS_iter3_fsm_state4) & ((1'b1 == ap_block_state4_io) | ((icmp_ln295_reg_844_pp0_iter2_reg == 1'd0) & (out_V_TREADY == 1'b0)))) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
                ap_NS_iter2_fsm = ap_ST_iter2_fsm_state3;
            end else if ((~((1'b1 == ap_CS_iter3_fsm_state4) & ((1'b1 == ap_block_state4_io) | ((icmp_ln295_reg_844_pp0_iter2_reg == 1'd0) & (out_V_TREADY == 1'b0)))) & (1'b0 == ap_CS_iter1_fsm_state2))) begin
                ap_NS_iter2_fsm = ap_ST_iter2_fsm_state0;
            end else begin
                ap_NS_iter2_fsm = ap_ST_iter2_fsm_state3;
            end
        end
        ap_ST_iter2_fsm_state0 : begin
            if ((~((1'b1 == ap_CS_iter3_fsm_state4) & ((1'b1 == ap_block_state4_io) | ((icmp_ln295_reg_844_pp0_iter2_reg == 1'd0) & (out_V_TREADY == 1'b0)))) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
                ap_NS_iter2_fsm = ap_ST_iter2_fsm_state3;
            end else begin
                ap_NS_iter2_fsm = ap_ST_iter2_fsm_state0;
            end
        end
        default : begin
            ap_NS_iter2_fsm = 'bx;
        end
    endcase
end

always @ (*) begin
    case (ap_CS_iter3_fsm)
        ap_ST_iter3_fsm_state4 : begin
            if ((~((1'b1 == ap_block_state4_io) | ((icmp_ln295_reg_844_pp0_iter2_reg == 1'd0) & (out_V_TREADY == 1'b0))) & (1'b0 == ap_CS_iter2_fsm_state3))) begin
                ap_NS_iter3_fsm = ap_ST_iter3_fsm_state0;
            end else if (((~((1'b1 == ap_block_state4_io) | ((icmp_ln295_reg_844_pp0_iter2_reg == 1'd0) & (out_V_TREADY == 1'b0))) & (icmp_ln295_reg_844_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_iter3_fsm_state4)) | (~((1'b1 == ap_block_state4_io) | ((icmp_ln295_reg_844_pp0_iter2_reg == 1'd0) & (out_V_TREADY == 1'b0))) & (1'b1 == ap_CS_iter2_fsm_state3)))) begin
                ap_NS_iter3_fsm = ap_ST_iter3_fsm_state4;
            end else begin
                ap_NS_iter3_fsm = ap_ST_iter3_fsm_state4;
            end
        end
        ap_ST_iter3_fsm_state0 : begin
            if ((~((1'b1 == ap_CS_iter3_fsm_state4) & ((1'b1 == ap_block_state4_io) | ((icmp_ln295_reg_844_pp0_iter2_reg == 1'd0) & (out_V_TREADY == 1'b0)))) & (1'b1 == ap_CS_iter2_fsm_state3))) begin
                ap_NS_iter3_fsm = ap_ST_iter3_fsm_state4;
            end else begin
                ap_NS_iter3_fsm = ap_ST_iter3_fsm_state0;
            end
        end
        default : begin
            ap_NS_iter3_fsm = 'bx;
        end
    endcase
end

assign add_ln886_10_fu_766_p2 = (zext_ln218_12_fu_679_p1 + zext_ln886_fu_702_p1);

assign add_ln886_11_fu_776_p2 = (zext_ln886_9_fu_772_p1 + zext_ln886_8_fu_762_p1);

assign add_ln886_12_fu_813_p2 = (zext_ln886_10_fu_810_p1 + zext_ln886_7_fu_807_p1);

assign add_ln886_1_fu_712_p2 = (add_ln886_fu_706_p2 + zext_ln215_fu_428_p1);

assign add_ln886_2_fu_718_p2 = (zext_ln218_2_fu_485_p1 + zext_ln218_3_fu_504_p1);

assign add_ln886_3_fu_724_p2 = (zext_ln218_4_fu_523_p1 + zext_ln218_5_fu_542_p1);

assign add_ln886_4_fu_791_p2 = (zext_ln886_3_fu_788_p1 + zext_ln886_2_fu_785_p1);

assign add_ln886_5_fu_797_p2 = (add_ln886_4_fu_791_p2 + zext_ln886_1_fu_782_p1);

assign add_ln886_6_fu_730_p2 = (zext_ln218_6_fu_561_p1 + zext_ln218_7_fu_580_p1);

assign add_ln886_7_fu_740_p2 = (zext_ln218_8_fu_599_p1 + zext_ln218_9_fu_618_p1);

assign add_ln886_8_fu_750_p2 = (zext_ln886_6_fu_746_p1 + zext_ln886_5_fu_736_p1);

assign add_ln886_9_fu_756_p2 = (zext_ln218_10_fu_637_p1 + zext_ln218_11_fu_656_p1);

assign add_ln886_fu_706_p2 = (zext_ln218_fu_447_p1 + zext_ln218_1_fu_466_p1);

assign ap_CS_iter0_fsm_state1 = ap_CS_iter0_fsm[32'd0];

assign ap_CS_iter1_fsm_state0 = ap_CS_iter1_fsm[32'd0];

assign ap_CS_iter1_fsm_state2 = ap_CS_iter1_fsm[32'd1];

assign ap_CS_iter2_fsm_state0 = ap_CS_iter2_fsm[32'd0];

assign ap_CS_iter2_fsm_state3 = ap_CS_iter2_fsm[32'd1];

assign ap_CS_iter3_fsm_state0 = ap_CS_iter3_fsm[32'd0];

assign ap_CS_iter3_fsm_state4 = ap_CS_iter3_fsm[32'd1];

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_start_int == 1'b0) | ((icmp_ln295_fu_349_p2 == 1'd0) & (in0_V_TVALID == 1'b0)));
end

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_io = ((icmp_ln295_reg_844_pp0_iter2_reg == 1'd0) & (out_V_TREADY == 1'b0));
end

always @ (*) begin
    ap_block_state4_pp0_stage0_iter3 = ((icmp_ln295_reg_844_pp0_iter2_reg == 1'd0) & (out_V_TREADY == 1'b0));
end

always @ (*) begin
    ap_condition_708 = (~((ap_start_int == 1'b0) | ((1'b1 == ap_CS_iter3_fsm_state4) & ((1'b1 == ap_block_state4_io) | ((icmp_ln295_reg_844_pp0_iter2_reg == 1'd0) & (out_V_TREADY == 1'b0)))) | ((icmp_ln295_fu_349_p2 == 1'd0) & (in0_V_TVALID == 1'b0))) & (1'b1 == ap_CS_iter0_fsm_state1));
end

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign i_2_fu_355_p2 = (ap_sig_allocacmp_i_1 + 22'd1);

assign icmp_ln1085_10_fu_607_p2 = ((tmp_reg_848_pp0_iter1_reg < zext_ln1085_10_fu_603_p1) ? 1'b1 : 1'b0);

assign icmp_ln1085_11_fu_626_p2 = ((tmp_reg_848_pp0_iter1_reg < zext_ln1085_11_fu_622_p1) ? 1'b1 : 1'b0);

assign icmp_ln1085_12_fu_645_p2 = ((tmp_reg_848_pp0_iter1_reg < zext_ln1085_12_fu_641_p1) ? 1'b1 : 1'b0);

assign icmp_ln1085_13_fu_668_p2 = ((tmp_reg_848_pp0_iter1_reg < select_ln1085_fu_660_p3) ? 1'b1 : 1'b0);

assign icmp_ln1085_14_fu_691_p2 = ((tmp_reg_848_pp0_iter1_reg < select_ln1085_1_fu_683_p3) ? 1'b1 : 1'b0);

assign icmp_ln1085_1_fu_436_p2 = ((tmp_reg_848_pp0_iter1_reg < zext_ln1085_1_fu_432_p1) ? 1'b1 : 1'b0);

assign icmp_ln1085_2_fu_455_p2 = ((tmp_reg_848_pp0_iter1_reg < zext_ln1085_2_fu_451_p1) ? 1'b1 : 1'b0);

assign icmp_ln1085_3_fu_474_p2 = ((tmp_reg_848_pp0_iter1_reg < zext_ln1085_3_fu_470_p1) ? 1'b1 : 1'b0);

assign icmp_ln1085_4_fu_493_p2 = ((tmp_reg_848_pp0_iter1_reg < zext_ln1085_4_fu_489_p1) ? 1'b1 : 1'b0);

assign icmp_ln1085_5_fu_512_p2 = ((tmp_reg_848_pp0_iter1_reg < zext_ln1085_5_fu_508_p1) ? 1'b1 : 1'b0);

assign icmp_ln1085_6_fu_531_p2 = ((tmp_reg_848_pp0_iter1_reg < zext_ln1085_6_fu_527_p1) ? 1'b1 : 1'b0);

assign icmp_ln1085_7_fu_550_p2 = ((tmp_reg_848_pp0_iter1_reg < zext_ln1085_7_fu_546_p1) ? 1'b1 : 1'b0);

assign icmp_ln1085_8_fu_569_p2 = ((tmp_reg_848_pp0_iter1_reg < zext_ln1085_8_fu_565_p1) ? 1'b1 : 1'b0);

assign icmp_ln1085_9_fu_588_p2 = ((tmp_reg_848_pp0_iter1_reg < zext_ln1085_9_fu_584_p1) ? 1'b1 : 1'b0);

assign icmp_ln1085_fu_417_p2 = ((tmp_reg_848_pp0_iter1_reg < zext_ln1085_fu_413_p1) ? 1'b1 : 1'b0);

assign icmp_ln295_fu_349_p2 = ((ap_sig_allocacmp_i_1 == 22'd3145728) ? 1'b1 : 1'b0);

assign icmp_ln295_reg_844_pp0_iter0_reg = icmp_ln295_reg_844;

assign icmp_ln307_fu_394_p2 = ((nf_fu_388_p2 == 32'd3) ? 1'b1 : 1'b0);

assign idxprom2_i_fu_369_p1 = nf_1_fu_120;

assign nf_2_fu_400_p3 = ((icmp_ln307_fu_394_p2[0:0] == 1'b1) ? 32'd0 : nf_fu_388_p2);

assign nf_fu_388_p2 = (nf_1_fu_120 + 32'd1);

assign out_V_TDATA = result_V_fu_819_p2;

assign p_ZL7threshs_16_address0 = idxprom2_i_fu_369_p1;

assign p_ZL7threshs_17_address0 = idxprom2_i_fu_369_p1;

assign p_ZL7threshs_18_address0 = idxprom2_i_fu_369_p1;

assign p_ZL7threshs_19_address0 = idxprom2_i_fu_369_p1;

assign p_ZL7threshs_20_address0 = idxprom2_i_fu_369_p1;

assign p_ZL7threshs_21_address0 = idxprom2_i_fu_369_p1;

assign p_ZL7threshs_22_address0 = idxprom2_i_fu_369_p1;

assign p_ZL7threshs_23_address0 = idxprom2_i_fu_369_p1;

assign p_ZL7threshs_24_address0 = idxprom2_i_fu_369_p1;

assign p_ZL7threshs_25_address0 = idxprom2_i_fu_369_p1;

assign p_ZL7threshs_26_address0 = idxprom2_i_fu_369_p1;

assign p_ZL7threshs_27_address0 = idxprom2_i_fu_369_p1;

assign p_ZL7threshs_28_address0 = idxprom2_i_fu_369_p1;

assign p_ZL7threshs_29_address0 = idxprom2_i_fu_369_p1;

assign p_ZL7threshs_30_address0 = idxprom2_i_fu_369_p1;

assign result_V_1_fu_422_p2 = (icmp_ln1085_fu_417_p2 ^ 1'd1);

assign result_V_fu_819_p2 = (add_ln886_12_fu_813_p2 + zext_ln886_4_fu_803_p1);

assign select_ln1085_1_fu_683_p3 = ((p_ZL7threshs_30_q0[0:0] == 1'b1) ? 8'd3 : 8'd0);

assign select_ln1085_fu_660_p3 = ((p_ZL7threshs_29_q0[0:0] == 1'b1) ? 8'd3 : 8'd0);

assign xor_ln1085_10_fu_631_p2 = (icmp_ln1085_11_fu_626_p2 ^ 1'd1);

assign xor_ln1085_11_fu_650_p2 = (icmp_ln1085_12_fu_645_p2 ^ 1'd1);

assign xor_ln1085_12_fu_673_p2 = (icmp_ln1085_13_fu_668_p2 ^ 1'd1);

assign xor_ln1085_13_fu_696_p2 = (icmp_ln1085_14_fu_691_p2 ^ 1'd1);

assign xor_ln1085_1_fu_460_p2 = (icmp_ln1085_2_fu_455_p2 ^ 1'd1);

assign xor_ln1085_2_fu_479_p2 = (icmp_ln1085_3_fu_474_p2 ^ 1'd1);

assign xor_ln1085_3_fu_498_p2 = (icmp_ln1085_4_fu_493_p2 ^ 1'd1);

assign xor_ln1085_4_fu_517_p2 = (icmp_ln1085_5_fu_512_p2 ^ 1'd1);

assign xor_ln1085_5_fu_536_p2 = (icmp_ln1085_6_fu_531_p2 ^ 1'd1);

assign xor_ln1085_6_fu_555_p2 = (icmp_ln1085_7_fu_550_p2 ^ 1'd1);

assign xor_ln1085_7_fu_574_p2 = (icmp_ln1085_8_fu_569_p2 ^ 1'd1);

assign xor_ln1085_8_fu_593_p2 = (icmp_ln1085_9_fu_588_p2 ^ 1'd1);

assign xor_ln1085_9_fu_612_p2 = (icmp_ln1085_10_fu_607_p2 ^ 1'd1);

assign xor_ln1085_fu_441_p2 = (icmp_ln1085_1_fu_436_p2 ^ 1'd1);

assign zext_ln1085_10_fu_603_p1 = p_ZL7threshs_26_q0;

assign zext_ln1085_11_fu_622_p1 = p_ZL7threshs_27_q0;

assign zext_ln1085_12_fu_641_p1 = p_ZL7threshs_28_q0;

assign zext_ln1085_1_fu_432_p1 = p_ZL7threshs_17_q0;

assign zext_ln1085_2_fu_451_p1 = p_ZL7threshs_18_q0;

assign zext_ln1085_3_fu_470_p1 = p_ZL7threshs_19_q0;

assign zext_ln1085_4_fu_489_p1 = p_ZL7threshs_20_q0;

assign zext_ln1085_5_fu_508_p1 = p_ZL7threshs_21_q0;

assign zext_ln1085_6_fu_527_p1 = p_ZL7threshs_22_q0;

assign zext_ln1085_7_fu_546_p1 = p_ZL7threshs_23_q0;

assign zext_ln1085_8_fu_565_p1 = p_ZL7threshs_24_q0;

assign zext_ln1085_9_fu_584_p1 = p_ZL7threshs_25_q0;

assign zext_ln1085_fu_413_p1 = p_ZL7threshs_16_q0;

assign zext_ln215_fu_428_p1 = result_V_1_fu_422_p2;

assign zext_ln218_10_fu_637_p1 = xor_ln1085_10_fu_631_p2;

assign zext_ln218_11_fu_656_p1 = xor_ln1085_11_fu_650_p2;

assign zext_ln218_12_fu_679_p1 = xor_ln1085_12_fu_673_p2;

assign zext_ln218_1_fu_466_p1 = xor_ln1085_1_fu_460_p2;

assign zext_ln218_2_fu_485_p1 = xor_ln1085_2_fu_479_p2;

assign zext_ln218_3_fu_504_p1 = xor_ln1085_3_fu_498_p2;

assign zext_ln218_4_fu_523_p1 = xor_ln1085_4_fu_517_p2;

assign zext_ln218_5_fu_542_p1 = xor_ln1085_5_fu_536_p2;

assign zext_ln218_6_fu_561_p1 = xor_ln1085_6_fu_555_p2;

assign zext_ln218_7_fu_580_p1 = xor_ln1085_7_fu_574_p2;

assign zext_ln218_8_fu_599_p1 = xor_ln1085_8_fu_593_p2;

assign zext_ln218_9_fu_618_p1 = xor_ln1085_9_fu_612_p2;

assign zext_ln218_fu_447_p1 = xor_ln1085_fu_441_p2;

assign zext_ln886_10_fu_810_p1 = add_ln886_11_reg_962;

assign zext_ln886_1_fu_782_p1 = add_ln886_1_reg_942;

assign zext_ln886_2_fu_785_p1 = add_ln886_2_reg_947;

assign zext_ln886_3_fu_788_p1 = add_ln886_3_reg_952;

assign zext_ln886_4_fu_803_p1 = add_ln886_5_fu_797_p2;

assign zext_ln886_5_fu_736_p1 = add_ln886_6_fu_730_p2;

assign zext_ln886_6_fu_746_p1 = add_ln886_7_fu_740_p2;

assign zext_ln886_7_fu_807_p1 = add_ln886_8_reg_957;

assign zext_ln886_8_fu_762_p1 = add_ln886_9_fu_756_p2;

assign zext_ln886_9_fu_772_p1 = add_ln886_10_fu_766_p2;

assign zext_ln886_fu_702_p1 = xor_ln1085_13_fu_696_p2;

endmodule //StreamingDataflowPartition_1_Thresholding_Batch_0_Thresholding_Batch