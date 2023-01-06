// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="diamond_diamond,hls_ip_2022_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcvu9p-flga2104-2-i,HLS_INPUT_CLOCK=5.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=1.843000,HLS_SYN_LAT=152,HLS_SYN_TPT=50,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=194,HLS_SYN_LUT=626,HLS_VERSION=2022_1}" *)

module diamond (
        ap_clk,
        ap_rst,
        vecIn_address0,
        vecIn_ce0,
        vecIn_d0,
        vecIn_q0,
        vecIn_we0,
        vecIn_address1,
        vecIn_ce1,
        vecIn_d1,
        vecIn_q1,
        vecIn_we1,
        vecOut_address0,
        vecOut_ce0,
        vecOut_d0,
        vecOut_q0,
        vecOut_we0,
        vecOut_address1,
        vecOut_ce1,
        vecOut_d1,
        vecOut_q1,
        vecOut_we1,
        ap_start,
        ap_done,
        ap_ready,
        ap_idle
);


input   ap_clk;
input   ap_rst;
output  [6:0] vecIn_address0;
output   vecIn_ce0;
output  [7:0] vecIn_d0;
input  [7:0] vecIn_q0;
output   vecIn_we0;
output  [6:0] vecIn_address1;
output   vecIn_ce1;
output  [7:0] vecIn_d1;
input  [7:0] vecIn_q1;
output   vecIn_we1;
output  [6:0] vecOut_address0;
output   vecOut_ce0;
output  [7:0] vecOut_d0;
input  [7:0] vecOut_q0;
output   vecOut_we0;
output  [6:0] vecOut_address1;
output   vecOut_ce1;
output  [7:0] vecOut_d1;
input  [7:0] vecOut_q1;
output   vecOut_we1;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;

wire   [7:0] c1_i_q0;
wire   [7:0] c1_i_q1;
wire   [7:0] c1_t_q0;
wire   [7:0] c1_t_q1;
wire   [5:0] c2_i_q0;
wire   [5:0] c2_i_q1;
wire   [5:0] c2_t_q0;
wire   [5:0] c2_t_q1;
wire   [7:0] c3_i_q0;
wire   [7:0] c3_i_q1;
wire   [7:0] c3_t_q0;
wire   [7:0] c3_t_q1;
wire   [6:0] c4_i_q0;
wire   [6:0] c4_i_q1;
wire   [6:0] c4_t_q0;
wire   [6:0] c4_t_q1;
wire    funcA_U0_ap_start;
wire    funcA_U0_ap_done;
wire    funcA_U0_ap_continue;
wire    funcA_U0_ap_idle;
wire    funcA_U0_ap_ready;
wire   [6:0] funcA_U0_vecIn_address0;
wire    funcA_U0_vecIn_ce0;
wire   [6:0] funcA_U0_vecIn_address1;
wire    funcA_U0_vecIn_ce1;
wire   [6:0] funcA_U0_out1_address0;
wire    funcA_U0_out1_ce0;
wire    funcA_U0_out1_we0;
wire   [7:0] funcA_U0_out1_d0;
wire   [6:0] funcA_U0_out1_address1;
wire    funcA_U0_out1_ce1;
wire    funcA_U0_out1_we1;
wire   [7:0] funcA_U0_out1_d1;
wire   [6:0] funcA_U0_out2_address0;
wire    funcA_U0_out2_ce0;
wire    funcA_U0_out2_we0;
wire   [5:0] funcA_U0_out2_d0;
wire   [6:0] funcA_U0_out2_address1;
wire    funcA_U0_out2_ce1;
wire    funcA_U0_out2_we1;
wire   [5:0] funcA_U0_out2_d1;
wire    ap_channel_done_c2;
wire    funcA_U0_out2_full_n;
reg    ap_sync_reg_channel_write_c2;
wire    ap_sync_channel_write_c2;
wire    ap_channel_done_c1;
wire    funcA_U0_out1_full_n;
reg    ap_sync_reg_channel_write_c1;
wire    ap_sync_channel_write_c1;
wire    funcB_U0_ap_start;
wire    funcB_U0_ap_done;
wire    funcB_U0_ap_continue;
wire    funcB_U0_ap_idle;
wire    funcB_U0_ap_ready;
wire   [6:0] funcB_U0_in_r_address0;
wire    funcB_U0_in_r_ce0;
wire   [6:0] funcB_U0_in_r_address1;
wire    funcB_U0_in_r_ce1;
wire   [6:0] funcB_U0_out_r_address0;
wire    funcB_U0_out_r_ce0;
wire    funcB_U0_out_r_we0;
wire   [7:0] funcB_U0_out_r_d0;
wire   [6:0] funcB_U0_out_r_address1;
wire    funcB_U0_out_r_ce1;
wire    funcB_U0_out_r_we1;
wire   [7:0] funcB_U0_out_r_d1;
wire    funcC_U0_ap_start;
wire    funcC_U0_ap_done;
wire    funcC_U0_ap_continue;
wire    funcC_U0_ap_idle;
wire    funcC_U0_ap_ready;
wire   [6:0] funcC_U0_in_r_address0;
wire    funcC_U0_in_r_ce0;
wire   [6:0] funcC_U0_in_r_address1;
wire    funcC_U0_in_r_ce1;
wire   [6:0] funcC_U0_out_r_address0;
wire    funcC_U0_out_r_ce0;
wire    funcC_U0_out_r_we0;
wire   [6:0] funcC_U0_out_r_d0;
wire   [6:0] funcC_U0_out_r_address1;
wire    funcC_U0_out_r_ce1;
wire    funcC_U0_out_r_we1;
wire   [6:0] funcC_U0_out_r_d1;
wire    funcD_U0_ap_start;
wire    funcD_U0_ap_done;
wire    funcD_U0_ap_continue;
wire    funcD_U0_ap_idle;
wire    funcD_U0_ap_ready;
wire   [6:0] funcD_U0_in1_address0;
wire    funcD_U0_in1_ce0;
wire   [6:0] funcD_U0_in1_address1;
wire    funcD_U0_in1_ce1;
wire   [6:0] funcD_U0_in2_address0;
wire    funcD_U0_in2_ce0;
wire   [6:0] funcD_U0_in2_address1;
wire    funcD_U0_in2_ce1;
wire   [6:0] funcD_U0_vecOut_address0;
wire    funcD_U0_vecOut_ce0;
wire    funcD_U0_vecOut_we0;
wire   [7:0] funcD_U0_vecOut_d0;
wire   [6:0] funcD_U0_vecOut_address1;
wire    funcD_U0_vecOut_ce1;
wire    funcD_U0_vecOut_we1;
wire   [7:0] funcD_U0_vecOut_d1;
wire    c1_i_full_n;
wire    c1_t_empty_n;
wire    c2_i_full_n;
wire    c2_t_empty_n;
wire    c3_i_full_n;
wire    c3_t_empty_n;
wire    c4_i_full_n;
wire    c4_t_empty_n;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_sync_reg_channel_write_c2 = 1'b0;
#0 ap_sync_reg_channel_write_c1 = 1'b0;
end

diamond_c1_RAM_AUTO_1R1W #(
    .DataWidth( 8 ),
    .AddressRange( 100 ),
    .AddressWidth( 7 ))
c1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .i_address0(funcA_U0_out1_address0),
    .i_ce0(funcA_U0_out1_ce0),
    .i_we0(funcA_U0_out1_we0),
    .i_d0(funcA_U0_out1_d0),
    .i_q0(c1_i_q0),
    .i_address1(funcA_U0_out1_address1),
    .i_ce1(funcA_U0_out1_ce1),
    .i_we1(funcA_U0_out1_we1),
    .i_d1(funcA_U0_out1_d1),
    .i_q1(c1_i_q1),
    .t_address0(funcB_U0_in_r_address0),
    .t_ce0(funcB_U0_in_r_ce0),
    .t_we0(1'b0),
    .t_d0(8'd0),
    .t_q0(c1_t_q0),
    .t_address1(funcB_U0_in_r_address1),
    .t_ce1(funcB_U0_in_r_ce1),
    .t_we1(1'b0),
    .t_d1(8'd0),
    .t_q1(c1_t_q1),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(c1_i_full_n),
    .i_write(ap_channel_done_c1),
    .t_empty_n(c1_t_empty_n),
    .t_read(funcB_U0_ap_ready)
);

diamond_c2_RAM_AUTO_1R1W #(
    .DataWidth( 6 ),
    .AddressRange( 100 ),
    .AddressWidth( 7 ))
c2_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .i_address0(funcA_U0_out2_address0),
    .i_ce0(funcA_U0_out2_ce0),
    .i_we0(funcA_U0_out2_we0),
    .i_d0(funcA_U0_out2_d0),
    .i_q0(c2_i_q0),
    .i_address1(funcA_U0_out2_address1),
    .i_ce1(funcA_U0_out2_ce1),
    .i_we1(funcA_U0_out2_we1),
    .i_d1(funcA_U0_out2_d1),
    .i_q1(c2_i_q1),
    .t_address0(funcC_U0_in_r_address0),
    .t_ce0(funcC_U0_in_r_ce0),
    .t_we0(1'b0),
    .t_d0(6'd0),
    .t_q0(c2_t_q0),
    .t_address1(funcC_U0_in_r_address1),
    .t_ce1(funcC_U0_in_r_ce1),
    .t_we1(1'b0),
    .t_d1(6'd0),
    .t_q1(c2_t_q1),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(c2_i_full_n),
    .i_write(ap_channel_done_c2),
    .t_empty_n(c2_t_empty_n),
    .t_read(funcC_U0_ap_ready)
);

diamond_c1_RAM_AUTO_1R1W #(
    .DataWidth( 8 ),
    .AddressRange( 100 ),
    .AddressWidth( 7 ))
c3_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .i_address0(funcB_U0_out_r_address0),
    .i_ce0(funcB_U0_out_r_ce0),
    .i_we0(funcB_U0_out_r_we0),
    .i_d0(funcB_U0_out_r_d0),
    .i_q0(c3_i_q0),
    .i_address1(funcB_U0_out_r_address1),
    .i_ce1(funcB_U0_out_r_ce1),
    .i_we1(funcB_U0_out_r_we1),
    .i_d1(funcB_U0_out_r_d1),
    .i_q1(c3_i_q1),
    .t_address0(funcD_U0_in1_address0),
    .t_ce0(funcD_U0_in1_ce0),
    .t_we0(1'b0),
    .t_d0(8'd0),
    .t_q0(c3_t_q0),
    .t_address1(funcD_U0_in1_address1),
    .t_ce1(funcD_U0_in1_ce1),
    .t_we1(1'b0),
    .t_d1(8'd0),
    .t_q1(c3_t_q1),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(c3_i_full_n),
    .i_write(funcB_U0_ap_done),
    .t_empty_n(c3_t_empty_n),
    .t_read(funcD_U0_ap_ready)
);

diamond_c4_RAM_AUTO_1R1W #(
    .DataWidth( 7 ),
    .AddressRange( 100 ),
    .AddressWidth( 7 ))
c4_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .i_address0(funcC_U0_out_r_address0),
    .i_ce0(funcC_U0_out_r_ce0),
    .i_we0(funcC_U0_out_r_we0),
    .i_d0(funcC_U0_out_r_d0),
    .i_q0(c4_i_q0),
    .i_address1(funcC_U0_out_r_address1),
    .i_ce1(funcC_U0_out_r_ce1),
    .i_we1(funcC_U0_out_r_we1),
    .i_d1(funcC_U0_out_r_d1),
    .i_q1(c4_i_q1),
    .t_address0(funcD_U0_in2_address0),
    .t_ce0(funcD_U0_in2_ce0),
    .t_we0(1'b0),
    .t_d0(7'd0),
    .t_q0(c4_t_q0),
    .t_address1(funcD_U0_in2_address1),
    .t_ce1(funcD_U0_in2_ce1),
    .t_we1(1'b0),
    .t_d1(7'd0),
    .t_q1(c4_t_q1),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(c4_i_full_n),
    .i_write(funcC_U0_ap_done),
    .t_empty_n(c4_t_empty_n),
    .t_read(funcD_U0_ap_ready)
);

diamond_funcA funcA_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(funcA_U0_ap_start),
    .ap_done(funcA_U0_ap_done),
    .ap_continue(funcA_U0_ap_continue),
    .ap_idle(funcA_U0_ap_idle),
    .ap_ready(funcA_U0_ap_ready),
    .vecIn_address0(funcA_U0_vecIn_address0),
    .vecIn_ce0(funcA_U0_vecIn_ce0),
    .vecIn_q0(vecIn_q0),
    .vecIn_address1(funcA_U0_vecIn_address1),
    .vecIn_ce1(funcA_U0_vecIn_ce1),
    .vecIn_q1(vecIn_q1),
    .out1_address0(funcA_U0_out1_address0),
    .out1_ce0(funcA_U0_out1_ce0),
    .out1_we0(funcA_U0_out1_we0),
    .out1_d0(funcA_U0_out1_d0),
    .out1_address1(funcA_U0_out1_address1),
    .out1_ce1(funcA_U0_out1_ce1),
    .out1_we1(funcA_U0_out1_we1),
    .out1_d1(funcA_U0_out1_d1),
    .out2_address0(funcA_U0_out2_address0),
    .out2_ce0(funcA_U0_out2_ce0),
    .out2_we0(funcA_U0_out2_we0),
    .out2_d0(funcA_U0_out2_d0),
    .out2_address1(funcA_U0_out2_address1),
    .out2_ce1(funcA_U0_out2_ce1),
    .out2_we1(funcA_U0_out2_we1),
    .out2_d1(funcA_U0_out2_d1)
);

diamond_funcB funcB_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(funcB_U0_ap_start),
    .ap_done(funcB_U0_ap_done),
    .ap_continue(funcB_U0_ap_continue),
    .ap_idle(funcB_U0_ap_idle),
    .ap_ready(funcB_U0_ap_ready),
    .in_r_address0(funcB_U0_in_r_address0),
    .in_r_ce0(funcB_U0_in_r_ce0),
    .in_r_q0(c1_t_q0),
    .in_r_address1(funcB_U0_in_r_address1),
    .in_r_ce1(funcB_U0_in_r_ce1),
    .in_r_q1(c1_t_q1),
    .out_r_address0(funcB_U0_out_r_address0),
    .out_r_ce0(funcB_U0_out_r_ce0),
    .out_r_we0(funcB_U0_out_r_we0),
    .out_r_d0(funcB_U0_out_r_d0),
    .out_r_address1(funcB_U0_out_r_address1),
    .out_r_ce1(funcB_U0_out_r_ce1),
    .out_r_we1(funcB_U0_out_r_we1),
    .out_r_d1(funcB_U0_out_r_d1)
);

diamond_funcC funcC_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(funcC_U0_ap_start),
    .ap_done(funcC_U0_ap_done),
    .ap_continue(funcC_U0_ap_continue),
    .ap_idle(funcC_U0_ap_idle),
    .ap_ready(funcC_U0_ap_ready),
    .in_r_address0(funcC_U0_in_r_address0),
    .in_r_ce0(funcC_U0_in_r_ce0),
    .in_r_q0(c2_t_q0),
    .in_r_address1(funcC_U0_in_r_address1),
    .in_r_ce1(funcC_U0_in_r_ce1),
    .in_r_q1(c2_t_q1),
    .out_r_address0(funcC_U0_out_r_address0),
    .out_r_ce0(funcC_U0_out_r_ce0),
    .out_r_we0(funcC_U0_out_r_we0),
    .out_r_d0(funcC_U0_out_r_d0),
    .out_r_address1(funcC_U0_out_r_address1),
    .out_r_ce1(funcC_U0_out_r_ce1),
    .out_r_we1(funcC_U0_out_r_we1),
    .out_r_d1(funcC_U0_out_r_d1)
);

diamond_funcD funcD_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(funcD_U0_ap_start),
    .ap_done(funcD_U0_ap_done),
    .ap_continue(funcD_U0_ap_continue),
    .ap_idle(funcD_U0_ap_idle),
    .ap_ready(funcD_U0_ap_ready),
    .in1_address0(funcD_U0_in1_address0),
    .in1_ce0(funcD_U0_in1_ce0),
    .in1_q0(c3_t_q0),
    .in1_address1(funcD_U0_in1_address1),
    .in1_ce1(funcD_U0_in1_ce1),
    .in1_q1(c3_t_q1),
    .in2_address0(funcD_U0_in2_address0),
    .in2_ce0(funcD_U0_in2_ce0),
    .in2_q0(c4_t_q0),
    .in2_address1(funcD_U0_in2_address1),
    .in2_ce1(funcD_U0_in2_ce1),
    .in2_q1(c4_t_q1),
    .vecOut_address0(funcD_U0_vecOut_address0),
    .vecOut_ce0(funcD_U0_vecOut_ce0),
    .vecOut_we0(funcD_U0_vecOut_we0),
    .vecOut_d0(funcD_U0_vecOut_d0),
    .vecOut_address1(funcD_U0_vecOut_address1),
    .vecOut_ce1(funcD_U0_vecOut_ce1),
    .vecOut_we1(funcD_U0_vecOut_we1),
    .vecOut_d1(funcD_U0_vecOut_d1)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_c1 <= 1'b0;
    end else begin
        if (((funcA_U0_ap_done & funcA_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_c1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_c1 <= ap_sync_channel_write_c1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_c2 <= 1'b0;
    end else begin
        if (((funcA_U0_ap_done & funcA_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_c2 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_c2 <= ap_sync_channel_write_c2;
        end
    end
end

assign ap_channel_done_c1 = (funcA_U0_ap_done & (ap_sync_reg_channel_write_c1 ^ 1'b1));

assign ap_channel_done_c2 = (funcA_U0_ap_done & (ap_sync_reg_channel_write_c2 ^ 1'b1));

assign ap_done = funcD_U0_ap_done;

assign ap_idle = (funcD_U0_ap_idle & funcC_U0_ap_idle & funcB_U0_ap_idle & funcA_U0_ap_idle & (c4_t_empty_n ^ 1'b1) & (c3_t_empty_n ^ 1'b1) & (c2_t_empty_n ^ 1'b1) & (c1_t_empty_n ^ 1'b1));

assign ap_ready = funcA_U0_ap_ready;

assign ap_sync_channel_write_c1 = ((funcA_U0_out1_full_n & ap_channel_done_c1) | ap_sync_reg_channel_write_c1);

assign ap_sync_channel_write_c2 = ((funcA_U0_out2_full_n & ap_channel_done_c2) | ap_sync_reg_channel_write_c2);

assign funcA_U0_ap_continue = (ap_sync_channel_write_c2 & ap_sync_channel_write_c1);

assign funcA_U0_ap_start = ap_start;

assign funcA_U0_out1_full_n = c1_i_full_n;

assign funcA_U0_out2_full_n = c2_i_full_n;

assign funcB_U0_ap_continue = c3_i_full_n;

assign funcB_U0_ap_start = c1_t_empty_n;

assign funcC_U0_ap_continue = c4_i_full_n;

assign funcC_U0_ap_start = c2_t_empty_n;

assign funcD_U0_ap_continue = 1'b1;

assign funcD_U0_ap_start = (c4_t_empty_n & c3_t_empty_n);

assign vecIn_address0 = funcA_U0_vecIn_address0;

assign vecIn_address1 = funcA_U0_vecIn_address1;

assign vecIn_ce0 = funcA_U0_vecIn_ce0;

assign vecIn_ce1 = funcA_U0_vecIn_ce1;

assign vecIn_d0 = 8'd0;

assign vecIn_d1 = 8'd0;

assign vecIn_we0 = 1'b0;

assign vecIn_we1 = 1'b0;

assign vecOut_address0 = funcD_U0_vecOut_address0;

assign vecOut_address1 = funcD_U0_vecOut_address1;

assign vecOut_ce0 = funcD_U0_vecOut_ce0;

assign vecOut_ce1 = funcD_U0_vecOut_ce1;

assign vecOut_d0 = funcD_U0_vecOut_d0;

assign vecOut_d1 = funcD_U0_vecOut_d1;

assign vecOut_we0 = funcD_U0_vecOut_we0;

assign vecOut_we1 = funcD_U0_vecOut_we1;

endmodule //diamond