-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2020.1
-- Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity dct_1d2 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    src_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    src_ce0 : OUT STD_LOGIC;
    src_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    src_offset : IN STD_LOGIC_VECTOR (3 downto 0);
    dst_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    dst_ce0 : OUT STD_LOGIC;
    dst_we0 : OUT STD_LOGIC;
    dst_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    dst_offset : IN STD_LOGIC_VECTOR (3 downto 0) );
end;


architecture behav of dct_1d2 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv29_1000 : STD_LOGIC_VECTOR (28 downto 0) := "00000000000000001000000000000";
    constant ap_const_lv32_D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001101";
    constant ap_const_lv32_1C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011100";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal dct_coeff_table_address0 : STD_LOGIC_VECTOR (5 downto 0);
    signal dct_coeff_table_ce0 : STD_LOGIC;
    signal dct_coeff_table_q0 : STD_LOGIC_VECTOR (14 downto 0);
    signal n_0_reg_115 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_0_reg_126 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln61_fu_146_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln61_reg_273 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln48_fu_158_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln48_reg_278 : STD_LOGIC_VECTOR (7 downto 0);
    signal icmp_ln55_fu_162_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal k_fu_168_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal k_reg_287 : STD_LOGIC_VECTOR (3 downto 0);
    signal zext_ln63_fu_186_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln63_reg_292 : STD_LOGIC_VECTOR (7 downto 0);
    signal dst_addr_reg_297 : STD_LOGIC_VECTOR (5 downto 0);
    signal icmp_ln57_fu_200_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln57_reg_302 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_block_state3_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal n_fu_206_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal grp_fu_265_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state3 : STD_LOGIC;
    signal k_0_reg_104 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln63_1_fu_195_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln60_2_fu_221_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln61_1_fu_231_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_4_fu_138_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_5_fu_150_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_8_fu_178_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal zext_ln60_fu_174_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln63_1_fu_190_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln60_1_fu_212_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln60_fu_216_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln61_fu_226_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln57_fu_244_p1 : STD_LOGIC_VECTOR (28 downto 0);
    signal add_ln63_fu_248_p2 : STD_LOGIC_VECTOR (28 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;

    component dct_mac_muladd_15cud IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (14 downto 0);
        din1 : IN STD_LOGIC_VECTOR (15 downto 0);
        din2 : IN STD_LOGIC_VECTOR (31 downto 0);
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component dct_1d2_dct_coeffbkb IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (5 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (14 downto 0) );
    end component;



begin
    dct_coeff_table_U : component dct_1d2_dct_coeffbkb
    generic map (
        DataWidth => 15,
        AddressRange => 64,
        AddressWidth => 6)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => dct_coeff_table_address0,
        ce0 => dct_coeff_table_ce0,
        q0 => dct_coeff_table_q0);

    dct_mac_muladd_15cud_U1 : component dct_mac_muladd_15cud
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 15,
        din1_WIDTH => 16,
        din2_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        din0 => dct_coeff_table_q0,
        din1 => src_q0,
        din2 => tmp_0_reg_126,
        dout => grp_fu_265_p3);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state3) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((icmp_ln55_fu_162_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
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
                if (((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state3) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state3);
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif (((icmp_ln55_fu_162_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    k_0_reg_104_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                k_0_reg_104 <= k_reg_287;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                k_0_reg_104 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;

    n_0_reg_115_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln57_fu_200_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                n_0_reg_115 <= n_fu_206_p2;
            elsif (((icmp_ln55_fu_162_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                n_0_reg_115 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;

    tmp_0_reg_126_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln57_reg_302 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                tmp_0_reg_126 <= grp_fu_265_p3;
            elsif (((icmp_ln55_fu_162_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                tmp_0_reg_126 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln55_fu_162_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                dst_addr_reg_297 <= zext_ln63_1_fu_195_p1(6 - 1 downto 0);
                    zext_ln63_reg_292(6 downto 3) <= zext_ln63_fu_186_p1(6 downto 3);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln57_reg_302 <= icmp_ln57_fu_200_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                k_reg_287 <= k_fu_168_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    zext_ln48_reg_278(6 downto 3) <= zext_ln48_fu_158_p1(6 downto 3);
                    zext_ln61_reg_273(6 downto 3) <= zext_ln61_fu_146_p1(6 downto 3);
            end if;
        end if;
    end process;
    zext_ln61_reg_273(2 downto 0) <= "000";
    zext_ln61_reg_273(7) <= '0';
    zext_ln48_reg_278(2 downto 0) <= "000";
    zext_ln48_reg_278(7) <= '0';
    zext_ln63_reg_292(2 downto 0) <= "000";
    zext_ln63_reg_292(7) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, icmp_ln55_fu_162_p2, ap_CS_fsm_state2, icmp_ln57_fu_200_p2, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln55_fu_162_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if (not(((icmp_ln57_fu_200_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((icmp_ln57_fu_200_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    add_ln60_fu_216_p2 <= std_logic_vector(unsigned(zext_ln63_reg_292) + unsigned(zext_ln60_1_fu_212_p1));
    add_ln61_fu_226_p2 <= std_logic_vector(unsigned(zext_ln48_reg_278) + unsigned(zext_ln60_1_fu_212_p1));
    add_ln63_1_fu_190_p2 <= std_logic_vector(unsigned(zext_ln60_fu_174_p1) + unsigned(zext_ln61_reg_273));
    add_ln63_fu_248_p2 <= std_logic_vector(unsigned(ap_const_lv29_1000) + unsigned(trunc_ln57_fu_244_p1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(2);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state5 <= ap_CS_fsm(3);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_pp0_exit_iter0_state3_assign_proc : process(icmp_ln57_fu_200_p2)
    begin
        if ((icmp_ln57_fu_200_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, icmp_ln55_fu_162_p2, ap_CS_fsm_state2)
    begin
        if ((((icmp_ln55_fu_162_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(icmp_ln55_fu_162_p2, ap_CS_fsm_state2)
    begin
        if (((icmp_ln55_fu_162_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    dct_coeff_table_address0 <= zext_ln60_2_fu_221_p1(6 - 1 downto 0);

    dct_coeff_table_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            dct_coeff_table_ce0 <= ap_const_logic_1;
        else 
            dct_coeff_table_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    dst_address0 <= dst_addr_reg_297;

    dst_ce0_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            dst_ce0 <= ap_const_logic_1;
        else 
            dst_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    dst_d0 <= add_ln63_fu_248_p2(28 downto 13);

    dst_we0_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            dst_we0 <= ap_const_logic_1;
        else 
            dst_we0 <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln55_fu_162_p2 <= "1" when (k_0_reg_104 = ap_const_lv4_8) else "0";
    icmp_ln57_fu_200_p2 <= "1" when (n_0_reg_115 = ap_const_lv4_8) else "0";
    k_fu_168_p2 <= std_logic_vector(unsigned(k_0_reg_104) + unsigned(ap_const_lv4_1));
    n_fu_206_p2 <= std_logic_vector(unsigned(n_0_reg_115) + unsigned(ap_const_lv4_1));
    src_address0 <= zext_ln61_1_fu_231_p1(6 - 1 downto 0);

    src_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            src_ce0 <= ap_const_logic_1;
        else 
            src_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    tmp_4_fu_138_p3 <= (dst_offset & ap_const_lv3_0);
    tmp_5_fu_150_p3 <= (src_offset & ap_const_lv3_0);
    tmp_8_fu_178_p3 <= (k_0_reg_104 & ap_const_lv3_0);
    trunc_ln57_fu_244_p1 <= tmp_0_reg_126(29 - 1 downto 0);
    zext_ln48_fu_158_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_5_fu_150_p3),8));
    zext_ln60_1_fu_212_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(n_0_reg_115),8));
    zext_ln60_2_fu_221_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln60_fu_216_p2),64));
    zext_ln60_fu_174_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(k_0_reg_104),8));
    zext_ln61_1_fu_231_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln61_fu_226_p2),64));
    zext_ln61_fu_146_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_4_fu_138_p3),8));
    zext_ln63_1_fu_195_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln63_1_fu_190_p2),64));
    zext_ln63_fu_186_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_8_fu_178_p3),8));
end behav;