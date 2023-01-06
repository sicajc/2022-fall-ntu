-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Version: 2022.1
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity dpu_keygen_shake_absorb_Pipeline_VITIS_LOOP_360_2 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    select_ln13_1 : IN STD_LOGIC_VECTOR (3 downto 0);
    zext_ln13_37 : IN STD_LOGIC_VECTOR (3 downto 0);
    zext_ln361_1 : IN STD_LOGIC_VECTOR (3 downto 0);
    trunc_ln342_2 : IN STD_LOGIC_VECTOR (4 downto 0);
    this_s_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    this_s_ce0 : OUT STD_LOGIC;
    this_s_we0 : OUT STD_LOGIC;
    this_s_d0 : OUT STD_LOGIC_VECTOR (63 downto 0);
    this_s_address1 : OUT STD_LOGIC_VECTOR (4 downto 0);
    this_s_ce1 : OUT STD_LOGIC;
    this_s_q1 : IN STD_LOGIC_VECTOR (63 downto 0) );
end;


architecture behav of dpu_keygen_shake_absorb_Pipeline_VITIS_LOOP_360_2 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv64_FFFFFFFFFFFFFFFF : STD_LOGIC_VECTOR (63 downto 0) := "1111111111111111111111111111111111111111111111111111111111111111";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_phi_mux_i_phi_fu_93_p4 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal i_reg_89 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal zext_ln361_1_cast_fu_101_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln361_1_cast_reg_215 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln13_37_cast_fu_105_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln13_37_cast_reg_222 : STD_LOGIC_VECTOR (7 downto 0);
    signal xor_ln360_fu_119_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln360_reg_230 : STD_LOGIC_VECTOR (0 downto 0);
    signal this_s_addr_reg_235 : STD_LOGIC_VECTOR (4 downto 0);
    signal addr_cmp_fu_142_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal addr_cmp_reg_241 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal ap_loop_init : STD_LOGIC;
    signal zext_ln361_fu_134_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal reuse_addr_reg_fu_40 : STD_LOGIC_VECTOR (63 downto 0);
    signal reuse_reg_fu_44 : STD_LOGIC_VECTOR (63 downto 0);
    signal xor_ln361_fu_179_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln361_3_fu_125_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal add_ln361_fu_129_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal r_22_7_fu_153_p9 : STD_LOGIC_VECTOR (59 downto 0);
    signal reuse_select_fu_172_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln361_2_fu_165_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component dpu_keygen_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_sequential_init_U : component dpu_keygen_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter1_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0)) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    i_reg_89_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                i_reg_89 <= ap_const_lv1_0;
            elsif (((i_reg_89 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
                i_reg_89 <= xor_ln360_reg_230;
            end if; 
        end if;
    end process;

    reuse_addr_reg_fu_40_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    reuse_addr_reg_fu_40 <= ap_const_lv64_FFFFFFFFFFFFFFFF;
                elsif (((ap_phi_mux_i_phi_fu_93_p4 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    reuse_addr_reg_fu_40 <= zext_ln361_fu_134_p1;
                end if;
            end if; 
        end if;
    end process;

    reuse_reg_fu_44_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                    reuse_reg_fu_44 <= ap_const_lv64_0;
                elsif (((i_reg_89 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
                    reuse_reg_fu_44 <= xor_ln361_fu_179_p2;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_phi_mux_i_phi_fu_93_p4 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                addr_cmp_reg_241 <= addr_cmp_fu_142_p2;
                this_s_addr_reg_235 <= zext_ln361_fu_134_p1(5 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                xor_ln360_reg_230 <= xor_ln360_fu_119_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                    zext_ln13_37_cast_reg_222(3 downto 0) <= zext_ln13_37_cast_fu_105_p1(3 downto 0);
                    zext_ln361_1_cast_reg_215(3 downto 0) <= zext_ln361_1_cast_fu_101_p1(3 downto 0);
            end if;
        end if;
    end process;
    zext_ln361_1_cast_reg_215(7 downto 4) <= "0000";
    zext_ln13_37_cast_reg_222(7 downto 4) <= "0000";

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln361_fu_129_p2 <= std_logic_vector(unsigned(trunc_ln342_2) + unsigned(zext_ln361_3_fu_125_p1));
    addr_cmp_fu_142_p2 <= "1" when (reuse_addr_reg_fu_40 = zext_ln361_fu_134_p1) else "0";
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_subdone, ap_phi_mux_i_phi_fu_93_p4)
    begin
        if (((ap_phi_mux_i_phi_fu_93_p4 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_loop_exit_ready, ap_done_reg)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter1_stage0;

    ap_phi_mux_i_phi_fu_93_p4_assign_proc : process(ap_enable_reg_pp0_iter2, i_reg_89, xor_ln360_reg_230, ap_block_pp0_stage0)
    begin
        if (((i_reg_89 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            ap_phi_mux_i_phi_fu_93_p4 <= xor_ln360_reg_230;
        else 
            ap_phi_mux_i_phi_fu_93_p4 <= i_reg_89;
        end if; 
    end process;


    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;

    r_22_7_fu_153_p9 <= (((((((select_ln13_1 & zext_ln13_37_cast_reg_222) & zext_ln361_1_cast_reg_215) & zext_ln13_37_cast_reg_222) & zext_ln361_1_cast_reg_215) & zext_ln13_37_cast_reg_222) & zext_ln361_1_cast_reg_215) & zext_ln13_37_cast_reg_222);
    reuse_select_fu_172_p3 <= 
        reuse_reg_fu_44 when (addr_cmp_reg_241(0) = '1') else 
        this_s_q1;
    this_s_address0 <= this_s_addr_reg_235;
    this_s_address1 <= zext_ln361_fu_134_p1(5 - 1 downto 0);

    this_s_ce0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            this_s_ce0 <= ap_const_logic_1;
        else 
            this_s_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    this_s_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            this_s_ce1 <= ap_const_logic_1;
        else 
            this_s_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    this_s_d0 <= (zext_ln361_2_fu_165_p1 xor reuse_select_fu_172_p3);

    this_s_we0_assign_proc : process(ap_enable_reg_pp0_iter2, i_reg_89, ap_block_pp0_stage0_11001)
    begin
        if (((i_reg_89 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            this_s_we0 <= ap_const_logic_1;
        else 
            this_s_we0 <= ap_const_logic_0;
        end if; 
    end process;

    xor_ln360_fu_119_p2 <= (ap_phi_mux_i_phi_fu_93_p4 xor ap_const_lv1_1);
    xor_ln361_fu_179_p2 <= (zext_ln361_2_fu_165_p1 xor reuse_select_fu_172_p3);
    zext_ln13_37_cast_fu_105_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(zext_ln13_37),8));
    zext_ln361_1_cast_fu_101_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(zext_ln361_1),8));
    zext_ln361_2_fu_165_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(r_22_7_fu_153_p9),64));
    zext_ln361_3_fu_125_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_phi_mux_i_phi_fu_93_p4),5));
    zext_ln361_fu_134_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln361_fu_129_p2),64));
end behav;