-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "05/11/2022 14:52:59"

-- 
-- Device: Altera 5M1270ZF256C4 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	IITB_RISC IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	clock_50 : IN std_logic;
	r0 : OUT std_logic_vector(15 DOWNTO 0);
	r1 : OUT std_logic_vector(15 DOWNTO 0);
	r2 : OUT std_logic_vector(15 DOWNTO 0);
	r3 : OUT std_logic_vector(15 DOWNTO 0);
	r4 : OUT std_logic_vector(15 DOWNTO 0);
	r5 : OUT std_logic_vector(15 DOWNTO 0);
	r6 : OUT std_logic_vector(15 DOWNTO 0);
	r7 : OUT std_logic_vector(15 DOWNTO 0)
	);
END IITB_RISC;

-- Design Ports Information


ARCHITECTURE structure OF IITB_RISC IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clock_50 : std_logic;
SIGNAL ww_r0 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_r1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_r2 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_r3 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_r4 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_r5 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_r6 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_r7 : std_logic_vector(15 DOWNTO 0);
SIGNAL \datapath_risc|RAM|memory~165_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~181_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~117_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~101_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~37_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~53_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~245_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~229_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~182_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~118_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~102_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~166_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~150_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~86_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~134_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~198_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~103_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~119_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~183_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~167_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~55_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~39_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~231_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~247_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~168_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~104_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~120_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~184_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~88_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~152_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~200_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~136_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~169_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~185_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~121_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~105_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~41_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~57_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~249_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~233_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~186_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~122_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~106_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~170_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~154_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~90_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~138_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~202_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~107_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~123_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~187_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~171_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~59_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~43_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~235_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~251_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~172_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~108_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~124_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~188_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~92_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~156_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~204_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~140_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~173_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~189_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~125_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~109_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~45_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~61_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~253_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~237_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~190_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~126_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~110_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~174_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~158_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~94_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~142_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~206_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~111_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~127_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~191_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~175_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~63_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~47_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~239_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~255_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~176_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~112_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~128_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~192_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~96_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~160_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~208_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~144_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~177_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~193_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~129_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~113_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~49_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~65_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~257_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~241_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~194_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~130_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~114_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~178_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~162_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~98_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~146_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~210_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~115_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~131_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~195_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~179_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~67_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~51_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~243_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~259_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~180_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~116_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~132_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~196_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~100_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~164_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~212_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~148_regout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \controlpath_risc|Q.RST~regout\ : std_logic;
SIGNAL \controlpath_risc|Q.RST1~regout\ : std_logic;
SIGNAL \controlpath_risc|Equal9~0_combout\ : std_logic;
SIGNAL \controlpath_risc|Q.JRI~regout\ : std_logic;
SIGNAL \controlpath_risc|Equal9~1_combout\ : std_logic;
SIGNAL \controlpath_risc|Q.ADI~regout\ : std_logic;
SIGNAL \controlpath_risc|en_A~1_combout\ : std_logic;
SIGNAL \controlpath_risc|WideOr16~combout\ : std_logic;
SIGNAL \controlpath_risc|nQ.LW1~0_combout\ : std_logic;
SIGNAL \controlpath_risc|Q.BEQ~regout\ : std_logic;
SIGNAL \controlpath_risc|Q.JLR~regout\ : std_logic;
SIGNAL \controlpath_risc|WideOr8~0_combout\ : std_logic;
SIGNAL \controlpath_risc|Q.LHI~regout\ : std_logic;
SIGNAL \controlpath_risc|en_c~0_combout\ : std_logic;
SIGNAL \controlpath_risc|m_a2~0_combout\ : std_logic;
SIGNAL \controlpath_risc|m_op1_1~0_combout\ : std_logic;
SIGNAL \controlpath_risc|m_op2_1~combout\ : std_logic;
SIGNAL \controlpath_risc|en_ir~0_combout\ : std_logic;
SIGNAL \controlpath_risc|en_ir~combout\ : std_logic;
SIGNAL \controlpath_risc|Selector13~6\ : std_logic;
SIGNAL \controlpath_risc|Selector8~0\ : std_logic;
SIGNAL \controlpath_risc|op_sel~combout\ : std_logic;
SIGNAL \datapath_risc|mux_op1|output~22_combout\ : std_logic;
SIGNAL \controlpath_risc|WideOr19~0_combout\ : std_logic;
SIGNAL \controlpath_risc|WideOr19~combout\ : std_logic;
SIGNAL \controlpath_risc|m_a2~1_combout\ : std_logic;
SIGNAL \controlpath_risc|m_a2~combout\ : std_logic;
SIGNAL \controlpath_risc|m_d3_1~0_combout\ : std_logic;
SIGNAL \controlpath_risc|m_d3_1~combout\ : std_logic;
SIGNAL \datapath_risc|mux_d3|output~2_combout\ : std_logic;
SIGNAL \datapath_risc|mux_d3|output~5_combout\ : std_logic;
SIGNAL \controlpath_risc|WideOr8~1_combout\ : std_logic;
SIGNAL \controlpath_risc|en_irf~combout\ : std_logic;
SIGNAL \datapath_risc|RAM|mem_out[15]~15\ : std_logic;
SIGNAL \datapath_risc|mux_d3|output[15]~32_combout\ : std_logic;
SIGNAL \controlpath_risc|WideOr20~combout\ : std_logic;
SIGNAL \controlpath_risc|wr_rf~combout\ : std_logic;
SIGNAL \controlpath_risc|WideOr24~combout\ : std_logic;
SIGNAL \controlpath_risc|m_a3_1~combout\ : std_logic;
SIGNAL \datapath_risc|mux_d3|output~9_combout\ : std_logic;
SIGNAL \controlpath_risc|wr_mem~combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~467_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~468_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~265_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~465_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~466_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~217_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~463_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~464_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~324\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~461_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~462_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~325\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~443_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~444_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~201_regout\ : std_logic;
SIGNAL \controlpath_risc|WideOr22~combout\ : std_logic;
SIGNAL \controlpath_risc|m_a3_0~combout\ : std_logic;
SIGNAL \datapath_risc|mux_a3|output[0]~0_combout\ : std_logic;
SIGNAL \datapath_risc|mux_a3|output[0]~1_combout\ : std_logic;
SIGNAL \datapath_risc|mux_a3|output[2]~4_combout\ : std_logic;
SIGNAL \datapath_risc|mux_a3|output[2]~5_combout\ : std_logic;
SIGNAL \datapath_risc|RF|Decoder0~4_combout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[4][4]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[6][4]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux11~0\ : std_logic;
SIGNAL \datapath_risc|RF|Decoder0~7_combout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[7][4]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux27~0\ : std_logic;
SIGNAL \datapath_risc|RF|Decoder0~5_combout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[5][4]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux11~1\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~441_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~442_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~153_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~439_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~440_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~317\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~437_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~438_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~318\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~451_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~452_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~137_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~449_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~450_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~89_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~447_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~448_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~319\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~445_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~446_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~320\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~459_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~460_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~73_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~457_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~458_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~25_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~455_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~456_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~321\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~453_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~454_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~322\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~323_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~326_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|mem_out[4]~4\ : std_logic;
SIGNAL \datapath_risc|mux_d3|output[4]~10_combout\ : std_logic;
SIGNAL \datapath_risc|RF|Decoder0~0_combout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[0][4]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Decoder0~1_combout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[1][4]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux11~2_combout\ : std_logic;
SIGNAL \datapath_risc|RF|Decoder0~3_combout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux11~3\ : std_logic;
SIGNAL \datapath_risc|RF|Mux11~4\ : std_logic;
SIGNAL \datapath_risc|mux_op2|output~7_combout\ : std_logic;
SIGNAL \datapath_risc|mux_op2|output~8_combout\ : std_logic;
SIGNAL \datapath_risc|mux_op1|output[4]~7\ : std_logic;
SIGNAL \datapath_risc|alu_unit|output[4]~4_combout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux27~2\ : std_logic;
SIGNAL \datapath_risc|RF|Decoder0~2_combout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[2][4]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[3][4]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux27~3\ : std_logic;
SIGNAL \datapath_risc|RF|Mux27~1\ : std_logic;
SIGNAL \datapath_risc|RF|Mux27~4_combout\ : std_logic;
SIGNAL \datapath_risc|mux_op1|output[4]~6_combout\ : std_logic;
SIGNAL \datapath_risc|mux_a3|output[1]~2_combout\ : std_logic;
SIGNAL \datapath_risc|mux_a3|output[1]~3_combout\ : std_logic;
SIGNAL \datapath_risc|RF|Decoder0~6_combout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[6][5]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[4][5]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux26~0\ : std_logic;
SIGNAL \datapath_risc|RF|registers[5][5]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux10~0\ : std_logic;
SIGNAL \datapath_risc|RF|registers[7][5]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux26~1\ : std_logic;
SIGNAL \datapath_risc|mux_d3|output~11_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|mem_out[5]~5\ : std_logic;
SIGNAL \datapath_risc|mux_d3|output[5]~12_combout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[0][5]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[1][5]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux10~2_combout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[3][5]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux26~3\ : std_logic;
SIGNAL \datapath_risc|RF|Mux26~4_combout\ : std_logic;
SIGNAL \datapath_risc|mux_op2|output~9_combout\ : std_logic;
SIGNAL \datapath_risc|mux_op2|output~10_combout\ : std_logic;
SIGNAL \datapath_risc|mux_op1|output[5]~8_combout\ : std_logic;
SIGNAL \datapath_risc|alu_unit|output[5]~5_combout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux26~2\ : std_logic;
SIGNAL \datapath_risc|RF|registers[2][5]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux10~3\ : std_logic;
SIGNAL \datapath_risc|RF|Mux10~1\ : std_logic;
SIGNAL \datapath_risc|RF|Mux10~4\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~250_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~58_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~327\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~328\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~266_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~74_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~334\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~335\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~218_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~26_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~331\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~332\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~234_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~42_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~329\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~330\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~333_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~336_combout\ : std_logic;
SIGNAL \datapath_risc|mux_op1|output[8]~14\ : std_logic;
SIGNAL \datapath_risc|mux_d3|output~21_combout\ : std_logic;
SIGNAL \datapath_risc|mux_d3|output~19_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~254_regout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[4][9]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[6][9]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux6~0\ : std_logic;
SIGNAL \datapath_risc|RF|registers[7][9]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux22~0\ : std_logic;
SIGNAL \datapath_risc|RF|registers[5][9]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux6~1\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~62_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~367\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~368\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~270_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~78_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~374\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~375\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~238_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~46_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~369\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~370\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~222_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~30_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~371\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~372\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~373_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~376_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|mem_out[9]~9\ : std_logic;
SIGNAL \datapath_risc|mux_d3|output[9]~20_combout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[0][9]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[1][9]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux6~2_combout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux6~3\ : std_logic;
SIGNAL \datapath_risc|RF|Mux6~4\ : std_logic;
SIGNAL \datapath_risc|mux_op2|output~17_combout\ : std_logic;
SIGNAL \datapath_risc|mux_op2|output~18_combout\ : std_logic;
SIGNAL \datapath_risc|mux_d3|output~17_combout\ : std_logic;
SIGNAL \datapath_risc|mux_d3|output~15_combout\ : std_logic;
SIGNAL \datapath_risc|mux_op2|output~13_combout\ : std_logic;
SIGNAL \datapath_risc|mux_op2|output~14_combout\ : std_logic;
SIGNAL \datapath_risc|mux_op1|output~11_combout\ : std_logic;
SIGNAL \datapath_risc|mux_op1|output~9_combout\ : std_logic;
SIGNAL \datapath_risc|mux_d3|output~13_combout\ : std_logic;
SIGNAL \datapath_risc|mux_op2|output~11_combout\ : std_logic;
SIGNAL \datapath_risc|mux_op2|output~12_combout\ : std_logic;
SIGNAL \datapath_risc|mux_op1|output[6]~10_combout\ : std_logic;
SIGNAL \datapath_risc|alu_unit|output[6]~6_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|mem_out[6]~6\ : std_logic;
SIGNAL \datapath_risc|mux_d3|output[6]~14_combout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[4][6]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[6][6]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux9~0\ : std_logic;
SIGNAL \datapath_risc|RF|Mux25~0\ : std_logic;
SIGNAL \datapath_risc|RF|registers[5][6]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[7][6]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux25~1\ : std_logic;
SIGNAL \datapath_risc|RF|registers[0][6]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux25~2\ : std_logic;
SIGNAL \datapath_risc|RF|registers[2][6]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[1][6]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux9~2_combout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[3][6]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux25~3\ : std_logic;
SIGNAL \datapath_risc|RF|Mux25~4_combout\ : std_logic;
SIGNAL \datapath_risc|mux_op1|output[7]~12_combout\ : std_logic;
SIGNAL \datapath_risc|alu_unit|output[7]~7_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|mem_out[7]~7\ : std_logic;
SIGNAL \datapath_risc|mux_d3|output[7]~16_combout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[6][7]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[4][7]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux24~0\ : std_logic;
SIGNAL \datapath_risc|RF|Mux24~1\ : std_logic;
SIGNAL \datapath_risc|RF|registers[0][7]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux24~2\ : std_logic;
SIGNAL \datapath_risc|RF|registers[2][7]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[1][7]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux8~2_combout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[3][7]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux24~3\ : std_logic;
SIGNAL \datapath_risc|RF|Mux24~4_combout\ : std_logic;
SIGNAL \datapath_risc|mux_op1|output[8]~13_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|mem_out[8]~8\ : std_logic;
SIGNAL \datapath_risc|mux_d3|output[8]~18_combout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[0][8]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[1][8]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux7~2_combout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[3][8]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux23~2\ : std_logic;
SIGNAL \datapath_risc|RF|registers[2][8]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux7~3\ : std_logic;
SIGNAL \datapath_risc|RF|registers[4][8]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[6][8]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux7~0\ : std_logic;
SIGNAL \datapath_risc|RF|Mux7~1\ : std_logic;
SIGNAL \datapath_risc|RF|Mux7~4\ : std_logic;
SIGNAL \datapath_risc|mux_op2|output~15_combout\ : std_logic;
SIGNAL \datapath_risc|mux_op2|output~16_combout\ : std_logic;
SIGNAL \datapath_risc|alu_unit|output[8]~8_combout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux23~0\ : std_logic;
SIGNAL \datapath_risc|RF|registers[5][8]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[7][8]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux23~1\ : std_logic;
SIGNAL \datapath_risc|RF|Mux23~3\ : std_logic;
SIGNAL \datapath_risc|RF|Mux23~4_combout\ : std_logic;
SIGNAL \datapath_risc|mux_op1|output[9]~15_combout\ : std_logic;
SIGNAL \datapath_risc|alu_unit|output[9]~9_combout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux22~2\ : std_logic;
SIGNAL \datapath_risc|RF|registers[2][9]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[3][9]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux22~3\ : std_logic;
SIGNAL \datapath_risc|RF|Mux22~1\ : std_logic;
SIGNAL \datapath_risc|RF|Mux22~4_combout\ : std_logic;
SIGNAL \datapath_risc|mux_op1|output[10]~16_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~271_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~223_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~384\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~385\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~143_regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux21~2\ : std_logic;
SIGNAL \datapath_risc|RF|registers[2][10]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux5~3\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~95_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~377\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~378\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~79_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~31_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~381\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~382\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~207_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~159_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~379\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~380\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~383_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~386_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|mem_out[10]~10\ : std_logic;
SIGNAL \datapath_risc|mux_d3|output[10]~22_combout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[4][10]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[6][10]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux5~0\ : std_logic;
SIGNAL \datapath_risc|RF|registers[7][10]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux21~0\ : std_logic;
SIGNAL \datapath_risc|RF|registers[5][10]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux5~1\ : std_logic;
SIGNAL \datapath_risc|RF|Mux5~4\ : std_logic;
SIGNAL \datapath_risc|mux_op2|output~19_combout\ : std_logic;
SIGNAL \datapath_risc|mux_op2|output~20_combout\ : std_logic;
SIGNAL \datapath_risc|alu_unit|output[10]~10_combout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[0][10]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[1][10]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux5~2_combout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[3][10]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux21~3\ : std_logic;
SIGNAL \datapath_risc|RF|Mux21~1\ : std_logic;
SIGNAL \datapath_risc|RF|Mux21~4_combout\ : std_logic;
SIGNAL \datapath_risc|mux_op1|output[11]~17_combout\ : std_logic;
SIGNAL \datapath_risc|mux_op2|output~21_combout\ : std_logic;
SIGNAL \datapath_risc|mux_op2|output~22_combout\ : std_logic;
SIGNAL \datapath_risc|alu_unit|output[11]~11_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|mem_out[11]~11\ : std_logic;
SIGNAL \datapath_risc|mux_d3|output[11]~24_combout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[1][11]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux4~2_combout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[3][11]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux20~3\ : std_logic;
SIGNAL \datapath_risc|RF|registers[6][11]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[4][11]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux20~0\ : std_logic;
SIGNAL \datapath_risc|RF|registers[5][11]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux4~0\ : std_logic;
SIGNAL \datapath_risc|RF|registers[7][11]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux20~1\ : std_logic;
SIGNAL \datapath_risc|RF|Mux20~4_combout\ : std_logic;
SIGNAL \datapath_risc|mux_d3|output~23_combout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[0][11]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux20~2\ : std_logic;
SIGNAL \datapath_risc|RF|registers[2][11]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux4~3\ : std_logic;
SIGNAL \datapath_risc|RF|Mux4~1\ : std_logic;
SIGNAL \datapath_risc|RF|Mux4~4\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~240_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~48_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~387\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~388\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~272_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~80_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~394\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~395\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~224_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~32_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~391\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~392\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~256_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~64_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~389\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~390\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~393_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~396_combout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[4][15]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux0~0\ : std_logic;
SIGNAL \datapath_risc|RF|registers[7][15]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux16~0\ : std_logic;
SIGNAL \datapath_risc|RF|registers[5][15]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux0~1\ : std_logic;
SIGNAL \datapath_risc|RF|Mux0~4\ : std_logic;
SIGNAL \datapath_risc|mux_op2|output~29_combout\ : std_logic;
SIGNAL \datapath_risc|mux_op2|output~30_combout\ : std_logic;
SIGNAL \datapath_risc|alu_unit|output[15]~15_combout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[1][15]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux0~2\ : std_logic;
SIGNAL \datapath_risc|RF|Mux0~3\ : std_logic;
SIGNAL \datapath_risc|RF|registers[0][2]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[1][2]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux13~2_combout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[3][2]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux29~2\ : std_logic;
SIGNAL \datapath_risc|RF|registers[2][2]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux13~3\ : std_logic;
SIGNAL \datapath_risc|RF|registers[4][2]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[6][2]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux13~0\ : std_logic;
SIGNAL \datapath_risc|RF|Mux13~1\ : std_logic;
SIGNAL \datapath_risc|RF|Mux13~4\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~135_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~87_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~297\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~298\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~263_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~215_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~304\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~305\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~71_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~23_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~301\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~302\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~199_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~151_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~299\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~300\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~303_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~306_combout\ : std_logic;
SIGNAL \datapath_risc|mux_d3|output~3_combout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[0][1]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[1][1]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux14~2_combout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux14~3\ : std_logic;
SIGNAL \datapath_risc|RF|registers[4][1]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[6][1]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux14~0\ : std_logic;
SIGNAL \datapath_risc|RF|registers[7][1]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux30~0\ : std_logic;
SIGNAL \datapath_risc|RF|registers[5][1]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux14~1\ : std_logic;
SIGNAL \datapath_risc|RF|Mux14~4\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~262_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~70_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~294\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~295\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~246_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~54_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~287\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~288\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~214_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~22_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~291\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~292\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~230_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~38_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~289\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~290\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~293_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~296_combout\ : std_logic;
SIGNAL \datapath_risc|mux_op1|output[1]~0_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|mem_out[1]~1\ : std_logic;
SIGNAL \datapath_risc|mux_d3|output[1]~4_combout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux30~2\ : std_logic;
SIGNAL \datapath_risc|RF|registers[2][1]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[3][1]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux30~3\ : std_logic;
SIGNAL \datapath_risc|RF|Mux30~1\ : std_logic;
SIGNAL \datapath_risc|RF|Mux30~4_combout\ : std_logic;
SIGNAL \datapath_risc|mux_op1|output[2]~2_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|mem_out[2]~2\ : std_logic;
SIGNAL \datapath_risc|mux_d3|output[2]~6_combout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux29~0\ : std_logic;
SIGNAL \datapath_risc|RF|registers[5][2]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[7][2]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux29~1\ : std_logic;
SIGNAL \datapath_risc|RF|Mux29~3\ : std_logic;
SIGNAL \datapath_risc|RF|Mux29~4_combout\ : std_logic;
SIGNAL \datapath_risc|mux_op1|output[3]~4_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|mem_out[3]~3\ : std_logic;
SIGNAL \datapath_risc|mux_d3|output[3]~8_combout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[0][3]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[1][3]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux12~2_combout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux28~2\ : std_logic;
SIGNAL \datapath_risc|RF|registers[2][3]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[3][3]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux28~3\ : std_logic;
SIGNAL \datapath_risc|RF|registers[6][3]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[4][3]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux28~0\ : std_logic;
SIGNAL \datapath_risc|RF|Mux28~1\ : std_logic;
SIGNAL \datapath_risc|RF|Mux28~4_combout\ : std_logic;
SIGNAL \datapath_risc|mux_d3|output~7_combout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux12~0\ : std_logic;
SIGNAL \datapath_risc|RF|registers[7][3]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[5][3]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux12~1\ : std_logic;
SIGNAL \datapath_risc|RF|Mux12~3\ : std_logic;
SIGNAL \datapath_risc|RF|Mux12~4\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~232_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~40_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~307\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~308\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~264_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~72_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~314\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~315\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~216_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~24_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~311\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~312\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~248_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~56_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~309\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~310\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~313_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~316_combout\ : std_logic;
SIGNAL \datapath_risc|mux_op1|output[3]~5\ : std_logic;
SIGNAL \datapath_risc|mux_op2|output~5_combout\ : std_logic;
SIGNAL \datapath_risc|mux_op2|output~6_combout\ : std_logic;
SIGNAL \datapath_risc|alu_unit|output[3]~3_combout\ : std_logic;
SIGNAL \controlpath_risc|en_A~combout\ : std_logic;
SIGNAL \datapath_risc|mux_mem_a|output[3]~2\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~205_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~157_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~357\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~358\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~269_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~221_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~364\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~365\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~77_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~29_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~361\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~362\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~141_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~93_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~359\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~360\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~363_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~366_combout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[1][0]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux15~2_combout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux31~2\ : std_logic;
SIGNAL \datapath_risc|RF|registers[2][0]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[3][0]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux31~3\ : std_logic;
SIGNAL \datapath_risc|RF|Mux31~4\ : std_logic;
SIGNAL \datapath_risc|RF|Mux15~3\ : std_logic;
SIGNAL \datapath_risc|RF|registers[4][0]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[6][0]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux15~0\ : std_logic;
SIGNAL \datapath_risc|RF|Mux15~1\ : std_logic;
SIGNAL \datapath_risc|RF|Mux15~4\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~197_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~149_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~277\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~278\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~261_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~213_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~284\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~285\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~69_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~21_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~281\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~282\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~133_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~85_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~279\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~280\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~283_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~286_combout\ : std_logic;
SIGNAL \datapath_risc|mux_op2|output[0]~0_combout\ : std_logic;
SIGNAL \datapath_risc|alu_unit|output[0]~0_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|mem_out[0]~0\ : std_logic;
SIGNAL \datapath_risc|mux_d3|output[0]~1_combout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux31~0\ : std_logic;
SIGNAL \datapath_risc|RF|registers[5][0]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[7][0]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux31~1\ : std_logic;
SIGNAL \datapath_risc|mux_d3|output~29_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|mem_out[14]~14\ : std_logic;
SIGNAL \datapath_risc|mux_d3|output[14]~30_combout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[0][14]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[1][14]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux1~2_combout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[3][14]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux17~2\ : std_logic;
SIGNAL \datapath_risc|RF|registers[2][14]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux1~3\ : std_logic;
SIGNAL \datapath_risc|RF|Mux17~0\ : std_logic;
SIGNAL \datapath_risc|RF|registers[5][14]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux1~1\ : std_logic;
SIGNAL \datapath_risc|RF|Mux1~4\ : std_logic;
SIGNAL \datapath_risc|mux_op2|output~27_combout\ : std_logic;
SIGNAL \datapath_risc|mux_op2|output~28_combout\ : std_logic;
SIGNAL \datapath_risc|mux_d3|output~27_combout\ : std_logic;
SIGNAL \datapath_risc|mux_op1|output[12]~18_combout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[4][12]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[6][12]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux3~0\ : std_logic;
SIGNAL \datapath_risc|RF|registers[7][12]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[5][12]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux3~1\ : std_logic;
SIGNAL \datapath_risc|mux_d3|output~25_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~273_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~225_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~404\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~405\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~209_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~161_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~397\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~398\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~145_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~97_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~399\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~400\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~81_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~33_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~401\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~402\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~403_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~406_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|mem_out[12]~12\ : std_logic;
SIGNAL \datapath_risc|mux_d3|output[12]~26_combout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[0][12]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[1][12]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux3~2_combout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[3][12]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux19~2\ : std_logic;
SIGNAL \datapath_risc|RF|registers[2][12]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux3~3\ : std_logic;
SIGNAL \datapath_risc|RF|Mux3~4\ : std_logic;
SIGNAL \datapath_risc|mux_op2|output~23_combout\ : std_logic;
SIGNAL \datapath_risc|mux_op2|output~24_combout\ : std_logic;
SIGNAL \datapath_risc|alu_unit|output[12]~12_combout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux19~0\ : std_logic;
SIGNAL \datapath_risc|RF|Mux19~1\ : std_logic;
SIGNAL \datapath_risc|RF|Mux19~3\ : std_logic;
SIGNAL \datapath_risc|RF|Mux19~4_combout\ : std_logic;
SIGNAL \datapath_risc|mux_op1|output[13]~19_combout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[4][13]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[6][13]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux2~0\ : std_logic;
SIGNAL \datapath_risc|RF|registers[7][13]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux18~0\ : std_logic;
SIGNAL \datapath_risc|RF|registers[5][13]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux2~1\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~258_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~66_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~407\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~408\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~274_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~82_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~414\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~415\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~242_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~50_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~409\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~410\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~226_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~34_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~411\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~412\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~413_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~416_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|mem_out[13]~13\ : std_logic;
SIGNAL \datapath_risc|mux_d3|output[13]~28_combout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[0][13]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[1][13]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux2~2_combout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux2~3\ : std_logic;
SIGNAL \datapath_risc|RF|Mux2~4\ : std_logic;
SIGNAL \datapath_risc|mux_op2|output~25_combout\ : std_logic;
SIGNAL \datapath_risc|mux_op2|output~26_combout\ : std_logic;
SIGNAL \datapath_risc|alu_unit|output[13]~13_combout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux18~2\ : std_logic;
SIGNAL \datapath_risc|RF|registers[2][13]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[3][13]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux18~3\ : std_logic;
SIGNAL \datapath_risc|RF|Mux18~1\ : std_logic;
SIGNAL \datapath_risc|RF|Mux18~4_combout\ : std_logic;
SIGNAL \datapath_risc|mux_op1|output[14]~20_combout\ : std_logic;
SIGNAL \datapath_risc|alu_unit|output[14]~14_combout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[4][14]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[6][14]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux1~0\ : std_logic;
SIGNAL \datapath_risc|RF|registers[7][14]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux17~1\ : std_logic;
SIGNAL \datapath_risc|RF|Mux17~3\ : std_logic;
SIGNAL \datapath_risc|RF|Mux17~4_combout\ : std_logic;
SIGNAL \datapath_risc|mux_op1|output~21_combout\ : std_logic;
SIGNAL \datapath_risc|alu_unit|carry~0_combout\ : std_logic;
SIGNAL \datapath_risc|alu_unit|carry~combout\ : std_logic;
SIGNAL \controlpath_risc|WideOr29~0_combout\ : std_logic;
SIGNAL \controlpath_risc|en_c~combout\ : std_logic;
SIGNAL \datapath_risc|carryFF|dout~regout\ : std_logic;
SIGNAL \datapath_risc|zeroFF|dout~0_combout\ : std_logic;
SIGNAL \controlpath_risc|m_z~0_combout\ : std_logic;
SIGNAL \controlpath_risc|m_z~combout\ : std_logic;
SIGNAL \controlpath_risc|WideOr28~0_combout\ : std_logic;
SIGNAL \controlpath_risc|en_z~combout\ : std_logic;
SIGNAL \datapath_risc|zeroFF|dout~3_combout\ : std_logic;
SIGNAL \datapath_risc|zeroFF|dout~2_combout\ : std_logic;
SIGNAL \datapath_risc|zeroFF|dout~4_combout\ : std_logic;
SIGNAL \datapath_risc|zeroFF|dout~1_combout\ : std_logic;
SIGNAL \datapath_risc|zeroFF|dout~5_combout\ : std_logic;
SIGNAL \datapath_risc|zeroFF|dout~regout\ : std_logic;
SIGNAL \controlpath_risc|main~2_combout\ : std_logic;
SIGNAL \controlpath_risc|Q.AON~regout\ : std_logic;
SIGNAL \controlpath_risc|WideOr14~0_combout\ : std_logic;
SIGNAL \controlpath_risc|m_op2_0~combout\ : std_logic;
SIGNAL \controlpath_risc|main~3\ : std_logic;
SIGNAL \controlpath_risc|main~4_combout\ : std_logic;
SIGNAL \controlpath_risc|Q.ADL~regout\ : std_logic;
SIGNAL \controlpath_risc|m_op1_0~0_combout\ : std_logic;
SIGNAL \controlpath_risc|m_op1_0~combout\ : std_logic;
SIGNAL \datapath_risc|mux_op1|output[1]~1\ : std_logic;
SIGNAL \datapath_risc|mux_op2|output~1_combout\ : std_logic;
SIGNAL \datapath_risc|mux_op2|output~2_combout\ : std_logic;
SIGNAL \datapath_risc|alu_unit|output[1]~1_combout\ : std_logic;
SIGNAL \datapath_risc|mux_mem_a|output[1]~0\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~139_regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux9~1\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~91_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~337\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~338\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~267_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~219_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~344\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~345\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~203_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~155_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~339\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~340\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~75_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~27_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~341\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~342\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~343_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~346_combout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[6][15]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux8~0\ : std_logic;
SIGNAL \datapath_risc|RF|registers[7][7]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[5][7]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux8~1\ : std_logic;
SIGNAL \datapath_risc|RF|Mux8~3\ : std_logic;
SIGNAL \datapath_risc|RF|Mux8~4\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~236_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~44_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~347\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~348\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~268_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~76_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~354\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~355\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~220_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~28_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~351\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~352\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~60_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~349\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~252_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~350\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~353_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~356_combout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux16~2\ : std_logic;
SIGNAL \datapath_risc|RF|registers[2][15]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[3][15]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux16~3\ : std_logic;
SIGNAL \datapath_risc|RF|Mux16~1\ : std_logic;
SIGNAL \datapath_risc|RF|Mux16~4_combout\ : std_logic;
SIGNAL \datapath_risc|mux_d3|output~31_combout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[0][15]~regout\ : std_logic;
SIGNAL \datapath_risc|RF|Mux9~3\ : std_logic;
SIGNAL \datapath_risc|RF|Mux9~4\ : std_logic;
SIGNAL \controlpath_risc|m_comp_a~0_combout\ : std_logic;
SIGNAL \controlpath_risc|m_comp_b~combout\ : std_logic;
SIGNAL \datapath_risc|compare|final[7]~13_combout\ : std_logic;
SIGNAL \datapath_risc|compare|Equal0~10_combout\ : std_logic;
SIGNAL \datapath_risc|compare|final[1]~16_combout\ : std_logic;
SIGNAL \datapath_risc|compare|Equal0~13_combout\ : std_logic;
SIGNAL \datapath_risc|compare|final[5]~14_combout\ : std_logic;
SIGNAL \datapath_risc|compare|Equal0~11_combout\ : std_logic;
SIGNAL \datapath_risc|compare|final[3]~15_combout\ : std_logic;
SIGNAL \datapath_risc|compare|Equal0~12_combout\ : std_logic;
SIGNAL \datapath_risc|compare|Equal0~14_combout\ : std_logic;
SIGNAL \datapath_risc|compare|final[15]~17_combout\ : std_logic;
SIGNAL \datapath_risc|compare|Equal0~0_combout\ : std_logic;
SIGNAL \datapath_risc|compare|final[14]~10_combout\ : std_logic;
SIGNAL \datapath_risc|compare|Equal0~1_combout\ : std_logic;
SIGNAL \datapath_risc|compare|final[12]~18_combout\ : std_logic;
SIGNAL \datapath_risc|compare|Equal0~3_combout\ : std_logic;
SIGNAL \datapath_risc|compare|final[13]~11_combout\ : std_logic;
SIGNAL \datapath_risc|compare|Equal0~2_combout\ : std_logic;
SIGNAL \datapath_risc|compare|Equal0~4_combout\ : std_logic;
SIGNAL \datapath_risc|compare|final[11]~19_combout\ : std_logic;
SIGNAL \datapath_risc|compare|Equal0~5_combout\ : std_logic;
SIGNAL \datapath_risc|compare|final[10]~20_combout\ : std_logic;
SIGNAL \datapath_risc|compare|Equal0~6_combout\ : std_logic;
SIGNAL \datapath_risc|compare|final[8]~12_combout\ : std_logic;
SIGNAL \datapath_risc|compare|Equal0~8_combout\ : std_logic;
SIGNAL \datapath_risc|compare|final[9]~21_combout\ : std_logic;
SIGNAL \datapath_risc|compare|Equal0~7_combout\ : std_logic;
SIGNAL \datapath_risc|compare|Equal0~9_combout\ : std_logic;
SIGNAL \datapath_risc|compare|Equal0~15_combout\ : std_logic;
SIGNAL \controlpath_risc|Q.JAL2~regout\ : std_logic;
SIGNAL \controlpath_risc|WideOr12~0_combout\ : std_logic;
SIGNAL \controlpath_risc|m_op1_1~combout\ : std_logic;
SIGNAL \datapath_risc|mux_op1|output[2]~3\ : std_logic;
SIGNAL \datapath_risc|mux_op2|output~3_combout\ : std_logic;
SIGNAL \datapath_risc|mux_op2|output~4_combout\ : std_logic;
SIGNAL \datapath_risc|alu_unit|output[2]~2_combout\ : std_logic;
SIGNAL \datapath_risc|mux_mem_a|output[2]~3\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~147_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~99_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~417\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~418\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~211_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~163_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~419\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~420\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~83_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~35_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~421\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~422\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~423_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~275_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~227_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~424\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~425\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~426_combout\ : std_logic;
SIGNAL \controlpath_risc|main~0\ : std_logic;
SIGNAL \controlpath_risc|nQ.SW1~0_combout\ : std_logic;
SIGNAL \controlpath_risc|Q.SW1~regout\ : std_logic;
SIGNAL \controlpath_risc|Q.SW2~regout\ : std_logic;
SIGNAL \controlpath_risc|m_mem_a~4_combout\ : std_logic;
SIGNAL \controlpath_risc|m_mem_a~combout\ : std_logic;
SIGNAL \datapath_risc|mux_mem_a|output[0]~1\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~244_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~52_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~427\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~428\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~276_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~84_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~434\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~435\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~228_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~36_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~431\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~432\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~260_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~68_regout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~429\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~430\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~433_combout\ : std_logic;
SIGNAL \datapath_risc|RAM|memory~436_combout\ : std_logic;
SIGNAL \controlpath_risc|Q.LW1~regout\ : std_logic;
SIGNAL \controlpath_risc|Q.LW2~regout\ : std_logic;
SIGNAL \controlpath_risc|WideOr4~combout\ : std_logic;
SIGNAL \controlpath_risc|rd_mem~combout\ : std_logic;
SIGNAL \controlpath_risc|main~1_combout\ : std_logic;
SIGNAL \controlpath_risc|Selector13~5_combout\ : std_logic;
SIGNAL \controlpath_risc|Q.JMP~regout\ : std_logic;
SIGNAL \controlpath_risc|WideOr6~2_combout\ : std_logic;
SIGNAL \controlpath_risc|Selector13~4_combout\ : std_logic;
SIGNAL \controlpath_risc|Q.HKT~regout\ : std_logic;
SIGNAL \controlpath_risc|Q.FETCH~regout\ : std_logic;
SIGNAL \controlpath_risc|WideOr20~0_combout\ : std_logic;
SIGNAL \controlpath_risc|m_a3_1~0_combout\ : std_logic;
SIGNAL \controlpath_risc|m_d3_0~0_combout\ : std_logic;
SIGNAL \controlpath_risc|m_d3_0~combout\ : std_logic;
SIGNAL \datapath_risc|mux_d3|output~0_combout\ : std_logic;
SIGNAL \datapath_risc|RF|registers[0][0]~regout\ : std_logic;
SIGNAL \datapath_risc|mux_op1|output\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \datapath_risc|mux_op2|output\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \datapath_risc|Inst_reg_exe|next_instruction1|dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \datapath_risc|mux_a2|output\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \datapath_risc|regA|dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \datapath_risc|Inst_reg_fetch|next_instruction|dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \datapath_risc|mux_d3|output\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_clock_50 <= clock_50;
r0 <= ww_r0;
r1 <= ww_r1;
r2 <= ww_r2;
r3 <= ww_r3;
r4 <= ww_r4;
r5 <= ww_r5;
r6 <= ww_r6;
r7 <= ww_r7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: LC_X1_Y8_N0
\controlpath_risc|Q.RST\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|Q.RST~regout\ = DFFEAS(((!\reset~combout\)), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3333",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \reset~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlpath_risc|Q.RST~regout\);

-- Location: LC_X1_Y9_N7
\controlpath_risc|Q.RST1\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|Q.RST1~regout\ = DFFEAS(((!\reset~combout\ & ((!\controlpath_risc|Q.RST~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \reset~combout\,
	datad => \controlpath_risc|Q.RST~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlpath_risc|Q.RST1~regout\);

-- Location: LC_X2_Y8_N9
\controlpath_risc|Equal9~0\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|Equal9~0_combout\ = ((!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(14) & (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(12) & \datapath_risc|Inst_reg_exe|next_instruction1|dout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(14),
	datac => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(12),
	datad => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|Equal9~0_combout\);

-- Location: LC_X1_Y7_N6
\controlpath_risc|Q.JRI\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|Q.JRI~regout\ = DFFEAS((\controlpath_risc|nQ.SW1~0_combout\ & (!\controlpath_risc|main~1_combout\ & (\controlpath_risc|Equal9~0_combout\ & \datapath_risc|Inst_reg_exe|next_instruction1|dout\(15)))), GLOBAL(\clk~combout\), VCC, , , , , , 
-- )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \controlpath_risc|nQ.SW1~0_combout\,
	datab => \controlpath_risc|main~1_combout\,
	datac => \controlpath_risc|Equal9~0_combout\,
	datad => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(15),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlpath_risc|Q.JRI~regout\);

-- Location: LC_X2_Y8_N6
\controlpath_risc|Equal9~1\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|Equal9~1_combout\ = ((!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(14) & (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(12) & !\datapath_risc|Inst_reg_exe|next_instruction1|dout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(14),
	datac => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(12),
	datad => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|Equal9~1_combout\);

-- Location: LC_X1_Y7_N7
\controlpath_risc|Q.ADI\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|Q.ADI~regout\ = DFFEAS((\controlpath_risc|nQ.SW1~0_combout\ & (!\controlpath_risc|main~1_combout\ & (\controlpath_risc|Equal9~1_combout\ & !\datapath_risc|Inst_reg_exe|next_instruction1|dout\(15)))), GLOBAL(\clk~combout\), VCC, , , , , , 
-- )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \controlpath_risc|nQ.SW1~0_combout\,
	datab => \controlpath_risc|main~1_combout\,
	datac => \controlpath_risc|Equal9~1_combout\,
	datad => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(15),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlpath_risc|Q.ADI~regout\);

-- Location: LC_X1_Y8_N1
\controlpath_risc|en_A~1\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|en_A~1_combout\ = (((!\controlpath_risc|Q.LW1~regout\ & !\controlpath_risc|Q.SW1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \controlpath_risc|Q.LW1~regout\,
	datad => \controlpath_risc|Q.SW1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|en_A~1_combout\);

-- Location: LC_X2_Y8_N0
\controlpath_risc|WideOr16\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|WideOr16~combout\ = (\controlpath_risc|Q.ADL~regout\) # ((\controlpath_risc|Q.JRI~regout\) # ((\controlpath_risc|Q.ADI~regout\) # (!\controlpath_risc|en_A~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffef",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|Q.ADL~regout\,
	datab => \controlpath_risc|Q.JRI~regout\,
	datac => \controlpath_risc|en_A~1_combout\,
	datad => \controlpath_risc|Q.ADI~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|WideOr16~combout\);

-- Location: LC_X1_Y8_N7
\controlpath_risc|nQ.LW1~0\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|nQ.LW1~0_combout\ = (\controlpath_risc|Q.FETCH~regout\ & (((!\reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|Q.FETCH~regout\,
	datac => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|nQ.LW1~0_combout\);

-- Location: LC_X2_Y8_N5
\controlpath_risc|Q.BEQ\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|Q.BEQ~regout\ = DFFEAS((!\controlpath_risc|main~0\ & (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(15) & (\controlpath_risc|Equal9~1_combout\ & \controlpath_risc|nQ.LW1~0_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \controlpath_risc|main~0\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(15),
	datac => \controlpath_risc|Equal9~1_combout\,
	datad => \controlpath_risc|nQ.LW1~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlpath_risc|Q.BEQ~regout\);

-- Location: LC_X2_Y7_N4
\controlpath_risc|Q.JLR\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|Q.JLR~regout\ = DFFEAS(((!\reset~combout\ & (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(12) & \controlpath_risc|Q.JMP~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \reset~combout\,
	datac => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(12),
	datad => \controlpath_risc|Q.JMP~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlpath_risc|Q.JLR~regout\);

-- Location: LC_X2_Y9_N1
\controlpath_risc|WideOr8~0\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|WideOr8~0_combout\ = ((!\controlpath_risc|Q.SW2~regout\ & ((!\controlpath_risc|Q.LW2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \controlpath_risc|Q.SW2~regout\,
	datad => \controlpath_risc|Q.LW2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|WideOr8~0_combout\);

-- Location: LC_X2_Y7_N8
\controlpath_risc|Q.LHI\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|Q.LHI~regout\ = DFFEAS((\controlpath_risc|Q.FETCH~regout\ & (!\reset~combout\ & (\controlpath_risc|Equal9~0_combout\ & !\datapath_risc|Inst_reg_exe|next_instruction1|dout\(15)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \controlpath_risc|Q.FETCH~regout\,
	datab => \reset~combout\,
	datac => \controlpath_risc|Equal9~0_combout\,
	datad => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(15),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlpath_risc|Q.LHI~regout\);

-- Location: LC_X2_Y7_N0
\controlpath_risc|en_c~0\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|en_c~0_combout\ = ((!\reset~combout\ & ((!\controlpath_risc|Q.LHI~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datad => \controlpath_risc|Q.LHI~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|en_c~0_combout\);

-- Location: LC_X2_Y7_N3
\controlpath_risc|m_a2~0\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|m_a2~0_combout\ = (\controlpath_risc|Q.RST~regout\ & (\controlpath_risc|WideOr8~0_combout\ & (\controlpath_risc|en_c~0_combout\ & !\controlpath_risc|Q.FETCH~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|Q.RST~regout\,
	datab => \controlpath_risc|WideOr8~0_combout\,
	datac => \controlpath_risc|en_c~0_combout\,
	datad => \controlpath_risc|Q.FETCH~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|m_a2~0_combout\);

-- Location: LC_X2_Y7_N5
\controlpath_risc|m_op1_1~0\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|m_op1_1~0_combout\ = (\controlpath_risc|Q.BEQ~regout\) # (((\controlpath_risc|Q.JLR~regout\) # (!\controlpath_risc|m_a2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|Q.BEQ~regout\,
	datac => \controlpath_risc|Q.JLR~regout\,
	datad => \controlpath_risc|m_a2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|m_op1_1~0_combout\);

-- Location: LC_X11_Y9_N9
\controlpath_risc|m_op2_1\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|m_op2_1~combout\ = ((GLOBAL(\controlpath_risc|m_op1_1~0_combout\) & ((\controlpath_risc|m_op2_1~combout\))) # (!GLOBAL(\controlpath_risc|m_op1_1~0_combout\) & (\controlpath_risc|WideOr16~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \controlpath_risc|WideOr16~combout\,
	datac => \controlpath_risc|m_op1_1~0_combout\,
	datad => \controlpath_risc|m_op2_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|m_op2_1~combout\);

-- Location: LC_X2_Y9_N5
\controlpath_risc|en_ir~0\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|en_ir~0_combout\ = (((\reset~combout\) # (\controlpath_risc|Q.SW2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \controlpath_risc|Q.SW2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|en_ir~0_combout\);

-- Location: LC_X7_Y6_N1
\controlpath_risc|en_ir\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|en_ir~combout\ = ((\controlpath_risc|en_ir~0_combout\ & ((\controlpath_risc|en_ir~combout\))) # (!\controlpath_risc|en_ir~0_combout\ & (\controlpath_risc|Q.FETCH~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \controlpath_risc|Q.FETCH~regout\,
	datac => \controlpath_risc|en_ir~0_combout\,
	datad => \controlpath_risc|en_ir~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|en_ir~combout\);

-- Location: LC_X7_Y6_N9
\datapath_risc|Inst_reg_exe|next_instruction1|dout[15]\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|Selector13~6\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(14) & (((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(13))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(12)))) # 
-- (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(14) & (!N1_dout[15] & (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(12) $ (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(13)))))
-- \datapath_risc|Inst_reg_exe|next_instruction1|dout\(15) = DFFEAS(\controlpath_risc|Selector13~6\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \controlpath_risc|en_ir~combout\, \datapath_risc|Inst_reg_fetch|next_instruction|dout\(15), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd06",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(12),
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(13),
	datac => \datapath_risc|Inst_reg_fetch|next_instruction|dout\(15),
	datad => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(14),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \controlpath_risc|en_ir~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|Selector13~6\,
	regout => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(15));

-- Location: LC_X7_Y6_N0
\datapath_risc|Inst_reg_exe|next_instruction1|dout[13]\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|Selector8~0\ = (((N1_dout[13] & \controlpath_risc|Q.AON~regout\)))
-- \datapath_risc|Inst_reg_exe|next_instruction1|dout\(13) = DFFEAS(\controlpath_risc|Selector8~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \controlpath_risc|en_ir~combout\, \datapath_risc|Inst_reg_fetch|next_instruction|dout\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|Inst_reg_fetch|next_instruction|dout\(13),
	datad => \controlpath_risc|Q.AON~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \controlpath_risc|en_ir~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|Selector8~0\,
	regout => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(13));

-- Location: LC_X6_Y9_N6
\controlpath_risc|op_sel\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|op_sel~combout\ = (GLOBAL(\controlpath_risc|m_op1_1~0_combout\) & (((\controlpath_risc|op_sel~combout\)))) # (!GLOBAL(\controlpath_risc|m_op1_1~0_combout\) & (\controlpath_risc|Selector8~0\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|Selector8~0\,
	datab => \controlpath_risc|op_sel~combout\,
	datac => \controlpath_risc|m_op1_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|op_sel~combout\);

-- Location: LC_X7_Y9_N4
\datapath_risc|mux_op1|output~22\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op1|output~22_combout\ = (!\controlpath_risc|m_op1_1~combout\ & (!\controlpath_risc|m_op1_0~combout\ & ((\datapath_risc|RF|Mux16~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_op1_1~combout\,
	datab => \controlpath_risc|m_op1_0~combout\,
	datad => \datapath_risc|RF|Mux16~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op1|output~22_combout\);

-- Location: LC_X1_Y7_N4
\controlpath_risc|WideOr19~0\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|WideOr19~0_combout\ = (((!\controlpath_risc|Q.ADL~regout\ & !\controlpath_risc|Q.AON~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \controlpath_risc|Q.ADL~regout\,
	datad => \controlpath_risc|Q.AON~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|WideOr19~0_combout\);

-- Location: LC_X2_Y8_N7
\controlpath_risc|WideOr19\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|WideOr19~combout\ = (\controlpath_risc|Q.BEQ~regout\) # (((\controlpath_risc|Q.JLR~regout\) # (!\controlpath_risc|WideOr19~0_combout\)) # (!\controlpath_risc|en_A~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|Q.BEQ~regout\,
	datab => \controlpath_risc|en_A~1_combout\,
	datac => \controlpath_risc|Q.JLR~regout\,
	datad => \controlpath_risc|WideOr19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|WideOr19~combout\);

-- Location: LC_X2_Y7_N1
\controlpath_risc|m_a2~1\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|m_a2~1_combout\ = ((\controlpath_risc|Q.ADI~regout\) # ((\controlpath_risc|Q.JRI~regout\) # (!\controlpath_risc|m_a2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \controlpath_risc|Q.ADI~regout\,
	datac => \controlpath_risc|Q.JRI~regout\,
	datad => \controlpath_risc|m_a2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|m_a2~1_combout\);

-- Location: LC_X8_Y8_N6
\controlpath_risc|m_a2\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|m_a2~combout\ = ((\controlpath_risc|m_a2~1_combout\ & ((\controlpath_risc|m_a2~combout\))) # (!\controlpath_risc|m_a2~1_combout\ & (!\controlpath_risc|WideOr19~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \controlpath_risc|WideOr19~combout\,
	datac => \controlpath_risc|m_a2~combout\,
	datad => \controlpath_risc|m_a2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|m_a2~combout\);

-- Location: LC_X2_Y9_N9
\controlpath_risc|m_d3_1~0\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|m_d3_1~0_combout\ = (((!\controlpath_risc|Q.LHI~regout\ & !\controlpath_risc|Q.LW2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \controlpath_risc|Q.LHI~regout\,
	datad => \controlpath_risc|Q.LW2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|m_d3_1~0_combout\);

-- Location: LC_X4_Y9_N8
\controlpath_risc|m_d3_1\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|m_d3_1~combout\ = (GLOBAL(\controlpath_risc|m_a3_1~0_combout\) & (((\controlpath_risc|m_d3_1~combout\)))) # (!GLOBAL(\controlpath_risc|m_a3_1~0_combout\) & (!\controlpath_risc|m_d3_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd11",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_d3_1~0_combout\,
	datab => \controlpath_risc|m_a3_1~0_combout\,
	datad => \controlpath_risc|m_d3_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|m_d3_1~combout\);

-- Location: LC_X6_Y5_N0
\datapath_risc|mux_d3|output~2\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output~2_combout\ = (((\controlpath_risc|m_d3_1~combout\) # (\controlpath_risc|m_d3_0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \controlpath_risc|m_d3_1~combout\,
	datad => \controlpath_risc|m_d3_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output~2_combout\);

-- Location: LC_X6_Y8_N2
\datapath_risc|mux_d3|output~5\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output~5_combout\ = (\datapath_risc|RF|Mux29~4_combout\ & (((\controlpath_risc|m_d3_0~combout\ & !\controlpath_risc|m_d3_1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|RF|Mux29~4_combout\,
	datac => \controlpath_risc|m_d3_0~combout\,
	datad => \controlpath_risc|m_d3_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output~5_combout\);

-- Location: LC_X1_Y9_N1
\controlpath_risc|WideOr8~1\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|WideOr8~1_combout\ = (((!\controlpath_risc|Q.RST1~regout\ & !\controlpath_risc|Q.HKT~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \controlpath_risc|Q.RST1~regout\,
	datad => \controlpath_risc|Q.HKT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|WideOr8~1_combout\);

-- Location: LC_X2_Y9_N6
\controlpath_risc|en_irf\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|en_irf~combout\ = ((\controlpath_risc|en_ir~0_combout\ & (\controlpath_risc|en_irf~combout\)) # (!\controlpath_risc|en_ir~0_combout\ & ((!\controlpath_risc|WideOr8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|en_irf~combout\,
	datac => \controlpath_risc|WideOr8~1_combout\,
	datad => \controlpath_risc|en_ir~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|en_irf~combout\);

-- Location: LC_X10_Y7_N5
\datapath_risc|Inst_reg_fetch|next_instruction|dout[15]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|mem_out[15]~15\ = (((\controlpath_risc|rd_mem~combout\ & \datapath_risc|RAM|memory~436_combout\)))
-- \datapath_risc|Inst_reg_fetch|next_instruction|dout\(15) = DFFEAS(\datapath_risc|RAM|mem_out[15]~15\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \controlpath_risc|en_irf~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \controlpath_risc|rd_mem~combout\,
	datad => \datapath_risc|RAM|memory~436_combout\,
	aclr => \reset~combout\,
	ena => \controlpath_risc|en_irf~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|mem_out[15]~15\,
	regout => \datapath_risc|Inst_reg_fetch|next_instruction|dout\(15));

-- Location: LC_X10_Y7_N7
\datapath_risc|mux_d3|output[15]~32\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output[15]~32_combout\ = (\controlpath_risc|m_d3_1~combout\ & ((\controlpath_risc|m_d3_0~combout\ & ((\datapath_risc|RAM|mem_out[15]~15\))) # (!\controlpath_risc|m_d3_0~combout\ & 
-- (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_d3_1~combout\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(8),
	datac => \datapath_risc|RAM|mem_out[15]~15\,
	datad => \controlpath_risc|m_d3_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output[15]~32_combout\);

-- Location: LC_X1_Y8_N2
\controlpath_risc|WideOr20\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|WideOr20~combout\ = (((\controlpath_risc|Q.SW2~regout\) # (!\controlpath_risc|WideOr20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \controlpath_risc|WideOr20~0_combout\,
	datad => \controlpath_risc|Q.SW2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|WideOr20~combout\);

-- Location: LC_X1_Y8_N3
\controlpath_risc|wr_rf\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|wr_rf~combout\ = ((GLOBAL(\reset~combout\) & (\controlpath_risc|wr_rf~combout\)) # (!GLOBAL(\reset~combout\) & ((!\controlpath_risc|WideOr20~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa33",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|wr_rf~combout\,
	datab => \controlpath_risc|WideOr20~combout\,
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|wr_rf~combout\);

-- Location: LC_X1_Y9_N5
\controlpath_risc|WideOr24\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|WideOr24~combout\ = (\controlpath_risc|Q.LHI~regout\) # ((\controlpath_risc|Q.ADI~regout\) # ((\controlpath_risc|Q.JMP~regout\) # (\controlpath_risc|Q.LW2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|Q.LHI~regout\,
	datab => \controlpath_risc|Q.ADI~regout\,
	datac => \controlpath_risc|Q.JMP~regout\,
	datad => \controlpath_risc|Q.LW2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|WideOr24~combout\);

-- Location: LC_X2_Y5_N6
\controlpath_risc|m_a3_1\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|m_a3_1~combout\ = ((GLOBAL(\controlpath_risc|m_a3_1~0_combout\) & (\controlpath_risc|m_a3_1~combout\)) # (!GLOBAL(\controlpath_risc|m_a3_1~0_combout\) & ((!\controlpath_risc|WideOr24~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_a3_1~combout\,
	datac => \controlpath_risc|WideOr24~combout\,
	datad => \controlpath_risc|m_a3_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|m_a3_1~combout\);

-- Location: LC_X6_Y6_N3
\datapath_risc|mux_d3|output~9\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output~9_combout\ = ((!\controlpath_risc|m_d3_1~combout\ & (\datapath_risc|RF|Mux27~4_combout\ & \controlpath_risc|m_d3_0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \controlpath_risc|m_d3_1~combout\,
	datac => \datapath_risc|RF|Mux27~4_combout\,
	datad => \controlpath_risc|m_d3_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output~9_combout\);

-- Location: LC_X4_Y9_N6
\controlpath_risc|wr_mem\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|wr_mem~combout\ = ((GLOBAL(\reset~combout\) & (\controlpath_risc|wr_mem~combout\)) # (!GLOBAL(\reset~combout\) & ((\controlpath_risc|Q.SW2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|wr_mem~combout\,
	datac => \reset~combout\,
	datad => \controlpath_risc|Q.SW2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|wr_mem~combout\);

-- Location: LC_X13_Y9_N8
\datapath_risc|RAM|memory~467\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~467_combout\ = (\datapath_risc|mux_mem_a|output[2]~3\ & (\datapath_risc|mux_mem_a|output[1]~0\ & (\datapath_risc|mux_mem_a|output[0]~1\ & \datapath_risc|mux_mem_a|output[3]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_mem_a|output[2]~3\,
	datab => \datapath_risc|mux_mem_a|output[1]~0\,
	datac => \datapath_risc|mux_mem_a|output[0]~1\,
	datad => \datapath_risc|mux_mem_a|output[3]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~467_combout\);

-- Location: LC_X13_Y9_N2
\datapath_risc|RAM|memory~468\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~468_combout\ = (((\controlpath_risc|wr_mem~combout\ & \datapath_risc|RAM|memory~467_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \controlpath_risc|wr_mem~combout\,
	datad => \datapath_risc|RAM|memory~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~468_combout\);

-- Location: LC_X13_Y9_N4
\datapath_risc|RAM|memory~265\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~265_regout\ = DFFEAS((((\datapath_risc|RF|Mux11~4\))), GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~468_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \datapath_risc|RF|Mux11~4\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~265_regout\);

-- Location: LC_X11_Y4_N9
\datapath_risc|RAM|memory~465\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~465_combout\ = (!\datapath_risc|mux_mem_a|output[0]~1\ & (!\datapath_risc|mux_mem_a|output[1]~0\ & (\datapath_risc|mux_mem_a|output[2]~3\ & \datapath_risc|mux_mem_a|output[3]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_mem_a|output[0]~1\,
	datab => \datapath_risc|mux_mem_a|output[1]~0\,
	datac => \datapath_risc|mux_mem_a|output[2]~3\,
	datad => \datapath_risc|mux_mem_a|output[3]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~465_combout\);

-- Location: LC_X11_Y4_N6
\datapath_risc|RAM|memory~466\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~466_combout\ = (((\controlpath_risc|wr_mem~combout\ & \datapath_risc|RAM|memory~465_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \controlpath_risc|wr_mem~combout\,
	datad => \datapath_risc|RAM|memory~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~466_combout\);

-- Location: LC_X14_Y9_N7
\datapath_risc|RAM|memory~217\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~217_regout\ = DFFEAS((((\datapath_risc|RF|Mux11~4\))), GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~466_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \datapath_risc|RF|Mux11~4\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~217_regout\);

-- Location: LC_X13_Y8_N7
\datapath_risc|RAM|memory~463\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~463_combout\ = (\datapath_risc|mux_mem_a|output[3]~2\ & (\datapath_risc|mux_mem_a|output[1]~0\ & (\datapath_risc|mux_mem_a|output[2]~3\ & !\datapath_risc|mux_mem_a|output[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_mem_a|output[3]~2\,
	datab => \datapath_risc|mux_mem_a|output[1]~0\,
	datac => \datapath_risc|mux_mem_a|output[2]~3\,
	datad => \datapath_risc|mux_mem_a|output[0]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~463_combout\);

-- Location: LC_X13_Y8_N8
\datapath_risc|RAM|memory~464\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~464_combout\ = (((\controlpath_risc|wr_mem~combout\ & \datapath_risc|RAM|memory~463_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \controlpath_risc|wr_mem~combout\,
	datad => \datapath_risc|RAM|memory~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~464_combout\);

-- Location: LC_X14_Y8_N2
\datapath_risc|RAM|memory~249\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~324\ = (\datapath_risc|mux_mem_a|output[1]~0\ & (((M1L245Q) # (\datapath_risc|mux_mem_a|output[0]~1\)))) # (!\datapath_risc|mux_mem_a|output[1]~0\ & (\datapath_risc|RAM|memory~217_regout\ & 
-- ((!\datapath_risc|mux_mem_a|output[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~217_regout\,
	datab => \datapath_risc|mux_mem_a|output[1]~0\,
	datac => \datapath_risc|RF|Mux11~4\,
	datad => \datapath_risc|mux_mem_a|output[0]~1\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~324\,
	regout => \datapath_risc|RAM|memory~249_regout\);

-- Location: LC_X13_Y8_N2
\datapath_risc|RAM|memory~461\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~461_combout\ = (\datapath_risc|mux_mem_a|output[3]~2\ & (!\datapath_risc|mux_mem_a|output[1]~0\ & (\datapath_risc|mux_mem_a|output[2]~3\ & \datapath_risc|mux_mem_a|output[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_mem_a|output[3]~2\,
	datab => \datapath_risc|mux_mem_a|output[1]~0\,
	datac => \datapath_risc|mux_mem_a|output[2]~3\,
	datad => \datapath_risc|mux_mem_a|output[0]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~461_combout\);

-- Location: LC_X13_Y8_N3
\datapath_risc|RAM|memory~462\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~462_combout\ = (((\controlpath_risc|wr_mem~combout\ & \datapath_risc|RAM|memory~461_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \controlpath_risc|wr_mem~combout\,
	datad => \datapath_risc|RAM|memory~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~462_combout\);

-- Location: LC_X14_Y8_N3
\datapath_risc|RAM|memory~233\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~325\ = (\datapath_risc|mux_mem_a|output[0]~1\ & ((\datapath_risc|RAM|memory~324\ & (\datapath_risc|RAM|memory~265_regout\)) # (!\datapath_risc|RAM|memory~324\ & ((M1L229Q))))) # (!\datapath_risc|mux_mem_a|output[0]~1\ & 
-- (((\datapath_risc|RAM|memory~324\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~265_regout\,
	datab => \datapath_risc|mux_mem_a|output[0]~1\,
	datac => \datapath_risc|RF|Mux11~4\,
	datad => \datapath_risc|RAM|memory~324\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~325\,
	regout => \datapath_risc|RAM|memory~233_regout\);

-- Location: LC_X13_Y5_N8
\datapath_risc|RAM|memory~443\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~443_combout\ = (\datapath_risc|mux_mem_a|output[0]~1\ & (!\datapath_risc|mux_mem_a|output[2]~3\ & (\datapath_risc|mux_mem_a|output[1]~0\ & \datapath_risc|mux_mem_a|output[3]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_mem_a|output[0]~1\,
	datab => \datapath_risc|mux_mem_a|output[2]~3\,
	datac => \datapath_risc|mux_mem_a|output[1]~0\,
	datad => \datapath_risc|mux_mem_a|output[3]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~443_combout\);

-- Location: LC_X13_Y5_N6
\datapath_risc|RAM|memory~444\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~444_combout\ = (((\controlpath_risc|wr_mem~combout\ & \datapath_risc|RAM|memory~443_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \controlpath_risc|wr_mem~combout\,
	datad => \datapath_risc|RAM|memory~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~444_combout\);

-- Location: LC_X12_Y6_N5
\datapath_risc|RAM|memory~201\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~201_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~444_combout\, \datapath_risc|RF|Mux11~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux11~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~201_regout\);

-- Location: LC_X1_Y9_N2
\controlpath_risc|WideOr22\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|WideOr22~combout\ = (\controlpath_risc|Q.LHI~regout\) # ((\controlpath_risc|Q.LW2~regout\) # ((\controlpath_risc|Q.JMP~regout\) # (!\controlpath_risc|WideOr19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffef",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|Q.LHI~regout\,
	datab => \controlpath_risc|Q.LW2~regout\,
	datac => \controlpath_risc|WideOr19~0_combout\,
	datad => \controlpath_risc|Q.JMP~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|WideOr22~combout\);

-- Location: LC_X1_Y9_N6
\controlpath_risc|m_a3_0\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|m_a3_0~combout\ = ((GLOBAL(\controlpath_risc|m_a3_1~0_combout\) & ((\controlpath_risc|m_a3_0~combout\))) # (!GLOBAL(\controlpath_risc|m_a3_1~0_combout\) & (!\controlpath_risc|WideOr22~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \controlpath_risc|WideOr22~combout\,
	datac => \controlpath_risc|m_a3_0~combout\,
	datad => \controlpath_risc|m_a3_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|m_a3_0~combout\);

-- Location: LC_X8_Y8_N0
\datapath_risc|Inst_reg_exe|next_instruction1|dout[6]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_a2|output\(0) = (((N1_dout[6]) # (\controlpath_risc|m_a2~combout\)))
-- \datapath_risc|Inst_reg_exe|next_instruction1|dout\(6) = DFFEAS(\datapath_risc|mux_a2|output\(0), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \controlpath_risc|en_ir~combout\, \datapath_risc|Inst_reg_fetch|next_instruction|dout\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|Inst_reg_fetch|next_instruction|dout\(6),
	datad => \controlpath_risc|m_a2~combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \controlpath_risc|en_ir~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_a2|output\(0),
	regout => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(6));

-- Location: LC_X2_Y5_N9
\datapath_risc|mux_a3|output[0]~0\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_a3|output[0]~0_combout\ = (\controlpath_risc|m_a3_1~combout\ & (\controlpath_risc|m_a3_0~combout\)) # (!\controlpath_risc|m_a3_1~combout\ & ((\controlpath_risc|m_a3_0~combout\ & 
-- ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(6)))) # (!\controlpath_risc|m_a3_0~combout\ & (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_a3_1~combout\,
	datab => \controlpath_risc|m_a3_0~combout\,
	datac => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	datad => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_a3|output[0]~0_combout\);

-- Location: LC_X3_Y5_N5
\datapath_risc|mux_a3|output[0]~1\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_a3|output[0]~1_combout\ = (\datapath_risc|mux_a3|output[0]~0_combout\) # (((\controlpath_risc|m_a3_1~combout\ & \datapath_risc|Inst_reg_exe|next_instruction1|dout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_a3|output[0]~0_combout\,
	datac => \controlpath_risc|m_a3_1~combout\,
	datad => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_a3|output[0]~1_combout\);

-- Location: LC_X3_Y5_N9
\datapath_risc|mux_a3|output[2]~4\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_a3|output[2]~4_combout\ = (\controlpath_risc|m_a3_0~combout\ & ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(8)) # ((\controlpath_risc|m_a3_1~combout\)))) # (!\controlpath_risc|m_a3_0~combout\ & 
-- (((!\controlpath_risc|m_a3_1~combout\ & \datapath_risc|Inst_reg_exe|next_instruction1|dout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ada8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_a3_0~combout\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(8),
	datac => \controlpath_risc|m_a3_1~combout\,
	datad => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_a3|output[2]~4_combout\);

-- Location: LC_X3_Y5_N3
\datapath_risc|mux_a3|output[2]~5\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_a3|output[2]~5_combout\ = ((\datapath_risc|mux_a3|output[2]~4_combout\) # ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(5) & \controlpath_risc|m_a3_1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(5),
	datac => \controlpath_risc|m_a3_1~combout\,
	datad => \datapath_risc|mux_a3|output[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_a3|output[2]~5_combout\);

-- Location: LC_X3_Y4_N3
\datapath_risc|RF|Decoder0~4\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Decoder0~4_combout\ = (\controlpath_risc|wr_rf~combout\ & (!\datapath_risc|mux_a3|output[1]~3_combout\ & (!\datapath_risc|mux_a3|output[0]~1_combout\ & \datapath_risc|mux_a3|output[2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|wr_rf~combout\,
	datab => \datapath_risc|mux_a3|output[1]~3_combout\,
	datac => \datapath_risc|mux_a3|output[0]~1_combout\,
	datad => \datapath_risc|mux_a3|output[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Decoder0~4_combout\);

-- Location: LC_X4_Y8_N0
\datapath_risc|RF|registers[4][4]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux11~0\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & ((\datapath_risc|RF|registers[6][4]~regout\) # ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9))))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) 
-- & (((P1_registers[4][4] & !\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9)))))
-- \datapath_risc|RF|registers[4][4]~regout\ = DFFEAS(\datapath_risc|RF|Mux11~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~4_combout\, \datapath_risc|mux_d3|output\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	datab => \datapath_risc|RF|registers[6][4]~regout\,
	datac => \datapath_risc|mux_d3|output\(4),
	datad => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux11~0\,
	regout => \datapath_risc|RF|registers[4][4]~regout\);

-- Location: LC_X5_Y6_N7
\datapath_risc|RF|registers[6][4]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux27~0\ = (\datapath_risc|mux_a2|output\(1) & ((\datapath_risc|mux_a2|output\(0)) # ((P1_registers[6][4])))) # (!\datapath_risc|mux_a2|output\(1) & (!\datapath_risc|mux_a2|output\(0) & ((\datapath_risc|RF|registers[4][4]~regout\))))
-- \datapath_risc|RF|registers[6][4]~regout\ = DFFEAS(\datapath_risc|RF|Mux27~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~6_combout\, \datapath_risc|mux_d3|output\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_a2|output\(1),
	datab => \datapath_risc|mux_a2|output\(0),
	datac => \datapath_risc|mux_d3|output\(4),
	datad => \datapath_risc|RF|registers[4][4]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux27~0\,
	regout => \datapath_risc|RF|registers[6][4]~regout\);

-- Location: LC_X3_Y4_N0
\datapath_risc|RF|Decoder0~7\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Decoder0~7_combout\ = (\controlpath_risc|wr_rf~combout\ & (\datapath_risc|mux_a3|output[1]~3_combout\ & (\datapath_risc|mux_a3|output[0]~1_combout\ & \datapath_risc|mux_a3|output[2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|wr_rf~combout\,
	datab => \datapath_risc|mux_a3|output[1]~3_combout\,
	datac => \datapath_risc|mux_a3|output[0]~1_combout\,
	datad => \datapath_risc|mux_a3|output[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Decoder0~7_combout\);

-- Location: LC_X4_Y8_N1
\datapath_risc|RF|registers[7][4]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux11~1\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & ((\datapath_risc|RF|Mux11~0\ & ((P1_registers[7][4]))) # (!\datapath_risc|RF|Mux11~0\ & (\datapath_risc|RF|registers[5][4]~regout\)))) # 
-- (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & (((\datapath_risc|RF|Mux11~0\))))
-- \datapath_risc|RF|registers[7][4]~regout\ = DFFEAS(\datapath_risc|RF|Mux11~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~7_combout\, \datapath_risc|mux_d3|output\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	datab => \datapath_risc|RF|registers[5][4]~regout\,
	datac => \datapath_risc|mux_d3|output\(4),
	datad => \datapath_risc|RF|Mux11~0\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux11~1\,
	regout => \datapath_risc|RF|registers[7][4]~regout\);

-- Location: LC_X3_Y4_N6
\datapath_risc|RF|Decoder0~5\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Decoder0~5_combout\ = (\controlpath_risc|wr_rf~combout\ & (!\datapath_risc|mux_a3|output[1]~3_combout\ & (\datapath_risc|mux_a3|output[0]~1_combout\ & \datapath_risc|mux_a3|output[2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|wr_rf~combout\,
	datab => \datapath_risc|mux_a3|output[1]~3_combout\,
	datac => \datapath_risc|mux_a3|output[0]~1_combout\,
	datad => \datapath_risc|mux_a3|output[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Decoder0~5_combout\);

-- Location: LC_X5_Y4_N3
\datapath_risc|RF|registers[5][4]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux27~1\ = (\datapath_risc|mux_a2|output\(0) & ((\datapath_risc|RF|Mux27~0\ & (\datapath_risc|RF|registers[7][4]~regout\)) # (!\datapath_risc|RF|Mux27~0\ & ((P1_registers[5][4]))))) # (!\datapath_risc|mux_a2|output\(0) & 
-- (((\datapath_risc|RF|Mux27~0\))))
-- \datapath_risc|RF|registers[5][4]~regout\ = DFFEAS(\datapath_risc|RF|Mux27~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~5_combout\, \datapath_risc|mux_d3|output\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_a2|output\(0),
	datab => \datapath_risc|RF|registers[7][4]~regout\,
	datac => \datapath_risc|mux_d3|output\(4),
	datad => \datapath_risc|RF|Mux27~0\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux27~1\,
	regout => \datapath_risc|RF|registers[5][4]~regout\);

-- Location: LC_X10_Y9_N9
\datapath_risc|RAM|memory~441\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~441_combout\ = (!\datapath_risc|mux_mem_a|output[1]~0\ & (\datapath_risc|mux_mem_a|output[3]~2\ & (!\datapath_risc|mux_mem_a|output[0]~1\ & !\datapath_risc|mux_mem_a|output[2]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_mem_a|output[1]~0\,
	datab => \datapath_risc|mux_mem_a|output[3]~2\,
	datac => \datapath_risc|mux_mem_a|output[0]~1\,
	datad => \datapath_risc|mux_mem_a|output[2]~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~441_combout\);

-- Location: LC_X10_Y9_N7
\datapath_risc|RAM|memory~442\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~442_combout\ = (((\controlpath_risc|wr_mem~combout\ & \datapath_risc|RAM|memory~441_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \controlpath_risc|wr_mem~combout\,
	datad => \datapath_risc|RAM|memory~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~442_combout\);

-- Location: LC_X4_Y9_N7
\datapath_risc|RAM|memory~153\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux11~4\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & (((\datapath_risc|RF|Mux11~1\)))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & (((\datapath_risc|RF|Mux11~3\))))
-- \datapath_risc|RAM|memory~153_regout\ = DFFEAS(\datapath_risc|RF|Mux11~4\, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~442_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(11),
	datac => \datapath_risc|RF|Mux11~3\,
	datad => \datapath_risc|RF|Mux11~1\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux11~4\,
	regout => \datapath_risc|RAM|memory~153_regout\);

-- Location: LC_X10_Y10_N0
\datapath_risc|RAM|memory~439\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~439_combout\ = (!\datapath_risc|mux_mem_a|output[1]~0\ & (\datapath_risc|mux_mem_a|output[0]~1\ & (\datapath_risc|mux_mem_a|output[3]~2\ & !\datapath_risc|mux_mem_a|output[2]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_mem_a|output[1]~0\,
	datab => \datapath_risc|mux_mem_a|output[0]~1\,
	datac => \datapath_risc|mux_mem_a|output[3]~2\,
	datad => \datapath_risc|mux_mem_a|output[2]~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~439_combout\);

-- Location: LC_X10_Y10_N7
\datapath_risc|RAM|memory~440\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~440_combout\ = (\controlpath_risc|wr_mem~combout\ & (((\datapath_risc|RAM|memory~439_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|wr_mem~combout\,
	datac => \datapath_risc|RAM|memory~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~440_combout\);

-- Location: LC_X10_Y6_N2
\datapath_risc|RAM|memory~169\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~317\ = (\datapath_risc|mux_mem_a|output[0]~1\ & (((M1L165Q) # (\datapath_risc|mux_mem_a|output[1]~0\)))) # (!\datapath_risc|mux_mem_a|output[0]~1\ & (\datapath_risc|RAM|memory~153_regout\ & 
-- ((!\datapath_risc|mux_mem_a|output[1]~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~153_regout\,
	datab => \datapath_risc|mux_mem_a|output[0]~1\,
	datac => \datapath_risc|RF|Mux11~4\,
	datad => \datapath_risc|mux_mem_a|output[1]~0\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~317\,
	regout => \datapath_risc|RAM|memory~169_regout\);

-- Location: LC_X10_Y10_N4
\datapath_risc|RAM|memory~437\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~437_combout\ = (\datapath_risc|mux_mem_a|output[1]~0\ & (!\datapath_risc|mux_mem_a|output[0]~1\ & (\datapath_risc|mux_mem_a|output[3]~2\ & !\datapath_risc|mux_mem_a|output[2]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_mem_a|output[1]~0\,
	datab => \datapath_risc|mux_mem_a|output[0]~1\,
	datac => \datapath_risc|mux_mem_a|output[3]~2\,
	datad => \datapath_risc|mux_mem_a|output[2]~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~437_combout\);

-- Location: LC_X10_Y10_N5
\datapath_risc|RAM|memory~438\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~438_combout\ = (((\controlpath_risc|wr_mem~combout\ & \datapath_risc|RAM|memory~437_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \controlpath_risc|wr_mem~combout\,
	datad => \datapath_risc|RAM|memory~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~438_combout\);

-- Location: LC_X10_Y6_N4
\datapath_risc|RAM|memory~185\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~318\ = (\datapath_risc|mux_mem_a|output[1]~0\ & ((\datapath_risc|RAM|memory~317\ & (\datapath_risc|RAM|memory~201_regout\)) # (!\datapath_risc|RAM|memory~317\ & ((M1L181Q))))) # (!\datapath_risc|mux_mem_a|output[1]~0\ & 
-- (((\datapath_risc|RAM|memory~317\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~201_regout\,
	datab => \datapath_risc|mux_mem_a|output[1]~0\,
	datac => \datapath_risc|RF|Mux11~4\,
	datad => \datapath_risc|RAM|memory~317\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~318\,
	regout => \datapath_risc|RAM|memory~185_regout\);

-- Location: LC_X9_Y5_N6
\datapath_risc|RAM|memory~451\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~451_combout\ = (\datapath_risc|mux_mem_a|output[1]~0\ & (!\datapath_risc|mux_mem_a|output[3]~2\ & (\datapath_risc|mux_mem_a|output[0]~1\ & \datapath_risc|mux_mem_a|output[2]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_mem_a|output[1]~0\,
	datab => \datapath_risc|mux_mem_a|output[3]~2\,
	datac => \datapath_risc|mux_mem_a|output[0]~1\,
	datad => \datapath_risc|mux_mem_a|output[2]~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~451_combout\);

-- Location: LC_X9_Y5_N5
\datapath_risc|RAM|memory~452\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~452_combout\ = (\datapath_risc|RAM|memory~451_combout\ & (((\controlpath_risc|wr_mem~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|RAM|memory~451_combout\,
	datac => \controlpath_risc|wr_mem~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~452_combout\);

-- Location: LC_X9_Y4_N0
\datapath_risc|RAM|memory~137\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~137_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~452_combout\, \datapath_risc|RF|Mux11~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux11~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~137_regout\);

-- Location: LC_X10_Y9_N8
\datapath_risc|RAM|memory~449\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~449_combout\ = (!\datapath_risc|mux_mem_a|output[1]~0\ & (!\datapath_risc|mux_mem_a|output[3]~2\ & (!\datapath_risc|mux_mem_a|output[0]~1\ & \datapath_risc|mux_mem_a|output[2]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_mem_a|output[1]~0\,
	datab => \datapath_risc|mux_mem_a|output[3]~2\,
	datac => \datapath_risc|mux_mem_a|output[0]~1\,
	datad => \datapath_risc|mux_mem_a|output[2]~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~449_combout\);

-- Location: LC_X10_Y9_N2
\datapath_risc|RAM|memory~450\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~450_combout\ = (((\controlpath_risc|wr_mem~combout\ & \datapath_risc|RAM|memory~449_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \controlpath_risc|wr_mem~combout\,
	datad => \datapath_risc|RAM|memory~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~450_combout\);

-- Location: LC_X4_Y9_N9
\datapath_risc|RAM|memory~89\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~89_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~450_combout\, \datapath_risc|RF|Mux11~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux11~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~89_regout\);

-- Location: LC_X10_Y8_N7
\datapath_risc|RAM|memory~447\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~447_combout\ = (!\datapath_risc|mux_mem_a|output[0]~1\ & (\datapath_risc|mux_mem_a|output[2]~3\ & (!\datapath_risc|mux_mem_a|output[3]~2\ & \datapath_risc|mux_mem_a|output[1]~0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_mem_a|output[0]~1\,
	datab => \datapath_risc|mux_mem_a|output[2]~3\,
	datac => \datapath_risc|mux_mem_a|output[3]~2\,
	datad => \datapath_risc|mux_mem_a|output[1]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~447_combout\);

-- Location: LC_X10_Y8_N3
\datapath_risc|RAM|memory~448\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~448_combout\ = (((\datapath_risc|RAM|memory~447_combout\ & \controlpath_risc|wr_mem~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \datapath_risc|RAM|memory~447_combout\,
	datad => \controlpath_risc|wr_mem~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~448_combout\);

-- Location: LC_X9_Y8_N1
\datapath_risc|RAM|memory~121\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~319\ = (\datapath_risc|mux_mem_a|output[1]~0\ & (((M1L117Q) # (\datapath_risc|mux_mem_a|output[0]~1\)))) # (!\datapath_risc|mux_mem_a|output[1]~0\ & (\datapath_risc|RAM|memory~89_regout\ & 
-- ((!\datapath_risc|mux_mem_a|output[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[1]~0\,
	datab => \datapath_risc|RAM|memory~89_regout\,
	datac => \datapath_risc|RF|Mux11~4\,
	datad => \datapath_risc|mux_mem_a|output[0]~1\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~319\,
	regout => \datapath_risc|RAM|memory~121_regout\);

-- Location: LC_X9_Y5_N9
\datapath_risc|RAM|memory~445\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~445_combout\ = (\datapath_risc|mux_mem_a|output[0]~1\ & (!\datapath_risc|mux_mem_a|output[3]~2\ & (!\datapath_risc|mux_mem_a|output[1]~0\ & \datapath_risc|mux_mem_a|output[2]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_mem_a|output[0]~1\,
	datab => \datapath_risc|mux_mem_a|output[3]~2\,
	datac => \datapath_risc|mux_mem_a|output[1]~0\,
	datad => \datapath_risc|mux_mem_a|output[2]~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~445_combout\);

-- Location: LC_X9_Y5_N0
\datapath_risc|RAM|memory~446\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~446_combout\ = (((\controlpath_risc|wr_mem~combout\ & \datapath_risc|RAM|memory~445_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \controlpath_risc|wr_mem~combout\,
	datad => \datapath_risc|RAM|memory~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~446_combout\);

-- Location: LC_X9_Y6_N9
\datapath_risc|RAM|memory~105\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~320\ = (\datapath_risc|mux_mem_a|output[0]~1\ & ((\datapath_risc|RAM|memory~319\ & (\datapath_risc|RAM|memory~137_regout\)) # (!\datapath_risc|RAM|memory~319\ & ((M1L101Q))))) # (!\datapath_risc|mux_mem_a|output[0]~1\ & 
-- (((\datapath_risc|RAM|memory~319\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[0]~1\,
	datab => \datapath_risc|RAM|memory~137_regout\,
	datac => \datapath_risc|RF|Mux11~4\,
	datad => \datapath_risc|RAM|memory~319\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~320\,
	regout => \datapath_risc|RAM|memory~105_regout\);

-- Location: LC_X14_Y10_N2
\datapath_risc|RAM|memory~459\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~459_combout\ = (!\datapath_risc|mux_mem_a|output[2]~3\ & (\datapath_risc|mux_mem_a|output[1]~0\ & (\datapath_risc|mux_mem_a|output[0]~1\ & !\datapath_risc|mux_mem_a|output[3]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_mem_a|output[2]~3\,
	datab => \datapath_risc|mux_mem_a|output[1]~0\,
	datac => \datapath_risc|mux_mem_a|output[0]~1\,
	datad => \datapath_risc|mux_mem_a|output[3]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~459_combout\);

-- Location: LC_X14_Y10_N3
\datapath_risc|RAM|memory~460\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~460_combout\ = (((\controlpath_risc|wr_mem~combout\ & \datapath_risc|RAM|memory~459_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \controlpath_risc|wr_mem~combout\,
	datad => \datapath_risc|RAM|memory~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~460_combout\);

-- Location: LC_X13_Y6_N9
\datapath_risc|RAM|memory~73\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~73_regout\ = DFFEAS((((\datapath_risc|RF|Mux11~4\))), GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~460_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \datapath_risc|RF|Mux11~4\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~73_regout\);

-- Location: LC_X11_Y4_N4
\datapath_risc|RAM|memory~457\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~457_combout\ = (!\datapath_risc|mux_mem_a|output[0]~1\ & (!\datapath_risc|mux_mem_a|output[3]~2\ & (!\datapath_risc|mux_mem_a|output[2]~3\ & !\datapath_risc|mux_mem_a|output[1]~0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_mem_a|output[0]~1\,
	datab => \datapath_risc|mux_mem_a|output[3]~2\,
	datac => \datapath_risc|mux_mem_a|output[2]~3\,
	datad => \datapath_risc|mux_mem_a|output[1]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~457_combout\);

-- Location: LC_X11_Y4_N5
\datapath_risc|RAM|memory~458\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~458_combout\ = (((\controlpath_risc|wr_mem~combout\ & \datapath_risc|RAM|memory~457_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \controlpath_risc|wr_mem~combout\,
	datad => \datapath_risc|RAM|memory~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~458_combout\);

-- Location: LC_X12_Y6_N7
\datapath_risc|RAM|memory~25\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~25_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~458_combout\, \datapath_risc|RF|Mux11~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux11~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~25_regout\);

-- Location: LC_X11_Y10_N8
\datapath_risc|RAM|memory~455\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~455_combout\ = (!\datapath_risc|mux_mem_a|output[3]~2\ & (!\datapath_risc|mux_mem_a|output[2]~3\ & (!\datapath_risc|mux_mem_a|output[1]~0\ & \datapath_risc|mux_mem_a|output[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_mem_a|output[3]~2\,
	datab => \datapath_risc|mux_mem_a|output[2]~3\,
	datac => \datapath_risc|mux_mem_a|output[1]~0\,
	datad => \datapath_risc|mux_mem_a|output[0]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~455_combout\);

-- Location: LC_X11_Y10_N5
\datapath_risc|RAM|memory~456\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~456_combout\ = (((\controlpath_risc|wr_mem~combout\ & \datapath_risc|RAM|memory~455_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \controlpath_risc|wr_mem~combout\,
	datad => \datapath_risc|RAM|memory~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~456_combout\);

-- Location: LC_X8_Y5_N3
\datapath_risc|RAM|memory~41\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~321\ = (\datapath_risc|mux_mem_a|output[1]~0\ & (((\datapath_risc|mux_mem_a|output[0]~1\)))) # (!\datapath_risc|mux_mem_a|output[1]~0\ & ((\datapath_risc|mux_mem_a|output[0]~1\ & ((M1L37Q))) # 
-- (!\datapath_risc|mux_mem_a|output[0]~1\ & (\datapath_risc|RAM|memory~25_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~25_regout\,
	datab => \datapath_risc|mux_mem_a|output[1]~0\,
	datac => \datapath_risc|RF|Mux11~4\,
	datad => \datapath_risc|mux_mem_a|output[0]~1\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~321\,
	regout => \datapath_risc|RAM|memory~41_regout\);

-- Location: LC_X9_Y10_N3
\datapath_risc|RAM|memory~453\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~453_combout\ = (!\datapath_risc|mux_mem_a|output[3]~2\ & (\datapath_risc|mux_mem_a|output[1]~0\ & (!\datapath_risc|mux_mem_a|output[0]~1\ & !\datapath_risc|mux_mem_a|output[2]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_mem_a|output[3]~2\,
	datab => \datapath_risc|mux_mem_a|output[1]~0\,
	datac => \datapath_risc|mux_mem_a|output[0]~1\,
	datad => \datapath_risc|mux_mem_a|output[2]~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~453_combout\);

-- Location: LC_X9_Y10_N4
\datapath_risc|RAM|memory~454\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~454_combout\ = (((\controlpath_risc|wr_mem~combout\ & \datapath_risc|RAM|memory~453_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \controlpath_risc|wr_mem~combout\,
	datad => \datapath_risc|RAM|memory~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~454_combout\);

-- Location: LC_X8_Y5_N0
\datapath_risc|RAM|memory~57\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~322\ = (\datapath_risc|mux_mem_a|output[1]~0\ & ((\datapath_risc|RAM|memory~321\ & (\datapath_risc|RAM|memory~73_regout\)) # (!\datapath_risc|RAM|memory~321\ & ((M1L53Q))))) # (!\datapath_risc|mux_mem_a|output[1]~0\ & 
-- (((\datapath_risc|RAM|memory~321\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~73_regout\,
	datab => \datapath_risc|mux_mem_a|output[1]~0\,
	datac => \datapath_risc|RF|Mux11~4\,
	datad => \datapath_risc|RAM|memory~321\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~322\,
	regout => \datapath_risc|RAM|memory~57_regout\);

-- Location: LC_X9_Y6_N2
\datapath_risc|RAM|memory~323\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~323_combout\ = (\datapath_risc|mux_mem_a|output[2]~3\ & ((\datapath_risc|RAM|memory~320\) # ((\datapath_risc|mux_mem_a|output[3]~2\)))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & (((!\datapath_risc|mux_mem_a|output[3]~2\ & 
-- \datapath_risc|RAM|memory~322\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ada8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_mem_a|output[2]~3\,
	datab => \datapath_risc|RAM|memory~320\,
	datac => \datapath_risc|mux_mem_a|output[3]~2\,
	datad => \datapath_risc|RAM|memory~322\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~323_combout\);

-- Location: LC_X9_Y6_N6
\datapath_risc|RAM|memory~326\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~326_combout\ = (\datapath_risc|mux_mem_a|output[3]~2\ & ((\datapath_risc|RAM|memory~323_combout\ & (\datapath_risc|RAM|memory~325\)) # (!\datapath_risc|RAM|memory~323_combout\ & ((\datapath_risc|RAM|memory~318\))))) # 
-- (!\datapath_risc|mux_mem_a|output[3]~2\ & (((\datapath_risc|RAM|memory~323_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|RAM|memory~325\,
	datab => \datapath_risc|RAM|memory~318\,
	datac => \datapath_risc|mux_mem_a|output[3]~2\,
	datad => \datapath_risc|RAM|memory~323_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~326_combout\);

-- Location: LC_X9_Y6_N7
\datapath_risc|Inst_reg_fetch|next_instruction|dout[4]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|mem_out[4]~4\ = (((\controlpath_risc|rd_mem~combout\ & \datapath_risc|RAM|memory~326_combout\)))
-- \datapath_risc|Inst_reg_fetch|next_instruction|dout\(4) = DFFEAS(\datapath_risc|RAM|mem_out[4]~4\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \controlpath_risc|en_irf~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \controlpath_risc|rd_mem~combout\,
	datad => \datapath_risc|RAM|memory~326_combout\,
	aclr => \reset~combout\,
	ena => \controlpath_risc|en_irf~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|mem_out[4]~4\,
	regout => \datapath_risc|Inst_reg_fetch|next_instruction|dout\(4));

-- Location: LC_X5_Y6_N8
\datapath_risc|mux_d3|output[4]~10\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output[4]~10_combout\ = (\controlpath_risc|m_d3_1~combout\ & ((\controlpath_risc|m_d3_0~combout\ & ((\datapath_risc|RAM|mem_out[4]~4\))) # (!\controlpath_risc|m_d3_0~combout\ & 
-- (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(4),
	datab => \controlpath_risc|m_d3_0~combout\,
	datac => \datapath_risc|RAM|mem_out[4]~4\,
	datad => \controlpath_risc|m_d3_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output[4]~10_combout\);

-- Location: LC_X3_Y4_N5
\datapath_risc|RF|Decoder0~0\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Decoder0~0_combout\ = (\controlpath_risc|wr_rf~combout\ & (!\datapath_risc|mux_a3|output[1]~3_combout\ & (!\datapath_risc|mux_a3|output[0]~1_combout\ & !\datapath_risc|mux_a3|output[2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|wr_rf~combout\,
	datab => \datapath_risc|mux_a3|output[1]~3_combout\,
	datac => \datapath_risc|mux_a3|output[0]~1_combout\,
	datad => \datapath_risc|mux_a3|output[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Decoder0~0_combout\);

-- Location: LC_X5_Y6_N6
\datapath_risc|RF|registers[0][4]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output\(4) = (\datapath_risc|mux_d3|output~9_combout\) # ((\datapath_risc|mux_d3|output[4]~10_combout\) # ((!\datapath_risc|mux_d3|output~2_combout\ & \datapath_risc|alu_unit|output[4]~4_combout\)))
-- \datapath_risc|RF|registers[0][4]~regout\ = DFFEAS(\datapath_risc|mux_d3|output\(4), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffba",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_d3|output~9_combout\,
	datab => \datapath_risc|mux_d3|output~2_combout\,
	datac => \datapath_risc|alu_unit|output[4]~4_combout\,
	datad => \datapath_risc|mux_d3|output[4]~10_combout\,
	aclr => \reset~combout\,
	ena => \datapath_risc|RF|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output\(4),
	regout => \datapath_risc|RF|registers[0][4]~regout\);

-- Location: LC_X3_Y4_N7
\datapath_risc|RF|Decoder0~1\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Decoder0~1_combout\ = (\controlpath_risc|wr_rf~combout\ & (!\datapath_risc|mux_a3|output[1]~3_combout\ & (\datapath_risc|mux_a3|output[0]~1_combout\ & !\datapath_risc|mux_a3|output[2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|wr_rf~combout\,
	datab => \datapath_risc|mux_a3|output[1]~3_combout\,
	datac => \datapath_risc|mux_a3|output[0]~1_combout\,
	datad => \datapath_risc|mux_a3|output[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Decoder0~1_combout\);

-- Location: LC_X4_Y4_N0
\datapath_risc|RF|registers[1][4]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux27~2\ = (\datapath_risc|mux_a2|output\(1) & (((\datapath_risc|mux_a2|output\(0))))) # (!\datapath_risc|mux_a2|output\(1) & ((\datapath_risc|mux_a2|output\(0) & ((P1_registers[1][4]))) # (!\datapath_risc|mux_a2|output\(0) & 
-- (\datapath_risc|RF|registers[0][4]~regout\))))
-- \datapath_risc|RF|registers[1][4]~regout\ = DFFEAS(\datapath_risc|RF|Mux27~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~1_combout\, \datapath_risc|mux_d3|output\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[0][4]~regout\,
	datab => \datapath_risc|mux_a2|output\(1),
	datac => \datapath_risc|mux_d3|output\(4),
	datad => \datapath_risc|mux_a2|output\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux27~2\,
	regout => \datapath_risc|RF|registers[1][4]~regout\);

-- Location: LC_X4_Y5_N0
\datapath_risc|RF|Mux11~2\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux11~2_combout\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & (((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9))))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & 
-- ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & ((\datapath_risc|RF|registers[1][4]~regout\))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & (\datapath_risc|RF|registers[0][4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2c2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|RF|registers[0][4]~regout\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	datac => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	datad => \datapath_risc|RF|registers[1][4]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux11~2_combout\);

-- Location: LC_X3_Y4_N9
\datapath_risc|RF|Decoder0~3\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Decoder0~3_combout\ = (\controlpath_risc|wr_rf~combout\ & (\datapath_risc|mux_a3|output[1]~3_combout\ & (\datapath_risc|mux_a3|output[0]~1_combout\ & !\datapath_risc|mux_a3|output[2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|wr_rf~combout\,
	datab => \datapath_risc|mux_a3|output[1]~3_combout\,
	datac => \datapath_risc|mux_a3|output[0]~1_combout\,
	datad => \datapath_risc|mux_a3|output[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Decoder0~3_combout\);

-- Location: LC_X4_Y5_N1
\datapath_risc|RF|registers[3][4]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux11~3\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & ((\datapath_risc|RF|Mux11~2_combout\ & ((P1_registers[3][4]))) # (!\datapath_risc|RF|Mux11~2_combout\ & (\datapath_risc|RF|registers[2][4]~regout\)))) # 
-- (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & (((\datapath_risc|RF|Mux11~2_combout\))))
-- \datapath_risc|RF|registers[3][4]~regout\ = DFFEAS(\datapath_risc|RF|Mux11~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~3_combout\, \datapath_risc|mux_d3|output\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	datab => \datapath_risc|RF|registers[2][4]~regout\,
	datac => \datapath_risc|mux_d3|output\(4),
	datad => \datapath_risc|RF|Mux11~2_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux11~3\,
	regout => \datapath_risc|RF|registers[3][4]~regout\);

-- Location: LC_X5_Y4_N1
\datapath_risc|mux_op2|output~7\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op2|output~7_combout\ = (\controlpath_risc|m_op2_1~combout\ & (((\datapath_risc|RF|Mux11~4\ & !\controlpath_risc|m_op2_0~combout\)))) # (!\controlpath_risc|m_op2_1~combout\ & (\datapath_risc|RF|Mux27~4_combout\ & 
-- ((\controlpath_risc|m_op2_0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "22c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|RF|Mux27~4_combout\,
	datab => \controlpath_risc|m_op2_1~combout\,
	datac => \datapath_risc|RF|Mux11~4\,
	datad => \controlpath_risc|m_op2_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op2|output~7_combout\);

-- Location: LC_X5_Y4_N2
\datapath_risc|mux_op2|output~8\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op2|output~8_combout\ = (\datapath_risc|mux_op2|output~7_combout\) # ((\controlpath_risc|m_op2_0~combout\ & (\controlpath_risc|m_op2_1~combout\ & \datapath_risc|Inst_reg_exe|next_instruction1|dout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_op2_0~combout\,
	datab => \controlpath_risc|m_op2_1~combout\,
	datac => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(4),
	datad => \datapath_risc|mux_op2|output~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op2|output~8_combout\);

-- Location: LC_X7_Y6_N8
\datapath_risc|Inst_reg_exe|next_instruction1|dout[4]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op1|output[4]~7\ = (\datapath_risc|mux_op1|output[4]~6_combout\) # ((N1_dout[4] & (\controlpath_risc|m_op1_1~combout\ $ (\controlpath_risc|m_op1_0~combout\))))
-- \datapath_risc|Inst_reg_exe|next_instruction1|dout\(4) = DFFEAS(\datapath_risc|mux_op1|output[4]~7\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \controlpath_risc|en_ir~combout\, \datapath_risc|Inst_reg_fetch|next_instruction|dout\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dcec",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \controlpath_risc|m_op1_1~combout\,
	datab => \datapath_risc|mux_op1|output[4]~6_combout\,
	datac => \datapath_risc|Inst_reg_fetch|next_instruction|dout\(4),
	datad => \controlpath_risc|m_op1_0~combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \controlpath_risc|en_ir~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op1|output[4]~7\,
	regout => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(4));

-- Location: LC_X6_Y6_N0
\datapath_risc|alu_unit|output[4]~4\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|alu_unit|output[4]~4_combout\ = (\controlpath_risc|op_sel~combout\ & (((!\datapath_risc|mux_op1|output[4]~7\)) # (!\datapath_risc|mux_op2|output~8_combout\))) # (!\controlpath_risc|op_sel~combout\ & (\datapath_risc|mux_op2|output~8_combout\ 
-- $ (\datapath_risc|mux_op1|output[4]~7\ $ (\datapath_risc|alu_unit|carry~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7796",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_op2|output~8_combout\,
	datab => \datapath_risc|mux_op1|output[4]~7\,
	datac => \datapath_risc|alu_unit|carry~combout\,
	datad => \controlpath_risc|op_sel~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|alu_unit|output[4]~4_combout\);

-- Location: LC_X3_Y4_N4
\datapath_risc|RF|Decoder0~2\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Decoder0~2_combout\ = (\controlpath_risc|wr_rf~combout\ & (\datapath_risc|mux_a3|output[1]~3_combout\ & (!\datapath_risc|mux_a3|output[0]~1_combout\ & !\datapath_risc|mux_a3|output[2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|wr_rf~combout\,
	datab => \datapath_risc|mux_a3|output[1]~3_combout\,
	datac => \datapath_risc|mux_a3|output[0]~1_combout\,
	datad => \datapath_risc|mux_a3|output[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Decoder0~2_combout\);

-- Location: LC_X4_Y4_N1
\datapath_risc|RF|registers[2][4]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux27~3\ = (\datapath_risc|mux_a2|output\(1) & ((\datapath_risc|RF|Mux27~2\ & (\datapath_risc|RF|registers[3][4]~regout\)) # (!\datapath_risc|RF|Mux27~2\ & ((P1_registers[2][4]))))) # (!\datapath_risc|mux_a2|output\(1) & 
-- (((\datapath_risc|RF|Mux27~2\))))
-- \datapath_risc|RF|registers[2][4]~regout\ = DFFEAS(\datapath_risc|RF|Mux27~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~2_combout\, \datapath_risc|mux_d3|output\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[3][4]~regout\,
	datab => \datapath_risc|mux_a2|output\(1),
	datac => \datapath_risc|mux_d3|output\(4),
	datad => \datapath_risc|RF|Mux27~2\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux27~3\,
	regout => \datapath_risc|RF|registers[2][4]~regout\);

-- Location: LC_X5_Y4_N6
\datapath_risc|RF|Mux27~4\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux27~4_combout\ = (\controlpath_risc|m_a2~combout\ & (((\datapath_risc|RF|Mux27~1\)))) # (!\controlpath_risc|m_a2~combout\ & ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(8) & ((\datapath_risc|RF|Mux27~1\))) # 
-- (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(8) & (\datapath_risc|RF|Mux27~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_a2~combout\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(8),
	datac => \datapath_risc|RF|Mux27~3\,
	datad => \datapath_risc|RF|Mux27~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux27~4_combout\);

-- Location: LC_X6_Y6_N6
\datapath_risc|mux_op1|output[4]~6\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op1|output[4]~6_combout\ = (\controlpath_risc|m_op1_0~combout\ & (\datapath_risc|RF|Mux28~4_combout\ & ((\controlpath_risc|m_op1_1~combout\)))) # (!\controlpath_risc|m_op1_0~combout\ & (((\datapath_risc|RF|Mux27~4_combout\ & 
-- !\controlpath_risc|m_op1_1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8850",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_op1_0~combout\,
	datab => \datapath_risc|RF|Mux28~4_combout\,
	datac => \datapath_risc|RF|Mux27~4_combout\,
	datad => \controlpath_risc|m_op1_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op1|output[4]~6_combout\);

-- Location: LC_X8_Y8_N7
\datapath_risc|Inst_reg_exe|next_instruction1|dout[7]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_a2|output\(1) = (((N1_dout[7]) # (\controlpath_risc|m_a2~combout\)))
-- \datapath_risc|Inst_reg_exe|next_instruction1|dout\(7) = DFFEAS(\datapath_risc|mux_a2|output\(1), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \controlpath_risc|en_ir~combout\, \datapath_risc|Inst_reg_fetch|next_instruction|dout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|Inst_reg_fetch|next_instruction|dout\(7),
	datad => \controlpath_risc|m_a2~combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \controlpath_risc|en_ir~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_a2|output\(1),
	regout => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(7));

-- Location: LC_X2_Y5_N4
\datapath_risc|mux_a3|output[1]~2\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_a3|output[1]~2_combout\ = (\controlpath_risc|m_a3_1~combout\ & (((\controlpath_risc|m_a3_0~combout\)))) # (!\controlpath_risc|m_a3_1~combout\ & ((\controlpath_risc|m_a3_0~combout\ & 
-- (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(7))) # (!\controlpath_risc|m_a3_0~combout\ & ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_a3_1~combout\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(7),
	datac => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	datad => \controlpath_risc|m_a3_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_a3|output[1]~2_combout\);

-- Location: LC_X2_Y5_N5
\datapath_risc|mux_a3|output[1]~3\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_a3|output[1]~3_combout\ = ((\datapath_risc|mux_a3|output[1]~2_combout\) # ((\controlpath_risc|m_a3_1~combout\ & \datapath_risc|Inst_reg_exe|next_instruction1|dout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_a3_1~combout\,
	datac => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(4),
	datad => \datapath_risc|mux_a3|output[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_a3|output[1]~3_combout\);

-- Location: LC_X3_Y4_N2
\datapath_risc|RF|Decoder0~6\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Decoder0~6_combout\ = (\controlpath_risc|wr_rf~combout\ & (\datapath_risc|mux_a3|output[1]~3_combout\ & (!\datapath_risc|mux_a3|output[0]~1_combout\ & \datapath_risc|mux_a3|output[2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|wr_rf~combout\,
	datab => \datapath_risc|mux_a3|output[1]~3_combout\,
	datac => \datapath_risc|mux_a3|output[0]~1_combout\,
	datad => \datapath_risc|mux_a3|output[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Decoder0~6_combout\);

-- Location: LC_X5_Y5_N1
\datapath_risc|RF|registers[6][5]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux26~0\ = (\datapath_risc|mux_a2|output\(1) & (((P1_registers[6][5]) # (\datapath_risc|mux_a2|output\(0))))) # (!\datapath_risc|mux_a2|output\(1) & (\datapath_risc|RF|registers[4][5]~regout\ & ((!\datapath_risc|mux_a2|output\(0)))))
-- \datapath_risc|RF|registers[6][5]~regout\ = DFFEAS(\datapath_risc|RF|Mux26~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~6_combout\, \datapath_risc|mux_d3|output\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[4][5]~regout\,
	datab => \datapath_risc|mux_a2|output\(1),
	datac => \datapath_risc|mux_d3|output\(5),
	datad => \datapath_risc|mux_a2|output\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux26~0\,
	regout => \datapath_risc|RF|registers[6][5]~regout\);

-- Location: LC_X1_Y6_N9
\datapath_risc|RF|registers[4][5]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux10~0\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & ((\datapath_risc|RF|registers[6][5]~regout\) # ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9))))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) 
-- & (((P1_registers[4][5] & !\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9)))))
-- \datapath_risc|RF|registers[4][5]~regout\ = DFFEAS(\datapath_risc|RF|Mux10~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~4_combout\, \datapath_risc|mux_d3|output\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[6][5]~regout\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	datac => \datapath_risc|mux_d3|output\(5),
	datad => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux10~0\,
	regout => \datapath_risc|RF|registers[4][5]~regout\);

-- Location: LC_X5_Y5_N0
\datapath_risc|RF|registers[5][5]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux26~1\ = (\datapath_risc|mux_a2|output\(0) & ((\datapath_risc|RF|Mux26~0\ & (\datapath_risc|RF|registers[7][5]~regout\)) # (!\datapath_risc|RF|Mux26~0\ & ((P1_registers[5][5]))))) # (!\datapath_risc|mux_a2|output\(0) & 
-- (((\datapath_risc|RF|Mux26~0\))))
-- \datapath_risc|RF|registers[5][5]~regout\ = DFFEAS(\datapath_risc|RF|Mux26~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~5_combout\, \datapath_risc|mux_d3|output\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_a2|output\(0),
	datab => \datapath_risc|RF|registers[7][5]~regout\,
	datac => \datapath_risc|mux_d3|output\(5),
	datad => \datapath_risc|RF|Mux26~0\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux26~1\,
	regout => \datapath_risc|RF|registers[5][5]~regout\);

-- Location: LC_X6_Y6_N5
\datapath_risc|RF|registers[7][5]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux10~1\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & ((\datapath_risc|RF|Mux10~0\ & ((P1_registers[7][5]))) # (!\datapath_risc|RF|Mux10~0\ & (\datapath_risc|RF|registers[5][5]~regout\)))) # 
-- (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & (((\datapath_risc|RF|Mux10~0\))))
-- \datapath_risc|RF|registers[7][5]~regout\ = DFFEAS(\datapath_risc|RF|Mux10~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~7_combout\, \datapath_risc|mux_d3|output\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[5][5]~regout\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	datac => \datapath_risc|mux_d3|output\(5),
	datad => \datapath_risc|RF|Mux10~0\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux10~1\,
	regout => \datapath_risc|RF|registers[7][5]~regout\);

-- Location: LC_X5_Y6_N4
\datapath_risc|mux_d3|output~11\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output~11_combout\ = ((\controlpath_risc|m_d3_0~combout\ & (\datapath_risc|RF|Mux26~4_combout\ & !\controlpath_risc|m_d3_1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \controlpath_risc|m_d3_0~combout\,
	datac => \datapath_risc|RF|Mux26~4_combout\,
	datad => \controlpath_risc|m_d3_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output~11_combout\);

-- Location: LC_X9_Y6_N4
\datapath_risc|Inst_reg_fetch|next_instruction|dout[5]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|mem_out[5]~5\ = (((\controlpath_risc|rd_mem~combout\ & \datapath_risc|RAM|memory~336_combout\)))
-- \datapath_risc|Inst_reg_fetch|next_instruction|dout\(5) = DFFEAS(\datapath_risc|RAM|mem_out[5]~5\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \controlpath_risc|en_irf~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \controlpath_risc|rd_mem~combout\,
	datad => \datapath_risc|RAM|memory~336_combout\,
	aclr => \reset~combout\,
	ena => \controlpath_risc|en_irf~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|mem_out[5]~5\,
	regout => \datapath_risc|Inst_reg_fetch|next_instruction|dout\(5));

-- Location: LC_X9_Y6_N3
\datapath_risc|mux_d3|output[5]~12\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output[5]~12_combout\ = (\controlpath_risc|m_d3_1~combout\ & ((\controlpath_risc|m_d3_0~combout\ & ((\datapath_risc|RAM|mem_out[5]~5\))) # (!\controlpath_risc|m_d3_0~combout\ & 
-- (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(5),
	datab => \controlpath_risc|m_d3_1~combout\,
	datac => \datapath_risc|RAM|mem_out[5]~5\,
	datad => \controlpath_risc|m_d3_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output[5]~12_combout\);

-- Location: LC_X6_Y6_N2
\datapath_risc|RF|registers[0][5]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output\(5) = (\datapath_risc|mux_d3|output~11_combout\) # ((\datapath_risc|mux_d3|output[5]~12_combout\) # ((\datapath_risc|alu_unit|output[5]~5_combout\ & !\datapath_risc|mux_d3|output~2_combout\)))
-- \datapath_risc|RF|registers[0][5]~regout\ = DFFEAS(\datapath_risc|mux_d3|output\(5), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffce",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|alu_unit|output[5]~5_combout\,
	datab => \datapath_risc|mux_d3|output~11_combout\,
	datac => \datapath_risc|mux_d3|output~2_combout\,
	datad => \datapath_risc|mux_d3|output[5]~12_combout\,
	aclr => \reset~combout\,
	ena => \datapath_risc|RF|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output\(5),
	regout => \datapath_risc|RF|registers[0][5]~regout\);

-- Location: LC_X5_Y8_N6
\datapath_risc|RF|registers[1][5]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux26~2\ = (\datapath_risc|mux_a2|output\(0) & ((\datapath_risc|mux_a2|output\(1)) # ((P1_registers[1][5])))) # (!\datapath_risc|mux_a2|output\(0) & (!\datapath_risc|mux_a2|output\(1) & ((\datapath_risc|RF|registers[0][5]~regout\))))
-- \datapath_risc|RF|registers[1][5]~regout\ = DFFEAS(\datapath_risc|RF|Mux26~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~1_combout\, \datapath_risc|mux_d3|output\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_a2|output\(0),
	datab => \datapath_risc|mux_a2|output\(1),
	datac => \datapath_risc|mux_d3|output\(5),
	datad => \datapath_risc|RF|registers[0][5]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux26~2\,
	regout => \datapath_risc|RF|registers[1][5]~regout\);

-- Location: LC_X5_Y8_N9
\datapath_risc|RF|Mux10~2\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux10~2_combout\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & (((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9))))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & 
-- ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & ((\datapath_risc|RF|registers[1][5]~regout\))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & (\datapath_risc|RF|registers[0][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|RF|registers[0][5]~regout\,
	datab => \datapath_risc|RF|registers[1][5]~regout\,
	datac => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	datad => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux10~2_combout\);

-- Location: LC_X6_Y5_N2
\datapath_risc|RF|registers[3][5]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux10~3\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & ((\datapath_risc|RF|Mux10~2_combout\ & ((P1_registers[3][5]))) # (!\datapath_risc|RF|Mux10~2_combout\ & (\datapath_risc|RF|registers[2][5]~regout\)))) # 
-- (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & (((\datapath_risc|RF|Mux10~2_combout\))))
-- \datapath_risc|RF|registers[3][5]~regout\ = DFFEAS(\datapath_risc|RF|Mux10~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~3_combout\, \datapath_risc|mux_d3|output\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	datab => \datapath_risc|RF|registers[2][5]~regout\,
	datac => \datapath_risc|mux_d3|output\(5),
	datad => \datapath_risc|RF|Mux10~2_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux10~3\,
	regout => \datapath_risc|RF|registers[3][5]~regout\);

-- Location: LC_X5_Y8_N1
\datapath_risc|RF|registers[2][5]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux26~3\ = (\datapath_risc|RF|Mux26~2\ & (((\datapath_risc|RF|registers[3][5]~regout\)) # (!\datapath_risc|mux_a2|output\(1)))) # (!\datapath_risc|RF|Mux26~2\ & (\datapath_risc|mux_a2|output\(1) & (P1_registers[2][5])))
-- \datapath_risc|RF|registers[2][5]~regout\ = DFFEAS(\datapath_risc|RF|Mux26~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~2_combout\, \datapath_risc|mux_d3|output\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|Mux26~2\,
	datab => \datapath_risc|mux_a2|output\(1),
	datac => \datapath_risc|mux_d3|output\(5),
	datad => \datapath_risc|RF|registers[3][5]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux26~3\,
	regout => \datapath_risc|RF|registers[2][5]~regout\);

-- Location: LC_X5_Y8_N2
\datapath_risc|RF|Mux26~4\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux26~4_combout\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(8) & (\datapath_risc|RF|Mux26~1\)) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(8) & ((\controlpath_risc|m_a2~combout\ & (\datapath_risc|RF|Mux26~1\)) # 
-- (!\controlpath_risc|m_a2~combout\ & ((\datapath_risc|RF|Mux26~3\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cdc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(8),
	datab => \datapath_risc|RF|Mux26~1\,
	datac => \controlpath_risc|m_a2~combout\,
	datad => \datapath_risc|RF|Mux26~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux26~4_combout\);

-- Location: LC_X6_Y10_N9
\datapath_risc|mux_op2|output~9\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op2|output~9_combout\ = (\controlpath_risc|m_op2_0~combout\ & (!\controlpath_risc|m_op2_1~combout\ & (\datapath_risc|RF|Mux26~4_combout\))) # (!\controlpath_risc|m_op2_0~combout\ & (\controlpath_risc|m_op2_1~combout\ & 
-- ((\datapath_risc|RF|Mux10~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6420",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_op2_0~combout\,
	datab => \controlpath_risc|m_op2_1~combout\,
	datac => \datapath_risc|RF|Mux26~4_combout\,
	datad => \datapath_risc|RF|Mux10~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op2|output~9_combout\);

-- Location: LC_X6_Y10_N2
\datapath_risc|mux_op2|output~10\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op2|output~10_combout\ = (\datapath_risc|mux_op2|output~9_combout\) # ((\controlpath_risc|m_op2_0~combout\ & (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(5) & \controlpath_risc|m_op2_1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_op2_0~combout\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(5),
	datac => \controlpath_risc|m_op2_1~combout\,
	datad => \datapath_risc|mux_op2|output~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op2|output~10_combout\);

-- Location: LC_X5_Y4_N5
\datapath_risc|mux_op1|output[5]~8\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op1|output[5]~8_combout\ = (\controlpath_risc|m_op1_1~combout\ & (\datapath_risc|RF|Mux27~4_combout\ & ((\controlpath_risc|m_op1_0~combout\)))) # (!\controlpath_risc|m_op1_1~combout\ & (((\datapath_risc|RF|Mux26~4_combout\ & 
-- !\controlpath_risc|m_op1_0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8830",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|RF|Mux27~4_combout\,
	datab => \controlpath_risc|m_op1_1~combout\,
	datac => \datapath_risc|RF|Mux26~4_combout\,
	datad => \controlpath_risc|m_op1_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op1|output[5]~8_combout\);

-- Location: LC_X5_Y4_N7
\datapath_risc|mux_op1|output[5]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op1|output\(5) = (\datapath_risc|mux_op1|output[5]~8_combout\) # ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(5) & (\controlpath_risc|m_op1_1~combout\ $ (\controlpath_risc|m_op1_0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f6f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_op1_1~combout\,
	datab => \controlpath_risc|m_op1_0~combout\,
	datac => \datapath_risc|mux_op1|output[5]~8_combout\,
	datad => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op1|output\(5));

-- Location: LC_X5_Y6_N9
\datapath_risc|alu_unit|output[5]~5\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|alu_unit|output[5]~5_combout\ = (\controlpath_risc|op_sel~combout\ & (((!\datapath_risc|mux_op1|output\(5)) # (!\datapath_risc|mux_op2|output~10_combout\)))) # (!\controlpath_risc|op_sel~combout\ & (\datapath_risc|alu_unit|carry~combout\ $ 
-- (\datapath_risc|mux_op2|output~10_combout\ $ (\datapath_risc|mux_op1|output\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f96",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|alu_unit|carry~combout\,
	datab => \datapath_risc|mux_op2|output~10_combout\,
	datac => \datapath_risc|mux_op1|output\(5),
	datad => \controlpath_risc|op_sel~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|alu_unit|output[5]~5_combout\);

-- Location: LC_X6_Y10_N8
\datapath_risc|RAM|memory~58\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux10~4\ = ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & ((\datapath_risc|RF|Mux10~1\))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & (\datapath_risc|RF|Mux10~3\)))
-- \datapath_risc|RAM|memory~58_regout\ = DFFEAS(\datapath_risc|RF|Mux10~4\, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~454_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(11),
	datac => \datapath_risc|RF|Mux10~3\,
	datad => \datapath_risc|RF|Mux10~1\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux10~4\,
	regout => \datapath_risc|RAM|memory~58_regout\);

-- Location: LC_X11_Y5_N4
\datapath_risc|RAM|memory~250\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~250_regout\ = DFFEAS((((\datapath_risc|RF|Mux10~4\))), GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~464_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \datapath_risc|RF|Mux10~4\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~250_regout\);

-- Location: LC_X10_Y10_N8
\datapath_risc|RAM|memory~186\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~327\ = (\datapath_risc|mux_mem_a|output[2]~3\ & (((\datapath_risc|mux_mem_a|output[3]~2\)))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & ((\datapath_risc|mux_mem_a|output[3]~2\ & ((M1L182Q))) # 
-- (!\datapath_risc|mux_mem_a|output[3]~2\ & (\datapath_risc|RAM|memory~58_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~58_regout\,
	datab => \datapath_risc|mux_mem_a|output[2]~3\,
	datac => \datapath_risc|RF|Mux10~4\,
	datad => \datapath_risc|mux_mem_a|output[3]~2\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~327\,
	regout => \datapath_risc|RAM|memory~186_regout\);

-- Location: LC_X10_Y8_N9
\datapath_risc|RAM|memory~122\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~328\ = (\datapath_risc|mux_mem_a|output[2]~3\ & ((\datapath_risc|RAM|memory~327\ & (\datapath_risc|RAM|memory~250_regout\)) # (!\datapath_risc|RAM|memory~327\ & ((M1L118Q))))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & 
-- (((\datapath_risc|RAM|memory~327\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~250_regout\,
	datab => \datapath_risc|mux_mem_a|output[2]~3\,
	datac => \datapath_risc|RF|Mux10~4\,
	datad => \datapath_risc|RAM|memory~327\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~328\,
	regout => \datapath_risc|RAM|memory~122_regout\);

-- Location: LC_X13_Y10_N8
\datapath_risc|RAM|memory~266\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~266_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~468_combout\, \datapath_risc|RF|Mux10~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux10~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~266_regout\);

-- Location: LC_X13_Y6_N0
\datapath_risc|RAM|memory~74\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~74_regout\ = DFFEAS((((\datapath_risc|RF|Mux10~4\))), GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~460_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \datapath_risc|RF|Mux10~4\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~74_regout\);

-- Location: LC_X13_Y6_N4
\datapath_risc|RAM|memory~138\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~334\ = (\datapath_risc|mux_mem_a|output[2]~3\ & (((M1L134Q) # (\datapath_risc|mux_mem_a|output[3]~2\)))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & (\datapath_risc|RAM|memory~74_regout\ & 
-- ((!\datapath_risc|mux_mem_a|output[3]~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~74_regout\,
	datab => \datapath_risc|mux_mem_a|output[2]~3\,
	datac => \datapath_risc|RF|Mux10~4\,
	datad => \datapath_risc|mux_mem_a|output[3]~2\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~334\,
	regout => \datapath_risc|RAM|memory~138_regout\);

-- Location: LC_X12_Y6_N1
\datapath_risc|RAM|memory~202\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~335\ = (\datapath_risc|mux_mem_a|output[3]~2\ & ((\datapath_risc|RAM|memory~334\ & (\datapath_risc|RAM|memory~266_regout\)) # (!\datapath_risc|RAM|memory~334\ & ((M1L198Q))))) # (!\datapath_risc|mux_mem_a|output[3]~2\ & 
-- (((\datapath_risc|RAM|memory~334\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~266_regout\,
	datab => \datapath_risc|mux_mem_a|output[3]~2\,
	datac => \datapath_risc|RF|Mux10~4\,
	datad => \datapath_risc|RAM|memory~334\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~335\,
	regout => \datapath_risc|RAM|memory~202_regout\);

-- Location: LC_X12_Y10_N9
\datapath_risc|RAM|memory~218\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~218_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~466_combout\, \datapath_risc|RF|Mux10~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux10~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~218_regout\);

-- Location: LC_X12_Y6_N6
\datapath_risc|RAM|memory~26\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~26_regout\ = DFFEAS((((\datapath_risc|RF|Mux10~4\))), GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~458_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \datapath_risc|RF|Mux10~4\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~26_regout\);

-- Location: LC_X11_Y8_N4
\datapath_risc|RAM|memory~154\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~331\ = (\datapath_risc|mux_mem_a|output[2]~3\ & (((\datapath_risc|mux_mem_a|output[3]~2\)))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & ((\datapath_risc|mux_mem_a|output[3]~2\ & ((M1L150Q))) # 
-- (!\datapath_risc|mux_mem_a|output[3]~2\ & (\datapath_risc|RAM|memory~26_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[2]~3\,
	datab => \datapath_risc|RAM|memory~26_regout\,
	datac => \datapath_risc|RF|Mux10~4\,
	datad => \datapath_risc|mux_mem_a|output[3]~2\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~331\,
	regout => \datapath_risc|RAM|memory~154_regout\);

-- Location: LC_X11_Y8_N5
\datapath_risc|RAM|memory~90\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~332\ = (\datapath_risc|mux_mem_a|output[2]~3\ & ((\datapath_risc|RAM|memory~331\ & (\datapath_risc|RAM|memory~218_regout\)) # (!\datapath_risc|RAM|memory~331\ & ((M1L86Q))))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & 
-- (((\datapath_risc|RAM|memory~331\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[2]~3\,
	datab => \datapath_risc|RAM|memory~218_regout\,
	datac => \datapath_risc|RF|Mux10~4\,
	datad => \datapath_risc|RAM|memory~331\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~332\,
	regout => \datapath_risc|RAM|memory~90_regout\);

-- Location: LC_X12_Y5_N4
\datapath_risc|RAM|memory~234\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~234_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~462_combout\, \datapath_risc|RF|Mux10~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux10~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~234_regout\);

-- Location: LC_X11_Y10_N3
\datapath_risc|RAM|memory~42\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~42_regout\ = DFFEAS((((\datapath_risc|RF|Mux10~4\))), GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~456_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \datapath_risc|RF|Mux10~4\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~42_regout\);

-- Location: LC_X11_Y10_N1
\datapath_risc|RAM|memory~106\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~329\ = (\datapath_risc|mux_mem_a|output[2]~3\ & (((M1L102Q) # (\datapath_risc|mux_mem_a|output[3]~2\)))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & (\datapath_risc|RAM|memory~42_regout\ & 
-- ((!\datapath_risc|mux_mem_a|output[3]~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~42_regout\,
	datab => \datapath_risc|mux_mem_a|output[2]~3\,
	datac => \datapath_risc|RF|Mux10~4\,
	datad => \datapath_risc|mux_mem_a|output[3]~2\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~329\,
	regout => \datapath_risc|RAM|memory~106_regout\);

-- Location: LC_X10_Y10_N6
\datapath_risc|RAM|memory~170\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~330\ = (\datapath_risc|mux_mem_a|output[3]~2\ & ((\datapath_risc|RAM|memory~329\ & (\datapath_risc|RAM|memory~234_regout\)) # (!\datapath_risc|RAM|memory~329\ & ((M1L166Q))))) # (!\datapath_risc|mux_mem_a|output[3]~2\ & 
-- (((\datapath_risc|RAM|memory~329\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[3]~2\,
	datab => \datapath_risc|RAM|memory~234_regout\,
	datac => \datapath_risc|RF|Mux10~4\,
	datad => \datapath_risc|RAM|memory~329\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~330\,
	regout => \datapath_risc|RAM|memory~170_regout\);

-- Location: LC_X9_Y6_N0
\datapath_risc|RAM|memory~333\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~333_combout\ = (\datapath_risc|mux_mem_a|output[0]~1\ & ((\datapath_risc|mux_mem_a|output[1]~0\) # ((\datapath_risc|RAM|memory~330\)))) # (!\datapath_risc|mux_mem_a|output[0]~1\ & (!\datapath_risc|mux_mem_a|output[1]~0\ & 
-- (\datapath_risc|RAM|memory~332\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_mem_a|output[0]~1\,
	datab => \datapath_risc|mux_mem_a|output[1]~0\,
	datac => \datapath_risc|RAM|memory~332\,
	datad => \datapath_risc|RAM|memory~330\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~333_combout\);

-- Location: LC_X9_Y6_N1
\datapath_risc|RAM|memory~336\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~336_combout\ = (\datapath_risc|mux_mem_a|output[1]~0\ & ((\datapath_risc|RAM|memory~333_combout\ & ((\datapath_risc|RAM|memory~335\))) # (!\datapath_risc|RAM|memory~333_combout\ & (\datapath_risc|RAM|memory~328\)))) # 
-- (!\datapath_risc|mux_mem_a|output[1]~0\ & (((\datapath_risc|RAM|memory~333_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_mem_a|output[1]~0\,
	datab => \datapath_risc|RAM|memory~328\,
	datac => \datapath_risc|RAM|memory~335\,
	datad => \datapath_risc|RAM|memory~333_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~336_combout\);

-- Location: LC_X7_Y6_N2
\datapath_risc|Inst_reg_exe|next_instruction1|dout[5]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op1|output[8]~14\ = (\controlpath_risc|m_op1_1~combout\ & (((\controlpath_risc|m_op1_0~combout\)) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(8)))) # (!\controlpath_risc|m_op1_1~combout\ & 
-- (((!\controlpath_risc|m_op1_0~combout\) # (!N1_dout[5]))))
-- \datapath_risc|Inst_reg_exe|next_instruction1|dout\(5) = DFFEAS(\datapath_risc|mux_op1|output[8]~14\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \controlpath_risc|en_ir~combout\, \datapath_risc|Inst_reg_fetch|next_instruction|dout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "af77",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \controlpath_risc|m_op1_1~combout\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(8),
	datac => \datapath_risc|Inst_reg_fetch|next_instruction|dout\(5),
	datad => \controlpath_risc|m_op1_0~combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \controlpath_risc|en_ir~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op1|output[8]~14\,
	regout => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(5));

-- Location: LC_X8_Y7_N7
\datapath_risc|mux_d3|output~21\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output~21_combout\ = (\datapath_risc|RF|Mux21~4_combout\ & (((\controlpath_risc|m_d3_0~combout\ & !\controlpath_risc|m_d3_1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|RF|Mux21~4_combout\,
	datac => \controlpath_risc|m_d3_0~combout\,
	datad => \controlpath_risc|m_d3_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output~21_combout\);

-- Location: LC_X6_Y5_N5
\datapath_risc|mux_d3|output~19\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output~19_combout\ = ((\datapath_risc|RF|Mux22~4_combout\ & (!\controlpath_risc|m_d3_1~combout\ & \controlpath_risc|m_d3_0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \datapath_risc|RF|Mux22~4_combout\,
	datac => \controlpath_risc|m_d3_1~combout\,
	datad => \controlpath_risc|m_d3_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output~19_combout\);

-- Location: LC_X14_Y5_N1
\datapath_risc|RAM|memory~254\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~254_regout\ = DFFEAS((((\datapath_risc|RF|Mux6~4\))), GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~464_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \datapath_risc|RF|Mux6~4\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~254_regout\);

-- Location: LC_X7_Y5_N5
\datapath_risc|RF|registers[4][9]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux6~0\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & (((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10))))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & 
-- ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & (\datapath_risc|RF|registers[6][9]~regout\)) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & ((P1_registers[4][9])))))
-- \datapath_risc|RF|registers[4][9]~regout\ = DFFEAS(\datapath_risc|RF|Mux6~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~4_combout\, \datapath_risc|mux_d3|output\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	datab => \datapath_risc|RF|registers[6][9]~regout\,
	datac => \datapath_risc|mux_d3|output\(9),
	datad => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux6~0\,
	regout => \datapath_risc|RF|registers[4][9]~regout\);

-- Location: LC_X5_Y5_N3
\datapath_risc|RF|registers[6][9]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux22~0\ = (\datapath_risc|mux_a2|output\(0) & (((\datapath_risc|mux_a2|output\(1))))) # (!\datapath_risc|mux_a2|output\(0) & ((\datapath_risc|mux_a2|output\(1) & ((P1_registers[6][9]))) # (!\datapath_risc|mux_a2|output\(1) & 
-- (\datapath_risc|RF|registers[4][9]~regout\))))
-- \datapath_risc|RF|registers[6][9]~regout\ = DFFEAS(\datapath_risc|RF|Mux22~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~6_combout\, \datapath_risc|mux_d3|output\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[4][9]~regout\,
	datab => \datapath_risc|mux_a2|output\(0),
	datac => \datapath_risc|mux_d3|output\(9),
	datad => \datapath_risc|mux_a2|output\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux22~0\,
	regout => \datapath_risc|RF|registers[6][9]~regout\);

-- Location: LC_X7_Y5_N6
\datapath_risc|RF|registers[7][9]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux6~1\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & ((\datapath_risc|RF|Mux6~0\ & ((P1_registers[7][9]))) # (!\datapath_risc|RF|Mux6~0\ & (\datapath_risc|RF|registers[5][9]~regout\)))) # 
-- (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & (((\datapath_risc|RF|Mux6~0\))))
-- \datapath_risc|RF|registers[7][9]~regout\ = DFFEAS(\datapath_risc|RF|Mux6~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~7_combout\, \datapath_risc|mux_d3|output\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	datab => \datapath_risc|RF|registers[5][9]~regout\,
	datac => \datapath_risc|mux_d3|output\(9),
	datad => \datapath_risc|RF|Mux6~0\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux6~1\,
	regout => \datapath_risc|RF|registers[7][9]~regout\);

-- Location: LC_X5_Y5_N4
\datapath_risc|RF|registers[5][9]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux22~1\ = (\datapath_risc|mux_a2|output\(0) & ((\datapath_risc|RF|Mux22~0\ & (\datapath_risc|RF|registers[7][9]~regout\)) # (!\datapath_risc|RF|Mux22~0\ & ((P1_registers[5][9]))))) # (!\datapath_risc|mux_a2|output\(0) & 
-- (((\datapath_risc|RF|Mux22~0\))))
-- \datapath_risc|RF|registers[5][9]~regout\ = DFFEAS(\datapath_risc|RF|Mux22~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~5_combout\, \datapath_risc|mux_d3|output\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_a2|output\(0),
	datab => \datapath_risc|RF|registers[7][9]~regout\,
	datac => \datapath_risc|mux_d3|output\(9),
	datad => \datapath_risc|RF|Mux22~0\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux22~1\,
	regout => \datapath_risc|RF|registers[5][9]~regout\);

-- Location: LC_X14_Y5_N0
\datapath_risc|RAM|memory~62\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux6~4\ = ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & ((\datapath_risc|RF|Mux6~1\))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & (\datapath_risc|RF|Mux6~3\)))
-- \datapath_risc|RAM|memory~62_regout\ = DFFEAS(\datapath_risc|RF|Mux6~4\, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~454_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(11),
	datac => \datapath_risc|RF|Mux6~3\,
	datad => \datapath_risc|RF|Mux6~1\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux6~4\,
	regout => \datapath_risc|RAM|memory~62_regout\);

-- Location: LC_X15_Y5_N1
\datapath_risc|RAM|memory~190\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~367\ = (\datapath_risc|mux_mem_a|output[2]~3\ & (((\datapath_risc|mux_mem_a|output[3]~2\)))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & ((\datapath_risc|mux_mem_a|output[3]~2\ & ((M1L186Q))) # 
-- (!\datapath_risc|mux_mem_a|output[3]~2\ & (\datapath_risc|RAM|memory~62_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~62_regout\,
	datab => \datapath_risc|mux_mem_a|output[2]~3\,
	datac => \datapath_risc|RF|Mux6~4\,
	datad => \datapath_risc|mux_mem_a|output[3]~2\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~367\,
	regout => \datapath_risc|RAM|memory~190_regout\);

-- Location: LC_X15_Y5_N2
\datapath_risc|RAM|memory~126\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~368\ = (\datapath_risc|mux_mem_a|output[2]~3\ & ((\datapath_risc|RAM|memory~367\ & (\datapath_risc|RAM|memory~254_regout\)) # (!\datapath_risc|RAM|memory~367\ & ((M1L122Q))))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & 
-- (((\datapath_risc|RAM|memory~367\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~254_regout\,
	datab => \datapath_risc|mux_mem_a|output[2]~3\,
	datac => \datapath_risc|RF|Mux6~4\,
	datad => \datapath_risc|RAM|memory~367\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~368\,
	regout => \datapath_risc|RAM|memory~126_regout\);

-- Location: LC_X13_Y9_N9
\datapath_risc|RAM|memory~270\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~270_regout\ = DFFEAS((((\datapath_risc|RF|Mux6~4\))), GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~468_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \datapath_risc|RF|Mux6~4\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~270_regout\);

-- Location: LC_X13_Y6_N7
\datapath_risc|RAM|memory~78\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~78_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~460_combout\, \datapath_risc|RF|Mux6~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux6~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~78_regout\);

-- Location: LC_X13_Y5_N1
\datapath_risc|RAM|memory~142\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~374\ = (\datapath_risc|mux_mem_a|output[2]~3\ & (((M1L138Q) # (\datapath_risc|mux_mem_a|output[3]~2\)))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & (\datapath_risc|RAM|memory~78_regout\ & 
-- ((!\datapath_risc|mux_mem_a|output[3]~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~78_regout\,
	datab => \datapath_risc|mux_mem_a|output[2]~3\,
	datac => \datapath_risc|RF|Mux6~4\,
	datad => \datapath_risc|mux_mem_a|output[3]~2\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~374\,
	regout => \datapath_risc|RAM|memory~142_regout\);

-- Location: LC_X13_Y5_N7
\datapath_risc|RAM|memory~206\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~375\ = (\datapath_risc|mux_mem_a|output[3]~2\ & ((\datapath_risc|RAM|memory~374\ & (\datapath_risc|RAM|memory~270_regout\)) # (!\datapath_risc|RAM|memory~374\ & ((M1L202Q))))) # (!\datapath_risc|mux_mem_a|output[3]~2\ & 
-- (((\datapath_risc|RAM|memory~374\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[3]~2\,
	datab => \datapath_risc|RAM|memory~270_regout\,
	datac => \datapath_risc|RF|Mux6~4\,
	datad => \datapath_risc|RAM|memory~374\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~375\,
	regout => \datapath_risc|RAM|memory~206_regout\);

-- Location: LC_X12_Y5_N6
\datapath_risc|RAM|memory~238\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~238_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~462_combout\, \datapath_risc|RF|Mux6~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux6~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~238_regout\);

-- Location: LC_X11_Y10_N2
\datapath_risc|RAM|memory~46\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~46_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~456_combout\, \datapath_risc|RF|Mux6~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux6~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~46_regout\);

-- Location: LC_X11_Y6_N8
\datapath_risc|RAM|memory~110\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~369\ = (\datapath_risc|mux_mem_a|output[2]~3\ & (((M1L106Q) # (\datapath_risc|mux_mem_a|output[3]~2\)))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & (\datapath_risc|RAM|memory~46_regout\ & 
-- ((!\datapath_risc|mux_mem_a|output[3]~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[2]~3\,
	datab => \datapath_risc|RAM|memory~46_regout\,
	datac => \datapath_risc|RF|Mux6~4\,
	datad => \datapath_risc|mux_mem_a|output[3]~2\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~369\,
	regout => \datapath_risc|RAM|memory~110_regout\);

-- Location: LC_X11_Y6_N9
\datapath_risc|RAM|memory~174\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~370\ = (\datapath_risc|mux_mem_a|output[3]~2\ & ((\datapath_risc|RAM|memory~369\ & (\datapath_risc|RAM|memory~238_regout\)) # (!\datapath_risc|RAM|memory~369\ & ((M1L170Q))))) # (!\datapath_risc|mux_mem_a|output[3]~2\ & 
-- (((\datapath_risc|RAM|memory~369\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[3]~2\,
	datab => \datapath_risc|RAM|memory~238_regout\,
	datac => \datapath_risc|RF|Mux6~4\,
	datad => \datapath_risc|RAM|memory~369\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~370\,
	regout => \datapath_risc|RAM|memory~174_regout\);

-- Location: LC_X11_Y4_N1
\datapath_risc|RAM|memory~222\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~222_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~466_combout\, \datapath_risc|RF|Mux6~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux6~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~222_regout\);

-- Location: LC_X10_Y4_N7
\datapath_risc|RAM|memory~30\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~30_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~458_combout\, \datapath_risc|RF|Mux6~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux6~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~30_regout\);

-- Location: LC_X10_Y4_N8
\datapath_risc|RAM|memory~158\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~371\ = (\datapath_risc|mux_mem_a|output[2]~3\ & (((\datapath_risc|mux_mem_a|output[3]~2\)))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & ((\datapath_risc|mux_mem_a|output[3]~2\ & ((M1L154Q))) # 
-- (!\datapath_risc|mux_mem_a|output[3]~2\ & (\datapath_risc|RAM|memory~30_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[2]~3\,
	datab => \datapath_risc|RAM|memory~30_regout\,
	datac => \datapath_risc|RF|Mux6~4\,
	datad => \datapath_risc|mux_mem_a|output[3]~2\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~371\,
	regout => \datapath_risc|RAM|memory~158_regout\);

-- Location: LC_X10_Y5_N2
\datapath_risc|RAM|memory~94\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~372\ = (\datapath_risc|mux_mem_a|output[2]~3\ & ((\datapath_risc|RAM|memory~371\ & (\datapath_risc|RAM|memory~222_regout\)) # (!\datapath_risc|RAM|memory~371\ & ((M1L90Q))))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & 
-- (((\datapath_risc|RAM|memory~371\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~222_regout\,
	datab => \datapath_risc|mux_mem_a|output[2]~3\,
	datac => \datapath_risc|RF|Mux6~4\,
	datad => \datapath_risc|RAM|memory~371\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~372\,
	regout => \datapath_risc|RAM|memory~94_regout\);

-- Location: LC_X10_Y5_N4
\datapath_risc|RAM|memory~373\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~373_combout\ = (\datapath_risc|mux_mem_a|output[1]~0\ & (\datapath_risc|mux_mem_a|output[0]~1\)) # (!\datapath_risc|mux_mem_a|output[1]~0\ & ((\datapath_risc|mux_mem_a|output[0]~1\ & (\datapath_risc|RAM|memory~370\)) # 
-- (!\datapath_risc|mux_mem_a|output[0]~1\ & ((\datapath_risc|RAM|memory~372\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_mem_a|output[1]~0\,
	datab => \datapath_risc|mux_mem_a|output[0]~1\,
	datac => \datapath_risc|RAM|memory~370\,
	datad => \datapath_risc|RAM|memory~372\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~373_combout\);

-- Location: LC_X10_Y5_N5
\datapath_risc|RAM|memory~376\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~376_combout\ = (\datapath_risc|mux_mem_a|output[1]~0\ & ((\datapath_risc|RAM|memory~373_combout\ & ((\datapath_risc|RAM|memory~375\))) # (!\datapath_risc|RAM|memory~373_combout\ & (\datapath_risc|RAM|memory~368\)))) # 
-- (!\datapath_risc|mux_mem_a|output[1]~0\ & (((\datapath_risc|RAM|memory~373_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_mem_a|output[1]~0\,
	datab => \datapath_risc|RAM|memory~368\,
	datac => \datapath_risc|RAM|memory~375\,
	datad => \datapath_risc|RAM|memory~373_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~376_combout\);

-- Location: LC_X10_Y5_N0
\datapath_risc|Inst_reg_fetch|next_instruction|dout[9]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|mem_out[9]~9\ = ((\controlpath_risc|rd_mem~combout\ & (\datapath_risc|RAM|memory~376_combout\)))
-- \datapath_risc|Inst_reg_fetch|next_instruction|dout\(9) = DFFEAS(\datapath_risc|RAM|mem_out[9]~9\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \controlpath_risc|en_irf~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \controlpath_risc|rd_mem~combout\,
	datac => \datapath_risc|RAM|memory~376_combout\,
	aclr => \reset~combout\,
	ena => \controlpath_risc|en_irf~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|mem_out[9]~9\,
	regout => \datapath_risc|Inst_reg_fetch|next_instruction|dout\(9));

-- Location: LC_X10_Y5_N7
\datapath_risc|mux_d3|output[9]~20\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output[9]~20_combout\ = (\controlpath_risc|m_d3_1~combout\ & ((\controlpath_risc|m_d3_0~combout\ & ((\datapath_risc|RAM|mem_out[9]~9\))) # (!\controlpath_risc|m_d3_0~combout\ & 
-- (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(8),
	datab => \controlpath_risc|m_d3_0~combout\,
	datac => \datapath_risc|RAM|mem_out[9]~9\,
	datad => \controlpath_risc|m_d3_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output[9]~20_combout\);

-- Location: LC_X6_Y5_N6
\datapath_risc|RF|registers[0][9]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output\(9) = (\datapath_risc|mux_d3|output~19_combout\) # ((\datapath_risc|mux_d3|output[9]~20_combout\) # ((\datapath_risc|alu_unit|output[9]~9_combout\ & !\datapath_risc|mux_d3|output~2_combout\)))
-- \datapath_risc|RF|registers[0][9]~regout\ = DFFEAS(\datapath_risc|mux_d3|output\(9), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|alu_unit|output[9]~9_combout\,
	datab => \datapath_risc|mux_d3|output~2_combout\,
	datac => \datapath_risc|mux_d3|output~19_combout\,
	datad => \datapath_risc|mux_d3|output[9]~20_combout\,
	aclr => \reset~combout\,
	ena => \datapath_risc|RF|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output\(9),
	regout => \datapath_risc|RF|registers[0][9]~regout\);

-- Location: LC_X3_Y5_N8
\datapath_risc|RF|registers[1][9]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux22~2\ = (\datapath_risc|mux_a2|output\(1) & (((\datapath_risc|mux_a2|output\(0))))) # (!\datapath_risc|mux_a2|output\(1) & ((\datapath_risc|mux_a2|output\(0) & ((P1_registers[1][9]))) # (!\datapath_risc|mux_a2|output\(0) & 
-- (\datapath_risc|RF|registers[0][9]~regout\))))
-- \datapath_risc|RF|registers[1][9]~regout\ = DFFEAS(\datapath_risc|RF|Mux22~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~1_combout\, \datapath_risc|mux_d3|output\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[0][9]~regout\,
	datab => \datapath_risc|mux_a2|output\(1),
	datac => \datapath_risc|mux_d3|output\(9),
	datad => \datapath_risc|mux_a2|output\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux22~2\,
	regout => \datapath_risc|RF|registers[1][9]~regout\);

-- Location: LC_X6_Y5_N7
\datapath_risc|RF|Mux6~2\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux6~2_combout\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & (((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9))))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & 
-- ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & ((\datapath_risc|RF|registers[1][9]~regout\))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & (\datapath_risc|RF|registers[0][9]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	datab => \datapath_risc|RF|registers[0][9]~regout\,
	datac => \datapath_risc|RF|registers[1][9]~regout\,
	datad => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux6~2_combout\);

-- Location: LC_X6_Y5_N8
\datapath_risc|RF|registers[3][9]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux6~3\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & ((\datapath_risc|RF|Mux6~2_combout\ & ((P1_registers[3][9]))) # (!\datapath_risc|RF|Mux6~2_combout\ & (\datapath_risc|RF|registers[2][9]~regout\)))) # 
-- (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & (((\datapath_risc|RF|Mux6~2_combout\))))
-- \datapath_risc|RF|registers[3][9]~regout\ = DFFEAS(\datapath_risc|RF|Mux6~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~3_combout\, \datapath_risc|mux_d3|output\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	datab => \datapath_risc|RF|registers[2][9]~regout\,
	datac => \datapath_risc|mux_d3|output\(9),
	datad => \datapath_risc|RF|Mux6~2_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux6~3\,
	regout => \datapath_risc|RF|registers[3][9]~regout\);

-- Location: LC_X11_Y9_N3
\datapath_risc|mux_op2|output~17\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op2|output~17_combout\ = (\controlpath_risc|m_op2_0~combout\ & (!\controlpath_risc|m_op2_1~combout\ & ((\datapath_risc|RF|Mux22~4_combout\)))) # (!\controlpath_risc|m_op2_0~combout\ & (\controlpath_risc|m_op2_1~combout\ & 
-- (\datapath_risc|RF|Mux6~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6240",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_op2_0~combout\,
	datab => \controlpath_risc|m_op2_1~combout\,
	datac => \datapath_risc|RF|Mux6~4\,
	datad => \datapath_risc|RF|Mux22~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op2|output~17_combout\);

-- Location: LC_X11_Y9_N4
\datapath_risc|mux_op2|output~18\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op2|output~18_combout\ = (\datapath_risc|mux_op2|output~17_combout\) # ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(5) & (\controlpath_risc|m_op2_1~combout\ & \controlpath_risc|m_op2_0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(5),
	datab => \controlpath_risc|m_op2_1~combout\,
	datac => \controlpath_risc|m_op2_0~combout\,
	datad => \datapath_risc|mux_op2|output~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op2|output~18_combout\);

-- Location: LC_X5_Y6_N5
\datapath_risc|mux_d3|output~17\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output~17_combout\ = (!\controlpath_risc|m_d3_1~combout\ & (((\controlpath_risc|m_d3_0~combout\ & \datapath_risc|RF|Mux23~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_d3_1~combout\,
	datac => \controlpath_risc|m_d3_0~combout\,
	datad => \datapath_risc|RF|Mux23~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output~17_combout\);

-- Location: LC_X6_Y6_N8
\datapath_risc|mux_d3|output~15\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output~15_combout\ = ((\datapath_risc|RF|Mux24~4_combout\ & (!\controlpath_risc|m_d3_1~combout\ & \controlpath_risc|m_d3_0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \datapath_risc|RF|Mux24~4_combout\,
	datac => \controlpath_risc|m_d3_1~combout\,
	datad => \controlpath_risc|m_d3_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output~15_combout\);

-- Location: LC_X8_Y4_N8
\datapath_risc|mux_op2|output~13\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op2|output~13_combout\ = (\controlpath_risc|m_op2_1~combout\ & (!\controlpath_risc|m_op2_0~combout\ & (\datapath_risc|RF|Mux8~4\))) # (!\controlpath_risc|m_op2_1~combout\ & (\controlpath_risc|m_op2_0~combout\ & 
-- ((\datapath_risc|RF|Mux24~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6420",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_op2_1~combout\,
	datab => \controlpath_risc|m_op2_0~combout\,
	datac => \datapath_risc|RF|Mux8~4\,
	datad => \datapath_risc|RF|Mux24~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op2|output~13_combout\);

-- Location: LC_X8_Y4_N4
\datapath_risc|mux_op2|output~14\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op2|output~14_combout\ = (\datapath_risc|mux_op2|output~13_combout\) # ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(5) & (\controlpath_risc|m_op2_0~combout\ & \controlpath_risc|m_op2_1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(5),
	datab => \controlpath_risc|m_op2_0~combout\,
	datac => \controlpath_risc|m_op2_1~combout\,
	datad => \datapath_risc|mux_op2|output~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op2|output~14_combout\);

-- Location: LC_X4_Y8_N6
\datapath_risc|mux_op1|output~11\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op1|output~11_combout\ = (!\controlpath_risc|m_op1_0~combout\ & (((\controlpath_risc|m_op1_1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_op1_0~combout\,
	datad => \controlpath_risc|m_op1_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op1|output~11_combout\);

-- Location: LC_X4_Y8_N5
\datapath_risc|mux_op1|output~9\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op1|output~9_combout\ = (\controlpath_risc|m_op1_0~combout\ & (((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(5) & !\controlpath_risc|m_op1_1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_op1_0~combout\,
	datac => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(5),
	datad => \controlpath_risc|m_op1_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op1|output~9_combout\);

-- Location: LC_X4_Y7_N4
\datapath_risc|mux_d3|output~13\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output~13_combout\ = (\datapath_risc|RF|Mux25~4_combout\ & (((!\controlpath_risc|m_d3_1~combout\ & \controlpath_risc|m_d3_0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|RF|Mux25~4_combout\,
	datac => \controlpath_risc|m_d3_1~combout\,
	datad => \controlpath_risc|m_d3_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output~13_combout\);

-- Location: LC_X11_Y9_N7
\datapath_risc|mux_op2|output~11\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op2|output~11_combout\ = (\controlpath_risc|m_op2_0~combout\ & (!\controlpath_risc|m_op2_1~combout\ & (\datapath_risc|RF|Mux25~4_combout\))) # (!\controlpath_risc|m_op2_0~combout\ & (\controlpath_risc|m_op2_1~combout\ & 
-- ((\datapath_risc|RF|Mux9~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6420",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_op2_0~combout\,
	datab => \controlpath_risc|m_op2_1~combout\,
	datac => \datapath_risc|RF|Mux25~4_combout\,
	datad => \datapath_risc|RF|Mux9~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op2|output~11_combout\);

-- Location: LC_X11_Y9_N8
\datapath_risc|mux_op2|output~12\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op2|output~12_combout\ = (\datapath_risc|mux_op2|output~11_combout\) # ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(5) & (\controlpath_risc|m_op2_1~combout\ & \controlpath_risc|m_op2_0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(5),
	datab => \controlpath_risc|m_op2_1~combout\,
	datac => \controlpath_risc|m_op2_0~combout\,
	datad => \datapath_risc|mux_op2|output~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op2|output~12_combout\);

-- Location: LC_X4_Y8_N3
\datapath_risc|mux_op1|output[6]~10\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op1|output[6]~10_combout\ = (\controlpath_risc|m_op1_1~combout\ & (((\datapath_risc|RF|Mux26~4_combout\ & \controlpath_risc|m_op1_0~combout\)))) # (!\controlpath_risc|m_op1_1~combout\ & (\datapath_risc|RF|Mux25~4_combout\ & 
-- ((!\controlpath_risc|m_op1_0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a044",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_op1_1~combout\,
	datab => \datapath_risc|RF|Mux25~4_combout\,
	datac => \datapath_risc|RF|Mux26~4_combout\,
	datad => \controlpath_risc|m_op1_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op1|output[6]~10_combout\);

-- Location: LC_X4_Y8_N7
\datapath_risc|mux_op1|output[6]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op1|output\(6) = (\datapath_risc|mux_op1|output~9_combout\) # ((\datapath_risc|mux_op1|output[6]~10_combout\) # ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(6) & \datapath_risc|mux_op1|output~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_op1|output~9_combout\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(6),
	datac => \datapath_risc|mux_op1|output~11_combout\,
	datad => \datapath_risc|mux_op1|output[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op1|output\(6));

-- Location: LC_X5_Y6_N2
\datapath_risc|alu_unit|output[6]~6\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|alu_unit|output[6]~6_combout\ = (\controlpath_risc|op_sel~combout\ & (((!\datapath_risc|mux_op1|output\(6))) # (!\datapath_risc|mux_op2|output~12_combout\))) # (!\controlpath_risc|op_sel~combout\ & (\datapath_risc|mux_op2|output~12_combout\ 
-- $ (\datapath_risc|mux_op1|output\(6) $ (\datapath_risc|alu_unit|carry~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7796",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_op2|output~12_combout\,
	datab => \datapath_risc|mux_op1|output\(6),
	datac => \datapath_risc|alu_unit|carry~combout\,
	datad => \controlpath_risc|op_sel~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|alu_unit|output[6]~6_combout\);

-- Location: LC_X11_Y7_N3
\datapath_risc|Inst_reg_fetch|next_instruction|dout[6]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|mem_out[6]~6\ = (((\controlpath_risc|rd_mem~combout\ & \datapath_risc|RAM|memory~346_combout\)))
-- \datapath_risc|Inst_reg_fetch|next_instruction|dout\(6) = DFFEAS(\datapath_risc|RAM|mem_out[6]~6\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \controlpath_risc|en_irf~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \controlpath_risc|rd_mem~combout\,
	datad => \datapath_risc|RAM|memory~346_combout\,
	aclr => \reset~combout\,
	ena => \controlpath_risc|en_irf~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|mem_out[6]~6\,
	regout => \datapath_risc|Inst_reg_fetch|next_instruction|dout\(6));

-- Location: LC_X4_Y7_N9
\datapath_risc|mux_d3|output[6]~14\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output[6]~14_combout\ = (\controlpath_risc|m_d3_1~combout\ & ((\controlpath_risc|m_d3_0~combout\ & ((\datapath_risc|RAM|mem_out[6]~6\))) # (!\controlpath_risc|m_d3_0~combout\ & 
-- (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_d3_1~combout\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(6),
	datac => \controlpath_risc|m_d3_0~combout\,
	datad => \datapath_risc|RAM|mem_out[6]~6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output[6]~14_combout\);

-- Location: LC_X4_Y7_N0
\datapath_risc|RF|registers[0][6]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output\(6) = (\datapath_risc|mux_d3|output~13_combout\) # ((\datapath_risc|mux_d3|output[6]~14_combout\) # ((!\datapath_risc|mux_d3|output~2_combout\ & \datapath_risc|alu_unit|output[6]~6_combout\)))
-- \datapath_risc|RF|registers[0][6]~regout\ = DFFEAS(\datapath_risc|mux_d3|output\(6), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffba",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_d3|output~13_combout\,
	datab => \datapath_risc|mux_d3|output~2_combout\,
	datac => \datapath_risc|alu_unit|output[6]~6_combout\,
	datad => \datapath_risc|mux_d3|output[6]~14_combout\,
	aclr => \reset~combout\,
	ena => \datapath_risc|RF|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output\(6),
	regout => \datapath_risc|RF|registers[0][6]~regout\);

-- Location: LC_X5_Y7_N3
\datapath_risc|RF|registers[4][6]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux9~0\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & (((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10))))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & 
-- ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & (\datapath_risc|RF|registers[6][6]~regout\)) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & ((P1_registers[4][6])))))
-- \datapath_risc|RF|registers[4][6]~regout\ = DFFEAS(\datapath_risc|RF|Mux9~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~4_combout\, \datapath_risc|mux_d3|output\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[6][6]~regout\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	datac => \datapath_risc|mux_d3|output\(6),
	datad => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux9~0\,
	regout => \datapath_risc|RF|registers[4][6]~regout\);

-- Location: LC_X5_Y5_N8
\datapath_risc|RF|registers[6][6]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux25~0\ = (\datapath_risc|mux_a2|output\(1) & (((P1_registers[6][6]) # (\datapath_risc|mux_a2|output\(0))))) # (!\datapath_risc|mux_a2|output\(1) & (\datapath_risc|RF|registers[4][6]~regout\ & ((!\datapath_risc|mux_a2|output\(0)))))
-- \datapath_risc|RF|registers[6][6]~regout\ = DFFEAS(\datapath_risc|RF|Mux25~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~6_combout\, \datapath_risc|mux_d3|output\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[4][6]~regout\,
	datab => \datapath_risc|mux_a2|output\(1),
	datac => \datapath_risc|mux_d3|output\(6),
	datad => \datapath_risc|mux_a2|output\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux25~0\,
	regout => \datapath_risc|RF|registers[6][6]~regout\);

-- Location: LC_X5_Y5_N9
\datapath_risc|RF|registers[5][6]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux25~1\ = (\datapath_risc|mux_a2|output\(0) & ((\datapath_risc|RF|Mux25~0\ & (\datapath_risc|RF|registers[7][6]~regout\)) # (!\datapath_risc|RF|Mux25~0\ & ((P1_registers[5][6]))))) # (!\datapath_risc|mux_a2|output\(0) & 
-- (((\datapath_risc|RF|Mux25~0\))))
-- \datapath_risc|RF|registers[5][6]~regout\ = DFFEAS(\datapath_risc|RF|Mux25~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~5_combout\, \datapath_risc|mux_d3|output\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_a2|output\(0),
	datab => \datapath_risc|RF|registers[7][6]~regout\,
	datac => \datapath_risc|mux_d3|output\(6),
	datad => \datapath_risc|RF|Mux25~0\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux25~1\,
	regout => \datapath_risc|RF|registers[5][6]~regout\);

-- Location: LC_X5_Y7_N8
\datapath_risc|RF|registers[7][6]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux9~1\ = (\datapath_risc|RF|Mux9~0\ & (((P1_registers[7][6])) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9)))) # (!\datapath_risc|RF|Mux9~0\ & (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & 
-- ((\datapath_risc|RF|registers[5][6]~regout\))))
-- \datapath_risc|RF|registers[7][6]~regout\ = DFFEAS(\datapath_risc|RF|Mux9~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~7_combout\, \datapath_risc|mux_d3|output\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6a2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|Mux9~0\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	datac => \datapath_risc|mux_d3|output\(6),
	datad => \datapath_risc|RF|registers[5][6]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux9~1\,
	regout => \datapath_risc|RF|registers[7][6]~regout\);

-- Location: LC_X4_Y7_N7
\datapath_risc|RF|registers[1][6]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux25~2\ = (\datapath_risc|mux_a2|output\(0) & ((\datapath_risc|mux_a2|output\(1)) # ((P1_registers[1][6])))) # (!\datapath_risc|mux_a2|output\(0) & (!\datapath_risc|mux_a2|output\(1) & ((\datapath_risc|RF|registers[0][6]~regout\))))
-- \datapath_risc|RF|registers[1][6]~regout\ = DFFEAS(\datapath_risc|RF|Mux25~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~1_combout\, \datapath_risc|mux_d3|output\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_a2|output\(0),
	datab => \datapath_risc|mux_a2|output\(1),
	datac => \datapath_risc|mux_d3|output\(6),
	datad => \datapath_risc|RF|registers[0][6]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux25~2\,
	regout => \datapath_risc|RF|registers[1][6]~regout\);

-- Location: LC_X4_Y5_N2
\datapath_risc|RF|registers[2][6]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux25~3\ = (\datapath_risc|RF|Mux25~2\ & ((\datapath_risc|RF|registers[3][6]~regout\) # ((!\datapath_risc|mux_a2|output\(1))))) # (!\datapath_risc|RF|Mux25~2\ & (((P1_registers[2][6] & \datapath_risc|mux_a2|output\(1)))))
-- \datapath_risc|RF|registers[2][6]~regout\ = DFFEAS(\datapath_risc|RF|Mux25~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~2_combout\, \datapath_risc|mux_d3|output\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|Mux25~2\,
	datab => \datapath_risc|RF|registers[3][6]~regout\,
	datac => \datapath_risc|mux_d3|output\(6),
	datad => \datapath_risc|mux_a2|output\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux25~3\,
	regout => \datapath_risc|RF|registers[2][6]~regout\);

-- Location: LC_X4_Y5_N6
\datapath_risc|RF|Mux9~2\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux9~2_combout\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & (((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9))))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & 
-- ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & ((\datapath_risc|RF|registers[1][6]~regout\))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & (\datapath_risc|RF|registers[0][6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2c2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|RF|registers[0][6]~regout\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	datac => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	datad => \datapath_risc|RF|registers[1][6]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux9~2_combout\);

-- Location: LC_X4_Y5_N7
\datapath_risc|RF|registers[3][6]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux9~3\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & ((\datapath_risc|RF|Mux9~2_combout\ & ((P1_registers[3][6]))) # (!\datapath_risc|RF|Mux9~2_combout\ & (\datapath_risc|RF|registers[2][6]~regout\)))) # 
-- (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & (((\datapath_risc|RF|Mux9~2_combout\))))
-- \datapath_risc|RF|registers[3][6]~regout\ = DFFEAS(\datapath_risc|RF|Mux9~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~3_combout\, \datapath_risc|mux_d3|output\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	datab => \datapath_risc|RF|registers[2][6]~regout\,
	datac => \datapath_risc|mux_d3|output\(6),
	datad => \datapath_risc|RF|Mux9~2_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux9~3\,
	regout => \datapath_risc|RF|registers[3][6]~regout\);

-- Location: LC_X4_Y5_N3
\datapath_risc|RF|Mux25~4\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux25~4_combout\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(8) & (\datapath_risc|RF|Mux25~1\)) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(8) & ((\controlpath_risc|m_a2~combout\ & (\datapath_risc|RF|Mux25~1\)) # 
-- (!\controlpath_risc|m_a2~combout\ & ((\datapath_risc|RF|Mux25~3\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cdc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(8),
	datab => \datapath_risc|RF|Mux25~1\,
	datac => \controlpath_risc|m_a2~combout\,
	datad => \datapath_risc|RF|Mux25~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux25~4_combout\);

-- Location: LC_X4_Y7_N3
\datapath_risc|mux_op1|output[7]~12\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op1|output[7]~12_combout\ = (\controlpath_risc|m_op1_1~combout\ & (\controlpath_risc|m_op1_0~combout\ & (\datapath_risc|RF|Mux25~4_combout\))) # (!\controlpath_risc|m_op1_1~combout\ & (!\controlpath_risc|m_op1_0~combout\ & 
-- ((\datapath_risc|RF|Mux24~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9180",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_op1_1~combout\,
	datab => \controlpath_risc|m_op1_0~combout\,
	datac => \datapath_risc|RF|Mux25~4_combout\,
	datad => \datapath_risc|RF|Mux24~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op1|output[7]~12_combout\);

-- Location: LC_X5_Y7_N7
\datapath_risc|mux_op1|output[7]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op1|output\(7) = (\datapath_risc|mux_op1|output~9_combout\) # ((\datapath_risc|mux_op1|output[7]~12_combout\) # ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(7) & \datapath_risc|mux_op1|output~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(7),
	datab => \datapath_risc|mux_op1|output~11_combout\,
	datac => \datapath_risc|mux_op1|output~9_combout\,
	datad => \datapath_risc|mux_op1|output[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op1|output\(7));

-- Location: LC_X6_Y6_N7
\datapath_risc|alu_unit|output[7]~7\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|alu_unit|output[7]~7_combout\ = (\controlpath_risc|op_sel~combout\ & (((!\datapath_risc|mux_op1|output\(7))) # (!\datapath_risc|mux_op2|output~14_combout\))) # (!\controlpath_risc|op_sel~combout\ & (\datapath_risc|mux_op2|output~14_combout\ 
-- $ (\datapath_risc|mux_op1|output\(7) $ (\datapath_risc|alu_unit|carry~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7796",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_op2|output~14_combout\,
	datab => \datapath_risc|mux_op1|output\(7),
	datac => \datapath_risc|alu_unit|carry~combout\,
	datad => \controlpath_risc|op_sel~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|alu_unit|output[7]~7_combout\);

-- Location: LC_X11_Y7_N7
\datapath_risc|Inst_reg_fetch|next_instruction|dout[7]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|mem_out[7]~7\ = (((\controlpath_risc|rd_mem~combout\ & \datapath_risc|RAM|memory~356_combout\)))
-- \datapath_risc|Inst_reg_fetch|next_instruction|dout\(7) = DFFEAS(\datapath_risc|RAM|mem_out[7]~7\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \controlpath_risc|en_irf~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \controlpath_risc|rd_mem~combout\,
	datad => \datapath_risc|RAM|memory~356_combout\,
	aclr => \reset~combout\,
	ena => \controlpath_risc|en_irf~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|mem_out[7]~7\,
	regout => \datapath_risc|Inst_reg_fetch|next_instruction|dout\(7));

-- Location: LC_X6_Y6_N9
\datapath_risc|mux_d3|output[7]~16\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output[7]~16_combout\ = (\controlpath_risc|m_d3_1~combout\ & ((\controlpath_risc|m_d3_0~combout\ & (\datapath_risc|RAM|mem_out[7]~7\)) # (!\controlpath_risc|m_d3_0~combout\ & 
-- ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|RAM|mem_out[7]~7\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(7),
	datac => \controlpath_risc|m_d3_1~combout\,
	datad => \controlpath_risc|m_d3_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output[7]~16_combout\);

-- Location: LC_X6_Y6_N1
\datapath_risc|RF|registers[0][7]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output\(7) = (\datapath_risc|mux_d3|output~15_combout\) # ((\datapath_risc|mux_d3|output[7]~16_combout\) # ((\datapath_risc|alu_unit|output[7]~7_combout\ & !\datapath_risc|mux_d3|output~2_combout\)))
-- \datapath_risc|RF|registers[0][7]~regout\ = DFFEAS(\datapath_risc|mux_d3|output\(7), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffae",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_d3|output~15_combout\,
	datab => \datapath_risc|alu_unit|output[7]~7_combout\,
	datac => \datapath_risc|mux_d3|output~2_combout\,
	datad => \datapath_risc|mux_d3|output[7]~16_combout\,
	aclr => \reset~combout\,
	ena => \datapath_risc|RF|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output\(7),
	regout => \datapath_risc|RF|registers[0][7]~regout\);

-- Location: LC_X2_Y6_N6
\datapath_risc|RF|registers[6][7]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux24~0\ = (\datapath_risc|mux_a2|output\(1) & (((P1_registers[6][7]) # (\datapath_risc|mux_a2|output\(0))))) # (!\datapath_risc|mux_a2|output\(1) & (\datapath_risc|RF|registers[4][7]~regout\ & ((!\datapath_risc|mux_a2|output\(0)))))
-- \datapath_risc|RF|registers[6][7]~regout\ = DFFEAS(\datapath_risc|RF|Mux24~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~6_combout\, \datapath_risc|mux_d3|output\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_a2|output\(1),
	datab => \datapath_risc|RF|registers[4][7]~regout\,
	datac => \datapath_risc|mux_d3|output\(7),
	datad => \datapath_risc|mux_a2|output\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux24~0\,
	regout => \datapath_risc|RF|registers[6][7]~regout\);

-- Location: LC_X1_Y6_N4
\datapath_risc|RF|registers[4][7]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux8~0\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & ((\datapath_risc|RF|registers[6][7]~regout\) # ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9))))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) 
-- & (((P1_registers[4][7] & !\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9)))))
-- \datapath_risc|RF|registers[4][7]~regout\ = DFFEAS(\datapath_risc|RF|Mux8~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~4_combout\, \datapath_risc|mux_d3|output\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[6][7]~regout\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	datac => \datapath_risc|mux_d3|output\(7),
	datad => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux8~0\,
	regout => \datapath_risc|RF|registers[4][7]~regout\);

-- Location: LC_X2_Y6_N7
\datapath_risc|RF|registers[5][7]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux24~1\ = (\datapath_risc|mux_a2|output\(0) & ((\datapath_risc|RF|Mux24~0\ & (\datapath_risc|RF|registers[7][7]~regout\)) # (!\datapath_risc|RF|Mux24~0\ & ((P1_registers[5][7]))))) # (!\datapath_risc|mux_a2|output\(0) & 
-- (((\datapath_risc|RF|Mux24~0\))))
-- \datapath_risc|RF|registers[5][7]~regout\ = DFFEAS(\datapath_risc|RF|Mux24~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~5_combout\, \datapath_risc|mux_d3|output\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[7][7]~regout\,
	datab => \datapath_risc|mux_a2|output\(0),
	datac => \datapath_risc|mux_d3|output\(7),
	datad => \datapath_risc|RF|Mux24~0\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux24~1\,
	regout => \datapath_risc|RF|registers[5][7]~regout\);

-- Location: LC_X3_Y6_N2
\datapath_risc|RF|registers[1][7]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux24~2\ = (\datapath_risc|mux_a2|output\(0) & (((P1_registers[1][7]) # (\datapath_risc|mux_a2|output\(1))))) # (!\datapath_risc|mux_a2|output\(0) & (\datapath_risc|RF|registers[0][7]~regout\ & ((!\datapath_risc|mux_a2|output\(1)))))
-- \datapath_risc|RF|registers[1][7]~regout\ = DFFEAS(\datapath_risc|RF|Mux24~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~1_combout\, \datapath_risc|mux_d3|output\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[0][7]~regout\,
	datab => \datapath_risc|mux_a2|output\(0),
	datac => \datapath_risc|mux_d3|output\(7),
	datad => \datapath_risc|mux_a2|output\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux24~2\,
	regout => \datapath_risc|RF|registers[1][7]~regout\);

-- Location: LC_X4_Y6_N4
\datapath_risc|RF|registers[2][7]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux24~3\ = (\datapath_risc|mux_a2|output\(1) & ((\datapath_risc|RF|Mux24~2\ & (\datapath_risc|RF|registers[3][7]~regout\)) # (!\datapath_risc|RF|Mux24~2\ & ((P1_registers[2][7]))))) # (!\datapath_risc|mux_a2|output\(1) & 
-- (((\datapath_risc|RF|Mux24~2\))))
-- \datapath_risc|RF|registers[2][7]~regout\ = DFFEAS(\datapath_risc|RF|Mux24~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~2_combout\, \datapath_risc|mux_d3|output\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[3][7]~regout\,
	datab => \datapath_risc|mux_a2|output\(1),
	datac => \datapath_risc|mux_d3|output\(7),
	datad => \datapath_risc|RF|Mux24~2\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux24~3\,
	regout => \datapath_risc|RF|registers[2][7]~regout\);

-- Location: LC_X3_Y6_N3
\datapath_risc|RF|Mux8~2\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux8~2_combout\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & (((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9))))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & 
-- ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & (\datapath_risc|RF|registers[1][7]~regout\)) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & ((\datapath_risc|RF|registers[0][7]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e5e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	datab => \datapath_risc|RF|registers[1][7]~regout\,
	datac => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	datad => \datapath_risc|RF|registers[0][7]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux8~2_combout\);

-- Location: LC_X3_Y6_N4
\datapath_risc|RF|registers[3][7]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux8~3\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & ((\datapath_risc|RF|Mux8~2_combout\ & ((P1_registers[3][7]))) # (!\datapath_risc|RF|Mux8~2_combout\ & (\datapath_risc|RF|registers[2][7]~regout\)))) # 
-- (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & (((\datapath_risc|RF|Mux8~2_combout\))))
-- \datapath_risc|RF|registers[3][7]~regout\ = DFFEAS(\datapath_risc|RF|Mux8~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~3_combout\, \datapath_risc|mux_d3|output\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	datab => \datapath_risc|RF|registers[2][7]~regout\,
	datac => \datapath_risc|mux_d3|output\(7),
	datad => \datapath_risc|RF|Mux8~2_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux8~3\,
	regout => \datapath_risc|RF|registers[3][7]~regout\);

-- Location: LC_X3_Y6_N5
\datapath_risc|RF|Mux24~4\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux24~4_combout\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(8) & (\datapath_risc|RF|Mux24~1\)) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(8) & ((\controlpath_risc|m_a2~combout\ & (\datapath_risc|RF|Mux24~1\)) # 
-- (!\controlpath_risc|m_a2~combout\ & ((\datapath_risc|RF|Mux24~3\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cdc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(8),
	datab => \datapath_risc|RF|Mux24~1\,
	datac => \controlpath_risc|m_a2~combout\,
	datad => \datapath_risc|RF|Mux24~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux24~4_combout\);

-- Location: LC_X4_Y5_N4
\datapath_risc|mux_op1|output[8]~13\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op1|output[8]~13_combout\ = (\controlpath_risc|m_op1_0~combout\ & (\datapath_risc|RF|Mux24~4_combout\ & (\controlpath_risc|m_op1_1~combout\))) # (!\controlpath_risc|m_op1_0~combout\ & (((!\controlpath_risc|m_op1_1~combout\ & 
-- \datapath_risc|RF|Mux23~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8580",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_op1_0~combout\,
	datab => \datapath_risc|RF|Mux24~4_combout\,
	datac => \controlpath_risc|m_op1_1~combout\,
	datad => \datapath_risc|RF|Mux23~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op1|output[8]~13_combout\);

-- Location: LC_X4_Y5_N5
\datapath_risc|mux_op1|output[8]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op1|output\(8) = (((\datapath_risc|mux_op1|output[8]~13_combout\)) # (!\datapath_risc|mux_op1|output[8]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \datapath_risc|mux_op1|output[8]~14\,
	datad => \datapath_risc|mux_op1|output[8]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op1|output\(8));

-- Location: LC_X10_Y5_N9
\datapath_risc|Inst_reg_fetch|next_instruction|dout[8]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|mem_out[8]~8\ = (((\controlpath_risc|rd_mem~combout\ & \datapath_risc|RAM|memory~366_combout\)))
-- \datapath_risc|Inst_reg_fetch|next_instruction|dout\(8) = DFFEAS(\datapath_risc|RAM|mem_out[8]~8\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \controlpath_risc|en_irf~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \controlpath_risc|rd_mem~combout\,
	datad => \datapath_risc|RAM|memory~366_combout\,
	aclr => \reset~combout\,
	ena => \controlpath_risc|en_irf~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|mem_out[8]~8\,
	regout => \datapath_risc|Inst_reg_fetch|next_instruction|dout\(8));

-- Location: LC_X10_Y5_N3
\datapath_risc|mux_d3|output[8]~18\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output[8]~18_combout\ = (\controlpath_risc|m_d3_1~combout\ & ((\controlpath_risc|m_d3_0~combout\ & ((\datapath_risc|RAM|mem_out[8]~8\))) # (!\controlpath_risc|m_d3_0~combout\ & 
-- (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(8),
	datab => \controlpath_risc|m_d3_0~combout\,
	datac => \controlpath_risc|m_d3_1~combout\,
	datad => \datapath_risc|RAM|mem_out[8]~8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output[8]~18_combout\);

-- Location: LC_X5_Y6_N3
\datapath_risc|RF|registers[0][8]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output\(8) = (\datapath_risc|mux_d3|output~17_combout\) # ((\datapath_risc|mux_d3|output[8]~18_combout\) # ((!\datapath_risc|mux_d3|output~2_combout\ & \datapath_risc|alu_unit|output[8]~8_combout\)))
-- \datapath_risc|RF|registers[0][8]~regout\ = DFFEAS(\datapath_risc|mux_d3|output\(8), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffba",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_d3|output~17_combout\,
	datab => \datapath_risc|mux_d3|output~2_combout\,
	datac => \datapath_risc|alu_unit|output[8]~8_combout\,
	datad => \datapath_risc|mux_d3|output[8]~18_combout\,
	aclr => \reset~combout\,
	ena => \datapath_risc|RF|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output\(8),
	regout => \datapath_risc|RF|registers[0][8]~regout\);

-- Location: LC_X3_Y6_N1
\datapath_risc|RF|registers[1][8]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux23~2\ = (\datapath_risc|mux_a2|output\(0) & (((P1_registers[1][8]) # (\datapath_risc|mux_a2|output\(1))))) # (!\datapath_risc|mux_a2|output\(0) & (\datapath_risc|RF|registers[0][8]~regout\ & ((!\datapath_risc|mux_a2|output\(1)))))
-- \datapath_risc|RF|registers[1][8]~regout\ = DFFEAS(\datapath_risc|RF|Mux23~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~1_combout\, \datapath_risc|mux_d3|output\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[0][8]~regout\,
	datab => \datapath_risc|mux_a2|output\(0),
	datac => \datapath_risc|mux_d3|output\(8),
	datad => \datapath_risc|mux_a2|output\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux23~2\,
	regout => \datapath_risc|RF|registers[1][8]~regout\);

-- Location: LC_X3_Y6_N9
\datapath_risc|RF|Mux7~2\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux7~2_combout\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & (((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9))))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & 
-- ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & (\datapath_risc|RF|registers[1][8]~regout\)) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & ((\datapath_risc|RF|registers[0][8]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	datab => \datapath_risc|RF|registers[1][8]~regout\,
	datac => \datapath_risc|RF|registers[0][8]~regout\,
	datad => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux7~2_combout\);

-- Location: LC_X3_Y6_N0
\datapath_risc|RF|registers[3][8]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux7~3\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & ((\datapath_risc|RF|Mux7~2_combout\ & (P1_registers[3][8])) # (!\datapath_risc|RF|Mux7~2_combout\ & ((\datapath_risc|RF|registers[2][8]~regout\))))) # 
-- (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & (\datapath_risc|RF|Mux7~2_combout\))
-- \datapath_risc|RF|registers[3][8]~regout\ = DFFEAS(\datapath_risc|RF|Mux7~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~3_combout\, \datapath_risc|mux_d3|output\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	datab => \datapath_risc|RF|Mux7~2_combout\,
	datac => \datapath_risc|mux_d3|output\(8),
	datad => \datapath_risc|RF|registers[2][8]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux7~3\,
	regout => \datapath_risc|RF|registers[3][8]~regout\);

-- Location: LC_X4_Y5_N8
\datapath_risc|RF|registers[2][8]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux23~3\ = (\datapath_risc|mux_a2|output\(1) & ((\datapath_risc|RF|Mux23~2\ & (\datapath_risc|RF|registers[3][8]~regout\)) # (!\datapath_risc|RF|Mux23~2\ & ((P1_registers[2][8]))))) # (!\datapath_risc|mux_a2|output\(1) & 
-- (((\datapath_risc|RF|Mux23~2\))))
-- \datapath_risc|RF|registers[2][8]~regout\ = DFFEAS(\datapath_risc|RF|Mux23~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~2_combout\, \datapath_risc|mux_d3|output\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[3][8]~regout\,
	datab => \datapath_risc|mux_a2|output\(1),
	datac => \datapath_risc|mux_d3|output\(8),
	datad => \datapath_risc|RF|Mux23~2\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux23~3\,
	regout => \datapath_risc|RF|registers[2][8]~regout\);

-- Location: LC_X5_Y7_N1
\datapath_risc|RF|registers[4][8]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux7~0\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & (((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10))))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & 
-- ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & (\datapath_risc|RF|registers[6][8]~regout\)) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & ((P1_registers[4][8])))))
-- \datapath_risc|RF|registers[4][8]~regout\ = DFFEAS(\datapath_risc|RF|Mux7~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~4_combout\, \datapath_risc|mux_d3|output\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[6][8]~regout\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	datac => \datapath_risc|mux_d3|output\(8),
	datad => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux7~0\,
	regout => \datapath_risc|RF|registers[4][8]~regout\);

-- Location: LC_X5_Y5_N2
\datapath_risc|RF|registers[6][8]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux23~0\ = (\datapath_risc|mux_a2|output\(1) & (((P1_registers[6][8]) # (\datapath_risc|mux_a2|output\(0))))) # (!\datapath_risc|mux_a2|output\(1) & (\datapath_risc|RF|registers[4][8]~regout\ & ((!\datapath_risc|mux_a2|output\(0)))))
-- \datapath_risc|RF|registers[6][8]~regout\ = DFFEAS(\datapath_risc|RF|Mux23~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~6_combout\, \datapath_risc|mux_d3|output\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[4][8]~regout\,
	datab => \datapath_risc|mux_a2|output\(1),
	datac => \datapath_risc|mux_d3|output\(8),
	datad => \datapath_risc|mux_a2|output\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux23~0\,
	regout => \datapath_risc|RF|registers[6][8]~regout\);

-- Location: LC_X5_Y7_N2
\datapath_risc|RF|registers[7][8]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux7~1\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & ((\datapath_risc|RF|Mux7~0\ & ((P1_registers[7][8]))) # (!\datapath_risc|RF|Mux7~0\ & (\datapath_risc|RF|registers[5][8]~regout\)))) # 
-- (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & (((\datapath_risc|RF|Mux7~0\))))
-- \datapath_risc|RF|registers[7][8]~regout\ = DFFEAS(\datapath_risc|RF|Mux7~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~7_combout\, \datapath_risc|mux_d3|output\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[5][8]~regout\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	datac => \datapath_risc|mux_d3|output\(8),
	datad => \datapath_risc|RF|Mux7~0\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux7~1\,
	regout => \datapath_risc|RF|registers[7][8]~regout\);

-- Location: LC_X5_Y4_N9
\datapath_risc|RAM|memory~157\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux7~4\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & (((\datapath_risc|RF|Mux7~1\)))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & (\datapath_risc|RF|Mux7~3\))
-- \datapath_risc|RAM|memory~157_regout\ = DFFEAS(\datapath_risc|RF|Mux7~4\, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~442_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caca",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|Mux7~3\,
	datab => \datapath_risc|RF|Mux7~1\,
	datac => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(11),
	aclr => GND,
	ena => \datapath_risc|RAM|memory~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux7~4\,
	regout => \datapath_risc|RAM|memory~157_regout\);

-- Location: LC_X5_Y4_N4
\datapath_risc|mux_op2|output~15\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op2|output~15_combout\ = (\controlpath_risc|m_op2_0~combout\ & (!\controlpath_risc|m_op2_1~combout\ & (\datapath_risc|RF|Mux23~4_combout\))) # (!\controlpath_risc|m_op2_0~combout\ & (\controlpath_risc|m_op2_1~combout\ & 
-- ((\datapath_risc|RF|Mux7~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6420",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_op2_0~combout\,
	datab => \controlpath_risc|m_op2_1~combout\,
	datac => \datapath_risc|RF|Mux23~4_combout\,
	datad => \datapath_risc|RF|Mux7~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op2|output~15_combout\);

-- Location: LC_X5_Y4_N8
\datapath_risc|mux_op2|output~16\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op2|output~16_combout\ = (\datapath_risc|mux_op2|output~15_combout\) # ((\controlpath_risc|m_op2_0~combout\ & (\controlpath_risc|m_op2_1~combout\ & \datapath_risc|Inst_reg_exe|next_instruction1|dout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_op2_0~combout\,
	datab => \controlpath_risc|m_op2_1~combout\,
	datac => \datapath_risc|mux_op2|output~15_combout\,
	datad => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op2|output~16_combout\);

-- Location: LC_X5_Y6_N0
\datapath_risc|alu_unit|output[8]~8\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|alu_unit|output[8]~8_combout\ = (\controlpath_risc|op_sel~combout\ & (((!\datapath_risc|mux_op2|output~16_combout\)) # (!\datapath_risc|mux_op1|output\(8)))) # (!\controlpath_risc|op_sel~combout\ & (\datapath_risc|mux_op1|output\(8) $ 
-- (\datapath_risc|mux_op2|output~16_combout\ $ (\datapath_risc|alu_unit|carry~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7796",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_op1|output\(8),
	datab => \datapath_risc|mux_op2|output~16_combout\,
	datac => \datapath_risc|alu_unit|carry~combout\,
	datad => \controlpath_risc|op_sel~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|alu_unit|output[8]~8_combout\);

-- Location: LC_X5_Y5_N5
\datapath_risc|RF|registers[5][8]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux23~1\ = (\datapath_risc|mux_a2|output\(0) & ((\datapath_risc|RF|Mux23~0\ & (\datapath_risc|RF|registers[7][8]~regout\)) # (!\datapath_risc|RF|Mux23~0\ & ((P1_registers[5][8]))))) # (!\datapath_risc|mux_a2|output\(0) & 
-- (((\datapath_risc|RF|Mux23~0\))))
-- \datapath_risc|RF|registers[5][8]~regout\ = DFFEAS(\datapath_risc|RF|Mux23~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~5_combout\, \datapath_risc|mux_d3|output\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[7][8]~regout\,
	datab => \datapath_risc|mux_a2|output\(0),
	datac => \datapath_risc|mux_d3|output\(8),
	datad => \datapath_risc|RF|Mux23~0\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux23~1\,
	regout => \datapath_risc|RF|registers[5][8]~regout\);

-- Location: LC_X4_Y5_N9
\datapath_risc|RF|Mux23~4\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux23~4_combout\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(8) & (\datapath_risc|RF|Mux23~1\)) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(8) & ((\controlpath_risc|m_a2~combout\ & (\datapath_risc|RF|Mux23~1\)) # 
-- (!\controlpath_risc|m_a2~combout\ & ((\datapath_risc|RF|Mux23~3\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cdc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(8),
	datab => \datapath_risc|RF|Mux23~1\,
	datac => \controlpath_risc|m_a2~combout\,
	datad => \datapath_risc|RF|Mux23~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux23~4_combout\);

-- Location: LC_X3_Y5_N2
\datapath_risc|mux_op1|output[9]~15\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op1|output[9]~15_combout\ = (\controlpath_risc|m_op1_0~combout\ & (\controlpath_risc|m_op1_1~combout\ & (\datapath_risc|RF|Mux23~4_combout\))) # (!\controlpath_risc|m_op1_0~combout\ & (!\controlpath_risc|m_op1_1~combout\ & 
-- ((\datapath_risc|RF|Mux22~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9180",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_op1_0~combout\,
	datab => \controlpath_risc|m_op1_1~combout\,
	datac => \datapath_risc|RF|Mux23~4_combout\,
	datad => \datapath_risc|RF|Mux22~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op1|output[9]~15_combout\);

-- Location: LC_X3_Y5_N0
\datapath_risc|mux_op1|output[9]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op1|output\(9) = (((\datapath_risc|mux_op1|output[9]~15_combout\) # (!\datapath_risc|mux_op1|output[8]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \datapath_risc|mux_op1|output[8]~14\,
	datad => \datapath_risc|mux_op1|output[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op1|output\(9));

-- Location: LC_X6_Y9_N1
\datapath_risc|alu_unit|output[9]~9\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|alu_unit|output[9]~9_combout\ = (\controlpath_risc|op_sel~combout\ & (((!\datapath_risc|mux_op1|output\(9)) # (!\datapath_risc|mux_op2|output~18_combout\)))) # (!\controlpath_risc|op_sel~combout\ & (\datapath_risc|alu_unit|carry~combout\ $ 
-- (\datapath_risc|mux_op2|output~18_combout\ $ (\datapath_risc|mux_op1|output\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4bbe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|op_sel~combout\,
	datab => \datapath_risc|alu_unit|carry~combout\,
	datac => \datapath_risc|mux_op2|output~18_combout\,
	datad => \datapath_risc|mux_op1|output\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|alu_unit|output[9]~9_combout\);

-- Location: LC_X3_Y5_N4
\datapath_risc|RF|registers[2][9]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux22~3\ = (\datapath_risc|mux_a2|output\(1) & ((\datapath_risc|RF|Mux22~2\ & (\datapath_risc|RF|registers[3][9]~regout\)) # (!\datapath_risc|RF|Mux22~2\ & ((P1_registers[2][9]))))) # (!\datapath_risc|mux_a2|output\(1) & 
-- (((\datapath_risc|RF|Mux22~2\))))
-- \datapath_risc|RF|registers[2][9]~regout\ = DFFEAS(\datapath_risc|RF|Mux22~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~2_combout\, \datapath_risc|mux_d3|output\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[3][9]~regout\,
	datab => \datapath_risc|mux_a2|output\(1),
	datac => \datapath_risc|mux_d3|output\(9),
	datad => \datapath_risc|RF|Mux22~2\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux22~3\,
	regout => \datapath_risc|RF|registers[2][9]~regout\);

-- Location: LC_X3_Y5_N1
\datapath_risc|RF|Mux22~4\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux22~4_combout\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(8) & (((\datapath_risc|RF|Mux22~1\)))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(8) & ((\controlpath_risc|m_a2~combout\ & 
-- ((\datapath_risc|RF|Mux22~1\))) # (!\controlpath_risc|m_a2~combout\ & (\datapath_risc|RF|Mux22~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(8),
	datab => \controlpath_risc|m_a2~combout\,
	datac => \datapath_risc|RF|Mux22~3\,
	datad => \datapath_risc|RF|Mux22~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux22~4_combout\);

-- Location: LC_X3_Y5_N6
\datapath_risc|mux_op1|output[10]~16\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op1|output[10]~16_combout\ = (\controlpath_risc|m_op1_1~combout\ & (\datapath_risc|RF|Mux22~4_combout\ & (\controlpath_risc|m_op1_0~combout\))) # (!\controlpath_risc|m_op1_1~combout\ & (((!\controlpath_risc|m_op1_0~combout\ & 
-- \datapath_risc|RF|Mux21~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8580",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_op1_1~combout\,
	datab => \datapath_risc|RF|Mux22~4_combout\,
	datac => \controlpath_risc|m_op1_0~combout\,
	datad => \datapath_risc|RF|Mux21~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op1|output[10]~16_combout\);

-- Location: LC_X3_Y5_N7
\datapath_risc|mux_op1|output[10]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op1|output\(10) = (((\datapath_risc|mux_op1|output[10]~16_combout\) # (!\datapath_risc|mux_op1|output[8]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \datapath_risc|mux_op1|output[8]~14\,
	datad => \datapath_risc|mux_op1|output[10]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op1|output\(10));

-- Location: LC_X13_Y10_N3
\datapath_risc|RAM|memory~271\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~271_regout\ = DFFEAS((((\datapath_risc|RF|Mux5~4\))), GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~468_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \datapath_risc|RF|Mux5~4\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~271_regout\);

-- Location: LC_X13_Y4_N2
\datapath_risc|RAM|memory~223\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~223_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~466_combout\, \datapath_risc|RF|Mux5~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux5~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~223_regout\);

-- Location: LC_X13_Y8_N4
\datapath_risc|RAM|memory~239\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~384\ = (\datapath_risc|mux_mem_a|output[1]~0\ & (((\datapath_risc|mux_mem_a|output[0]~1\)))) # (!\datapath_risc|mux_mem_a|output[1]~0\ & ((\datapath_risc|mux_mem_a|output[0]~1\ & ((M1L235Q))) # 
-- (!\datapath_risc|mux_mem_a|output[0]~1\ & (\datapath_risc|RAM|memory~223_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[1]~0\,
	datab => \datapath_risc|RAM|memory~223_regout\,
	datac => \datapath_risc|RF|Mux5~4\,
	datad => \datapath_risc|mux_mem_a|output[0]~1\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~384\,
	regout => \datapath_risc|RAM|memory~239_regout\);

-- Location: LC_X13_Y8_N5
\datapath_risc|RAM|memory~255\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~385\ = (\datapath_risc|mux_mem_a|output[1]~0\ & ((\datapath_risc|RAM|memory~384\ & (\datapath_risc|RAM|memory~271_regout\)) # (!\datapath_risc|RAM|memory~384\ & ((M1L251Q))))) # (!\datapath_risc|mux_mem_a|output[1]~0\ & 
-- (((\datapath_risc|RAM|memory~384\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[1]~0\,
	datab => \datapath_risc|RAM|memory~271_regout\,
	datac => \datapath_risc|RF|Mux5~4\,
	datad => \datapath_risc|RAM|memory~384\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~385\,
	regout => \datapath_risc|RAM|memory~255_regout\);

-- Location: LC_X13_Y6_N2
\datapath_risc|RAM|memory~143\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~143_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~452_combout\, \datapath_risc|RF|Mux5~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux5~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~143_regout\);

-- Location: LC_X8_Y7_N6
\datapath_risc|RF|registers[1][10]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux21~2\ = (\datapath_risc|mux_a2|output\(1) & (((\datapath_risc|mux_a2|output\(0))))) # (!\datapath_risc|mux_a2|output\(1) & ((\datapath_risc|mux_a2|output\(0) & ((P1_registers[1][10]))) # (!\datapath_risc|mux_a2|output\(0) & 
-- (\datapath_risc|RF|registers[0][10]~regout\))))
-- \datapath_risc|RF|registers[1][10]~regout\ = DFFEAS(\datapath_risc|RF|Mux21~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~1_combout\, \datapath_risc|mux_d3|output\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_a2|output\(1),
	datab => \datapath_risc|RF|registers[0][10]~regout\,
	datac => \datapath_risc|mux_d3|output\(10),
	datad => \datapath_risc|mux_a2|output\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux21~2\,
	regout => \datapath_risc|RF|registers[1][10]~regout\);

-- Location: LC_X3_Y7_N5
\datapath_risc|RF|registers[2][10]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux21~3\ = (\datapath_risc|mux_a2|output\(1) & ((\datapath_risc|RF|Mux21~2\ & (\datapath_risc|RF|registers[3][10]~regout\)) # (!\datapath_risc|RF|Mux21~2\ & ((P1_registers[2][10]))))) # (!\datapath_risc|mux_a2|output\(1) & 
-- (((\datapath_risc|RF|Mux21~2\))))
-- \datapath_risc|RF|registers[2][10]~regout\ = DFFEAS(\datapath_risc|RF|Mux21~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~2_combout\, \datapath_risc|mux_d3|output\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_a2|output\(1),
	datab => \datapath_risc|RF|registers[3][10]~regout\,
	datac => \datapath_risc|mux_d3|output\(10),
	datad => \datapath_risc|RF|Mux21~2\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux21~3\,
	regout => \datapath_risc|RF|registers[2][10]~regout\);

-- Location: LC_X5_Y10_N6
\datapath_risc|RF|registers[3][10]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux5~3\ = (\datapath_risc|RF|Mux5~2_combout\ & (((P1_registers[3][10])) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10)))) # (!\datapath_risc|RF|Mux5~2_combout\ & (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & 
-- ((\datapath_risc|RF|registers[2][10]~regout\))))
-- \datapath_risc|RF|registers[3][10]~regout\ = DFFEAS(\datapath_risc|RF|Mux5~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~3_combout\, \datapath_risc|mux_d3|output\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6a2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|Mux5~2_combout\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	datac => \datapath_risc|mux_d3|output\(10),
	datad => \datapath_risc|RF|registers[2][10]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux5~3\,
	regout => \datapath_risc|RF|registers[3][10]~regout\);

-- Location: LC_X5_Y10_N9
\datapath_risc|RAM|memory~95\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux5~4\ = ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & (\datapath_risc|RF|Mux5~1\)) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & ((\datapath_risc|RF|Mux5~3\))))
-- \datapath_risc|RAM|memory~95_regout\ = DFFEAS(\datapath_risc|RF|Mux5~4\, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~450_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|Mux5~1\,
	datac => \datapath_risc|RF|Mux5~3\,
	datad => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(11),
	aclr => GND,
	ena => \datapath_risc|RAM|memory~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux5~4\,
	regout => \datapath_risc|RAM|memory~95_regout\);

-- Location: LC_X12_Y8_N6
\datapath_risc|RAM|memory~111\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~377\ = (\datapath_risc|mux_mem_a|output[1]~0\ & (((\datapath_risc|mux_mem_a|output[0]~1\)))) # (!\datapath_risc|mux_mem_a|output[1]~0\ & ((\datapath_risc|mux_mem_a|output[0]~1\ & ((M1L107Q))) # 
-- (!\datapath_risc|mux_mem_a|output[0]~1\ & (\datapath_risc|RAM|memory~95_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~95_regout\,
	datab => \datapath_risc|mux_mem_a|output[1]~0\,
	datac => \datapath_risc|RF|Mux5~4\,
	datad => \datapath_risc|mux_mem_a|output[0]~1\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~377\,
	regout => \datapath_risc|RAM|memory~111_regout\);

-- Location: LC_X12_Y8_N7
\datapath_risc|RAM|memory~127\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~378\ = (\datapath_risc|mux_mem_a|output[1]~0\ & ((\datapath_risc|RAM|memory~377\ & (\datapath_risc|RAM|memory~143_regout\)) # (!\datapath_risc|RAM|memory~377\ & ((M1L123Q))))) # (!\datapath_risc|mux_mem_a|output[1]~0\ & 
-- (((\datapath_risc|RAM|memory~377\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[1]~0\,
	datab => \datapath_risc|RAM|memory~143_regout\,
	datac => \datapath_risc|RF|Mux5~4\,
	datad => \datapath_risc|RAM|memory~377\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~378\,
	regout => \datapath_risc|RAM|memory~127_regout\);

-- Location: LC_X14_Y10_N6
\datapath_risc|RAM|memory~79\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~79_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~460_combout\, \datapath_risc|RF|Mux5~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux5~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~79_regout\);

-- Location: LC_X14_Y6_N0
\datapath_risc|RAM|memory~31\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~31_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~458_combout\, \datapath_risc|RF|Mux5~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux5~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~31_regout\);

-- Location: LC_X14_Y7_N8
\datapath_risc|RAM|memory~63\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~381\ = (\datapath_risc|mux_mem_a|output[1]~0\ & (((M1L59Q) # (\datapath_risc|mux_mem_a|output[0]~1\)))) # (!\datapath_risc|mux_mem_a|output[1]~0\ & (\datapath_risc|RAM|memory~31_regout\ & 
-- ((!\datapath_risc|mux_mem_a|output[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~31_regout\,
	datab => \datapath_risc|mux_mem_a|output[1]~0\,
	datac => \datapath_risc|RF|Mux5~4\,
	datad => \datapath_risc|mux_mem_a|output[0]~1\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~381\,
	regout => \datapath_risc|RAM|memory~63_regout\);

-- Location: LC_X14_Y7_N9
\datapath_risc|RAM|memory~47\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~382\ = (\datapath_risc|mux_mem_a|output[0]~1\ & ((\datapath_risc|RAM|memory~381\ & (\datapath_risc|RAM|memory~79_regout\)) # (!\datapath_risc|RAM|memory~381\ & ((M1L43Q))))) # (!\datapath_risc|mux_mem_a|output[0]~1\ & 
-- (((\datapath_risc|RAM|memory~381\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~79_regout\,
	datab => \datapath_risc|mux_mem_a|output[0]~1\,
	datac => \datapath_risc|RF|Mux5~4\,
	datad => \datapath_risc|RAM|memory~381\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~382\,
	regout => \datapath_risc|RAM|memory~47_regout\);

-- Location: LC_X13_Y5_N5
\datapath_risc|RAM|memory~207\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~207_regout\ = DFFEAS((((\datapath_risc|RF|Mux5~4\))), GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~444_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \datapath_risc|RF|Mux5~4\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~207_regout\);

-- Location: LC_X12_Y4_N2
\datapath_risc|RAM|memory~159\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~159_regout\ = DFFEAS((((\datapath_risc|RF|Mux5~4\))), GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~442_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \datapath_risc|RF|Mux5~4\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~159_regout\);

-- Location: LC_X12_Y7_N7
\datapath_risc|RAM|memory~191\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~379\ = (\datapath_risc|mux_mem_a|output[1]~0\ & (((M1L187Q) # (\datapath_risc|mux_mem_a|output[0]~1\)))) # (!\datapath_risc|mux_mem_a|output[1]~0\ & (\datapath_risc|RAM|memory~159_regout\ & 
-- ((!\datapath_risc|mux_mem_a|output[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[1]~0\,
	datab => \datapath_risc|RAM|memory~159_regout\,
	datac => \datapath_risc|RF|Mux5~4\,
	datad => \datapath_risc|mux_mem_a|output[0]~1\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~379\,
	regout => \datapath_risc|RAM|memory~191_regout\);

-- Location: LC_X13_Y7_N8
\datapath_risc|RAM|memory~175\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~380\ = (\datapath_risc|mux_mem_a|output[0]~1\ & ((\datapath_risc|RAM|memory~379\ & (\datapath_risc|RAM|memory~207_regout\)) # (!\datapath_risc|RAM|memory~379\ & ((M1L171Q))))) # (!\datapath_risc|mux_mem_a|output[0]~1\ & 
-- (((\datapath_risc|RAM|memory~379\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[0]~1\,
	datab => \datapath_risc|RAM|memory~207_regout\,
	datac => \datapath_risc|RF|Mux5~4\,
	datad => \datapath_risc|RAM|memory~379\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~380\,
	regout => \datapath_risc|RAM|memory~175_regout\);

-- Location: LC_X13_Y7_N5
\datapath_risc|RAM|memory~383\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~383_combout\ = (\datapath_risc|mux_mem_a|output[2]~3\ & (\datapath_risc|mux_mem_a|output[3]~2\)) # (!\datapath_risc|mux_mem_a|output[2]~3\ & ((\datapath_risc|mux_mem_a|output[3]~2\ & ((\datapath_risc|RAM|memory~380\))) # 
-- (!\datapath_risc|mux_mem_a|output[3]~2\ & (\datapath_risc|RAM|memory~382\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_mem_a|output[2]~3\,
	datab => \datapath_risc|mux_mem_a|output[3]~2\,
	datac => \datapath_risc|RAM|memory~382\,
	datad => \datapath_risc|RAM|memory~380\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~383_combout\);

-- Location: LC_X13_Y7_N6
\datapath_risc|RAM|memory~386\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~386_combout\ = (\datapath_risc|mux_mem_a|output[2]~3\ & ((\datapath_risc|RAM|memory~383_combout\ & (\datapath_risc|RAM|memory~385\)) # (!\datapath_risc|RAM|memory~383_combout\ & ((\datapath_risc|RAM|memory~378\))))) # 
-- (!\datapath_risc|mux_mem_a|output[2]~3\ & (((\datapath_risc|RAM|memory~383_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_mem_a|output[2]~3\,
	datab => \datapath_risc|RAM|memory~385\,
	datac => \datapath_risc|RAM|memory~378\,
	datad => \datapath_risc|RAM|memory~383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~386_combout\);

-- Location: LC_X9_Y7_N4
\datapath_risc|Inst_reg_fetch|next_instruction|dout[10]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|mem_out[10]~10\ = ((\controlpath_risc|rd_mem~combout\ & ((\datapath_risc|RAM|memory~386_combout\))))
-- \datapath_risc|Inst_reg_fetch|next_instruction|dout\(10) = DFFEAS(\datapath_risc|RAM|mem_out[10]~10\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \controlpath_risc|en_irf~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \controlpath_risc|rd_mem~combout\,
	datad => \datapath_risc|RAM|memory~386_combout\,
	aclr => \reset~combout\,
	ena => \controlpath_risc|en_irf~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|mem_out[10]~10\,
	regout => \datapath_risc|Inst_reg_fetch|next_instruction|dout\(10));

-- Location: LC_X8_Y7_N0
\datapath_risc|mux_d3|output[10]~22\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output[10]~22_combout\ = (\controlpath_risc|m_d3_1~combout\ & ((\controlpath_risc|m_d3_0~combout\ & ((\datapath_risc|RAM|mem_out[10]~10\))) # (!\controlpath_risc|m_d3_0~combout\ & 
-- (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(8),
	datab => \controlpath_risc|m_d3_1~combout\,
	datac => \controlpath_risc|m_d3_0~combout\,
	datad => \datapath_risc|RAM|mem_out[10]~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output[10]~22_combout\);

-- Location: LC_X8_Y7_N1
\datapath_risc|RF|registers[0][10]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output\(10) = (\datapath_risc|mux_d3|output~21_combout\) # ((\datapath_risc|mux_d3|output[10]~22_combout\) # ((!\datapath_risc|mux_d3|output~2_combout\ & \datapath_risc|alu_unit|output[10]~10_combout\)))
-- \datapath_risc|RF|registers[0][10]~regout\ = DFFEAS(\datapath_risc|mux_d3|output\(10), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffdc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_d3|output~2_combout\,
	datab => \datapath_risc|mux_d3|output~21_combout\,
	datac => \datapath_risc|alu_unit|output[10]~10_combout\,
	datad => \datapath_risc|mux_d3|output[10]~22_combout\,
	aclr => \reset~combout\,
	ena => \datapath_risc|RF|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output\(10),
	regout => \datapath_risc|RF|registers[0][10]~regout\);

-- Location: LC_X5_Y7_N0
\datapath_risc|RF|registers[4][10]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux5~0\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & (((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10))))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & 
-- ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & (\datapath_risc|RF|registers[6][10]~regout\)) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & ((P1_registers[4][10])))))
-- \datapath_risc|RF|registers[4][10]~regout\ = DFFEAS(\datapath_risc|RF|Mux5~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~4_combout\, \datapath_risc|mux_d3|output\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[6][10]~regout\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	datac => \datapath_risc|mux_d3|output\(10),
	datad => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux5~0\,
	regout => \datapath_risc|RF|registers[4][10]~regout\);

-- Location: LC_X8_Y8_N9
\datapath_risc|RF|registers[6][10]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux21~0\ = (\datapath_risc|mux_a2|output\(1) & (((P1_registers[6][10]) # (\datapath_risc|mux_a2|output\(0))))) # (!\datapath_risc|mux_a2|output\(1) & (\datapath_risc|RF|registers[4][10]~regout\ & ((!\datapath_risc|mux_a2|output\(0)))))
-- \datapath_risc|RF|registers[6][10]~regout\ = DFFEAS(\datapath_risc|RF|Mux21~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~6_combout\, \datapath_risc|mux_d3|output\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[4][10]~regout\,
	datab => \datapath_risc|mux_a2|output\(1),
	datac => \datapath_risc|mux_d3|output\(10),
	datad => \datapath_risc|mux_a2|output\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux21~0\,
	regout => \datapath_risc|RF|registers[6][10]~regout\);

-- Location: LC_X5_Y7_N6
\datapath_risc|RF|registers[7][10]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux5~1\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & ((\datapath_risc|RF|Mux5~0\ & ((P1_registers[7][10]))) # (!\datapath_risc|RF|Mux5~0\ & (\datapath_risc|RF|registers[5][10]~regout\)))) # 
-- (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & (((\datapath_risc|RF|Mux5~0\))))
-- \datapath_risc|RF|registers[7][10]~regout\ = DFFEAS(\datapath_risc|RF|Mux5~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~7_combout\, \datapath_risc|mux_d3|output\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[5][10]~regout\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	datac => \datapath_risc|mux_d3|output\(10),
	datad => \datapath_risc|RF|Mux5~0\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux5~1\,
	regout => \datapath_risc|RF|registers[7][10]~regout\);

-- Location: LC_X3_Y7_N2
\datapath_risc|RF|registers[5][10]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux21~1\ = (\datapath_risc|mux_a2|output\(0) & ((\datapath_risc|RF|Mux21~0\ & (\datapath_risc|RF|registers[7][10]~regout\)) # (!\datapath_risc|RF|Mux21~0\ & ((P1_registers[5][10]))))) # (!\datapath_risc|mux_a2|output\(0) & 
-- (((\datapath_risc|RF|Mux21~0\))))
-- \datapath_risc|RF|registers[5][10]~regout\ = DFFEAS(\datapath_risc|RF|Mux21~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~5_combout\, \datapath_risc|mux_d3|output\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[7][10]~regout\,
	datab => \datapath_risc|mux_a2|output\(0),
	datac => \datapath_risc|mux_d3|output\(10),
	datad => \datapath_risc|RF|Mux21~0\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux21~1\,
	regout => \datapath_risc|RF|registers[5][10]~regout\);

-- Location: LC_X5_Y10_N8
\datapath_risc|mux_op2|output~19\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op2|output~19_combout\ = (\controlpath_risc|m_op2_0~combout\ & (!\controlpath_risc|m_op2_1~combout\ & ((\datapath_risc|RF|Mux21~4_combout\)))) # (!\controlpath_risc|m_op2_0~combout\ & (\controlpath_risc|m_op2_1~combout\ & 
-- (\datapath_risc|RF|Mux5~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6240",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_op2_0~combout\,
	datab => \controlpath_risc|m_op2_1~combout\,
	datac => \datapath_risc|RF|Mux5~4\,
	datad => \datapath_risc|RF|Mux21~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op2|output~19_combout\);

-- Location: LC_X5_Y10_N5
\datapath_risc|mux_op2|output~20\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op2|output~20_combout\ = (\datapath_risc|mux_op2|output~19_combout\) # ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(5) & (\controlpath_risc|m_op2_1~combout\ & \controlpath_risc|m_op2_0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(5),
	datab => \controlpath_risc|m_op2_1~combout\,
	datac => \controlpath_risc|m_op2_0~combout\,
	datad => \datapath_risc|mux_op2|output~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op2|output~20_combout\);

-- Location: LC_X6_Y9_N4
\datapath_risc|alu_unit|output[10]~10\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|alu_unit|output[10]~10_combout\ = (\controlpath_risc|op_sel~combout\ & (((!\datapath_risc|mux_op2|output~20_combout\) # (!\datapath_risc|mux_op1|output\(10))))) # (!\controlpath_risc|op_sel~combout\ & (\datapath_risc|alu_unit|carry~combout\ 
-- $ (\datapath_risc|mux_op1|output\(10) $ (\datapath_risc|mux_op2|output~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4bbe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|op_sel~combout\,
	datab => \datapath_risc|alu_unit|carry~combout\,
	datac => \datapath_risc|mux_op1|output\(10),
	datad => \datapath_risc|mux_op2|output~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|alu_unit|output[10]~10_combout\);

-- Location: LC_X5_Y10_N3
\datapath_risc|RF|Mux5~2\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux5~2_combout\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & (((\datapath_risc|RF|registers[1][10]~regout\) # (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10))))) # 
-- (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & (\datapath_risc|RF|registers[0][10]~regout\ & ((!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|RF|registers[0][10]~regout\,
	datab => \datapath_risc|RF|registers[1][10]~regout\,
	datac => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	datad => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux5~2_combout\);

-- Location: LC_X3_Y7_N1
\datapath_risc|RF|Mux21~4\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux21~4_combout\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(8) & (((\datapath_risc|RF|Mux21~1\)))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(8) & ((\controlpath_risc|m_a2~combout\ & 
-- ((\datapath_risc|RF|Mux21~1\))) # (!\controlpath_risc|m_a2~combout\ & (\datapath_risc|RF|Mux21~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(8),
	datab => \controlpath_risc|m_a2~combout\,
	datac => \datapath_risc|RF|Mux21~3\,
	datad => \datapath_risc|RF|Mux21~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux21~4_combout\);

-- Location: LC_X6_Y7_N9
\datapath_risc|mux_op1|output[11]~17\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op1|output[11]~17_combout\ = (\controlpath_risc|m_op1_1~combout\ & (\controlpath_risc|m_op1_0~combout\ & ((\datapath_risc|RF|Mux21~4_combout\)))) # (!\controlpath_risc|m_op1_1~combout\ & (!\controlpath_risc|m_op1_0~combout\ & 
-- (\datapath_risc|RF|Mux20~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9810",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_op1_1~combout\,
	datab => \controlpath_risc|m_op1_0~combout\,
	datac => \datapath_risc|RF|Mux20~4_combout\,
	datad => \datapath_risc|RF|Mux21~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op1|output[11]~17_combout\);

-- Location: LC_X6_Y7_N7
\datapath_risc|mux_op1|output[11]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op1|output\(11) = (((\datapath_risc|mux_op1|output[11]~17_combout\) # (!\datapath_risc|mux_op1|output[8]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \datapath_risc|mux_op1|output[8]~14\,
	datad => \datapath_risc|mux_op1|output[11]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op1|output\(11));

-- Location: LC_X11_Y9_N1
\datapath_risc|mux_op2|output~21\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op2|output~21_combout\ = (\controlpath_risc|m_op2_0~combout\ & (!\controlpath_risc|m_op2_1~combout\ & ((\datapath_risc|RF|Mux20~4_combout\)))) # (!\controlpath_risc|m_op2_0~combout\ & (\controlpath_risc|m_op2_1~combout\ & 
-- (\datapath_risc|RF|Mux4~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6240",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_op2_0~combout\,
	datab => \controlpath_risc|m_op2_1~combout\,
	datac => \datapath_risc|RF|Mux4~4\,
	datad => \datapath_risc|RF|Mux20~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op2|output~21_combout\);

-- Location: LC_X11_Y9_N2
\datapath_risc|mux_op2|output~22\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op2|output~22_combout\ = (\datapath_risc|mux_op2|output~21_combout\) # ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(5) & (\controlpath_risc|m_op2_1~combout\ & \controlpath_risc|m_op2_0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(5),
	datab => \controlpath_risc|m_op2_1~combout\,
	datac => \controlpath_risc|m_op2_0~combout\,
	datad => \datapath_risc|mux_op2|output~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op2|output~22_combout\);

-- Location: LC_X6_Y9_N7
\datapath_risc|alu_unit|output[11]~11\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|alu_unit|output[11]~11_combout\ = (\controlpath_risc|op_sel~combout\ & (((!\datapath_risc|mux_op2|output~22_combout\)) # (!\datapath_risc|mux_op1|output\(11)))) # (!\controlpath_risc|op_sel~combout\ & (\datapath_risc|mux_op1|output\(11) $ 
-- (\datapath_risc|alu_unit|carry~combout\ $ (\datapath_risc|mux_op2|output~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "59f6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_op1|output\(11),
	datab => \datapath_risc|alu_unit|carry~combout\,
	datac => \controlpath_risc|op_sel~combout\,
	datad => \datapath_risc|mux_op2|output~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|alu_unit|output[11]~11_combout\);

-- Location: LC_X9_Y7_N5
\datapath_risc|Inst_reg_fetch|next_instruction|dout[11]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|mem_out[11]~11\ = ((\controlpath_risc|rd_mem~combout\ & ((\datapath_risc|RAM|memory~396_combout\))))
-- \datapath_risc|Inst_reg_fetch|next_instruction|dout\(11) = DFFEAS(\datapath_risc|RAM|mem_out[11]~11\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \controlpath_risc|en_irf~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \controlpath_risc|rd_mem~combout\,
	datad => \datapath_risc|RAM|memory~396_combout\,
	aclr => \reset~combout\,
	ena => \controlpath_risc|en_irf~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|mem_out[11]~11\,
	regout => \datapath_risc|Inst_reg_fetch|next_instruction|dout\(11));

-- Location: LC_X8_Y7_N3
\datapath_risc|mux_d3|output[11]~24\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output[11]~24_combout\ = (\controlpath_risc|m_d3_1~combout\ & ((\controlpath_risc|m_d3_0~combout\ & ((\datapath_risc|RAM|mem_out[11]~11\))) # (!\controlpath_risc|m_d3_0~combout\ & 
-- (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(8),
	datab => \controlpath_risc|m_d3_1~combout\,
	datac => \controlpath_risc|m_d3_0~combout\,
	datad => \datapath_risc|RAM|mem_out[11]~11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output[11]~24_combout\);

-- Location: LC_X8_Y7_N4
\datapath_risc|RF|registers[0][11]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output\(11) = (\datapath_risc|mux_d3|output~23_combout\) # ((\datapath_risc|mux_d3|output[11]~24_combout\) # ((!\datapath_risc|mux_d3|output~2_combout\ & \datapath_risc|alu_unit|output[11]~11_combout\)))
-- \datapath_risc|RF|registers[0][11]~regout\ = DFFEAS(\datapath_risc|mux_d3|output\(11), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffdc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_d3|output~2_combout\,
	datab => \datapath_risc|mux_d3|output~23_combout\,
	datac => \datapath_risc|alu_unit|output[11]~11_combout\,
	datad => \datapath_risc|mux_d3|output[11]~24_combout\,
	aclr => \reset~combout\,
	ena => \datapath_risc|RF|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output\(11),
	regout => \datapath_risc|RF|registers[0][11]~regout\);

-- Location: LC_X8_Y7_N8
\datapath_risc|RF|registers[1][11]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux20~2\ = (\datapath_risc|mux_a2|output\(0) & (((P1_registers[1][11]) # (\datapath_risc|mux_a2|output\(1))))) # (!\datapath_risc|mux_a2|output\(0) & (\datapath_risc|RF|registers[0][11]~regout\ & ((!\datapath_risc|mux_a2|output\(1)))))
-- \datapath_risc|RF|registers[1][11]~regout\ = DFFEAS(\datapath_risc|RF|Mux20~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~1_combout\, \datapath_risc|mux_d3|output\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[0][11]~regout\,
	datab => \datapath_risc|mux_a2|output\(0),
	datac => \datapath_risc|mux_d3|output\(11),
	datad => \datapath_risc|mux_a2|output\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux20~2\,
	regout => \datapath_risc|RF|registers[1][11]~regout\);

-- Location: LC_X12_Y9_N7
\datapath_risc|RF|Mux4~2\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux4~2_combout\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & (((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9))))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & 
-- ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & ((\datapath_risc|RF|registers[1][11]~regout\))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & (\datapath_risc|RF|registers[0][11]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	datab => \datapath_risc|RF|registers[0][11]~regout\,
	datac => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	datad => \datapath_risc|RF|registers[1][11]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux4~2_combout\);

-- Location: LC_X12_Y9_N8
\datapath_risc|RF|registers[3][11]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux4~3\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & ((\datapath_risc|RF|Mux4~2_combout\ & ((P1_registers[3][11]))) # (!\datapath_risc|RF|Mux4~2_combout\ & (\datapath_risc|RF|registers[2][11]~regout\)))) # 
-- (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & (((\datapath_risc|RF|Mux4~2_combout\))))
-- \datapath_risc|RF|registers[3][11]~regout\ = DFFEAS(\datapath_risc|RF|Mux4~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~3_combout\, \datapath_risc|mux_d3|output\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	datab => \datapath_risc|RF|registers[2][11]~regout\,
	datac => \datapath_risc|mux_d3|output\(11),
	datad => \datapath_risc|RF|Mux4~2_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux4~3\,
	regout => \datapath_risc|RF|registers[3][11]~regout\);

-- Location: LC_X3_Y7_N7
\datapath_risc|RF|registers[2][11]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux20~3\ = (\datapath_risc|mux_a2|output\(1) & ((\datapath_risc|RF|Mux20~2\ & ((\datapath_risc|RF|registers[3][11]~regout\))) # (!\datapath_risc|RF|Mux20~2\ & (P1_registers[2][11])))) # (!\datapath_risc|mux_a2|output\(1) & 
-- (\datapath_risc|RF|Mux20~2\))
-- \datapath_risc|RF|registers[2][11]~regout\ = DFFEAS(\datapath_risc|RF|Mux20~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~2_combout\, \datapath_risc|mux_d3|output\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_a2|output\(1),
	datab => \datapath_risc|RF|Mux20~2\,
	datac => \datapath_risc|mux_d3|output\(11),
	datad => \datapath_risc|RF|registers[3][11]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux20~3\,
	regout => \datapath_risc|RF|registers[2][11]~regout\);

-- Location: LC_X8_Y4_N3
\datapath_risc|RF|registers[6][11]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux20~0\ = (\datapath_risc|mux_a2|output\(0) & (((\datapath_risc|mux_a2|output\(1))))) # (!\datapath_risc|mux_a2|output\(0) & ((\datapath_risc|mux_a2|output\(1) & ((P1_registers[6][11]))) # (!\datapath_risc|mux_a2|output\(1) & 
-- (\datapath_risc|RF|registers[4][11]~regout\))))
-- \datapath_risc|RF|registers[6][11]~regout\ = DFFEAS(\datapath_risc|RF|Mux20~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~6_combout\, \datapath_risc|mux_d3|output\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[4][11]~regout\,
	datab => \datapath_risc|mux_a2|output\(0),
	datac => \datapath_risc|mux_d3|output\(11),
	datad => \datapath_risc|mux_a2|output\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux20~0\,
	regout => \datapath_risc|RF|registers[6][11]~regout\);

-- Location: LC_X8_Y4_N1
\datapath_risc|RF|registers[4][11]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux4~0\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & ((\datapath_risc|RF|registers[6][11]~regout\) # ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9))))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) 
-- & (((P1_registers[4][11] & !\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9)))))
-- \datapath_risc|RF|registers[4][11]~regout\ = DFFEAS(\datapath_risc|RF|Mux4~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~4_combout\, \datapath_risc|mux_d3|output\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[6][11]~regout\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	datac => \datapath_risc|mux_d3|output\(11),
	datad => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux4~0\,
	regout => \datapath_risc|RF|registers[4][11]~regout\);

-- Location: LC_X3_Y7_N8
\datapath_risc|RF|registers[5][11]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux20~1\ = (\datapath_risc|mux_a2|output\(0) & ((\datapath_risc|RF|Mux20~0\ & (\datapath_risc|RF|registers[7][11]~regout\)) # (!\datapath_risc|RF|Mux20~0\ & ((P1_registers[5][11]))))) # (!\datapath_risc|mux_a2|output\(0) & 
-- (((\datapath_risc|RF|Mux20~0\))))
-- \datapath_risc|RF|registers[5][11]~regout\ = DFFEAS(\datapath_risc|RF|Mux20~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~5_combout\, \datapath_risc|mux_d3|output\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_a2|output\(0),
	datab => \datapath_risc|RF|registers[7][11]~regout\,
	datac => \datapath_risc|mux_d3|output\(11),
	datad => \datapath_risc|RF|Mux20~0\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux20~1\,
	regout => \datapath_risc|RF|registers[5][11]~regout\);

-- Location: LC_X7_Y5_N3
\datapath_risc|RF|registers[7][11]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux4~1\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & ((\datapath_risc|RF|Mux4~0\ & ((P1_registers[7][11]))) # (!\datapath_risc|RF|Mux4~0\ & (\datapath_risc|RF|registers[5][11]~regout\)))) # 
-- (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & (((\datapath_risc|RF|Mux4~0\))))
-- \datapath_risc|RF|registers[7][11]~regout\ = DFFEAS(\datapath_risc|RF|Mux4~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~7_combout\, \datapath_risc|mux_d3|output\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	datab => \datapath_risc|RF|registers[5][11]~regout\,
	datac => \datapath_risc|mux_d3|output\(11),
	datad => \datapath_risc|RF|Mux4~0\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux4~1\,
	regout => \datapath_risc|RF|registers[7][11]~regout\);

-- Location: LC_X3_Y7_N9
\datapath_risc|RF|Mux20~4\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux20~4_combout\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(8) & (((\datapath_risc|RF|Mux20~1\)))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(8) & ((\controlpath_risc|m_a2~combout\ & 
-- ((\datapath_risc|RF|Mux20~1\))) # (!\controlpath_risc|m_a2~combout\ & (\datapath_risc|RF|Mux20~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(8),
	datab => \controlpath_risc|m_a2~combout\,
	datac => \datapath_risc|RF|Mux20~3\,
	datad => \datapath_risc|RF|Mux20~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux20~4_combout\);

-- Location: LC_X8_Y7_N2
\datapath_risc|mux_d3|output~23\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output~23_combout\ = ((\datapath_risc|RF|Mux20~4_combout\ & (\controlpath_risc|m_d3_0~combout\ & !\controlpath_risc|m_d3_1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \datapath_risc|RF|Mux20~4_combout\,
	datac => \controlpath_risc|m_d3_0~combout\,
	datad => \controlpath_risc|m_d3_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output~23_combout\);

-- Location: LC_X12_Y9_N9
\datapath_risc|RAM|memory~48\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux4~4\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & (((\datapath_risc|RF|Mux4~1\)))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & (\datapath_risc|RF|Mux4~3\))
-- \datapath_risc|RAM|memory~48_regout\ = DFFEAS(\datapath_risc|RF|Mux4~4\, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~456_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|Mux4~3\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(11),
	datad => \datapath_risc|RF|Mux4~1\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux4~4\,
	regout => \datapath_risc|RAM|memory~48_regout\);

-- Location: LC_X12_Y5_N8
\datapath_risc|RAM|memory~240\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~240_regout\ = DFFEAS((((\datapath_risc|RF|Mux4~4\))), GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~462_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \datapath_risc|RF|Mux4~4\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~240_regout\);

-- Location: LC_X11_Y9_N5
\datapath_risc|RAM|memory~176\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~387\ = (\datapath_risc|mux_mem_a|output[3]~2\ & (((M1L172Q) # (\datapath_risc|mux_mem_a|output[2]~3\)))) # (!\datapath_risc|mux_mem_a|output[3]~2\ & (\datapath_risc|RAM|memory~48_regout\ & 
-- ((!\datapath_risc|mux_mem_a|output[2]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~48_regout\,
	datab => \datapath_risc|mux_mem_a|output[3]~2\,
	datac => \datapath_risc|RF|Mux4~4\,
	datad => \datapath_risc|mux_mem_a|output[2]~3\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~387\,
	regout => \datapath_risc|RAM|memory~176_regout\);

-- Location: LC_X11_Y9_N6
\datapath_risc|RAM|memory~112\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~388\ = (\datapath_risc|mux_mem_a|output[2]~3\ & ((\datapath_risc|RAM|memory~387\ & (\datapath_risc|RAM|memory~240_regout\)) # (!\datapath_risc|RAM|memory~387\ & ((M1L108Q))))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & 
-- (((\datapath_risc|RAM|memory~387\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~240_regout\,
	datab => \datapath_risc|mux_mem_a|output[2]~3\,
	datac => \datapath_risc|RF|Mux4~4\,
	datad => \datapath_risc|RAM|memory~387\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~388\,
	regout => \datapath_risc|RAM|memory~112_regout\);

-- Location: LC_X15_Y9_N7
\datapath_risc|RAM|memory~272\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~272_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~468_combout\, \datapath_risc|RF|Mux4~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux4~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~272_regout\);

-- Location: LC_X14_Y6_N5
\datapath_risc|RAM|memory~80\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~80_regout\ = DFFEAS((((\datapath_risc|RF|Mux4~4\))), GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~460_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \datapath_risc|RF|Mux4~4\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~80_regout\);

-- Location: LC_X15_Y8_N7
\datapath_risc|RAM|memory~208\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~394\ = (\datapath_risc|mux_mem_a|output[2]~3\ & (((\datapath_risc|mux_mem_a|output[3]~2\)))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & ((\datapath_risc|mux_mem_a|output[3]~2\ & ((M1L204Q))) # 
-- (!\datapath_risc|mux_mem_a|output[3]~2\ & (\datapath_risc|RAM|memory~80_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~80_regout\,
	datab => \datapath_risc|mux_mem_a|output[2]~3\,
	datac => \datapath_risc|RF|Mux4~4\,
	datad => \datapath_risc|mux_mem_a|output[3]~2\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~394\,
	regout => \datapath_risc|RAM|memory~208_regout\);

-- Location: LC_X15_Y8_N8
\datapath_risc|RAM|memory~144\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~395\ = (\datapath_risc|mux_mem_a|output[2]~3\ & ((\datapath_risc|RAM|memory~394\ & (\datapath_risc|RAM|memory~272_regout\)) # (!\datapath_risc|RAM|memory~394\ & ((M1L140Q))))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & 
-- (((\datapath_risc|RAM|memory~394\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~272_regout\,
	datab => \datapath_risc|mux_mem_a|output[2]~3\,
	datac => \datapath_risc|RF|Mux4~4\,
	datad => \datapath_risc|RAM|memory~394\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~395\,
	regout => \datapath_risc|RAM|memory~144_regout\);

-- Location: LC_X12_Y10_N3
\datapath_risc|RAM|memory~224\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~224_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~466_combout\, \datapath_risc|RF|Mux4~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux4~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~224_regout\);

-- Location: LC_X14_Y6_N8
\datapath_risc|RAM|memory~32\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~32_regout\ = DFFEAS((((\datapath_risc|RF|Mux4~4\))), GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~458_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \datapath_risc|RF|Mux4~4\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~32_regout\);

-- Location: LC_X10_Y9_N3
\datapath_risc|RAM|memory~96\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~391\ = (\datapath_risc|mux_mem_a|output[3]~2\ & (((\datapath_risc|mux_mem_a|output[2]~3\)))) # (!\datapath_risc|mux_mem_a|output[3]~2\ & ((\datapath_risc|mux_mem_a|output[2]~3\ & ((M1L92Q))) # 
-- (!\datapath_risc|mux_mem_a|output[2]~3\ & (\datapath_risc|RAM|memory~32_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~32_regout\,
	datab => \datapath_risc|mux_mem_a|output[3]~2\,
	datac => \datapath_risc|RF|Mux4~4\,
	datad => \datapath_risc|mux_mem_a|output[2]~3\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~391\,
	regout => \datapath_risc|RAM|memory~96_regout\);

-- Location: LC_X10_Y9_N4
\datapath_risc|RAM|memory~160\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~392\ = (\datapath_risc|mux_mem_a|output[3]~2\ & ((\datapath_risc|RAM|memory~391\ & (\datapath_risc|RAM|memory~224_regout\)) # (!\datapath_risc|RAM|memory~391\ & ((M1L156Q))))) # (!\datapath_risc|mux_mem_a|output[3]~2\ & 
-- (((\datapath_risc|RAM|memory~391\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[3]~2\,
	datab => \datapath_risc|RAM|memory~224_regout\,
	datac => \datapath_risc|RF|Mux4~4\,
	datad => \datapath_risc|RAM|memory~391\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~392\,
	regout => \datapath_risc|RAM|memory~160_regout\);

-- Location: LC_X11_Y5_N7
\datapath_risc|RAM|memory~256\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~256_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~464_combout\, \datapath_risc|RF|Mux4~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux4~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~256_regout\);

-- Location: LC_X12_Y10_N0
\datapath_risc|RAM|memory~64\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~64_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~454_combout\, \datapath_risc|RF|Mux4~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux4~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~64_regout\);

-- Location: LC_X10_Y8_N1
\datapath_risc|RAM|memory~128\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~389\ = (\datapath_risc|mux_mem_a|output[2]~3\ & (((M1L124Q) # (\datapath_risc|mux_mem_a|output[3]~2\)))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & (\datapath_risc|RAM|memory~64_regout\ & 
-- ((!\datapath_risc|mux_mem_a|output[3]~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[2]~3\,
	datab => \datapath_risc|RAM|memory~64_regout\,
	datac => \datapath_risc|RF|Mux4~4\,
	datad => \datapath_risc|mux_mem_a|output[3]~2\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~389\,
	regout => \datapath_risc|RAM|memory~128_regout\);

-- Location: LC_X11_Y5_N8
\datapath_risc|RAM|memory~192\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~390\ = (\datapath_risc|mux_mem_a|output[3]~2\ & ((\datapath_risc|RAM|memory~389\ & (\datapath_risc|RAM|memory~256_regout\)) # (!\datapath_risc|RAM|memory~389\ & ((M1L188Q))))) # (!\datapath_risc|mux_mem_a|output[3]~2\ & 
-- (((\datapath_risc|RAM|memory~389\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~256_regout\,
	datab => \datapath_risc|mux_mem_a|output[3]~2\,
	datac => \datapath_risc|RF|Mux4~4\,
	datad => \datapath_risc|RAM|memory~389\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~390\,
	regout => \datapath_risc|RAM|memory~192_regout\);

-- Location: LC_X10_Y9_N5
\datapath_risc|RAM|memory~393\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~393_combout\ = (\datapath_risc|mux_mem_a|output[1]~0\ & ((\datapath_risc|mux_mem_a|output[0]~1\) # ((\datapath_risc|RAM|memory~390\)))) # (!\datapath_risc|mux_mem_a|output[1]~0\ & (!\datapath_risc|mux_mem_a|output[0]~1\ & 
-- (\datapath_risc|RAM|memory~392\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_mem_a|output[1]~0\,
	datab => \datapath_risc|mux_mem_a|output[0]~1\,
	datac => \datapath_risc|RAM|memory~392\,
	datad => \datapath_risc|RAM|memory~390\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~393_combout\);

-- Location: LC_X10_Y9_N6
\datapath_risc|RAM|memory~396\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~396_combout\ = (\datapath_risc|mux_mem_a|output[0]~1\ & ((\datapath_risc|RAM|memory~393_combout\ & ((\datapath_risc|RAM|memory~395\))) # (!\datapath_risc|RAM|memory~393_combout\ & (\datapath_risc|RAM|memory~388\)))) # 
-- (!\datapath_risc|mux_mem_a|output[0]~1\ & (((\datapath_risc|RAM|memory~393_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|RAM|memory~388\,
	datab => \datapath_risc|mux_mem_a|output[0]~1\,
	datac => \datapath_risc|RAM|memory~395\,
	datad => \datapath_risc|RAM|memory~393_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~396_combout\);

-- Location: LC_X7_Y10_N6
\datapath_risc|RF|registers[4][15]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|registers[4][15]~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~4_combout\, \datapath_risc|mux_d3|output\(15), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|mux_d3|output\(15),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RF|registers[4][15]~regout\);

-- Location: LC_X7_Y9_N2
\datapath_risc|Inst_reg_exe|next_instruction1|dout[9]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux0~0\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & ((\datapath_risc|RF|registers[6][15]~regout\) # ((N1_dout[9])))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & (((!N1_dout[9] & 
-- \datapath_risc|RF|registers[4][15]~regout\))))
-- \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) = DFFEAS(\datapath_risc|RF|Mux0~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \controlpath_risc|en_ir~combout\, \datapath_risc|Inst_reg_fetch|next_instruction|dout\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cbc8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[6][15]~regout\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	datac => \datapath_risc|Inst_reg_fetch|next_instruction|dout\(9),
	datad => \datapath_risc|RF|registers[4][15]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \controlpath_risc|en_ir~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux0~0\,
	regout => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9));

-- Location: LC_X9_Y9_N9
\datapath_risc|RF|registers[7][15]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux0~1\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & ((\datapath_risc|RF|Mux0~0\ & ((P1_registers[7][15]))) # (!\datapath_risc|RF|Mux0~0\ & (\datapath_risc|RF|registers[5][15]~regout\)))) # 
-- (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & (((\datapath_risc|RF|Mux0~0\))))
-- \datapath_risc|RF|registers[7][15]~regout\ = DFFEAS(\datapath_risc|RF|Mux0~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~7_combout\, \datapath_risc|mux_d3|output\(15), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[5][15]~regout\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	datac => \datapath_risc|mux_d3|output\(15),
	datad => \datapath_risc|RF|Mux0~0\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux0~1\,
	regout => \datapath_risc|RF|registers[7][15]~regout\);

-- Location: LC_X8_Y8_N1
\datapath_risc|RF|registers[6][15]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux16~0\ = (\datapath_risc|mux_a2|output\(0) & (\datapath_risc|mux_a2|output\(1))) # (!\datapath_risc|mux_a2|output\(0) & ((\datapath_risc|mux_a2|output\(1) & (P1_registers[6][15])) # (!\datapath_risc|mux_a2|output\(1) & 
-- ((\datapath_risc|RF|registers[4][15]~regout\)))))
-- \datapath_risc|RF|registers[6][15]~regout\ = DFFEAS(\datapath_risc|RF|Mux16~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~6_combout\, \datapath_risc|mux_d3|output\(15), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_a2|output\(0),
	datab => \datapath_risc|mux_a2|output\(1),
	datac => \datapath_risc|mux_d3|output\(15),
	datad => \datapath_risc|RF|registers[4][15]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux16~0\,
	regout => \datapath_risc|RF|registers[6][15]~regout\);

-- Location: LC_X9_Y9_N8
\datapath_risc|RF|registers[5][15]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux16~1\ = (\datapath_risc|mux_a2|output\(0) & ((\datapath_risc|RF|Mux16~0\ & (\datapath_risc|RF|registers[7][15]~regout\)) # (!\datapath_risc|RF|Mux16~0\ & ((P1_registers[5][15]))))) # (!\datapath_risc|mux_a2|output\(0) & 
-- (((\datapath_risc|RF|Mux16~0\))))
-- \datapath_risc|RF|registers[5][15]~regout\ = DFFEAS(\datapath_risc|RF|Mux16~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~5_combout\, \datapath_risc|mux_d3|output\(15), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_a2|output\(0),
	datab => \datapath_risc|RF|registers[7][15]~regout\,
	datac => \datapath_risc|mux_d3|output\(15),
	datad => \datapath_risc|RF|Mux16~0\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux16~1\,
	regout => \datapath_risc|RF|registers[5][15]~regout\);

-- Location: LC_X7_Y9_N8
\datapath_risc|Inst_reg_exe|next_instruction1|dout[11]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux0~4\ = ((N1_dout[11] & ((\datapath_risc|RF|Mux0~1\))) # (!N1_dout[11] & (\datapath_risc|RF|Mux0~3\)))
-- \datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) = DFFEAS(\datapath_risc|RF|Mux0~4\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \controlpath_risc|en_ir~combout\, \datapath_risc|Inst_reg_fetch|next_instruction|dout\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \datapath_risc|RF|Mux0~3\,
	datac => \datapath_risc|Inst_reg_fetch|next_instruction|dout\(11),
	datad => \datapath_risc|RF|Mux0~1\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \controlpath_risc|en_ir~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux0~4\,
	regout => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(11));

-- Location: LC_X6_Y9_N8
\datapath_risc|mux_op2|output~29\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op2|output~29_combout\ = (\controlpath_risc|m_op2_0~combout\ & (!\controlpath_risc|m_op2_1~combout\ & (\datapath_risc|RF|Mux16~4_combout\))) # (!\controlpath_risc|m_op2_0~combout\ & (\controlpath_risc|m_op2_1~combout\ & 
-- ((\datapath_risc|RF|Mux0~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6420",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_op2_0~combout\,
	datab => \controlpath_risc|m_op2_1~combout\,
	datac => \datapath_risc|RF|Mux16~4_combout\,
	datad => \datapath_risc|RF|Mux0~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op2|output~29_combout\);

-- Location: LC_X6_Y9_N0
\datapath_risc|mux_op2|output~30\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op2|output~30_combout\ = (\datapath_risc|mux_op2|output~29_combout\) # ((\controlpath_risc|m_op2_0~combout\ & (\controlpath_risc|m_op2_1~combout\ & \datapath_risc|Inst_reg_exe|next_instruction1|dout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_op2_0~combout\,
	datab => \controlpath_risc|m_op2_1~combout\,
	datac => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(5),
	datad => \datapath_risc|mux_op2|output~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op2|output~30_combout\);

-- Location: LC_X5_Y9_N0
\datapath_risc|mux_op1|output[15]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op1|output\(15) = (\datapath_risc|mux_op1|output~21_combout\) # ((!\controlpath_risc|m_op1_0~combout\ & (!\controlpath_risc|m_op1_1~combout\ & \datapath_risc|RF|Mux16~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_op1_0~combout\,
	datab => \controlpath_risc|m_op1_1~combout\,
	datac => \datapath_risc|RF|Mux16~4_combout\,
	datad => \datapath_risc|mux_op1|output~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op1|output\(15));

-- Location: LC_X6_Y7_N1
\datapath_risc|alu_unit|output[15]~15\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|alu_unit|output[15]~15_combout\ = (\controlpath_risc|op_sel~combout\ & (((!\datapath_risc|mux_op1|output\(15))) # (!\datapath_risc|mux_op2|output~30_combout\))) # (!\controlpath_risc|op_sel~combout\ & 
-- (\datapath_risc|mux_op2|output~30_combout\ $ (\datapath_risc|mux_op1|output\(15) $ (\datapath_risc|alu_unit|carry~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7796",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_op2|output~30_combout\,
	datab => \datapath_risc|mux_op1|output\(15),
	datac => \datapath_risc|alu_unit|carry~combout\,
	datad => \controlpath_risc|op_sel~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|alu_unit|output[15]~15_combout\);

-- Location: LC_X10_Y7_N4
\datapath_risc|RF|registers[0][15]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output\(15) = (\datapath_risc|mux_d3|output~31_combout\) # ((\datapath_risc|mux_d3|output[15]~32_combout\) # ((!\datapath_risc|mux_d3|output~2_combout\ & \datapath_risc|alu_unit|output[15]~15_combout\)))
-- \datapath_risc|RF|registers[0][15]~regout\ = DFFEAS(\datapath_risc|mux_d3|output\(15), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbfa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_d3|output~31_combout\,
	datab => \datapath_risc|mux_d3|output~2_combout\,
	datac => \datapath_risc|mux_d3|output[15]~32_combout\,
	datad => \datapath_risc|alu_unit|output[15]~15_combout\,
	aclr => \reset~combout\,
	ena => \datapath_risc|RF|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output\(15),
	regout => \datapath_risc|RF|registers[0][15]~regout\);

-- Location: LC_X8_Y9_N2
\datapath_risc|RF|registers[1][15]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux16~2\ = (\datapath_risc|mux_a2|output\(1) & (\datapath_risc|mux_a2|output\(0))) # (!\datapath_risc|mux_a2|output\(1) & ((\datapath_risc|mux_a2|output\(0) & (P1_registers[1][15])) # (!\datapath_risc|mux_a2|output\(0) & 
-- ((\datapath_risc|RF|registers[0][15]~regout\)))))
-- \datapath_risc|RF|registers[1][15]~regout\ = DFFEAS(\datapath_risc|RF|Mux16~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~1_combout\, \datapath_risc|mux_d3|output\(15), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_a2|output\(1),
	datab => \datapath_risc|mux_a2|output\(0),
	datac => \datapath_risc|mux_d3|output\(15),
	datad => \datapath_risc|RF|registers[0][15]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux16~2\,
	regout => \datapath_risc|RF|registers[1][15]~regout\);

-- Location: LC_X7_Y9_N0
\datapath_risc|Inst_reg_exe|next_instruction1|dout[10]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux0~2\ = (N1_dout[10] & (((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9))))) # (!N1_dout[10] & ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & ((\datapath_risc|RF|registers[1][15]~regout\))) # 
-- (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & (\datapath_risc|RF|registers[0][15]~regout\))))
-- \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) = DFFEAS(\datapath_risc|RF|Mux0~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \controlpath_risc|en_ir~combout\, \datapath_risc|Inst_reg_fetch|next_instruction|dout\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[0][15]~regout\,
	datab => \datapath_risc|RF|registers[1][15]~regout\,
	datac => \datapath_risc|Inst_reg_fetch|next_instruction|dout\(10),
	datad => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \controlpath_risc|en_ir~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux0~2\,
	regout => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10));

-- Location: LC_X7_Y9_N1
\datapath_risc|RF|registers[3][15]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux0~3\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & ((\datapath_risc|RF|Mux0~2\ & ((P1_registers[3][15]))) # (!\datapath_risc|RF|Mux0~2\ & (\datapath_risc|RF|registers[2][15]~regout\)))) # 
-- (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & (((\datapath_risc|RF|Mux0~2\))))
-- \datapath_risc|RF|registers[3][15]~regout\ = DFFEAS(\datapath_risc|RF|Mux0~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~3_combout\, \datapath_risc|mux_d3|output\(15), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[2][15]~regout\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	datac => \datapath_risc|mux_d3|output\(15),
	datad => \datapath_risc|RF|Mux0~2\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux0~3\,
	regout => \datapath_risc|RF|registers[3][15]~regout\);

-- Location: LC_X6_Y8_N7
\datapath_risc|RF|registers[0][2]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output\(2) = (\datapath_risc|mux_d3|output~5_combout\) # ((\datapath_risc|mux_d3|output[2]~6_combout\) # ((\datapath_risc|alu_unit|output[2]~2_combout\ & !\datapath_risc|mux_d3|output~2_combout\)))
-- \datapath_risc|RF|registers[0][2]~regout\ = DFFEAS(\datapath_risc|mux_d3|output\(2), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffce",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|alu_unit|output[2]~2_combout\,
	datab => \datapath_risc|mux_d3|output~5_combout\,
	datac => \datapath_risc|mux_d3|output~2_combout\,
	datad => \datapath_risc|mux_d3|output[2]~6_combout\,
	aclr => \reset~combout\,
	ena => \datapath_risc|RF|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output\(2),
	regout => \datapath_risc|RF|registers[0][2]~regout\);

-- Location: LC_X5_Y8_N3
\datapath_risc|RF|registers[1][2]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux29~2\ = (\datapath_risc|mux_a2|output\(0) & ((\datapath_risc|mux_a2|output\(1)) # ((P1_registers[1][2])))) # (!\datapath_risc|mux_a2|output\(0) & (!\datapath_risc|mux_a2|output\(1) & ((\datapath_risc|RF|registers[0][2]~regout\))))
-- \datapath_risc|RF|registers[1][2]~regout\ = DFFEAS(\datapath_risc|RF|Mux29~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~1_combout\, \datapath_risc|mux_d3|output\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_a2|output\(0),
	datab => \datapath_risc|mux_a2|output\(1),
	datac => \datapath_risc|mux_d3|output\(2),
	datad => \datapath_risc|RF|registers[0][2]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux29~2\,
	regout => \datapath_risc|RF|registers[1][2]~regout\);

-- Location: LC_X5_Y10_N1
\datapath_risc|RF|Mux13~2\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux13~2_combout\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10)) # ((\datapath_risc|RF|registers[1][2]~regout\)))) # 
-- (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & ((\datapath_risc|RF|registers[0][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	datac => \datapath_risc|RF|registers[1][2]~regout\,
	datad => \datapath_risc|RF|registers[0][2]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux13~2_combout\);

-- Location: LC_X6_Y8_N0
\datapath_risc|RF|registers[3][2]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux13~3\ = (\datapath_risc|RF|Mux13~2_combout\ & (((P1_registers[3][2])) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10)))) # (!\datapath_risc|RF|Mux13~2_combout\ & (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & 
-- ((\datapath_risc|RF|registers[2][2]~regout\))))
-- \datapath_risc|RF|registers[3][2]~regout\ = DFFEAS(\datapath_risc|RF|Mux13~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~3_combout\, \datapath_risc|mux_d3|output\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6a2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|Mux13~2_combout\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	datac => \datapath_risc|mux_d3|output\(2),
	datad => \datapath_risc|RF|registers[2][2]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux13~3\,
	regout => \datapath_risc|RF|registers[3][2]~regout\);

-- Location: LC_X5_Y8_N4
\datapath_risc|RF|registers[2][2]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux29~3\ = (\datapath_risc|mux_a2|output\(1) & ((\datapath_risc|RF|Mux29~2\ & (\datapath_risc|RF|registers[3][2]~regout\)) # (!\datapath_risc|RF|Mux29~2\ & ((P1_registers[2][2]))))) # (!\datapath_risc|mux_a2|output\(1) & 
-- (((\datapath_risc|RF|Mux29~2\))))
-- \datapath_risc|RF|registers[2][2]~regout\ = DFFEAS(\datapath_risc|RF|Mux29~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~2_combout\, \datapath_risc|mux_d3|output\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[3][2]~regout\,
	datab => \datapath_risc|mux_a2|output\(1),
	datac => \datapath_risc|mux_d3|output\(2),
	datad => \datapath_risc|RF|Mux29~2\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux29~3\,
	regout => \datapath_risc|RF|registers[2][2]~regout\);

-- Location: LC_X4_Y8_N4
\datapath_risc|RF|registers[4][2]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux13~0\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & ((\datapath_risc|RF|registers[6][2]~regout\) # ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9))))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) 
-- & (((P1_registers[4][2] & !\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9)))))
-- \datapath_risc|RF|registers[4][2]~regout\ = DFFEAS(\datapath_risc|RF|Mux13~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~4_combout\, \datapath_risc|mux_d3|output\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	datab => \datapath_risc|RF|registers[6][2]~regout\,
	datac => \datapath_risc|mux_d3|output\(2),
	datad => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux13~0\,
	regout => \datapath_risc|RF|registers[4][2]~regout\);

-- Location: LC_X8_Y8_N4
\datapath_risc|RF|registers[6][2]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux29~0\ = (\datapath_risc|mux_a2|output\(1) & (((P1_registers[6][2]) # (\datapath_risc|mux_a2|output\(0))))) # (!\datapath_risc|mux_a2|output\(1) & (\datapath_risc|RF|registers[4][2]~regout\ & ((!\datapath_risc|mux_a2|output\(0)))))
-- \datapath_risc|RF|registers[6][2]~regout\ = DFFEAS(\datapath_risc|RF|Mux29~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~6_combout\, \datapath_risc|mux_d3|output\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[4][2]~regout\,
	datab => \datapath_risc|mux_a2|output\(1),
	datac => \datapath_risc|mux_d3|output\(2),
	datad => \datapath_risc|mux_a2|output\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux29~0\,
	regout => \datapath_risc|RF|registers[6][2]~regout\);

-- Location: LC_X7_Y8_N6
\datapath_risc|RF|registers[7][2]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux13~1\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & ((\datapath_risc|RF|Mux13~0\ & ((P1_registers[7][2]))) # (!\datapath_risc|RF|Mux13~0\ & (\datapath_risc|RF|registers[5][2]~regout\)))) # 
-- (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & (((\datapath_risc|RF|Mux13~0\))))
-- \datapath_risc|RF|registers[7][2]~regout\ = DFFEAS(\datapath_risc|RF|Mux13~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~7_combout\, \datapath_risc|mux_d3|output\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	datab => \datapath_risc|RF|registers[5][2]~regout\,
	datac => \datapath_risc|mux_d3|output\(2),
	datad => \datapath_risc|RF|Mux13~0\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux13~1\,
	regout => \datapath_risc|RF|registers[7][2]~regout\);

-- Location: LC_X6_Y10_N7
\datapath_risc|RAM|memory~87\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux13~4\ = ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & ((\datapath_risc|RF|Mux13~1\))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & (\datapath_risc|RF|Mux13~3\)))
-- \datapath_risc|RAM|memory~87_regout\ = DFFEAS(\datapath_risc|RF|Mux13~4\, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~450_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(11),
	datac => \datapath_risc|RF|Mux13~3\,
	datad => \datapath_risc|RF|Mux13~1\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux13~4\,
	regout => \datapath_risc|RAM|memory~87_regout\);

-- Location: LC_X13_Y6_N5
\datapath_risc|RAM|memory~135\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~135_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~452_combout\, \datapath_risc|RF|Mux13~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux13~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~135_regout\);

-- Location: LC_X12_Y8_N0
\datapath_risc|RAM|memory~103\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~297\ = (\datapath_risc|mux_mem_a|output[1]~0\ & (((\datapath_risc|mux_mem_a|output[0]~1\)))) # (!\datapath_risc|mux_mem_a|output[1]~0\ & ((\datapath_risc|mux_mem_a|output[0]~1\ & ((M1L99Q))) # 
-- (!\datapath_risc|mux_mem_a|output[0]~1\ & (\datapath_risc|RAM|memory~87_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[1]~0\,
	datab => \datapath_risc|RAM|memory~87_regout\,
	datac => \datapath_risc|RF|Mux13~4\,
	datad => \datapath_risc|mux_mem_a|output[0]~1\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~297\,
	regout => \datapath_risc|RAM|memory~103_regout\);

-- Location: LC_X12_Y8_N1
\datapath_risc|RAM|memory~119\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~298\ = (\datapath_risc|mux_mem_a|output[1]~0\ & ((\datapath_risc|RAM|memory~297\ & (\datapath_risc|RAM|memory~135_regout\)) # (!\datapath_risc|RAM|memory~297\ & ((M1L115Q))))) # (!\datapath_risc|mux_mem_a|output[1]~0\ & 
-- (((\datapath_risc|RAM|memory~297\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~135_regout\,
	datab => \datapath_risc|mux_mem_a|output[1]~0\,
	datac => \datapath_risc|RF|Mux13~4\,
	datad => \datapath_risc|RAM|memory~297\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~298\,
	regout => \datapath_risc|RAM|memory~119_regout\);

-- Location: LC_X13_Y9_N5
\datapath_risc|RAM|memory~263\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~263_regout\ = DFFEAS((((\datapath_risc|RF|Mux13~4\))), GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~468_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \datapath_risc|RF|Mux13~4\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~263_regout\);

-- Location: LC_X14_Y9_N3
\datapath_risc|RAM|memory~215\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~215_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~466_combout\, \datapath_risc|RF|Mux13~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux13~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~215_regout\);

-- Location: LC_X14_Y8_N6
\datapath_risc|RAM|memory~231\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~304\ = (\datapath_risc|mux_mem_a|output[1]~0\ & (((\datapath_risc|mux_mem_a|output[0]~1\)))) # (!\datapath_risc|mux_mem_a|output[1]~0\ & ((\datapath_risc|mux_mem_a|output[0]~1\ & ((M1L227Q))) # 
-- (!\datapath_risc|mux_mem_a|output[0]~1\ & (\datapath_risc|RAM|memory~215_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~215_regout\,
	datab => \datapath_risc|mux_mem_a|output[1]~0\,
	datac => \datapath_risc|RF|Mux13~4\,
	datad => \datapath_risc|mux_mem_a|output[0]~1\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~304\,
	regout => \datapath_risc|RAM|memory~231_regout\);

-- Location: LC_X14_Y8_N7
\datapath_risc|RAM|memory~247\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~305\ = (\datapath_risc|mux_mem_a|output[1]~0\ & ((\datapath_risc|RAM|memory~304\ & (\datapath_risc|RAM|memory~263_regout\)) # (!\datapath_risc|RAM|memory~304\ & ((M1L243Q))))) # (!\datapath_risc|mux_mem_a|output[1]~0\ & 
-- (((\datapath_risc|RAM|memory~304\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[1]~0\,
	datab => \datapath_risc|RAM|memory~263_regout\,
	datac => \datapath_risc|RF|Mux13~4\,
	datad => \datapath_risc|RAM|memory~304\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~305\,
	regout => \datapath_risc|RAM|memory~247_regout\);

-- Location: LC_X14_Y6_N2
\datapath_risc|RAM|memory~71\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~71_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~460_combout\, \datapath_risc|RF|Mux13~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux13~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~71_regout\);

-- Location: LC_X14_Y6_N1
\datapath_risc|RAM|memory~23\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~23_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~458_combout\, \datapath_risc|RF|Mux13~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux13~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~23_regout\);

-- Location: LC_X14_Y7_N2
\datapath_risc|RAM|memory~55\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~301\ = (\datapath_risc|mux_mem_a|output[1]~0\ & (((M1L51Q) # (\datapath_risc|mux_mem_a|output[0]~1\)))) # (!\datapath_risc|mux_mem_a|output[1]~0\ & (\datapath_risc|RAM|memory~23_regout\ & 
-- ((!\datapath_risc|mux_mem_a|output[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~23_regout\,
	datab => \datapath_risc|mux_mem_a|output[1]~0\,
	datac => \datapath_risc|RF|Mux13~4\,
	datad => \datapath_risc|mux_mem_a|output[0]~1\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~301\,
	regout => \datapath_risc|RAM|memory~55_regout\);

-- Location: LC_X14_Y7_N3
\datapath_risc|RAM|memory~39\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~302\ = (\datapath_risc|mux_mem_a|output[0]~1\ & ((\datapath_risc|RAM|memory~301\ & (\datapath_risc|RAM|memory~71_regout\)) # (!\datapath_risc|RAM|memory~301\ & ((M1L35Q))))) # (!\datapath_risc|mux_mem_a|output[0]~1\ & 
-- (((\datapath_risc|RAM|memory~301\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~71_regout\,
	datab => \datapath_risc|mux_mem_a|output[0]~1\,
	datac => \datapath_risc|RF|Mux13~4\,
	datad => \datapath_risc|RAM|memory~301\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~302\,
	regout => \datapath_risc|RAM|memory~39_regout\);

-- Location: LC_X13_Y5_N3
\datapath_risc|RAM|memory~199\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~199_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~444_combout\, \datapath_risc|RF|Mux13~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux13~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~199_regout\);

-- Location: LC_X12_Y4_N5
\datapath_risc|RAM|memory~151\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~151_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~442_combout\, \datapath_risc|RF|Mux13~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux13~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~151_regout\);

-- Location: LC_X12_Y7_N5
\datapath_risc|RAM|memory~183\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~299\ = (\datapath_risc|mux_mem_a|output[1]~0\ & (((M1L179Q) # (\datapath_risc|mux_mem_a|output[0]~1\)))) # (!\datapath_risc|mux_mem_a|output[1]~0\ & (\datapath_risc|RAM|memory~151_regout\ & 
-- ((!\datapath_risc|mux_mem_a|output[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[1]~0\,
	datab => \datapath_risc|RAM|memory~151_regout\,
	datac => \datapath_risc|RF|Mux13~4\,
	datad => \datapath_risc|mux_mem_a|output[0]~1\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~299\,
	regout => \datapath_risc|RAM|memory~183_regout\);

-- Location: LC_X13_Y7_N0
\datapath_risc|RAM|memory~167\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~300\ = (\datapath_risc|mux_mem_a|output[0]~1\ & ((\datapath_risc|RAM|memory~299\ & (\datapath_risc|RAM|memory~199_regout\)) # (!\datapath_risc|RAM|memory~299\ & ((M1L163Q))))) # (!\datapath_risc|mux_mem_a|output[0]~1\ & 
-- (((\datapath_risc|RAM|memory~299\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[0]~1\,
	datab => \datapath_risc|RAM|memory~199_regout\,
	datac => \datapath_risc|RF|Mux13~4\,
	datad => \datapath_risc|RAM|memory~299\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~300\,
	regout => \datapath_risc|RAM|memory~167_regout\);

-- Location: LC_X13_Y7_N1
\datapath_risc|RAM|memory~303\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~303_combout\ = (\datapath_risc|mux_mem_a|output[2]~3\ & (\datapath_risc|mux_mem_a|output[3]~2\)) # (!\datapath_risc|mux_mem_a|output[2]~3\ & ((\datapath_risc|mux_mem_a|output[3]~2\ & ((\datapath_risc|RAM|memory~300\))) # 
-- (!\datapath_risc|mux_mem_a|output[3]~2\ & (\datapath_risc|RAM|memory~302\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_mem_a|output[2]~3\,
	datab => \datapath_risc|mux_mem_a|output[3]~2\,
	datac => \datapath_risc|RAM|memory~302\,
	datad => \datapath_risc|RAM|memory~300\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~303_combout\);

-- Location: LC_X13_Y7_N2
\datapath_risc|RAM|memory~306\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~306_combout\ = (\datapath_risc|mux_mem_a|output[2]~3\ & ((\datapath_risc|RAM|memory~303_combout\ & ((\datapath_risc|RAM|memory~305\))) # (!\datapath_risc|RAM|memory~303_combout\ & (\datapath_risc|RAM|memory~298\)))) # 
-- (!\datapath_risc|mux_mem_a|output[2]~3\ & (((\datapath_risc|RAM|memory~303_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_mem_a|output[2]~3\,
	datab => \datapath_risc|RAM|memory~298\,
	datac => \datapath_risc|RAM|memory~305\,
	datad => \datapath_risc|RAM|memory~303_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~306_combout\);

-- Location: LC_X13_Y7_N3
\datapath_risc|Inst_reg_fetch|next_instruction|dout[2]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|mem_out[2]~2\ = ((\controlpath_risc|rd_mem~combout\ & ((\datapath_risc|RAM|memory~306_combout\))))
-- \datapath_risc|Inst_reg_fetch|next_instruction|dout\(2) = DFFEAS(\datapath_risc|RAM|mem_out[2]~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \controlpath_risc|en_irf~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \controlpath_risc|rd_mem~combout\,
	datad => \datapath_risc|RAM|memory~306_combout\,
	aclr => \reset~combout\,
	ena => \controlpath_risc|en_irf~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|mem_out[2]~2\,
	regout => \datapath_risc|Inst_reg_fetch|next_instruction|dout\(2));

-- Location: LC_X6_Y8_N1
\datapath_risc|mux_d3|output~3\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output~3_combout\ = ((!\controlpath_risc|m_d3_1~combout\ & (\controlpath_risc|m_d3_0~combout\ & \datapath_risc|RF|Mux30~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \controlpath_risc|m_d3_1~combout\,
	datac => \controlpath_risc|m_d3_0~combout\,
	datad => \datapath_risc|RF|Mux30~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output~3_combout\);

-- Location: LC_X6_Y8_N9
\datapath_risc|RF|registers[0][1]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output\(1) = (\datapath_risc|mux_d3|output~3_combout\) # ((\datapath_risc|mux_d3|output[1]~4_combout\) # ((!\datapath_risc|mux_d3|output~2_combout\ & \datapath_risc|alu_unit|output[1]~1_combout\)))
-- \datapath_risc|RF|registers[0][1]~regout\ = DFFEAS(\datapath_risc|mux_d3|output\(1), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffdc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_d3|output~2_combout\,
	datab => \datapath_risc|mux_d3|output~3_combout\,
	datac => \datapath_risc|alu_unit|output[1]~1_combout\,
	datad => \datapath_risc|mux_d3|output[1]~4_combout\,
	aclr => \reset~combout\,
	ena => \datapath_risc|RF|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output\(1),
	regout => \datapath_risc|RF|registers[0][1]~regout\);

-- Location: LC_X5_Y8_N7
\datapath_risc|RF|registers[1][1]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux30~2\ = (\datapath_risc|mux_a2|output\(0) & ((\datapath_risc|mux_a2|output\(1)) # ((P1_registers[1][1])))) # (!\datapath_risc|mux_a2|output\(0) & (!\datapath_risc|mux_a2|output\(1) & ((\datapath_risc|RF|registers[0][1]~regout\))))
-- \datapath_risc|RF|registers[1][1]~regout\ = DFFEAS(\datapath_risc|RF|Mux30~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~1_combout\, \datapath_risc|mux_d3|output\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_a2|output\(0),
	datab => \datapath_risc|mux_a2|output\(1),
	datac => \datapath_risc|mux_d3|output\(1),
	datad => \datapath_risc|RF|registers[0][1]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux30~2\,
	regout => \datapath_risc|RF|registers[1][1]~regout\);

-- Location: LC_X5_Y8_N5
\datapath_risc|RF|Mux14~2\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux14~2_combout\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & (((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9))))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & 
-- ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & ((\datapath_risc|RF|registers[1][1]~regout\))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & (\datapath_risc|RF|registers[0][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	datab => \datapath_risc|RF|registers[0][1]~regout\,
	datac => \datapath_risc|RF|registers[1][1]~regout\,
	datad => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux14~2_combout\);

-- Location: LC_X6_Y8_N6
\datapath_risc|RF|registers[3][1]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux14~3\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & ((\datapath_risc|RF|Mux14~2_combout\ & ((P1_registers[3][1]))) # (!\datapath_risc|RF|Mux14~2_combout\ & (\datapath_risc|RF|registers[2][1]~regout\)))) # 
-- (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & (((\datapath_risc|RF|Mux14~2_combout\))))
-- \datapath_risc|RF|registers[3][1]~regout\ = DFFEAS(\datapath_risc|RF|Mux14~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~3_combout\, \datapath_risc|mux_d3|output\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[2][1]~regout\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	datac => \datapath_risc|mux_d3|output\(1),
	datad => \datapath_risc|RF|Mux14~2_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux14~3\,
	regout => \datapath_risc|RF|registers[3][1]~regout\);

-- Location: LC_X4_Y8_N9
\datapath_risc|RF|registers[4][1]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux14~0\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & ((\datapath_risc|RF|registers[6][1]~regout\) # ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9))))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) 
-- & (((P1_registers[4][1] & !\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9)))))
-- \datapath_risc|RF|registers[4][1]~regout\ = DFFEAS(\datapath_risc|RF|Mux14~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~4_combout\, \datapath_risc|mux_d3|output\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	datab => \datapath_risc|RF|registers[6][1]~regout\,
	datac => \datapath_risc|mux_d3|output\(1),
	datad => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux14~0\,
	regout => \datapath_risc|RF|registers[4][1]~regout\);

-- Location: LC_X8_Y8_N3
\datapath_risc|RF|registers[6][1]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux30~0\ = (\datapath_risc|mux_a2|output\(0) & (\datapath_risc|mux_a2|output\(1))) # (!\datapath_risc|mux_a2|output\(0) & ((\datapath_risc|mux_a2|output\(1) & (P1_registers[6][1])) # (!\datapath_risc|mux_a2|output\(1) & 
-- ((\datapath_risc|RF|registers[4][1]~regout\)))))
-- \datapath_risc|RF|registers[6][1]~regout\ = DFFEAS(\datapath_risc|RF|Mux30~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~6_combout\, \datapath_risc|mux_d3|output\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_a2|output\(0),
	datab => \datapath_risc|mux_a2|output\(1),
	datac => \datapath_risc|mux_d3|output\(1),
	datad => \datapath_risc|RF|registers[4][1]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux30~0\,
	regout => \datapath_risc|RF|registers[6][1]~regout\);

-- Location: LC_X7_Y8_N8
\datapath_risc|RF|registers[7][1]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux14~1\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & ((\datapath_risc|RF|Mux14~0\ & ((P1_registers[7][1]))) # (!\datapath_risc|RF|Mux14~0\ & (\datapath_risc|RF|registers[5][1]~regout\)))) # 
-- (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & (((\datapath_risc|RF|Mux14~0\))))
-- \datapath_risc|RF|registers[7][1]~regout\ = DFFEAS(\datapath_risc|RF|Mux14~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~7_combout\, \datapath_risc|mux_d3|output\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	datab => \datapath_risc|RF|registers[5][1]~regout\,
	datac => \datapath_risc|mux_d3|output\(1),
	datad => \datapath_risc|RF|Mux14~0\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux14~1\,
	regout => \datapath_risc|RF|registers[7][1]~regout\);

-- Location: LC_X7_Y8_N9
\datapath_risc|RF|registers[5][1]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux30~1\ = (\datapath_risc|mux_a2|output\(0) & ((\datapath_risc|RF|Mux30~0\ & (\datapath_risc|RF|registers[7][1]~regout\)) # (!\datapath_risc|RF|Mux30~0\ & ((P1_registers[5][1]))))) # (!\datapath_risc|mux_a2|output\(0) & 
-- (((\datapath_risc|RF|Mux30~0\))))
-- \datapath_risc|RF|registers[5][1]~regout\ = DFFEAS(\datapath_risc|RF|Mux30~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~5_combout\, \datapath_risc|mux_d3|output\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[7][1]~regout\,
	datab => \datapath_risc|mux_a2|output\(0),
	datac => \datapath_risc|mux_d3|output\(1),
	datad => \datapath_risc|RF|Mux30~0\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux30~1\,
	regout => \datapath_risc|RF|registers[5][1]~regout\);

-- Location: LC_X6_Y10_N4
\datapath_risc|RAM|memory~54\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux14~4\ = ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & ((\datapath_risc|RF|Mux14~1\))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & (\datapath_risc|RF|Mux14~3\)))
-- \datapath_risc|RAM|memory~54_regout\ = DFFEAS(\datapath_risc|RF|Mux14~4\, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~454_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(11),
	datac => \datapath_risc|RF|Mux14~3\,
	datad => \datapath_risc|RF|Mux14~1\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux14~4\,
	regout => \datapath_risc|RAM|memory~54_regout\);

-- Location: LC_X13_Y10_N6
\datapath_risc|RAM|memory~262\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~262_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~468_combout\, \datapath_risc|RF|Mux14~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux14~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~262_regout\);

-- Location: LC_X14_Y10_N8
\datapath_risc|RAM|memory~70\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~70_regout\ = DFFEAS((((\datapath_risc|RF|Mux14~4\))), GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~460_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \datapath_risc|RF|Mux14~4\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~70_regout\);

-- Location: LC_X14_Y10_N4
\datapath_risc|RAM|memory~134\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~294\ = (\datapath_risc|mux_mem_a|output[2]~3\ & (((M1L130Q) # (\datapath_risc|mux_mem_a|output[3]~2\)))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & (\datapath_risc|RAM|memory~70_regout\ & 
-- ((!\datapath_risc|mux_mem_a|output[3]~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~70_regout\,
	datab => \datapath_risc|mux_mem_a|output[2]~3\,
	datac => \datapath_risc|RF|Mux14~4\,
	datad => \datapath_risc|mux_mem_a|output[3]~2\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~294\,
	regout => \datapath_risc|RAM|memory~134_regout\);

-- Location: LC_X13_Y10_N9
\datapath_risc|RAM|memory~198\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~295\ = (\datapath_risc|mux_mem_a|output[3]~2\ & ((\datapath_risc|RAM|memory~294\ & (\datapath_risc|RAM|memory~262_regout\)) # (!\datapath_risc|RAM|memory~294\ & ((M1L194Q))))) # (!\datapath_risc|mux_mem_a|output[3]~2\ & 
-- (((\datapath_risc|RAM|memory~294\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~262_regout\,
	datab => \datapath_risc|mux_mem_a|output[3]~2\,
	datac => \datapath_risc|RF|Mux14~4\,
	datad => \datapath_risc|RAM|memory~294\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~295\,
	regout => \datapath_risc|RAM|memory~198_regout\);

-- Location: LC_X11_Y5_N0
\datapath_risc|RAM|memory~246\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~246_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~464_combout\, \datapath_risc|RF|Mux14~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux14~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~246_regout\);

-- Location: LC_X10_Y10_N9
\datapath_risc|RAM|memory~182\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~287\ = (\datapath_risc|mux_mem_a|output[2]~3\ & (((\datapath_risc|mux_mem_a|output[3]~2\)))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & ((\datapath_risc|mux_mem_a|output[3]~2\ & ((M1L178Q))) # 
-- (!\datapath_risc|mux_mem_a|output[3]~2\ & (\datapath_risc|RAM|memory~54_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~54_regout\,
	datab => \datapath_risc|mux_mem_a|output[2]~3\,
	datac => \datapath_risc|RF|Mux14~4\,
	datad => \datapath_risc|mux_mem_a|output[3]~2\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~287\,
	regout => \datapath_risc|RAM|memory~182_regout\);

-- Location: LC_X9_Y8_N7
\datapath_risc|RAM|memory~118\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~288\ = (\datapath_risc|mux_mem_a|output[2]~3\ & ((\datapath_risc|RAM|memory~287\ & (\datapath_risc|RAM|memory~246_regout\)) # (!\datapath_risc|RAM|memory~287\ & ((M1L114Q))))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & 
-- (((\datapath_risc|RAM|memory~287\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~246_regout\,
	datab => \datapath_risc|mux_mem_a|output[2]~3\,
	datac => \datapath_risc|RF|Mux14~4\,
	datad => \datapath_risc|RAM|memory~287\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~288\,
	regout => \datapath_risc|RAM|memory~118_regout\);

-- Location: LC_X12_Y10_N6
\datapath_risc|RAM|memory~214\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~214_regout\ = DFFEAS((((\datapath_risc|RF|Mux14~4\))), GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~466_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \datapath_risc|RF|Mux14~4\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~214_regout\);

-- Location: LC_X12_Y6_N4
\datapath_risc|RAM|memory~22\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~22_regout\ = DFFEAS((((\datapath_risc|RF|Mux14~4\))), GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~458_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \datapath_risc|RF|Mux14~4\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~22_regout\);

-- Location: LC_X11_Y8_N3
\datapath_risc|RAM|memory~150\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~291\ = (\datapath_risc|mux_mem_a|output[2]~3\ & (((\datapath_risc|mux_mem_a|output[3]~2\)))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & ((\datapath_risc|mux_mem_a|output[3]~2\ & ((M1L146Q))) # 
-- (!\datapath_risc|mux_mem_a|output[3]~2\ & (\datapath_risc|RAM|memory~22_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[2]~3\,
	datab => \datapath_risc|RAM|memory~22_regout\,
	datac => \datapath_risc|RF|Mux14~4\,
	datad => \datapath_risc|mux_mem_a|output[3]~2\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~291\,
	regout => \datapath_risc|RAM|memory~150_regout\);

-- Location: LC_X11_Y8_N7
\datapath_risc|RAM|memory~86\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~292\ = (\datapath_risc|mux_mem_a|output[2]~3\ & ((\datapath_risc|RAM|memory~291\ & (\datapath_risc|RAM|memory~214_regout\)) # (!\datapath_risc|RAM|memory~291\ & ((M1L82Q))))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & 
-- (((\datapath_risc|RAM|memory~291\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[2]~3\,
	datab => \datapath_risc|RAM|memory~214_regout\,
	datac => \datapath_risc|RF|Mux14~4\,
	datad => \datapath_risc|RAM|memory~291\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~292\,
	regout => \datapath_risc|RAM|memory~86_regout\);

-- Location: LC_X12_Y5_N5
\datapath_risc|RAM|memory~230\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~230_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~462_combout\, \datapath_risc|RF|Mux14~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux14~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~230_regout\);

-- Location: LC_X11_Y10_N6
\datapath_risc|RAM|memory~38\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~38_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~456_combout\, \datapath_risc|RF|Mux14~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux14~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~38_regout\);

-- Location: LC_X11_Y10_N4
\datapath_risc|RAM|memory~102\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~289\ = (\datapath_risc|mux_mem_a|output[2]~3\ & (((M1L98Q) # (\datapath_risc|mux_mem_a|output[3]~2\)))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & (\datapath_risc|RAM|memory~38_regout\ & 
-- ((!\datapath_risc|mux_mem_a|output[3]~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~38_regout\,
	datab => \datapath_risc|mux_mem_a|output[2]~3\,
	datac => \datapath_risc|RF|Mux14~4\,
	datad => \datapath_risc|mux_mem_a|output[3]~2\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~289\,
	regout => \datapath_risc|RAM|memory~102_regout\);

-- Location: LC_X10_Y10_N1
\datapath_risc|RAM|memory~166\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~290\ = (\datapath_risc|mux_mem_a|output[3]~2\ & ((\datapath_risc|RAM|memory~289\ & (\datapath_risc|RAM|memory~230_regout\)) # (!\datapath_risc|RAM|memory~289\ & ((M1L162Q))))) # (!\datapath_risc|mux_mem_a|output[3]~2\ & 
-- (((\datapath_risc|RAM|memory~289\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[3]~2\,
	datab => \datapath_risc|RAM|memory~230_regout\,
	datac => \datapath_risc|RF|Mux14~4\,
	datad => \datapath_risc|RAM|memory~289\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~290\,
	regout => \datapath_risc|RAM|memory~166_regout\);

-- Location: LC_X8_Y10_N7
\datapath_risc|RAM|memory~293\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~293_combout\ = (\datapath_risc|mux_mem_a|output[1]~0\ & (\datapath_risc|mux_mem_a|output[0]~1\)) # (!\datapath_risc|mux_mem_a|output[1]~0\ & ((\datapath_risc|mux_mem_a|output[0]~1\ & ((\datapath_risc|RAM|memory~290\))) # 
-- (!\datapath_risc|mux_mem_a|output[0]~1\ & (\datapath_risc|RAM|memory~292\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_mem_a|output[1]~0\,
	datab => \datapath_risc|mux_mem_a|output[0]~1\,
	datac => \datapath_risc|RAM|memory~292\,
	datad => \datapath_risc|RAM|memory~290\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~293_combout\);

-- Location: LC_X8_Y10_N8
\datapath_risc|RAM|memory~296\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~296_combout\ = (\datapath_risc|mux_mem_a|output[1]~0\ & ((\datapath_risc|RAM|memory~293_combout\ & (\datapath_risc|RAM|memory~295\)) # (!\datapath_risc|RAM|memory~293_combout\ & ((\datapath_risc|RAM|memory~288\))))) # 
-- (!\datapath_risc|mux_mem_a|output[1]~0\ & (((\datapath_risc|RAM|memory~293_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_mem_a|output[1]~0\,
	datab => \datapath_risc|RAM|memory~295\,
	datac => \datapath_risc|RAM|memory~288\,
	datad => \datapath_risc|RAM|memory~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~296_combout\);

-- Location: LC_X8_Y10_N9
\datapath_risc|Inst_reg_fetch|next_instruction|dout[1]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|mem_out[1]~1\ = ((\controlpath_risc|rd_mem~combout\ & ((\datapath_risc|RAM|memory~296_combout\))))
-- \datapath_risc|Inst_reg_fetch|next_instruction|dout\(1) = DFFEAS(\datapath_risc|RAM|mem_out[1]~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \controlpath_risc|en_irf~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \controlpath_risc|rd_mem~combout\,
	datad => \datapath_risc|RAM|memory~296_combout\,
	aclr => \reset~combout\,
	ena => \controlpath_risc|en_irf~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|mem_out[1]~1\,
	regout => \datapath_risc|Inst_reg_fetch|next_instruction|dout\(1));

-- Location: LC_X7_Y8_N7
\datapath_risc|mux_op1|output[1]~0\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op1|output[1]~0_combout\ = (\controlpath_risc|m_op1_0~combout\ & (((\datapath_risc|RF|Mux31~4\ & \controlpath_risc|m_op1_1~combout\)))) # (!\controlpath_risc|m_op1_0~combout\ & (\datapath_risc|RF|Mux30~4_combout\ & 
-- ((!\controlpath_risc|m_op1_1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c022",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|RF|Mux30~4_combout\,
	datab => \controlpath_risc|m_op1_0~combout\,
	datac => \datapath_risc|RF|Mux31~4\,
	datad => \controlpath_risc|m_op1_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op1|output[1]~0_combout\);

-- Location: LC_X7_Y6_N7
\datapath_risc|Inst_reg_exe|next_instruction1|dout[1]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op1|output[1]~1\ = (\datapath_risc|mux_op1|output[1]~0_combout\) # ((N1_dout[1] & (\controlpath_risc|m_op1_1~combout\ $ (\controlpath_risc|m_op1_0~combout\))))
-- \datapath_risc|Inst_reg_exe|next_instruction1|dout\(1) = DFFEAS(\datapath_risc|mux_op1|output[1]~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \controlpath_risc|en_ir~combout\, \datapath_risc|Inst_reg_fetch|next_instruction|dout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff60",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \controlpath_risc|m_op1_1~combout\,
	datab => \controlpath_risc|m_op1_0~combout\,
	datac => \datapath_risc|Inst_reg_fetch|next_instruction|dout\(1),
	datad => \datapath_risc|mux_op1|output[1]~0_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \controlpath_risc|en_ir~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op1|output[1]~1\,
	regout => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(1));

-- Location: LC_X7_Y8_N5
\datapath_risc|mux_d3|output[1]~4\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output[1]~4_combout\ = (\controlpath_risc|m_d3_1~combout\ & ((\controlpath_risc|m_d3_0~combout\ & ((\datapath_risc|RAM|mem_out[1]~1\))) # (!\controlpath_risc|m_d3_0~combout\ & 
-- (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a820",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_d3_1~combout\,
	datab => \controlpath_risc|m_d3_0~combout\,
	datac => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(1),
	datad => \datapath_risc|RAM|mem_out[1]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output[1]~4_combout\);

-- Location: LC_X5_Y8_N8
\datapath_risc|RF|registers[2][1]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux30~3\ = (\datapath_risc|mux_a2|output\(1) & ((\datapath_risc|RF|Mux30~2\ & (\datapath_risc|RF|registers[3][1]~regout\)) # (!\datapath_risc|RF|Mux30~2\ & ((P1_registers[2][1]))))) # (!\datapath_risc|mux_a2|output\(1) & 
-- (((\datapath_risc|RF|Mux30~2\))))
-- \datapath_risc|RF|registers[2][1]~regout\ = DFFEAS(\datapath_risc|RF|Mux30~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~2_combout\, \datapath_risc|mux_d3|output\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[3][1]~regout\,
	datab => \datapath_risc|mux_a2|output\(1),
	datac => \datapath_risc|mux_d3|output\(1),
	datad => \datapath_risc|RF|Mux30~2\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux30~3\,
	regout => \datapath_risc|RF|registers[2][1]~regout\);

-- Location: LC_X9_Y8_N4
\datapath_risc|RF|Mux30~4\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux30~4_combout\ = (\controlpath_risc|m_a2~combout\ & (((\datapath_risc|RF|Mux30~1\)))) # (!\controlpath_risc|m_a2~combout\ & ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(8) & ((\datapath_risc|RF|Mux30~1\))) # 
-- (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(8) & (\datapath_risc|RF|Mux30~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_a2~combout\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(8),
	datac => \datapath_risc|RF|Mux30~3\,
	datad => \datapath_risc|RF|Mux30~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux30~4_combout\);

-- Location: LC_X7_Y8_N1
\datapath_risc|mux_op1|output[2]~2\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op1|output[2]~2_combout\ = (\controlpath_risc|m_op1_1~combout\ & (\controlpath_risc|m_op1_0~combout\ & ((\datapath_risc|RF|Mux30~4_combout\)))) # (!\controlpath_risc|m_op1_1~combout\ & (!\controlpath_risc|m_op1_0~combout\ & 
-- (\datapath_risc|RF|Mux29~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9810",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_op1_1~combout\,
	datab => \controlpath_risc|m_op1_0~combout\,
	datac => \datapath_risc|RF|Mux29~4_combout\,
	datad => \datapath_risc|RF|Mux30~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op1|output[2]~2_combout\);

-- Location: LC_X7_Y6_N4
\datapath_risc|Inst_reg_exe|next_instruction1|dout[2]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op1|output[2]~3\ = (\datapath_risc|mux_op1|output[2]~2_combout\) # ((N1_dout[2] & (\controlpath_risc|m_op1_1~combout\ $ (\controlpath_risc|m_op1_0~combout\))))
-- \datapath_risc|Inst_reg_exe|next_instruction1|dout\(2) = DFFEAS(\datapath_risc|mux_op1|output[2]~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \controlpath_risc|en_ir~combout\, \datapath_risc|Inst_reg_fetch|next_instruction|dout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff60",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \controlpath_risc|m_op1_1~combout\,
	datab => \controlpath_risc|m_op1_0~combout\,
	datac => \datapath_risc|Inst_reg_fetch|next_instruction|dout\(2),
	datad => \datapath_risc|mux_op1|output[2]~2_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \controlpath_risc|en_ir~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op1|output[2]~3\,
	regout => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(2));

-- Location: LC_X6_Y8_N8
\datapath_risc|mux_d3|output[2]~6\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output[2]~6_combout\ = (\controlpath_risc|m_d3_1~combout\ & ((\controlpath_risc|m_d3_0~combout\ & ((\datapath_risc|RAM|mem_out[2]~2\))) # (!\controlpath_risc|m_d3_0~combout\ & 
-- (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_d3_1~combout\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(2),
	datac => \controlpath_risc|m_d3_0~combout\,
	datad => \datapath_risc|RAM|mem_out[2]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output[2]~6_combout\);

-- Location: LC_X7_Y8_N0
\datapath_risc|RF|registers[5][2]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux29~1\ = (\datapath_risc|mux_a2|output\(0) & ((\datapath_risc|RF|Mux29~0\ & (\datapath_risc|RF|registers[7][2]~regout\)) # (!\datapath_risc|RF|Mux29~0\ & ((P1_registers[5][2]))))) # (!\datapath_risc|mux_a2|output\(0) & 
-- (((\datapath_risc|RF|Mux29~0\))))
-- \datapath_risc|RF|registers[5][2]~regout\ = DFFEAS(\datapath_risc|RF|Mux29~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~5_combout\, \datapath_risc|mux_d3|output\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[7][2]~regout\,
	datab => \datapath_risc|mux_a2|output\(0),
	datac => \datapath_risc|mux_d3|output\(2),
	datad => \datapath_risc|RF|Mux29~0\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux29~1\,
	regout => \datapath_risc|RF|registers[5][2]~regout\);

-- Location: LC_X10_Y8_N2
\datapath_risc|RF|Mux29~4\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux29~4_combout\ = (\controlpath_risc|m_a2~combout\ & (\datapath_risc|RF|Mux29~1\)) # (!\controlpath_risc|m_a2~combout\ & ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(8) & (\datapath_risc|RF|Mux29~1\)) # 
-- (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(8) & ((\datapath_risc|RF|Mux29~3\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aba8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|RF|Mux29~1\,
	datab => \controlpath_risc|m_a2~combout\,
	datac => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(8),
	datad => \datapath_risc|RF|Mux29~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux29~4_combout\);

-- Location: LC_X6_Y6_N4
\datapath_risc|mux_op1|output[3]~4\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op1|output[3]~4_combout\ = (\controlpath_risc|m_op1_0~combout\ & (((\datapath_risc|RF|Mux29~4_combout\ & \controlpath_risc|m_op1_1~combout\)))) # (!\controlpath_risc|m_op1_0~combout\ & (\datapath_risc|RF|Mux28~4_combout\ & 
-- ((!\controlpath_risc|m_op1_1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a044",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_op1_0~combout\,
	datab => \datapath_risc|RF|Mux28~4_combout\,
	datac => \datapath_risc|RF|Mux29~4_combout\,
	datad => \controlpath_risc|m_op1_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op1|output[3]~4_combout\);

-- Location: LC_X7_Y6_N6
\datapath_risc|Inst_reg_exe|next_instruction1|dout[3]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op1|output[3]~5\ = (\datapath_risc|mux_op1|output[3]~4_combout\) # ((N1_dout[3] & (\controlpath_risc|m_op1_1~combout\ $ (\controlpath_risc|m_op1_0~combout\))))
-- \datapath_risc|Inst_reg_exe|next_instruction1|dout\(3) = DFFEAS(\datapath_risc|mux_op1|output[3]~5\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \controlpath_risc|en_ir~combout\, \datapath_risc|Inst_reg_fetch|next_instruction|dout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff60",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \controlpath_risc|m_op1_1~combout\,
	datab => \controlpath_risc|m_op1_0~combout\,
	datac => \datapath_risc|Inst_reg_fetch|next_instruction|dout\(3),
	datad => \datapath_risc|mux_op1|output[3]~4_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \controlpath_risc|en_ir~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op1|output[3]~5\,
	regout => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(3));

-- Location: LC_X12_Y7_N4
\datapath_risc|Inst_reg_fetch|next_instruction|dout[3]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|mem_out[3]~3\ = ((\controlpath_risc|rd_mem~combout\ & ((\datapath_risc|RAM|memory~316_combout\))))
-- \datapath_risc|Inst_reg_fetch|next_instruction|dout\(3) = DFFEAS(\datapath_risc|RAM|mem_out[3]~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \controlpath_risc|en_irf~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \controlpath_risc|rd_mem~combout\,
	datad => \datapath_risc|RAM|memory~316_combout\,
	aclr => \reset~combout\,
	ena => \controlpath_risc|en_irf~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|mem_out[3]~3\,
	regout => \datapath_risc|Inst_reg_fetch|next_instruction|dout\(3));

-- Location: LC_X7_Y7_N1
\datapath_risc|mux_d3|output[3]~8\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output[3]~8_combout\ = (\controlpath_risc|m_d3_1~combout\ & ((\controlpath_risc|m_d3_0~combout\ & ((\datapath_risc|RAM|mem_out[3]~3\))) # (!\controlpath_risc|m_d3_0~combout\ & 
-- (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(3),
	datab => \controlpath_risc|m_d3_1~combout\,
	datac => \datapath_risc|RAM|mem_out[3]~3\,
	datad => \controlpath_risc|m_d3_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output[3]~8_combout\);

-- Location: LC_X7_Y7_N0
\datapath_risc|RF|registers[0][3]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output\(3) = (\datapath_risc|mux_d3|output~7_combout\) # ((\datapath_risc|mux_d3|output[3]~8_combout\) # ((!\datapath_risc|mux_d3|output~2_combout\ & \datapath_risc|alu_unit|output[3]~3_combout\)))
-- \datapath_risc|RF|registers[0][3]~regout\ = DFFEAS(\datapath_risc|mux_d3|output\(3), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffba",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_d3|output~7_combout\,
	datab => \datapath_risc|mux_d3|output~2_combout\,
	datac => \datapath_risc|alu_unit|output[3]~3_combout\,
	datad => \datapath_risc|mux_d3|output[3]~8_combout\,
	aclr => \reset~combout\,
	ena => \datapath_risc|RF|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output\(3),
	regout => \datapath_risc|RF|registers[0][3]~regout\);

-- Location: LC_X8_Y9_N7
\datapath_risc|RF|registers[1][3]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux28~2\ = (\datapath_risc|mux_a2|output\(0) & (((P1_registers[1][3]) # (\datapath_risc|mux_a2|output\(1))))) # (!\datapath_risc|mux_a2|output\(0) & (\datapath_risc|RF|registers[0][3]~regout\ & ((!\datapath_risc|mux_a2|output\(1)))))
-- \datapath_risc|RF|registers[1][3]~regout\ = DFFEAS(\datapath_risc|RF|Mux28~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~1_combout\, \datapath_risc|mux_d3|output\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_a2|output\(0),
	datab => \datapath_risc|RF|registers[0][3]~regout\,
	datac => \datapath_risc|mux_d3|output\(3),
	datad => \datapath_risc|mux_a2|output\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux28~2\,
	regout => \datapath_risc|RF|registers[1][3]~regout\);

-- Location: LC_X8_Y9_N0
\datapath_risc|RF|Mux12~2\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux12~2_combout\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & (((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9))))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & 
-- ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & (\datapath_risc|RF|registers[1][3]~regout\)) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & ((\datapath_risc|RF|registers[0][3]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	datab => \datapath_risc|RF|registers[1][3]~regout\,
	datac => \datapath_risc|RF|registers[0][3]~regout\,
	datad => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux12~2_combout\);

-- Location: LC_X8_Y9_N8
\datapath_risc|RF|registers[2][3]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux28~3\ = (\datapath_risc|mux_a2|output\(1) & ((\datapath_risc|RF|Mux28~2\ & (\datapath_risc|RF|registers[3][3]~regout\)) # (!\datapath_risc|RF|Mux28~2\ & ((P1_registers[2][3]))))) # (!\datapath_risc|mux_a2|output\(1) & 
-- (((\datapath_risc|RF|Mux28~2\))))
-- \datapath_risc|RF|registers[2][3]~regout\ = DFFEAS(\datapath_risc|RF|Mux28~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~2_combout\, \datapath_risc|mux_d3|output\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_a2|output\(1),
	datab => \datapath_risc|RF|registers[3][3]~regout\,
	datac => \datapath_risc|mux_d3|output\(3),
	datad => \datapath_risc|RF|Mux28~2\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux28~3\,
	regout => \datapath_risc|RF|registers[2][3]~regout\);

-- Location: LC_X7_Y9_N6
\datapath_risc|RF|registers[3][3]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux12~3\ = (\datapath_risc|RF|Mux12~2_combout\ & (((P1_registers[3][3])) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10)))) # (!\datapath_risc|RF|Mux12~2_combout\ & (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & 
-- ((\datapath_risc|RF|registers[2][3]~regout\))))
-- \datapath_risc|RF|registers[3][3]~regout\ = DFFEAS(\datapath_risc|RF|Mux12~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~3_combout\, \datapath_risc|mux_d3|output\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6a2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|Mux12~2_combout\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	datac => \datapath_risc|mux_d3|output\(3),
	datad => \datapath_risc|RF|registers[2][3]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux12~3\,
	regout => \datapath_risc|RF|registers[3][3]~regout\);

-- Location: LC_X8_Y8_N5
\datapath_risc|RF|registers[6][3]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux28~0\ = (\datapath_risc|mux_a2|output\(1) & (((P1_registers[6][3]) # (\datapath_risc|mux_a2|output\(0))))) # (!\datapath_risc|mux_a2|output\(1) & (\datapath_risc|RF|registers[4][3]~regout\ & ((!\datapath_risc|mux_a2|output\(0)))))
-- \datapath_risc|RF|registers[6][3]~regout\ = DFFEAS(\datapath_risc|RF|Mux28~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~6_combout\, \datapath_risc|mux_d3|output\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[4][3]~regout\,
	datab => \datapath_risc|mux_a2|output\(1),
	datac => \datapath_risc|mux_d3|output\(3),
	datad => \datapath_risc|mux_a2|output\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux28~0\,
	regout => \datapath_risc|RF|registers[6][3]~regout\);

-- Location: LC_X7_Y10_N5
\datapath_risc|RF|registers[4][3]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux12~0\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & ((\datapath_risc|RF|registers[6][3]~regout\) # ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9))))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) 
-- & (((P1_registers[4][3] & !\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9)))))
-- \datapath_risc|RF|registers[4][3]~regout\ = DFFEAS(\datapath_risc|RF|Mux12~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~4_combout\, \datapath_risc|mux_d3|output\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	datab => \datapath_risc|RF|registers[6][3]~regout\,
	datac => \datapath_risc|mux_d3|output\(3),
	datad => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux12~0\,
	regout => \datapath_risc|RF|registers[4][3]~regout\);

-- Location: LC_X9_Y9_N6
\datapath_risc|RF|registers[5][3]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux28~1\ = (\datapath_risc|mux_a2|output\(0) & ((\datapath_risc|RF|Mux28~0\ & (\datapath_risc|RF|registers[7][3]~regout\)) # (!\datapath_risc|RF|Mux28~0\ & ((P1_registers[5][3]))))) # (!\datapath_risc|mux_a2|output\(0) & 
-- (((\datapath_risc|RF|Mux28~0\))))
-- \datapath_risc|RF|registers[5][3]~regout\ = DFFEAS(\datapath_risc|RF|Mux28~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~5_combout\, \datapath_risc|mux_d3|output\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_a2|output\(0),
	datab => \datapath_risc|RF|registers[7][3]~regout\,
	datac => \datapath_risc|mux_d3|output\(3),
	datad => \datapath_risc|RF|Mux28~0\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux28~1\,
	regout => \datapath_risc|RF|registers[5][3]~regout\);

-- Location: LC_X9_Y9_N7
\datapath_risc|RF|Mux28~4\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux28~4_combout\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(8) & (((\datapath_risc|RF|Mux28~1\)))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(8) & ((\controlpath_risc|m_a2~combout\ & 
-- ((\datapath_risc|RF|Mux28~1\))) # (!\controlpath_risc|m_a2~combout\ & (\datapath_risc|RF|Mux28~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(8),
	datab => \controlpath_risc|m_a2~combout\,
	datac => \datapath_risc|RF|Mux28~3\,
	datad => \datapath_risc|RF|Mux28~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux28~4_combout\);

-- Location: LC_X8_Y7_N5
\datapath_risc|mux_d3|output~7\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output~7_combout\ = (!\controlpath_risc|m_d3_1~combout\ & (\datapath_risc|RF|Mux28~4_combout\ & (\controlpath_risc|m_d3_0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_d3_1~combout\,
	datab => \datapath_risc|RF|Mux28~4_combout\,
	datac => \controlpath_risc|m_d3_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output~7_combout\);

-- Location: LC_X9_Y9_N1
\datapath_risc|RF|registers[7][3]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux12~1\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & ((\datapath_risc|RF|Mux12~0\ & ((P1_registers[7][3]))) # (!\datapath_risc|RF|Mux12~0\ & (\datapath_risc|RF|registers[5][3]~regout\)))) # 
-- (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & (((\datapath_risc|RF|Mux12~0\))))
-- \datapath_risc|RF|registers[7][3]~regout\ = DFFEAS(\datapath_risc|RF|Mux12~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~7_combout\, \datapath_risc|mux_d3|output\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[5][3]~regout\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	datac => \datapath_risc|mux_d3|output\(3),
	datad => \datapath_risc|RF|Mux12~0\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux12~1\,
	regout => \datapath_risc|RF|registers[7][3]~regout\);

-- Location: LC_X11_Y10_N7
\datapath_risc|RAM|memory~40\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux12~4\ = ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & (\datapath_risc|RF|Mux12~1\)) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & ((\datapath_risc|RF|Mux12~3\))))
-- \datapath_risc|RAM|memory~40_regout\ = DFFEAS(\datapath_risc|RF|Mux12~4\, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~456_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \datapath_risc|RF|Mux12~1\,
	datac => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(11),
	datad => \datapath_risc|RF|Mux12~3\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux12~4\,
	regout => \datapath_risc|RAM|memory~40_regout\);

-- Location: LC_X12_Y5_N7
\datapath_risc|RAM|memory~232\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~232_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~462_combout\, \datapath_risc|RF|Mux12~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux12~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~232_regout\);

-- Location: LC_X11_Y6_N2
\datapath_risc|RAM|memory~168\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~307\ = (\datapath_risc|mux_mem_a|output[2]~3\ & (((\datapath_risc|mux_mem_a|output[3]~2\)))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & ((\datapath_risc|mux_mem_a|output[3]~2\ & ((M1L164Q))) # 
-- (!\datapath_risc|mux_mem_a|output[3]~2\ & (\datapath_risc|RAM|memory~40_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[2]~3\,
	datab => \datapath_risc|RAM|memory~40_regout\,
	datac => \datapath_risc|RF|Mux12~4\,
	datad => \datapath_risc|mux_mem_a|output[3]~2\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~307\,
	regout => \datapath_risc|RAM|memory~168_regout\);

-- Location: LC_X11_Y6_N0
\datapath_risc|RAM|memory~104\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~308\ = (\datapath_risc|mux_mem_a|output[2]~3\ & ((\datapath_risc|RAM|memory~307\ & (\datapath_risc|RAM|memory~232_regout\)) # (!\datapath_risc|RAM|memory~307\ & ((M1L100Q))))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & 
-- (((\datapath_risc|RAM|memory~307\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[2]~3\,
	datab => \datapath_risc|RAM|memory~232_regout\,
	datac => \datapath_risc|RF|Mux12~4\,
	datad => \datapath_risc|RAM|memory~307\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~308\,
	regout => \datapath_risc|RAM|memory~104_regout\);

-- Location: LC_X15_Y9_N1
\datapath_risc|RAM|memory~264\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~264_regout\ = DFFEAS((((\datapath_risc|RF|Mux12~4\))), GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~468_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \datapath_risc|RF|Mux12~4\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~264_regout\);

-- Location: LC_X14_Y6_N7
\datapath_risc|RAM|memory~72\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~72_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~460_combout\, \datapath_risc|RF|Mux12~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux12~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~72_regout\);

-- Location: LC_X15_Y8_N4
\datapath_risc|RAM|memory~200\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~314\ = (\datapath_risc|mux_mem_a|output[2]~3\ & (((\datapath_risc|mux_mem_a|output[3]~2\)))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & ((\datapath_risc|mux_mem_a|output[3]~2\ & ((M1L196Q))) # 
-- (!\datapath_risc|mux_mem_a|output[3]~2\ & (\datapath_risc|RAM|memory~72_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~72_regout\,
	datab => \datapath_risc|mux_mem_a|output[2]~3\,
	datac => \datapath_risc|RF|Mux12~4\,
	datad => \datapath_risc|mux_mem_a|output[3]~2\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~314\,
	regout => \datapath_risc|RAM|memory~200_regout\);

-- Location: LC_X15_Y8_N5
\datapath_risc|RAM|memory~136\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~315\ = (\datapath_risc|mux_mem_a|output[2]~3\ & ((\datapath_risc|RAM|memory~314\ & (\datapath_risc|RAM|memory~264_regout\)) # (!\datapath_risc|RAM|memory~314\ & ((M1L132Q))))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & 
-- (((\datapath_risc|RAM|memory~314\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~264_regout\,
	datab => \datapath_risc|mux_mem_a|output[2]~3\,
	datac => \datapath_risc|RF|Mux12~4\,
	datad => \datapath_risc|RAM|memory~314\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~315\,
	regout => \datapath_risc|RAM|memory~136_regout\);

-- Location: LC_X11_Y4_N2
\datapath_risc|RAM|memory~216\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~216_regout\ = DFFEAS((((\datapath_risc|RF|Mux12~4\))), GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~466_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \datapath_risc|RF|Mux12~4\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~216_regout\);

-- Location: LC_X11_Y4_N0
\datapath_risc|RAM|memory~24\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~24_regout\ = DFFEAS((((\datapath_risc|RF|Mux12~4\))), GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~458_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \datapath_risc|RF|Mux12~4\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~24_regout\);

-- Location: LC_X11_Y8_N2
\datapath_risc|RAM|memory~88\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~311\ = (\datapath_risc|mux_mem_a|output[2]~3\ & (((M1L84Q) # (\datapath_risc|mux_mem_a|output[3]~2\)))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & (\datapath_risc|RAM|memory~24_regout\ & 
-- ((!\datapath_risc|mux_mem_a|output[3]~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[2]~3\,
	datab => \datapath_risc|RAM|memory~24_regout\,
	datac => \datapath_risc|RF|Mux12~4\,
	datad => \datapath_risc|mux_mem_a|output[3]~2\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~311\,
	regout => \datapath_risc|RAM|memory~88_regout\);

-- Location: LC_X11_Y8_N1
\datapath_risc|RAM|memory~152\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~312\ = (\datapath_risc|mux_mem_a|output[3]~2\ & ((\datapath_risc|RAM|memory~311\ & (\datapath_risc|RAM|memory~216_regout\)) # (!\datapath_risc|RAM|memory~311\ & ((M1L148Q))))) # (!\datapath_risc|mux_mem_a|output[3]~2\ & 
-- (((\datapath_risc|RAM|memory~311\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[3]~2\,
	datab => \datapath_risc|RAM|memory~216_regout\,
	datac => \datapath_risc|RF|Mux12~4\,
	datad => \datapath_risc|RAM|memory~311\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~312\,
	regout => \datapath_risc|RAM|memory~152_regout\);

-- Location: LC_X11_Y5_N6
\datapath_risc|RAM|memory~248\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~248_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~464_combout\, \datapath_risc|RF|Mux12~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux12~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~248_regout\);

-- Location: LC_X9_Y10_N2
\datapath_risc|RAM|memory~56\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~56_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~454_combout\, \datapath_risc|RF|Mux12~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux12~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~56_regout\);

-- Location: LC_X10_Y8_N4
\datapath_risc|RAM|memory~120\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~309\ = (\datapath_risc|mux_mem_a|output[2]~3\ & (((M1L116Q) # (\datapath_risc|mux_mem_a|output[3]~2\)))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & (\datapath_risc|RAM|memory~56_regout\ & 
-- ((!\datapath_risc|mux_mem_a|output[3]~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[2]~3\,
	datab => \datapath_risc|RAM|memory~56_regout\,
	datac => \datapath_risc|RF|Mux12~4\,
	datad => \datapath_risc|mux_mem_a|output[3]~2\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~309\,
	regout => \datapath_risc|RAM|memory~120_regout\);

-- Location: LC_X12_Y7_N8
\datapath_risc|RAM|memory~184\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~310\ = (\datapath_risc|mux_mem_a|output[3]~2\ & ((\datapath_risc|RAM|memory~309\ & (\datapath_risc|RAM|memory~248_regout\)) # (!\datapath_risc|RAM|memory~309\ & ((M1L180Q))))) # (!\datapath_risc|mux_mem_a|output[3]~2\ & 
-- (((\datapath_risc|RAM|memory~309\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~248_regout\,
	datab => \datapath_risc|mux_mem_a|output[3]~2\,
	datac => \datapath_risc|RF|Mux12~4\,
	datad => \datapath_risc|RAM|memory~309\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~310\,
	regout => \datapath_risc|RAM|memory~184_regout\);

-- Location: LC_X12_Y7_N2
\datapath_risc|RAM|memory~313\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~313_combout\ = (\datapath_risc|mux_mem_a|output[1]~0\ & ((\datapath_risc|mux_mem_a|output[0]~1\) # ((\datapath_risc|RAM|memory~310\)))) # (!\datapath_risc|mux_mem_a|output[1]~0\ & (!\datapath_risc|mux_mem_a|output[0]~1\ & 
-- (\datapath_risc|RAM|memory~312\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_mem_a|output[1]~0\,
	datab => \datapath_risc|mux_mem_a|output[0]~1\,
	datac => \datapath_risc|RAM|memory~312\,
	datad => \datapath_risc|RAM|memory~310\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~313_combout\);

-- Location: LC_X12_Y7_N3
\datapath_risc|RAM|memory~316\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~316_combout\ = (\datapath_risc|mux_mem_a|output[0]~1\ & ((\datapath_risc|RAM|memory~313_combout\ & ((\datapath_risc|RAM|memory~315\))) # (!\datapath_risc|RAM|memory~313_combout\ & (\datapath_risc|RAM|memory~308\)))) # 
-- (!\datapath_risc|mux_mem_a|output[0]~1\ & (((\datapath_risc|RAM|memory~313_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|RAM|memory~308\,
	datab => \datapath_risc|mux_mem_a|output[0]~1\,
	datac => \datapath_risc|RAM|memory~315\,
	datad => \datapath_risc|RAM|memory~313_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~316_combout\);

-- Location: LC_X8_Y9_N9
\datapath_risc|mux_op2|output~5\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op2|output~5_combout\ = (\controlpath_risc|m_op2_0~combout\ & (!\controlpath_risc|m_op2_1~combout\ & (\datapath_risc|RF|Mux28~4_combout\))) # (!\controlpath_risc|m_op2_0~combout\ & (\controlpath_risc|m_op2_1~combout\ & 
-- ((\datapath_risc|RF|Mux12~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6420",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_op2_0~combout\,
	datab => \controlpath_risc|m_op2_1~combout\,
	datac => \datapath_risc|RF|Mux28~4_combout\,
	datad => \datapath_risc|RF|Mux12~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op2|output~5_combout\);

-- Location: LC_X7_Y7_N6
\datapath_risc|mux_op2|output~6\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op2|output~6_combout\ = (\datapath_risc|mux_op2|output~5_combout\) # ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(3) & (\controlpath_risc|m_op2_0~combout\ & \controlpath_risc|m_op2_1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(3),
	datab => \controlpath_risc|m_op2_0~combout\,
	datac => \controlpath_risc|m_op2_1~combout\,
	datad => \datapath_risc|mux_op2|output~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op2|output~6_combout\);

-- Location: LC_X7_Y7_N7
\datapath_risc|alu_unit|output[3]~3\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|alu_unit|output[3]~3_combout\ = (\controlpath_risc|op_sel~combout\ & (((!\datapath_risc|mux_op2|output~6_combout\)) # (!\datapath_risc|mux_op1|output[3]~5\))) # (!\controlpath_risc|op_sel~combout\ & (\datapath_risc|mux_op1|output[3]~5\ $ 
-- (\datapath_risc|alu_unit|carry~combout\ $ (\datapath_risc|mux_op2|output~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "65de",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_op1|output[3]~5\,
	datab => \controlpath_risc|op_sel~combout\,
	datac => \datapath_risc|alu_unit|carry~combout\,
	datad => \datapath_risc|mux_op2|output~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|alu_unit|output[3]~3_combout\);

-- Location: LC_X2_Y8_N4
\controlpath_risc|en_A\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|en_A~combout\ = ((GLOBAL(\reset~combout\) & ((\controlpath_risc|en_A~combout\))) # (!GLOBAL(\reset~combout\) & (!\controlpath_risc|en_A~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f055",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|en_A~1_combout\,
	datac => \controlpath_risc|en_A~combout\,
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|en_A~combout\);

-- Location: LC_X10_Y8_N0
\datapath_risc|regA|dout[3]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_mem_a|output[3]~2\ = (\controlpath_risc|m_mem_a~combout\ & (((\datapath_risc|RF|Mux28~4_combout\)))) # (!\controlpath_risc|m_mem_a~combout\ & (((N3_dout[3]))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \controlpath_risc|m_mem_a~combout\,
	datac => \datapath_risc|alu_unit|output[3]~3_combout\,
	datad => \datapath_risc|RF|Mux28~4_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \controlpath_risc|en_A~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_mem_a|output[3]~2\,
	regout => \datapath_risc|regA|dout\(3));

-- Location: LC_X13_Y5_N0
\datapath_risc|RAM|memory~205\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~205_regout\ = DFFEAS((((\datapath_risc|RF|Mux7~4\))), GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~444_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \datapath_risc|RF|Mux7~4\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~205_regout\);

-- Location: LC_X10_Y6_N9
\datapath_risc|RAM|memory~173\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~357\ = (\datapath_risc|mux_mem_a|output[0]~1\ & (((M1L169Q) # (\datapath_risc|mux_mem_a|output[1]~0\)))) # (!\datapath_risc|mux_mem_a|output[0]~1\ & (\datapath_risc|RAM|memory~157_regout\ & 
-- ((!\datapath_risc|mux_mem_a|output[1]~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~157_regout\,
	datab => \datapath_risc|mux_mem_a|output[0]~1\,
	datac => \datapath_risc|RF|Mux7~4\,
	datad => \datapath_risc|mux_mem_a|output[1]~0\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~357\,
	regout => \datapath_risc|RAM|memory~173_regout\);

-- Location: LC_X10_Y6_N5
\datapath_risc|RAM|memory~189\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~358\ = (\datapath_risc|mux_mem_a|output[1]~0\ & ((\datapath_risc|RAM|memory~357\ & (\datapath_risc|RAM|memory~205_regout\)) # (!\datapath_risc|RAM|memory~357\ & ((M1L185Q))))) # (!\datapath_risc|mux_mem_a|output[1]~0\ & 
-- (((\datapath_risc|RAM|memory~357\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[1]~0\,
	datab => \datapath_risc|RAM|memory~205_regout\,
	datac => \datapath_risc|RF|Mux7~4\,
	datad => \datapath_risc|RAM|memory~357\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~358\,
	regout => \datapath_risc|RAM|memory~189_regout\);

-- Location: LC_X13_Y9_N7
\datapath_risc|RAM|memory~269\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~269_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~468_combout\, \datapath_risc|RF|Mux7~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux7~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~269_regout\);

-- Location: LC_X14_Y9_N9
\datapath_risc|RAM|memory~221\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~221_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~466_combout\, \datapath_risc|RF|Mux7~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux7~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~221_regout\);

-- Location: LC_X13_Y8_N0
\datapath_risc|RAM|memory~253\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~364\ = (\datapath_risc|mux_mem_a|output[1]~0\ & (((M1L249Q) # (\datapath_risc|mux_mem_a|output[0]~1\)))) # (!\datapath_risc|mux_mem_a|output[1]~0\ & (\datapath_risc|RAM|memory~221_regout\ & 
-- ((!\datapath_risc|mux_mem_a|output[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[1]~0\,
	datab => \datapath_risc|RAM|memory~221_regout\,
	datac => \datapath_risc|RF|Mux7~4\,
	datad => \datapath_risc|mux_mem_a|output[0]~1\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~364\,
	regout => \datapath_risc|RAM|memory~253_regout\);

-- Location: LC_X13_Y8_N1
\datapath_risc|RAM|memory~237\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~365\ = (\datapath_risc|mux_mem_a|output[0]~1\ & ((\datapath_risc|RAM|memory~364\ & (\datapath_risc|RAM|memory~269_regout\)) # (!\datapath_risc|RAM|memory~364\ & ((M1L233Q))))) # (!\datapath_risc|mux_mem_a|output[0]~1\ & 
-- (((\datapath_risc|RAM|memory~364\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[0]~1\,
	datab => \datapath_risc|RAM|memory~269_regout\,
	datac => \datapath_risc|RF|Mux7~4\,
	datad => \datapath_risc|RAM|memory~364\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~365\,
	regout => \datapath_risc|RAM|memory~237_regout\);

-- Location: LC_X14_Y10_N9
\datapath_risc|RAM|memory~77\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~77_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~460_combout\, \datapath_risc|RF|Mux7~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux7~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~77_regout\);

-- Location: LC_X10_Y4_N9
\datapath_risc|RAM|memory~29\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~29_regout\ = DFFEAS((((\datapath_risc|RF|Mux7~4\))), GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~458_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \datapath_risc|RF|Mux7~4\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~29_regout\);

-- Location: LC_X8_Y5_N8
\datapath_risc|RAM|memory~45\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~361\ = (\datapath_risc|mux_mem_a|output[1]~0\ & (((\datapath_risc|mux_mem_a|output[0]~1\)))) # (!\datapath_risc|mux_mem_a|output[1]~0\ & ((\datapath_risc|mux_mem_a|output[0]~1\ & ((M1L41Q))) # 
-- (!\datapath_risc|mux_mem_a|output[0]~1\ & (\datapath_risc|RAM|memory~29_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~29_regout\,
	datab => \datapath_risc|mux_mem_a|output[1]~0\,
	datac => \datapath_risc|RF|Mux7~4\,
	datad => \datapath_risc|mux_mem_a|output[0]~1\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~361\,
	regout => \datapath_risc|RAM|memory~45_regout\);

-- Location: LC_X8_Y5_N9
\datapath_risc|RAM|memory~61\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~362\ = (\datapath_risc|mux_mem_a|output[1]~0\ & ((\datapath_risc|RAM|memory~361\ & (\datapath_risc|RAM|memory~77_regout\)) # (!\datapath_risc|RAM|memory~361\ & ((M1L57Q))))) # (!\datapath_risc|mux_mem_a|output[1]~0\ & 
-- (((\datapath_risc|RAM|memory~361\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~77_regout\,
	datab => \datapath_risc|mux_mem_a|output[1]~0\,
	datac => \datapath_risc|RF|Mux7~4\,
	datad => \datapath_risc|RAM|memory~361\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~362\,
	regout => \datapath_risc|RAM|memory~61_regout\);

-- Location: LC_X9_Y5_N2
\datapath_risc|RAM|memory~141\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~141_regout\ = DFFEAS((((\datapath_risc|RF|Mux7~4\))), GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~452_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \datapath_risc|RF|Mux7~4\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~141_regout\);

-- Location: LC_X6_Y10_N3
\datapath_risc|RAM|memory~93\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~93_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~450_combout\, \datapath_risc|RF|Mux7~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux7~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~93_regout\);

-- Location: LC_X9_Y8_N2
\datapath_risc|RAM|memory~125\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~359\ = (\datapath_risc|mux_mem_a|output[1]~0\ & ((\datapath_risc|mux_mem_a|output[0]~1\) # ((M1L121Q)))) # (!\datapath_risc|mux_mem_a|output[1]~0\ & (!\datapath_risc|mux_mem_a|output[0]~1\ & 
-- ((\datapath_risc|RAM|memory~93_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[1]~0\,
	datab => \datapath_risc|mux_mem_a|output[0]~1\,
	datac => \datapath_risc|RF|Mux7~4\,
	datad => \datapath_risc|RAM|memory~93_regout\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~359\,
	regout => \datapath_risc|RAM|memory~125_regout\);

-- Location: LC_X9_Y5_N3
\datapath_risc|RAM|memory~109\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~360\ = (\datapath_risc|mux_mem_a|output[0]~1\ & ((\datapath_risc|RAM|memory~359\ & (\datapath_risc|RAM|memory~141_regout\)) # (!\datapath_risc|RAM|memory~359\ & ((M1L105Q))))) # (!\datapath_risc|mux_mem_a|output[0]~1\ & 
-- (((\datapath_risc|RAM|memory~359\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[0]~1\,
	datab => \datapath_risc|RAM|memory~141_regout\,
	datac => \datapath_risc|RF|Mux7~4\,
	datad => \datapath_risc|RAM|memory~359\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~360\,
	regout => \datapath_risc|RAM|memory~109_regout\);

-- Location: LC_X9_Y5_N4
\datapath_risc|RAM|memory~363\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~363_combout\ = (\datapath_risc|mux_mem_a|output[2]~3\ & ((\datapath_risc|mux_mem_a|output[3]~2\) # ((\datapath_risc|RAM|memory~360\)))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & (!\datapath_risc|mux_mem_a|output[3]~2\ & 
-- (\datapath_risc|RAM|memory~362\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_mem_a|output[2]~3\,
	datab => \datapath_risc|mux_mem_a|output[3]~2\,
	datac => \datapath_risc|RAM|memory~362\,
	datad => \datapath_risc|RAM|memory~360\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~363_combout\);

-- Location: LC_X10_Y5_N8
\datapath_risc|RAM|memory~366\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~366_combout\ = (\datapath_risc|mux_mem_a|output[3]~2\ & ((\datapath_risc|RAM|memory~363_combout\ & ((\datapath_risc|RAM|memory~365\))) # (!\datapath_risc|RAM|memory~363_combout\ & (\datapath_risc|RAM|memory~358\)))) # 
-- (!\datapath_risc|mux_mem_a|output[3]~2\ & (((\datapath_risc|RAM|memory~363_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_mem_a|output[3]~2\,
	datab => \datapath_risc|RAM|memory~358\,
	datac => \datapath_risc|RAM|memory~365\,
	datad => \datapath_risc|RAM|memory~363_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~366_combout\);

-- Location: LC_X8_Y9_N4
\datapath_risc|RF|registers[1][0]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux31~2\ = (\datapath_risc|mux_a2|output\(0) & (((P1_registers[1][0]) # (\datapath_risc|mux_a2|output\(1))))) # (!\datapath_risc|mux_a2|output\(0) & (\datapath_risc|RF|registers[0][0]~regout\ & ((!\datapath_risc|mux_a2|output\(1)))))
-- \datapath_risc|RF|registers[1][0]~regout\ = DFFEAS(\datapath_risc|RF|Mux31~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~1_combout\, \datapath_risc|mux_d3|output\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[0][0]~regout\,
	datab => \datapath_risc|mux_a2|output\(0),
	datac => \datapath_risc|mux_d3|output\(0),
	datad => \datapath_risc|mux_a2|output\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux31~2\,
	regout => \datapath_risc|RF|registers[1][0]~regout\);

-- Location: LC_X8_Y9_N6
\datapath_risc|RF|Mux15~2\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux15~2_combout\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & ((\datapath_risc|RF|registers[1][0]~regout\) # ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10))))) # 
-- (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & (((\datapath_risc|RF|registers[0][0]~regout\ & !\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|RF|registers[1][0]~regout\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	datac => \datapath_risc|RF|registers[0][0]~regout\,
	datad => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux15~2_combout\);

-- Location: LC_X8_Y9_N5
\datapath_risc|RF|registers[2][0]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux31~3\ = (\datapath_risc|mux_a2|output\(1) & ((\datapath_risc|RF|Mux31~2\ & (\datapath_risc|RF|registers[3][0]~regout\)) # (!\datapath_risc|RF|Mux31~2\ & ((P1_registers[2][0]))))) # (!\datapath_risc|mux_a2|output\(1) & 
-- (((\datapath_risc|RF|Mux31~2\))))
-- \datapath_risc|RF|registers[2][0]~regout\ = DFFEAS(\datapath_risc|RF|Mux31~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~2_combout\, \datapath_risc|mux_d3|output\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_a2|output\(1),
	datab => \datapath_risc|RF|registers[3][0]~regout\,
	datac => \datapath_risc|mux_d3|output\(0),
	datad => \datapath_risc|RF|Mux31~2\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux31~3\,
	regout => \datapath_risc|RF|registers[2][0]~regout\);

-- Location: LC_X7_Y9_N3
\datapath_risc|RF|registers[3][0]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux15~3\ = (\datapath_risc|RF|Mux15~2_combout\ & (((P1_registers[3][0])) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10)))) # (!\datapath_risc|RF|Mux15~2_combout\ & (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & 
-- ((\datapath_risc|RF|registers[2][0]~regout\))))
-- \datapath_risc|RF|registers[3][0]~regout\ = DFFEAS(\datapath_risc|RF|Mux15~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~3_combout\, \datapath_risc|mux_d3|output\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6a2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|Mux15~2_combout\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	datac => \datapath_risc|mux_d3|output\(0),
	datad => \datapath_risc|RF|registers[2][0]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux15~3\,
	regout => \datapath_risc|RF|registers[3][0]~regout\);

-- Location: LC_X8_Y8_N2
\datapath_risc|Inst_reg_exe|next_instruction1|dout[8]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux31~4\ = (\controlpath_risc|m_a2~combout\ & (\datapath_risc|RF|Mux31~1\)) # (!\controlpath_risc|m_a2~combout\ & ((N1_dout[8] & (\datapath_risc|RF|Mux31~1\)) # (!N1_dout[8] & ((\datapath_risc|RF|Mux31~3\)))))
-- \datapath_risc|Inst_reg_exe|next_instruction1|dout\(8) = DFFEAS(\datapath_risc|RF|Mux31~4\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \controlpath_risc|en_ir~combout\, \datapath_risc|Inst_reg_fetch|next_instruction|dout\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cdc8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \controlpath_risc|m_a2~combout\,
	datab => \datapath_risc|RF|Mux31~1\,
	datac => \datapath_risc|Inst_reg_fetch|next_instruction|dout\(8),
	datad => \datapath_risc|RF|Mux31~3\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \controlpath_risc|en_ir~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux31~4\,
	regout => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(8));

-- Location: LC_X7_Y9_N5
\datapath_risc|mux_op1|output[0]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op1|output\(0) = (\controlpath_risc|m_op1_1~combout\ & (!\controlpath_risc|m_op1_0~combout\ & (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(0)))) # (!\controlpath_risc|m_op1_1~combout\ & ((\controlpath_risc|m_op1_0~combout\ & 
-- (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(0))) # (!\controlpath_risc|m_op1_0~combout\ & ((\datapath_risc|RF|Mux31~4\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7160",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_op1_1~combout\,
	datab => \controlpath_risc|m_op1_0~combout\,
	datac => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(0),
	datad => \datapath_risc|RF|Mux31~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op1|output\(0));

-- Location: LC_X7_Y10_N0
\datapath_risc|RF|registers[4][0]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux15~0\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & ((\datapath_risc|RF|registers[6][0]~regout\) # ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9))))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) 
-- & (((P1_registers[4][0] & !\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9)))))
-- \datapath_risc|RF|registers[4][0]~regout\ = DFFEAS(\datapath_risc|RF|Mux15~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~4_combout\, \datapath_risc|mux_d3|output\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	datab => \datapath_risc|RF|registers[6][0]~regout\,
	datac => \datapath_risc|mux_d3|output\(0),
	datad => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux15~0\,
	regout => \datapath_risc|RF|registers[4][0]~regout\);

-- Location: LC_X8_Y8_N8
\datapath_risc|RF|registers[6][0]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux31~0\ = (\datapath_risc|mux_a2|output\(0) & (((\datapath_risc|mux_a2|output\(1))))) # (!\datapath_risc|mux_a2|output\(0) & ((\datapath_risc|mux_a2|output\(1) & ((P1_registers[6][0]))) # (!\datapath_risc|mux_a2|output\(1) & 
-- (\datapath_risc|RF|registers[4][0]~regout\))))
-- \datapath_risc|RF|registers[6][0]~regout\ = DFFEAS(\datapath_risc|RF|Mux31~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~6_combout\, \datapath_risc|mux_d3|output\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[4][0]~regout\,
	datab => \datapath_risc|mux_a2|output\(0),
	datac => \datapath_risc|mux_d3|output\(0),
	datad => \datapath_risc|mux_a2|output\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux31~0\,
	regout => \datapath_risc|RF|registers[6][0]~regout\);

-- Location: LC_X7_Y8_N3
\datapath_risc|RF|registers[7][0]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux15~1\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & ((\datapath_risc|RF|Mux15~0\ & ((P1_registers[7][0]))) # (!\datapath_risc|RF|Mux15~0\ & (\datapath_risc|RF|registers[5][0]~regout\)))) # 
-- (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & (((\datapath_risc|RF|Mux15~0\))))
-- \datapath_risc|RF|registers[7][0]~regout\ = DFFEAS(\datapath_risc|RF|Mux15~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~7_combout\, \datapath_risc|mux_d3|output\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	datab => \datapath_risc|RF|registers[5][0]~regout\,
	datac => \datapath_risc|mux_d3|output\(0),
	datad => \datapath_risc|RF|Mux15~0\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux15~1\,
	regout => \datapath_risc|RF|registers[7][0]~regout\);

-- Location: LC_X4_Y9_N0
\datapath_risc|RAM|memory~149\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux15~4\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & (((\datapath_risc|RF|Mux15~1\)))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & (((\datapath_risc|RF|Mux15~3\))))
-- \datapath_risc|RAM|memory~149_regout\ = DFFEAS(\datapath_risc|RF|Mux15~4\, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~442_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(11),
	datac => \datapath_risc|RF|Mux15~3\,
	datad => \datapath_risc|RF|Mux15~1\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux15~4\,
	regout => \datapath_risc|RAM|memory~149_regout\);

-- Location: LC_X12_Y6_N9
\datapath_risc|RAM|memory~197\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~197_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~444_combout\, \datapath_risc|RF|Mux15~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux15~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~197_regout\);

-- Location: LC_X10_Y6_N3
\datapath_risc|RAM|memory~165\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~277\ = (\datapath_risc|mux_mem_a|output[1]~0\ & (((\datapath_risc|mux_mem_a|output[0]~1\)))) # (!\datapath_risc|mux_mem_a|output[1]~0\ & ((\datapath_risc|mux_mem_a|output[0]~1\ & ((M1L161Q))) # 
-- (!\datapath_risc|mux_mem_a|output[0]~1\ & (\datapath_risc|RAM|memory~149_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~149_regout\,
	datab => \datapath_risc|mux_mem_a|output[1]~0\,
	datac => \datapath_risc|RF|Mux15~4\,
	datad => \datapath_risc|mux_mem_a|output[0]~1\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~277\,
	regout => \datapath_risc|RAM|memory~165_regout\);

-- Location: LC_X10_Y6_N8
\datapath_risc|RAM|memory~181\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~278\ = (\datapath_risc|mux_mem_a|output[1]~0\ & ((\datapath_risc|RAM|memory~277\ & (\datapath_risc|RAM|memory~197_regout\)) # (!\datapath_risc|RAM|memory~277\ & ((M1L177Q))))) # (!\datapath_risc|mux_mem_a|output[1]~0\ & 
-- (((\datapath_risc|RAM|memory~277\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~197_regout\,
	datab => \datapath_risc|mux_mem_a|output[1]~0\,
	datac => \datapath_risc|RF|Mux15~4\,
	datad => \datapath_risc|RAM|memory~277\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~278\,
	regout => \datapath_risc|RAM|memory~181_regout\);

-- Location: LC_X13_Y9_N1
\datapath_risc|RAM|memory~261\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~261_regout\ = DFFEAS((((\datapath_risc|RF|Mux15~4\))), GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~468_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \datapath_risc|RF|Mux15~4\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~261_regout\);

-- Location: LC_X14_Y9_N5
\datapath_risc|RAM|memory~213\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~213_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~466_combout\, \datapath_risc|RF|Mux15~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux15~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~213_regout\);

-- Location: LC_X14_Y8_N8
\datapath_risc|RAM|memory~245\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~284\ = (\datapath_risc|mux_mem_a|output[1]~0\ & (((M1L241Q) # (\datapath_risc|mux_mem_a|output[0]~1\)))) # (!\datapath_risc|mux_mem_a|output[1]~0\ & (\datapath_risc|RAM|memory~213_regout\ & 
-- ((!\datapath_risc|mux_mem_a|output[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~213_regout\,
	datab => \datapath_risc|mux_mem_a|output[1]~0\,
	datac => \datapath_risc|RF|Mux15~4\,
	datad => \datapath_risc|mux_mem_a|output[0]~1\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~284\,
	regout => \datapath_risc|RAM|memory~245_regout\);

-- Location: LC_X14_Y8_N9
\datapath_risc|RAM|memory~229\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~285\ = (\datapath_risc|mux_mem_a|output[0]~1\ & ((\datapath_risc|RAM|memory~284\ & (\datapath_risc|RAM|memory~261_regout\)) # (!\datapath_risc|RAM|memory~284\ & ((M1L225Q))))) # (!\datapath_risc|mux_mem_a|output[0]~1\ & 
-- (((\datapath_risc|RAM|memory~284\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~261_regout\,
	datab => \datapath_risc|mux_mem_a|output[0]~1\,
	datac => \datapath_risc|RF|Mux15~4\,
	datad => \datapath_risc|RAM|memory~284\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~285\,
	regout => \datapath_risc|RAM|memory~229_regout\);

-- Location: LC_X14_Y9_N6
\datapath_risc|RAM|memory~69\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~69_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~460_combout\, \datapath_risc|RF|Mux15~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux15~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~69_regout\);

-- Location: LC_X12_Y6_N2
\datapath_risc|RAM|memory~21\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~21_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~458_combout\, \datapath_risc|RF|Mux15~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux15~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~21_regout\);

-- Location: LC_X9_Y10_N5
\datapath_risc|RAM|memory~37\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~281\ = (\datapath_risc|mux_mem_a|output[1]~0\ & (((\datapath_risc|mux_mem_a|output[0]~1\)))) # (!\datapath_risc|mux_mem_a|output[1]~0\ & ((\datapath_risc|mux_mem_a|output[0]~1\ & ((M1L33Q))) # 
-- (!\datapath_risc|mux_mem_a|output[0]~1\ & (\datapath_risc|RAM|memory~21_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~21_regout\,
	datab => \datapath_risc|mux_mem_a|output[1]~0\,
	datac => \datapath_risc|RF|Mux15~4\,
	datad => \datapath_risc|mux_mem_a|output[0]~1\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~281\,
	regout => \datapath_risc|RAM|memory~37_regout\);

-- Location: LC_X9_Y10_N6
\datapath_risc|RAM|memory~53\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~282\ = (\datapath_risc|mux_mem_a|output[1]~0\ & ((\datapath_risc|RAM|memory~281\ & (\datapath_risc|RAM|memory~69_regout\)) # (!\datapath_risc|RAM|memory~281\ & ((M1L49Q))))) # (!\datapath_risc|mux_mem_a|output[1]~0\ & 
-- (((\datapath_risc|RAM|memory~281\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~69_regout\,
	datab => \datapath_risc|mux_mem_a|output[1]~0\,
	datac => \datapath_risc|RF|Mux15~4\,
	datad => \datapath_risc|RAM|memory~281\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~282\,
	regout => \datapath_risc|RAM|memory~53_regout\);

-- Location: LC_X9_Y5_N8
\datapath_risc|RAM|memory~133\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~133_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~452_combout\, \datapath_risc|RF|Mux15~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux15~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~133_regout\);

-- Location: LC_X4_Y9_N5
\datapath_risc|RAM|memory~85\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~85_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~450_combout\, \datapath_risc|RF|Mux15~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux15~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~85_regout\);

-- Location: LC_X9_Y8_N3
\datapath_risc|RAM|memory~117\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~279\ = (\datapath_risc|mux_mem_a|output[1]~0\ & ((\datapath_risc|mux_mem_a|output[0]~1\) # ((M1L113Q)))) # (!\datapath_risc|mux_mem_a|output[1]~0\ & (!\datapath_risc|mux_mem_a|output[0]~1\ & 
-- ((\datapath_risc|RAM|memory~85_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[1]~0\,
	datab => \datapath_risc|mux_mem_a|output[0]~1\,
	datac => \datapath_risc|RF|Mux15~4\,
	datad => \datapath_risc|RAM|memory~85_regout\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~279\,
	regout => \datapath_risc|RAM|memory~117_regout\);

-- Location: LC_X9_Y6_N8
\datapath_risc|RAM|memory~101\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~280\ = (\datapath_risc|mux_mem_a|output[0]~1\ & ((\datapath_risc|RAM|memory~279\ & (\datapath_risc|RAM|memory~133_regout\)) # (!\datapath_risc|RAM|memory~279\ & ((M1L97Q))))) # (!\datapath_risc|mux_mem_a|output[0]~1\ & 
-- (((\datapath_risc|RAM|memory~279\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[0]~1\,
	datab => \datapath_risc|RAM|memory~133_regout\,
	datac => \datapath_risc|RF|Mux15~4\,
	datad => \datapath_risc|RAM|memory~279\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~280\,
	regout => \datapath_risc|RAM|memory~101_regout\);

-- Location: LC_X9_Y10_N0
\datapath_risc|RAM|memory~283\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~283_combout\ = (\datapath_risc|mux_mem_a|output[2]~3\ & ((\datapath_risc|mux_mem_a|output[3]~2\) # ((\datapath_risc|RAM|memory~280\)))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & (!\datapath_risc|mux_mem_a|output[3]~2\ & 
-- (\datapath_risc|RAM|memory~282\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_mem_a|output[2]~3\,
	datab => \datapath_risc|mux_mem_a|output[3]~2\,
	datac => \datapath_risc|RAM|memory~282\,
	datad => \datapath_risc|RAM|memory~280\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~283_combout\);

-- Location: LC_X9_Y10_N1
\datapath_risc|RAM|memory~286\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~286_combout\ = (\datapath_risc|mux_mem_a|output[3]~2\ & ((\datapath_risc|RAM|memory~283_combout\ & ((\datapath_risc|RAM|memory~285\))) # (!\datapath_risc|RAM|memory~283_combout\ & (\datapath_risc|RAM|memory~278\)))) # 
-- (!\datapath_risc|mux_mem_a|output[3]~2\ & (((\datapath_risc|RAM|memory~283_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_mem_a|output[3]~2\,
	datab => \datapath_risc|RAM|memory~278\,
	datac => \datapath_risc|RAM|memory~285\,
	datad => \datapath_risc|RAM|memory~283_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~286_combout\);

-- Location: LC_X8_Y10_N1
\datapath_risc|Inst_reg_fetch|next_instruction|dout[0]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|mem_out[0]~0\ = ((\controlpath_risc|rd_mem~combout\ & ((\datapath_risc|RAM|memory~286_combout\))))
-- \datapath_risc|Inst_reg_fetch|next_instruction|dout\(0) = DFFEAS(\datapath_risc|RAM|mem_out[0]~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \controlpath_risc|en_irf~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \controlpath_risc|rd_mem~combout\,
	datad => \datapath_risc|RAM|memory~286_combout\,
	aclr => \reset~combout\,
	ena => \controlpath_risc|en_irf~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|mem_out[0]~0\,
	regout => \datapath_risc|Inst_reg_fetch|next_instruction|dout\(0));

-- Location: LC_X7_Y10_N2
\datapath_risc|mux_op2|output[0]~0\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op2|output[0]~0_combout\ = (\controlpath_risc|m_op2_0~combout\ & (\datapath_risc|RF|Mux31~4\ & (!\controlpath_risc|m_op2_1~combout\))) # (!\controlpath_risc|m_op2_0~combout\ & (((\controlpath_risc|m_op2_1~combout\ & 
-- \datapath_risc|RF|Mux15~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|RF|Mux31~4\,
	datab => \controlpath_risc|m_op2_0~combout\,
	datac => \controlpath_risc|m_op2_1~combout\,
	datad => \datapath_risc|RF|Mux15~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op2|output[0]~0_combout\);

-- Location: LC_X7_Y10_N3
\datapath_risc|Inst_reg_exe|next_instruction1|dout[0]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op2|output\(0) = (\datapath_risc|mux_op2|output[0]~0_combout\) # ((\controlpath_risc|m_op2_1~combout\ & (\controlpath_risc|m_op2_0~combout\ & N1_dout[0])) # (!\controlpath_risc|m_op2_1~combout\ & (!\controlpath_risc|m_op2_0~combout\)))
-- \datapath_risc|Inst_reg_exe|next_instruction1|dout\(0) = DFFEAS(\datapath_risc|mux_op2|output\(0), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \controlpath_risc|en_ir~combout\, \datapath_risc|Inst_reg_fetch|next_instruction|dout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff91",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \controlpath_risc|m_op2_1~combout\,
	datab => \controlpath_risc|m_op2_0~combout\,
	datac => \datapath_risc|Inst_reg_fetch|next_instruction|dout\(0),
	datad => \datapath_risc|mux_op2|output[0]~0_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \controlpath_risc|en_ir~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op2|output\(0),
	regout => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(0));

-- Location: LC_X6_Y9_N5
\datapath_risc|alu_unit|output[0]~0\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|alu_unit|output[0]~0_combout\ = (\controlpath_risc|op_sel~combout\ & (((!\datapath_risc|mux_op2|output\(0))) # (!\datapath_risc|mux_op1|output\(0)))) # (!\controlpath_risc|op_sel~combout\ & (\datapath_risc|mux_op1|output\(0) $ 
-- (\datapath_risc|mux_op2|output\(0) $ (\datapath_risc|alu_unit|carry~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6b3e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|op_sel~combout\,
	datab => \datapath_risc|mux_op1|output\(0),
	datac => \datapath_risc|mux_op2|output\(0),
	datad => \datapath_risc|alu_unit|carry~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|alu_unit|output[0]~0_combout\);

-- Location: LC_X8_Y10_N4
\datapath_risc|mux_d3|output[0]~1\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output[0]~1_combout\ = (\controlpath_risc|m_d3_1~combout\ & ((\controlpath_risc|m_d3_0~combout\ & ((\datapath_risc|RAM|mem_out[0]~0\))) # (!\controlpath_risc|m_d3_0~combout\ & 
-- (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_d3_0~combout\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(0),
	datac => \datapath_risc|RAM|mem_out[0]~0\,
	datad => \controlpath_risc|m_d3_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output[0]~1_combout\);

-- Location: LC_X8_Y10_N5
\datapath_risc|RF|registers[0][0]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output\(0) = (\datapath_risc|mux_d3|output~0_combout\) # ((\datapath_risc|mux_d3|output[0]~1_combout\) # ((!\datapath_risc|mux_d3|output~2_combout\ & \datapath_risc|alu_unit|output[0]~0_combout\)))
-- \datapath_risc|RF|registers[0][0]~regout\ = DFFEAS(\datapath_risc|mux_d3|output\(0), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffba",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_d3|output~0_combout\,
	datab => \datapath_risc|mux_d3|output~2_combout\,
	datac => \datapath_risc|alu_unit|output[0]~0_combout\,
	datad => \datapath_risc|mux_d3|output[0]~1_combout\,
	aclr => \reset~combout\,
	ena => \datapath_risc|RF|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output\(0),
	regout => \datapath_risc|RF|registers[0][0]~regout\);

-- Location: LC_X7_Y8_N2
\datapath_risc|RF|registers[5][0]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux31~1\ = (\datapath_risc|mux_a2|output\(0) & ((\datapath_risc|RF|Mux31~0\ & (\datapath_risc|RF|registers[7][0]~regout\)) # (!\datapath_risc|RF|Mux31~0\ & ((P1_registers[5][0]))))) # (!\datapath_risc|mux_a2|output\(0) & 
-- (((\datapath_risc|RF|Mux31~0\))))
-- \datapath_risc|RF|registers[5][0]~regout\ = DFFEAS(\datapath_risc|RF|Mux31~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~5_combout\, \datapath_risc|mux_d3|output\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[7][0]~regout\,
	datab => \datapath_risc|mux_a2|output\(0),
	datac => \datapath_risc|mux_d3|output\(0),
	datad => \datapath_risc|RF|Mux31~0\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux31~1\,
	regout => \datapath_risc|RF|registers[5][0]~regout\);

-- Location: LC_X6_Y8_N4
\datapath_risc|mux_d3|output~29\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output~29_combout\ = ((!\controlpath_risc|m_d3_1~combout\ & (\controlpath_risc|m_d3_0~combout\ & \datapath_risc|RF|Mux17~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \controlpath_risc|m_d3_1~combout\,
	datac => \controlpath_risc|m_d3_0~combout\,
	datad => \datapath_risc|RF|Mux17~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output~29_combout\);

-- Location: LC_X10_Y7_N3
\datapath_risc|Inst_reg_fetch|next_instruction|dout[14]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|mem_out[14]~14\ = (((\controlpath_risc|rd_mem~combout\ & \datapath_risc|RAM|memory~426_combout\)))
-- \datapath_risc|Inst_reg_fetch|next_instruction|dout\(14) = DFFEAS(\datapath_risc|RAM|mem_out[14]~14\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \controlpath_risc|en_irf~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \controlpath_risc|rd_mem~combout\,
	datad => \datapath_risc|RAM|memory~426_combout\,
	aclr => \reset~combout\,
	ena => \controlpath_risc|en_irf~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|mem_out[14]~14\,
	regout => \datapath_risc|Inst_reg_fetch|next_instruction|dout\(14));

-- Location: LC_X10_Y7_N1
\datapath_risc|mux_d3|output[14]~30\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output[14]~30_combout\ = (\controlpath_risc|m_d3_1~combout\ & ((\controlpath_risc|m_d3_0~combout\ & (\datapath_risc|RAM|mem_out[14]~14\)) # (!\controlpath_risc|m_d3_0~combout\ & 
-- ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|RAM|mem_out[14]~14\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(8),
	datac => \controlpath_risc|m_d3_1~combout\,
	datad => \controlpath_risc|m_d3_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output[14]~30_combout\);

-- Location: LC_X10_Y7_N0
\datapath_risc|RF|registers[0][14]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output\(14) = (\datapath_risc|mux_d3|output~29_combout\) # ((\datapath_risc|mux_d3|output[14]~30_combout\) # ((!\datapath_risc|mux_d3|output~2_combout\ & \datapath_risc|alu_unit|output[14]~14_combout\)))
-- \datapath_risc|RF|registers[0][14]~regout\ = DFFEAS(\datapath_risc|mux_d3|output\(14), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffba",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_d3|output~29_combout\,
	datab => \datapath_risc|mux_d3|output~2_combout\,
	datac => \datapath_risc|alu_unit|output[14]~14_combout\,
	datad => \datapath_risc|mux_d3|output[14]~30_combout\,
	aclr => \reset~combout\,
	ena => \datapath_risc|RF|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output\(14),
	regout => \datapath_risc|RF|registers[0][14]~regout\);

-- Location: LC_X6_Y7_N8
\datapath_risc|RF|registers[1][14]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux17~2\ = (\datapath_risc|mux_a2|output\(1) & (((\datapath_risc|mux_a2|output\(0))))) # (!\datapath_risc|mux_a2|output\(1) & ((\datapath_risc|mux_a2|output\(0) & ((P1_registers[1][14]))) # (!\datapath_risc|mux_a2|output\(0) & 
-- (\datapath_risc|RF|registers[0][14]~regout\))))
-- \datapath_risc|RF|registers[1][14]~regout\ = DFFEAS(\datapath_risc|RF|Mux17~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~1_combout\, \datapath_risc|mux_d3|output\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[0][14]~regout\,
	datab => \datapath_risc|mux_a2|output\(1),
	datac => \datapath_risc|mux_d3|output\(14),
	datad => \datapath_risc|mux_a2|output\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux17~2\,
	regout => \datapath_risc|RF|registers[1][14]~regout\);

-- Location: LC_X5_Y9_N2
\datapath_risc|RF|Mux1~2\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux1~2_combout\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & (((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9))))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & 
-- ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & (\datapath_risc|RF|registers[1][14]~regout\)) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & ((\datapath_risc|RF|registers[0][14]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e3e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|RF|registers[1][14]~regout\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	datac => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	datad => \datapath_risc|RF|registers[0][14]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux1~2_combout\);

-- Location: LC_X5_Y9_N9
\datapath_risc|RF|registers[3][14]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux1~3\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & ((\datapath_risc|RF|Mux1~2_combout\ & ((P1_registers[3][14]))) # (!\datapath_risc|RF|Mux1~2_combout\ & (\datapath_risc|RF|registers[2][14]~regout\)))) # 
-- (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & (((\datapath_risc|RF|Mux1~2_combout\))))
-- \datapath_risc|RF|registers[3][14]~regout\ = DFFEAS(\datapath_risc|RF|Mux1~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~3_combout\, \datapath_risc|mux_d3|output\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[2][14]~regout\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	datac => \datapath_risc|mux_d3|output\(14),
	datad => \datapath_risc|RF|Mux1~2_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux1~3\,
	regout => \datapath_risc|RF|registers[3][14]~regout\);

-- Location: LC_X5_Y9_N3
\datapath_risc|RF|registers[2][14]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux17~3\ = (\datapath_risc|mux_a2|output\(1) & ((\datapath_risc|RF|Mux17~2\ & (\datapath_risc|RF|registers[3][14]~regout\)) # (!\datapath_risc|RF|Mux17~2\ & ((P1_registers[2][14]))))) # (!\datapath_risc|mux_a2|output\(1) & 
-- (((\datapath_risc|RF|Mux17~2\))))
-- \datapath_risc|RF|registers[2][14]~regout\ = DFFEAS(\datapath_risc|RF|Mux17~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~2_combout\, \datapath_risc|mux_d3|output\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_a2|output\(1),
	datab => \datapath_risc|RF|registers[3][14]~regout\,
	datac => \datapath_risc|mux_d3|output\(14),
	datad => \datapath_risc|RF|Mux17~2\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux17~3\,
	regout => \datapath_risc|RF|registers[2][14]~regout\);

-- Location: LC_X5_Y5_N6
\datapath_risc|RF|registers[6][14]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux17~0\ = (\datapath_risc|mux_a2|output\(1) & (((P1_registers[6][14]) # (\datapath_risc|mux_a2|output\(0))))) # (!\datapath_risc|mux_a2|output\(1) & (\datapath_risc|RF|registers[4][14]~regout\ & ((!\datapath_risc|mux_a2|output\(0)))))
-- \datapath_risc|RF|registers[6][14]~regout\ = DFFEAS(\datapath_risc|RF|Mux17~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~6_combout\, \datapath_risc|mux_d3|output\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[4][14]~regout\,
	datab => \datapath_risc|mux_a2|output\(1),
	datac => \datapath_risc|mux_d3|output\(14),
	datad => \datapath_risc|mux_a2|output\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux17~0\,
	regout => \datapath_risc|RF|registers[6][14]~regout\);

-- Location: LC_X5_Y5_N7
\datapath_risc|RF|registers[5][14]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux17~1\ = (\datapath_risc|mux_a2|output\(0) & ((\datapath_risc|RF|Mux17~0\ & (\datapath_risc|RF|registers[7][14]~regout\)) # (!\datapath_risc|RF|Mux17~0\ & ((P1_registers[5][14]))))) # (!\datapath_risc|mux_a2|output\(0) & 
-- (((\datapath_risc|RF|Mux17~0\))))
-- \datapath_risc|RF|registers[5][14]~regout\ = DFFEAS(\datapath_risc|RF|Mux17~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~5_combout\, \datapath_risc|mux_d3|output\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[7][14]~regout\,
	datab => \datapath_risc|mux_a2|output\(0),
	datac => \datapath_risc|mux_d3|output\(14),
	datad => \datapath_risc|RF|Mux17~0\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux17~1\,
	regout => \datapath_risc|RF|registers[5][14]~regout\);

-- Location: LC_X5_Y7_N4
\datapath_risc|RF|registers[7][14]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux1~1\ = (\datapath_risc|RF|Mux1~0\ & (((P1_registers[7][14])) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9)))) # (!\datapath_risc|RF|Mux1~0\ & (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & 
-- ((\datapath_risc|RF|registers[5][14]~regout\))))
-- \datapath_risc|RF|registers[7][14]~regout\ = DFFEAS(\datapath_risc|RF|Mux1~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~7_combout\, \datapath_risc|mux_d3|output\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6a2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|Mux1~0\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	datac => \datapath_risc|mux_d3|output\(14),
	datad => \datapath_risc|RF|registers[5][14]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux1~1\,
	regout => \datapath_risc|RF|registers[7][14]~regout\);

-- Location: LC_X4_Y9_N4
\datapath_risc|RAM|memory~99\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux1~4\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & (((\datapath_risc|RF|Mux1~1\)))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & (\datapath_risc|RF|Mux1~3\))
-- \datapath_risc|RAM|memory~99_regout\ = DFFEAS(\datapath_risc|RF|Mux1~4\, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~450_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4e4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(11),
	datab => \datapath_risc|RF|Mux1~3\,
	datac => \datapath_risc|RF|Mux1~1\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux1~4\,
	regout => \datapath_risc|RAM|memory~99_regout\);

-- Location: LC_X5_Y9_N5
\datapath_risc|mux_op2|output~27\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op2|output~27_combout\ = (\controlpath_risc|m_op2_0~combout\ & (((\datapath_risc|RF|Mux17~4_combout\ & !\controlpath_risc|m_op2_1~combout\)))) # (!\controlpath_risc|m_op2_0~combout\ & (\datapath_risc|RF|Mux1~4\ & 
-- ((\controlpath_risc|m_op2_1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "44a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_op2_0~combout\,
	datab => \datapath_risc|RF|Mux1~4\,
	datac => \datapath_risc|RF|Mux17~4_combout\,
	datad => \controlpath_risc|m_op2_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op2|output~27_combout\);

-- Location: LC_X5_Y9_N4
\datapath_risc|mux_op2|output~28\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op2|output~28_combout\ = (\datapath_risc|mux_op2|output~27_combout\) # ((\controlpath_risc|m_op2_0~combout\ & (\controlpath_risc|m_op2_1~combout\ & \datapath_risc|Inst_reg_exe|next_instruction1|dout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_op2_0~combout\,
	datab => \controlpath_risc|m_op2_1~combout\,
	datac => \datapath_risc|mux_op2|output~27_combout\,
	datad => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op2|output~28_combout\);

-- Location: LC_X6_Y5_N1
\datapath_risc|mux_d3|output~27\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output~27_combout\ = (!\controlpath_risc|m_d3_1~combout\ & (((\datapath_risc|RF|Mux18~4_combout\ & \controlpath_risc|m_d3_0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_d3_1~combout\,
	datac => \datapath_risc|RF|Mux18~4_combout\,
	datad => \controlpath_risc|m_d3_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output~27_combout\);

-- Location: LC_X7_Y7_N2
\datapath_risc|mux_op1|output[12]~18\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op1|output[12]~18_combout\ = (\controlpath_risc|m_op1_1~combout\ & (\controlpath_risc|m_op1_0~combout\ & (\datapath_risc|RF|Mux20~4_combout\))) # (!\controlpath_risc|m_op1_1~combout\ & (!\controlpath_risc|m_op1_0~combout\ & 
-- ((\datapath_risc|RF|Mux19~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9180",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_op1_1~combout\,
	datab => \controlpath_risc|m_op1_0~combout\,
	datac => \datapath_risc|RF|Mux20~4_combout\,
	datad => \datapath_risc|RF|Mux19~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op1|output[12]~18_combout\);

-- Location: LC_X7_Y7_N8
\datapath_risc|mux_op1|output[12]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op1|output\(12) = (((\datapath_risc|mux_op1|output[12]~18_combout\))) # (!\datapath_risc|mux_op1|output[8]~14\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff55",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_op1|output[8]~14\,
	datad => \datapath_risc|mux_op1|output[12]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op1|output\(12));

-- Location: LC_X7_Y5_N7
\datapath_risc|RF|registers[4][12]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux3~0\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & 
-- ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & ((\datapath_risc|RF|registers[6][12]~regout\))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & (P1_registers[4][12]))))
-- \datapath_risc|RF|registers[4][12]~regout\ = DFFEAS(\datapath_risc|RF|Mux3~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~4_combout\, \datapath_risc|mux_d3|output\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	datac => \datapath_risc|mux_d3|output\(12),
	datad => \datapath_risc|RF|registers[6][12]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux3~0\,
	regout => \datapath_risc|RF|registers[4][12]~regout\);

-- Location: LC_X7_Y7_N9
\datapath_risc|RF|registers[6][12]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux19~0\ = (\datapath_risc|mux_a2|output\(0) & (\datapath_risc|mux_a2|output\(1))) # (!\datapath_risc|mux_a2|output\(0) & ((\datapath_risc|mux_a2|output\(1) & (P1_registers[6][12])) # (!\datapath_risc|mux_a2|output\(1) & 
-- ((\datapath_risc|RF|registers[4][12]~regout\)))))
-- \datapath_risc|RF|registers[6][12]~regout\ = DFFEAS(\datapath_risc|RF|Mux19~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~6_combout\, \datapath_risc|mux_d3|output\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_a2|output\(0),
	datab => \datapath_risc|mux_a2|output\(1),
	datac => \datapath_risc|mux_d3|output\(12),
	datad => \datapath_risc|RF|registers[4][12]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux19~0\,
	regout => \datapath_risc|RF|registers[6][12]~regout\);

-- Location: LC_X7_Y5_N4
\datapath_risc|RF|registers[7][12]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux3~1\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & ((\datapath_risc|RF|Mux3~0\ & (P1_registers[7][12])) # (!\datapath_risc|RF|Mux3~0\ & ((\datapath_risc|RF|registers[5][12]~regout\))))) # 
-- (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & (\datapath_risc|RF|Mux3~0\))
-- \datapath_risc|RF|registers[7][12]~regout\ = DFFEAS(\datapath_risc|RF|Mux3~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~7_combout\, \datapath_risc|mux_d3|output\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	datab => \datapath_risc|RF|Mux3~0\,
	datac => \datapath_risc|mux_d3|output\(12),
	datad => \datapath_risc|RF|registers[5][12]~regout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux3~1\,
	regout => \datapath_risc|RF|registers[7][12]~regout\);

-- Location: LC_X3_Y7_N4
\datapath_risc|RF|registers[5][12]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux19~1\ = (\datapath_risc|RF|Mux19~0\ & ((\datapath_risc|RF|registers[7][12]~regout\) # ((!\datapath_risc|mux_a2|output\(0))))) # (!\datapath_risc|RF|Mux19~0\ & (((P1_registers[5][12] & \datapath_risc|mux_a2|output\(0)))))
-- \datapath_risc|RF|registers[5][12]~regout\ = DFFEAS(\datapath_risc|RF|Mux19~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~5_combout\, \datapath_risc|mux_d3|output\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|Mux19~0\,
	datab => \datapath_risc|RF|registers[7][12]~regout\,
	datac => \datapath_risc|mux_d3|output\(12),
	datad => \datapath_risc|mux_a2|output\(0),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux19~1\,
	regout => \datapath_risc|RF|registers[5][12]~regout\);

-- Location: LC_X7_Y7_N4
\datapath_risc|mux_d3|output~25\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output~25_combout\ = (\datapath_risc|RF|Mux19~4_combout\ & (((!\controlpath_risc|m_d3_1~combout\ & \controlpath_risc|m_d3_0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|RF|Mux19~4_combout\,
	datac => \controlpath_risc|m_d3_1~combout\,
	datad => \controlpath_risc|m_d3_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output~25_combout\);

-- Location: LC_X13_Y10_N2
\datapath_risc|RAM|memory~273\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~273_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~468_combout\, \datapath_risc|RF|Mux3~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux3~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~273_regout\);

-- Location: LC_X14_Y9_N8
\datapath_risc|RAM|memory~225\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~225_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~466_combout\, \datapath_risc|RF|Mux3~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux3~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~225_regout\);

-- Location: LC_X13_Y8_N9
\datapath_risc|RAM|memory~257\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~404\ = (\datapath_risc|mux_mem_a|output[1]~0\ & (((M1L253Q) # (\datapath_risc|mux_mem_a|output[0]~1\)))) # (!\datapath_risc|mux_mem_a|output[1]~0\ & (\datapath_risc|RAM|memory~225_regout\ & 
-- ((!\datapath_risc|mux_mem_a|output[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[1]~0\,
	datab => \datapath_risc|RAM|memory~225_regout\,
	datac => \datapath_risc|RF|Mux3~4\,
	datad => \datapath_risc|mux_mem_a|output[0]~1\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~404\,
	regout => \datapath_risc|RAM|memory~257_regout\);

-- Location: LC_X13_Y8_N6
\datapath_risc|RAM|memory~241\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~405\ = (\datapath_risc|mux_mem_a|output[0]~1\ & ((\datapath_risc|RAM|memory~404\ & (\datapath_risc|RAM|memory~273_regout\)) # (!\datapath_risc|RAM|memory~404\ & ((M1L237Q))))) # (!\datapath_risc|mux_mem_a|output[0]~1\ & 
-- (((\datapath_risc|RAM|memory~404\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~273_regout\,
	datab => \datapath_risc|mux_mem_a|output[0]~1\,
	datac => \datapath_risc|RF|Mux3~4\,
	datad => \datapath_risc|RAM|memory~404\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~405\,
	regout => \datapath_risc|RAM|memory~241_regout\);

-- Location: LC_X13_Y5_N4
\datapath_risc|RAM|memory~209\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~209_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~444_combout\, \datapath_risc|RF|Mux3~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux3~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~209_regout\);

-- Location: LC_X10_Y4_N3
\datapath_risc|RAM|memory~161\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux3~4\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & (((\datapath_risc|RF|Mux3~1\)))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & (((\datapath_risc|RF|Mux3~3\))))
-- \datapath_risc|RAM|memory~161_regout\ = DFFEAS(\datapath_risc|RF|Mux3~4\, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~442_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(11),
	datac => \datapath_risc|RF|Mux3~1\,
	datad => \datapath_risc|RF|Mux3~3\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux3~4\,
	regout => \datapath_risc|RAM|memory~161_regout\);

-- Location: LC_X10_Y6_N1
\datapath_risc|RAM|memory~177\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~397\ = (\datapath_risc|mux_mem_a|output[0]~1\ & (((M1L173Q) # (\datapath_risc|mux_mem_a|output[1]~0\)))) # (!\datapath_risc|mux_mem_a|output[0]~1\ & (\datapath_risc|RAM|memory~161_regout\ & 
-- ((!\datapath_risc|mux_mem_a|output[1]~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~161_regout\,
	datab => \datapath_risc|mux_mem_a|output[0]~1\,
	datac => \datapath_risc|RF|Mux3~4\,
	datad => \datapath_risc|mux_mem_a|output[1]~0\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~397\,
	regout => \datapath_risc|RAM|memory~177_regout\);

-- Location: LC_X10_Y6_N0
\datapath_risc|RAM|memory~193\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~398\ = (\datapath_risc|mux_mem_a|output[1]~0\ & ((\datapath_risc|RAM|memory~397\ & (\datapath_risc|RAM|memory~209_regout\)) # (!\datapath_risc|RAM|memory~397\ & ((M1L189Q))))) # (!\datapath_risc|mux_mem_a|output[1]~0\ & 
-- (((\datapath_risc|RAM|memory~397\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[1]~0\,
	datab => \datapath_risc|RAM|memory~209_regout\,
	datac => \datapath_risc|RF|Mux3~4\,
	datad => \datapath_risc|RAM|memory~397\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~398\,
	regout => \datapath_risc|RAM|memory~193_regout\);

-- Location: LC_X9_Y5_N7
\datapath_risc|RAM|memory~145\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~145_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~452_combout\, \datapath_risc|RF|Mux3~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux3~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~145_regout\);

-- Location: LC_X6_Y10_N5
\datapath_risc|RAM|memory~97\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~97_regout\ = DFFEAS((((\datapath_risc|RF|Mux3~4\))), GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~450_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \datapath_risc|RF|Mux3~4\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~97_regout\);

-- Location: LC_X9_Y8_N6
\datapath_risc|RAM|memory~129\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~399\ = (\datapath_risc|mux_mem_a|output[0]~1\ & (((\datapath_risc|mux_mem_a|output[1]~0\)))) # (!\datapath_risc|mux_mem_a|output[0]~1\ & ((\datapath_risc|mux_mem_a|output[1]~0\ & ((M1L125Q))) # 
-- (!\datapath_risc|mux_mem_a|output[1]~0\ & (\datapath_risc|RAM|memory~97_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~97_regout\,
	datab => \datapath_risc|mux_mem_a|output[0]~1\,
	datac => \datapath_risc|RF|Mux3~4\,
	datad => \datapath_risc|mux_mem_a|output[1]~0\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~399\,
	regout => \datapath_risc|RAM|memory~129_regout\);

-- Location: LC_X9_Y5_N1
\datapath_risc|RAM|memory~113\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~400\ = (\datapath_risc|mux_mem_a|output[0]~1\ & ((\datapath_risc|RAM|memory~399\ & (\datapath_risc|RAM|memory~145_regout\)) # (!\datapath_risc|RAM|memory~399\ & ((M1L109Q))))) # (!\datapath_risc|mux_mem_a|output[0]~1\ & 
-- (((\datapath_risc|RAM|memory~399\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[0]~1\,
	datab => \datapath_risc|RAM|memory~145_regout\,
	datac => \datapath_risc|RF|Mux3~4\,
	datad => \datapath_risc|RAM|memory~399\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~400\,
	regout => \datapath_risc|RAM|memory~113_regout\);

-- Location: LC_X14_Y10_N5
\datapath_risc|RAM|memory~81\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~81_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~460_combout\, \datapath_risc|RF|Mux3~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux3~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~81_regout\);

-- Location: LC_X10_Y4_N5
\datapath_risc|RAM|memory~33\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~33_regout\ = DFFEAS((((\datapath_risc|RF|Mux3~4\))), GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~458_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \datapath_risc|RF|Mux3~4\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~33_regout\);

-- Location: LC_X8_Y5_N1
\datapath_risc|RAM|memory~49\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~401\ = (\datapath_risc|mux_mem_a|output[1]~0\ & (((\datapath_risc|mux_mem_a|output[0]~1\)))) # (!\datapath_risc|mux_mem_a|output[1]~0\ & ((\datapath_risc|mux_mem_a|output[0]~1\ & ((M1L45Q))) # 
-- (!\datapath_risc|mux_mem_a|output[0]~1\ & (\datapath_risc|RAM|memory~33_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~33_regout\,
	datab => \datapath_risc|mux_mem_a|output[1]~0\,
	datac => \datapath_risc|RF|Mux3~4\,
	datad => \datapath_risc|mux_mem_a|output[0]~1\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~401\,
	regout => \datapath_risc|RAM|memory~49_regout\);

-- Location: LC_X8_Y5_N2
\datapath_risc|RAM|memory~65\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~402\ = (\datapath_risc|mux_mem_a|output[1]~0\ & ((\datapath_risc|RAM|memory~401\ & (\datapath_risc|RAM|memory~81_regout\)) # (!\datapath_risc|RAM|memory~401\ & ((M1L61Q))))) # (!\datapath_risc|mux_mem_a|output[1]~0\ & 
-- (((\datapath_risc|RAM|memory~401\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~81_regout\,
	datab => \datapath_risc|mux_mem_a|output[1]~0\,
	datac => \datapath_risc|RF|Mux3~4\,
	datad => \datapath_risc|RAM|memory~401\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~402\,
	regout => \datapath_risc|RAM|memory~65_regout\);

-- Location: LC_X8_Y6_N1
\datapath_risc|RAM|memory~403\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~403_combout\ = (\datapath_risc|mux_mem_a|output[3]~2\ & (\datapath_risc|mux_mem_a|output[2]~3\)) # (!\datapath_risc|mux_mem_a|output[3]~2\ & ((\datapath_risc|mux_mem_a|output[2]~3\ & (\datapath_risc|RAM|memory~400\)) # 
-- (!\datapath_risc|mux_mem_a|output[2]~3\ & ((\datapath_risc|RAM|memory~402\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_mem_a|output[3]~2\,
	datab => \datapath_risc|mux_mem_a|output[2]~3\,
	datac => \datapath_risc|RAM|memory~400\,
	datad => \datapath_risc|RAM|memory~402\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~403_combout\);

-- Location: LC_X8_Y6_N2
\datapath_risc|RAM|memory~406\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~406_combout\ = (\datapath_risc|mux_mem_a|output[3]~2\ & ((\datapath_risc|RAM|memory~403_combout\ & (\datapath_risc|RAM|memory~405\)) # (!\datapath_risc|RAM|memory~403_combout\ & ((\datapath_risc|RAM|memory~398\))))) # 
-- (!\datapath_risc|mux_mem_a|output[3]~2\ & (((\datapath_risc|RAM|memory~403_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_mem_a|output[3]~2\,
	datab => \datapath_risc|RAM|memory~405\,
	datac => \datapath_risc|RAM|memory~398\,
	datad => \datapath_risc|RAM|memory~403_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~406_combout\);

-- Location: LC_X8_Y6_N5
\datapath_risc|Inst_reg_fetch|next_instruction|dout[12]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|mem_out[12]~12\ = (((\controlpath_risc|rd_mem~combout\ & \datapath_risc|RAM|memory~406_combout\)))
-- \datapath_risc|Inst_reg_fetch|next_instruction|dout\(12) = DFFEAS(\datapath_risc|RAM|mem_out[12]~12\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \controlpath_risc|en_irf~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \controlpath_risc|rd_mem~combout\,
	datad => \datapath_risc|RAM|memory~406_combout\,
	aclr => \reset~combout\,
	ena => \controlpath_risc|en_irf~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|mem_out[12]~12\,
	regout => \datapath_risc|Inst_reg_fetch|next_instruction|dout\(12));

-- Location: LC_X8_Y6_N4
\datapath_risc|mux_d3|output[12]~26\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output[12]~26_combout\ = (\controlpath_risc|m_d3_1~combout\ & ((\controlpath_risc|m_d3_0~combout\ & ((\datapath_risc|RAM|mem_out[12]~12\))) # (!\controlpath_risc|m_d3_0~combout\ & 
-- (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(8),
	datab => \controlpath_risc|m_d3_1~combout\,
	datac => \datapath_risc|RAM|mem_out[12]~12\,
	datad => \controlpath_risc|m_d3_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output[12]~26_combout\);

-- Location: LC_X7_Y7_N5
\datapath_risc|RF|registers[0][12]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output\(12) = (\datapath_risc|mux_d3|output~25_combout\) # ((\datapath_risc|mux_d3|output[12]~26_combout\) # ((\datapath_risc|alu_unit|output[12]~12_combout\ & !\datapath_risc|mux_d3|output~2_combout\)))
-- \datapath_risc|RF|registers[0][12]~regout\ = DFFEAS(\datapath_risc|mux_d3|output\(12), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|alu_unit|output[12]~12_combout\,
	datab => \datapath_risc|mux_d3|output~2_combout\,
	datac => \datapath_risc|mux_d3|output~25_combout\,
	datad => \datapath_risc|mux_d3|output[12]~26_combout\,
	aclr => \reset~combout\,
	ena => \datapath_risc|RF|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output\(12),
	regout => \datapath_risc|RF|registers[0][12]~regout\);

-- Location: LC_X3_Y6_N8
\datapath_risc|RF|registers[1][12]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux19~2\ = (\datapath_risc|mux_a2|output\(0) & (((P1_registers[1][12]) # (\datapath_risc|mux_a2|output\(1))))) # (!\datapath_risc|mux_a2|output\(0) & (\datapath_risc|RF|registers[0][12]~regout\ & ((!\datapath_risc|mux_a2|output\(1)))))
-- \datapath_risc|RF|registers[1][12]~regout\ = DFFEAS(\datapath_risc|RF|Mux19~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~1_combout\, \datapath_risc|mux_d3|output\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_a2|output\(0),
	datab => \datapath_risc|RF|registers[0][12]~regout\,
	datac => \datapath_risc|mux_d3|output\(12),
	datad => \datapath_risc|mux_a2|output\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux19~2\,
	regout => \datapath_risc|RF|registers[1][12]~regout\);

-- Location: LC_X3_Y6_N6
\datapath_risc|RF|Mux3~2\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux3~2_combout\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & ((\datapath_risc|RF|registers[1][12]~regout\) # ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10))))) # 
-- (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & (((\datapath_risc|RF|registers[0][12]~regout\ & !\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|RF|registers[1][12]~regout\,
	datab => \datapath_risc|RF|registers[0][12]~regout\,
	datac => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	datad => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux3~2_combout\);

-- Location: LC_X3_Y6_N7
\datapath_risc|RF|registers[3][12]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux3~3\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & ((\datapath_risc|RF|Mux3~2_combout\ & ((P1_registers[3][12]))) # (!\datapath_risc|RF|Mux3~2_combout\ & (\datapath_risc|RF|registers[2][12]~regout\)))) # 
-- (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & (((\datapath_risc|RF|Mux3~2_combout\))))
-- \datapath_risc|RF|registers[3][12]~regout\ = DFFEAS(\datapath_risc|RF|Mux3~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~3_combout\, \datapath_risc|mux_d3|output\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	datab => \datapath_risc|RF|registers[2][12]~regout\,
	datac => \datapath_risc|mux_d3|output\(12),
	datad => \datapath_risc|RF|Mux3~2_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux3~3\,
	regout => \datapath_risc|RF|registers[3][12]~regout\);

-- Location: LC_X3_Y7_N3
\datapath_risc|RF|registers[2][12]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux19~3\ = (\datapath_risc|mux_a2|output\(1) & ((\datapath_risc|RF|Mux19~2\ & (\datapath_risc|RF|registers[3][12]~regout\)) # (!\datapath_risc|RF|Mux19~2\ & ((P1_registers[2][12]))))) # (!\datapath_risc|mux_a2|output\(1) & 
-- (((\datapath_risc|RF|Mux19~2\))))
-- \datapath_risc|RF|registers[2][12]~regout\ = DFFEAS(\datapath_risc|RF|Mux19~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~2_combout\, \datapath_risc|mux_d3|output\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_a2|output\(1),
	datab => \datapath_risc|RF|registers[3][12]~regout\,
	datac => \datapath_risc|mux_d3|output\(12),
	datad => \datapath_risc|RF|Mux19~2\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux19~3\,
	regout => \datapath_risc|RF|registers[2][12]~regout\);

-- Location: LC_X7_Y4_N1
\datapath_risc|mux_op2|output~23\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op2|output~23_combout\ = (\controlpath_risc|m_op2_1~combout\ & (\datapath_risc|RF|Mux3~4\ & ((!\controlpath_risc|m_op2_0~combout\)))) # (!\controlpath_risc|m_op2_1~combout\ & (((\datapath_risc|RF|Mux19~4_combout\ & 
-- \controlpath_risc|m_op2_0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|RF|Mux3~4\,
	datab => \controlpath_risc|m_op2_1~combout\,
	datac => \datapath_risc|RF|Mux19~4_combout\,
	datad => \controlpath_risc|m_op2_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op2|output~23_combout\);

-- Location: LC_X7_Y4_N2
\datapath_risc|mux_op2|output~24\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op2|output~24_combout\ = (\datapath_risc|mux_op2|output~23_combout\) # ((\controlpath_risc|m_op2_0~combout\ & (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(5) & \controlpath_risc|m_op2_1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_op2_0~combout\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(5),
	datac => \controlpath_risc|m_op2_1~combout\,
	datad => \datapath_risc|mux_op2|output~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op2|output~24_combout\);

-- Location: LC_X7_Y7_N3
\datapath_risc|alu_unit|output[12]~12\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|alu_unit|output[12]~12_combout\ = (\controlpath_risc|op_sel~combout\ & (((!\datapath_risc|mux_op2|output~24_combout\)) # (!\datapath_risc|mux_op1|output\(12)))) # (!\controlpath_risc|op_sel~combout\ & (\datapath_risc|mux_op1|output\(12) $ 
-- (\datapath_risc|mux_op2|output~24_combout\ $ (\datapath_risc|alu_unit|carry~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7796",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_op1|output\(12),
	datab => \datapath_risc|mux_op2|output~24_combout\,
	datac => \datapath_risc|alu_unit|carry~combout\,
	datad => \controlpath_risc|op_sel~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|alu_unit|output[12]~12_combout\);

-- Location: LC_X3_Y7_N0
\datapath_risc|RF|Mux19~4\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux19~4_combout\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(8) & (((\datapath_risc|RF|Mux19~1\)))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(8) & ((\controlpath_risc|m_a2~combout\ & (\datapath_risc|RF|Mux19~1\)) 
-- # (!\controlpath_risc|m_a2~combout\ & ((\datapath_risc|RF|Mux19~3\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f1e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(8),
	datab => \controlpath_risc|m_a2~combout\,
	datac => \datapath_risc|RF|Mux19~1\,
	datad => \datapath_risc|RF|Mux19~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux19~4_combout\);

-- Location: LC_X6_Y7_N3
\datapath_risc|mux_op1|output[13]~19\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op1|output[13]~19_combout\ = (\controlpath_risc|m_op1_0~combout\ & (((\controlpath_risc|m_op1_1~combout\ & \datapath_risc|RF|Mux19~4_combout\)))) # (!\controlpath_risc|m_op1_0~combout\ & (\datapath_risc|RF|Mux18~4_combout\ & 
-- (!\controlpath_risc|m_op1_1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c202",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|RF|Mux18~4_combout\,
	datab => \controlpath_risc|m_op1_0~combout\,
	datac => \controlpath_risc|m_op1_1~combout\,
	datad => \datapath_risc|RF|Mux19~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op1|output[13]~19_combout\);

-- Location: LC_X6_Y7_N4
\datapath_risc|mux_op1|output[13]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op1|output\(13) = (((\datapath_risc|mux_op1|output[13]~19_combout\) # (!\datapath_risc|mux_op1|output[8]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \datapath_risc|mux_op1|output[8]~14\,
	datad => \datapath_risc|mux_op1|output[13]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op1|output\(13));

-- Location: LC_X8_Y4_N6
\datapath_risc|RF|registers[4][13]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux2~0\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & ((\datapath_risc|RF|registers[6][13]~regout\) # ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9))))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) 
-- & (((P1_registers[4][13] & !\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9)))))
-- \datapath_risc|RF|registers[4][13]~regout\ = DFFEAS(\datapath_risc|RF|Mux2~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~4_combout\, \datapath_risc|mux_d3|output\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[6][13]~regout\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	datac => \datapath_risc|mux_d3|output\(13),
	datad => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux2~0\,
	regout => \datapath_risc|RF|registers[4][13]~regout\);

-- Location: LC_X8_Y4_N5
\datapath_risc|RF|registers[6][13]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux18~0\ = (\datapath_risc|mux_a2|output\(0) & (((\datapath_risc|mux_a2|output\(1))))) # (!\datapath_risc|mux_a2|output\(0) & ((\datapath_risc|mux_a2|output\(1) & ((P1_registers[6][13]))) # (!\datapath_risc|mux_a2|output\(1) & 
-- (\datapath_risc|RF|registers[4][13]~regout\))))
-- \datapath_risc|RF|registers[6][13]~regout\ = DFFEAS(\datapath_risc|RF|Mux18~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~6_combout\, \datapath_risc|mux_d3|output\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[4][13]~regout\,
	datab => \datapath_risc|mux_a2|output\(0),
	datac => \datapath_risc|mux_d3|output\(13),
	datad => \datapath_risc|mux_a2|output\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux18~0\,
	regout => \datapath_risc|RF|registers[6][13]~regout\);

-- Location: LC_X7_Y5_N8
\datapath_risc|RF|registers[7][13]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux2~1\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & ((\datapath_risc|RF|Mux2~0\ & ((P1_registers[7][13]))) # (!\datapath_risc|RF|Mux2~0\ & (\datapath_risc|RF|registers[5][13]~regout\)))) # 
-- (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & (((\datapath_risc|RF|Mux2~0\))))
-- \datapath_risc|RF|registers[7][13]~regout\ = DFFEAS(\datapath_risc|RF|Mux2~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~7_combout\, \datapath_risc|mux_d3|output\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	datab => \datapath_risc|RF|registers[5][13]~regout\,
	datac => \datapath_risc|mux_d3|output\(13),
	datad => \datapath_risc|RF|Mux2~0\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux2~1\,
	regout => \datapath_risc|RF|registers[7][13]~regout\);

-- Location: LC_X7_Y4_N8
\datapath_risc|RF|registers[5][13]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux18~1\ = (\datapath_risc|mux_a2|output\(0) & ((\datapath_risc|RF|Mux18~0\ & (\datapath_risc|RF|registers[7][13]~regout\)) # (!\datapath_risc|RF|Mux18~0\ & ((P1_registers[5][13]))))) # (!\datapath_risc|mux_a2|output\(0) & 
-- (((\datapath_risc|RF|Mux18~0\))))
-- \datapath_risc|RF|registers[5][13]~regout\ = DFFEAS(\datapath_risc|RF|Mux18~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~5_combout\, \datapath_risc|mux_d3|output\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_a2|output\(0),
	datab => \datapath_risc|RF|registers[7][13]~regout\,
	datac => \datapath_risc|mux_d3|output\(13),
	datad => \datapath_risc|RF|Mux18~0\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux18~1\,
	regout => \datapath_risc|RF|registers[5][13]~regout\);

-- Location: LC_X11_Y5_N9
\datapath_risc|RAM|memory~258\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~258_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~464_combout\, \datapath_risc|RF|Mux2~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux2~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~258_regout\);

-- Location: LC_X6_Y4_N3
\datapath_risc|RAM|memory~66\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux2~4\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & (((\datapath_risc|RF|Mux2~1\)))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & (((\datapath_risc|RF|Mux2~3\))))
-- \datapath_risc|RAM|memory~66_regout\ = DFFEAS(\datapath_risc|RF|Mux2~4\, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~454_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(11),
	datac => \datapath_risc|RF|Mux2~1\,
	datad => \datapath_risc|RF|Mux2~3\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux2~4\,
	regout => \datapath_risc|RAM|memory~66_regout\);

-- Location: LC_X9_Y4_N7
\datapath_risc|RAM|memory~194\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~407\ = (\datapath_risc|mux_mem_a|output[2]~3\ & (((\datapath_risc|mux_mem_a|output[3]~2\)))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & ((\datapath_risc|mux_mem_a|output[3]~2\ & ((M1L190Q))) # 
-- (!\datapath_risc|mux_mem_a|output[3]~2\ & (\datapath_risc|RAM|memory~66_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[2]~3\,
	datab => \datapath_risc|RAM|memory~66_regout\,
	datac => \datapath_risc|RF|Mux2~4\,
	datad => \datapath_risc|mux_mem_a|output[3]~2\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~407\,
	regout => \datapath_risc|RAM|memory~194_regout\);

-- Location: LC_X8_Y6_N0
\datapath_risc|RAM|memory~130\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~408\ = (\datapath_risc|mux_mem_a|output[2]~3\ & ((\datapath_risc|RAM|memory~407\ & (\datapath_risc|RAM|memory~258_regout\)) # (!\datapath_risc|RAM|memory~407\ & ((M1L126Q))))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & 
-- (((\datapath_risc|RAM|memory~407\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~258_regout\,
	datab => \datapath_risc|mux_mem_a|output[2]~3\,
	datac => \datapath_risc|RF|Mux2~4\,
	datad => \datapath_risc|RAM|memory~407\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~408\,
	regout => \datapath_risc|RAM|memory~130_regout\);

-- Location: LC_X13_Y9_N3
\datapath_risc|RAM|memory~274\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~274_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~468_combout\, \datapath_risc|RF|Mux2~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux2~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~274_regout\);

-- Location: LC_X13_Y6_N8
\datapath_risc|RAM|memory~82\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~82_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~460_combout\, \datapath_risc|RF|Mux2~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux2~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~82_regout\);

-- Location: LC_X13_Y6_N1
\datapath_risc|RAM|memory~146\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~414\ = (\datapath_risc|mux_mem_a|output[2]~3\ & (((M1L142Q) # (\datapath_risc|mux_mem_a|output[3]~2\)))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & (\datapath_risc|RAM|memory~82_regout\ & 
-- ((!\datapath_risc|mux_mem_a|output[3]~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~82_regout\,
	datab => \datapath_risc|mux_mem_a|output[2]~3\,
	datac => \datapath_risc|RF|Mux2~4\,
	datad => \datapath_risc|mux_mem_a|output[3]~2\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~414\,
	regout => \datapath_risc|RAM|memory~146_regout\);

-- Location: LC_X12_Y6_N3
\datapath_risc|RAM|memory~210\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~415\ = (\datapath_risc|mux_mem_a|output[3]~2\ & ((\datapath_risc|RAM|memory~414\ & (\datapath_risc|RAM|memory~274_regout\)) # (!\datapath_risc|RAM|memory~414\ & ((M1L206Q))))) # (!\datapath_risc|mux_mem_a|output[3]~2\ & 
-- (((\datapath_risc|RAM|memory~414\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~274_regout\,
	datab => \datapath_risc|mux_mem_a|output[3]~2\,
	datac => \datapath_risc|RF|Mux2~4\,
	datad => \datapath_risc|RAM|memory~414\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~415\,
	regout => \datapath_risc|RAM|memory~210_regout\);

-- Location: LC_X12_Y5_N2
\datapath_risc|RAM|memory~242\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~242_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~462_combout\, \datapath_risc|RF|Mux2~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux2~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~242_regout\);

-- Location: LC_X11_Y10_N0
\datapath_risc|RAM|memory~50\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~50_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~456_combout\, \datapath_risc|RF|Mux2~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux2~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~50_regout\);

-- Location: LC_X11_Y6_N3
\datapath_risc|RAM|memory~114\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~409\ = (\datapath_risc|mux_mem_a|output[2]~3\ & (((M1L110Q) # (\datapath_risc|mux_mem_a|output[3]~2\)))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & (\datapath_risc|RAM|memory~50_regout\ & 
-- ((!\datapath_risc|mux_mem_a|output[3]~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~50_regout\,
	datab => \datapath_risc|mux_mem_a|output[2]~3\,
	datac => \datapath_risc|RF|Mux2~4\,
	datad => \datapath_risc|mux_mem_a|output[3]~2\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~409\,
	regout => \datapath_risc|RAM|memory~114_regout\);

-- Location: LC_X11_Y6_N4
\datapath_risc|RAM|memory~178\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~410\ = (\datapath_risc|mux_mem_a|output[3]~2\ & ((\datapath_risc|RAM|memory~409\ & (\datapath_risc|RAM|memory~242_regout\)) # (!\datapath_risc|RAM|memory~409\ & ((M1L174Q))))) # (!\datapath_risc|mux_mem_a|output[3]~2\ & 
-- (((\datapath_risc|RAM|memory~409\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[3]~2\,
	datab => \datapath_risc|RAM|memory~242_regout\,
	datac => \datapath_risc|RF|Mux2~4\,
	datad => \datapath_risc|RAM|memory~409\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~410\,
	regout => \datapath_risc|RAM|memory~178_regout\);

-- Location: LC_X11_Y4_N3
\datapath_risc|RAM|memory~226\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~226_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~466_combout\, \datapath_risc|RF|Mux2~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux2~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~226_regout\);

-- Location: LC_X12_Y6_N8
\datapath_risc|RAM|memory~34\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~34_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~458_combout\, \datapath_risc|RF|Mux2~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux2~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~34_regout\);

-- Location: LC_X11_Y8_N8
\datapath_risc|RAM|memory~162\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~411\ = (\datapath_risc|mux_mem_a|output[2]~3\ & (((\datapath_risc|mux_mem_a|output[3]~2\)))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & ((\datapath_risc|mux_mem_a|output[3]~2\ & ((M1L158Q))) # 
-- (!\datapath_risc|mux_mem_a|output[3]~2\ & (\datapath_risc|RAM|memory~34_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[2]~3\,
	datab => \datapath_risc|RAM|memory~34_regout\,
	datac => \datapath_risc|RF|Mux2~4\,
	datad => \datapath_risc|mux_mem_a|output[3]~2\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~411\,
	regout => \datapath_risc|RAM|memory~162_regout\);

-- Location: LC_X11_Y8_N0
\datapath_risc|RAM|memory~98\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~412\ = (\datapath_risc|mux_mem_a|output[2]~3\ & ((\datapath_risc|RAM|memory~411\ & (\datapath_risc|RAM|memory~226_regout\)) # (!\datapath_risc|RAM|memory~411\ & ((M1L94Q))))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & 
-- (((\datapath_risc|RAM|memory~411\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[2]~3\,
	datab => \datapath_risc|RAM|memory~226_regout\,
	datac => \datapath_risc|RF|Mux2~4\,
	datad => \datapath_risc|RAM|memory~411\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~412\,
	regout => \datapath_risc|RAM|memory~98_regout\);

-- Location: LC_X8_Y6_N3
\datapath_risc|RAM|memory~413\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~413_combout\ = (\datapath_risc|mux_mem_a|output[1]~0\ & (\datapath_risc|mux_mem_a|output[0]~1\)) # (!\datapath_risc|mux_mem_a|output[1]~0\ & ((\datapath_risc|mux_mem_a|output[0]~1\ & (\datapath_risc|RAM|memory~410\)) # 
-- (!\datapath_risc|mux_mem_a|output[0]~1\ & ((\datapath_risc|RAM|memory~412\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_mem_a|output[1]~0\,
	datab => \datapath_risc|mux_mem_a|output[0]~1\,
	datac => \datapath_risc|RAM|memory~410\,
	datad => \datapath_risc|RAM|memory~412\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~413_combout\);

-- Location: LC_X8_Y6_N7
\datapath_risc|RAM|memory~416\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~416_combout\ = (\datapath_risc|mux_mem_a|output[1]~0\ & ((\datapath_risc|RAM|memory~413_combout\ & ((\datapath_risc|RAM|memory~415\))) # (!\datapath_risc|RAM|memory~413_combout\ & (\datapath_risc|RAM|memory~408\)))) # 
-- (!\datapath_risc|mux_mem_a|output[1]~0\ & (((\datapath_risc|RAM|memory~413_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_mem_a|output[1]~0\,
	datab => \datapath_risc|RAM|memory~408\,
	datac => \datapath_risc|RAM|memory~415\,
	datad => \datapath_risc|RAM|memory~413_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~416_combout\);

-- Location: LC_X8_Y6_N8
\datapath_risc|Inst_reg_fetch|next_instruction|dout[13]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|mem_out[13]~13\ = (((\controlpath_risc|rd_mem~combout\ & \datapath_risc|RAM|memory~416_combout\)))
-- \datapath_risc|Inst_reg_fetch|next_instruction|dout\(13) = DFFEAS(\datapath_risc|RAM|mem_out[13]~13\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \controlpath_risc|en_irf~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \controlpath_risc|rd_mem~combout\,
	datad => \datapath_risc|RAM|memory~416_combout\,
	aclr => \reset~combout\,
	ena => \controlpath_risc|en_irf~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|mem_out[13]~13\,
	regout => \datapath_risc|Inst_reg_fetch|next_instruction|dout\(13));

-- Location: LC_X8_Y6_N9
\datapath_risc|mux_d3|output[13]~28\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output[13]~28_combout\ = (\controlpath_risc|m_d3_1~combout\ & ((\controlpath_risc|m_d3_0~combout\ & ((\datapath_risc|RAM|mem_out[13]~13\))) # (!\controlpath_risc|m_d3_0~combout\ & 
-- (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(8),
	datab => \controlpath_risc|m_d3_1~combout\,
	datac => \controlpath_risc|m_d3_0~combout\,
	datad => \datapath_risc|RAM|mem_out[13]~13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output[13]~28_combout\);

-- Location: LC_X7_Y4_N6
\datapath_risc|RF|registers[0][13]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output\(13) = (\datapath_risc|mux_d3|output~27_combout\) # ((\datapath_risc|mux_d3|output[13]~28_combout\) # ((!\datapath_risc|mux_d3|output~2_combout\ & \datapath_risc|alu_unit|output[13]~13_combout\)))
-- \datapath_risc|RF|registers[0][13]~regout\ = DFFEAS(\datapath_risc|mux_d3|output\(13), GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffba",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_d3|output~27_combout\,
	datab => \datapath_risc|mux_d3|output~2_combout\,
	datac => \datapath_risc|alu_unit|output[13]~13_combout\,
	datad => \datapath_risc|mux_d3|output[13]~28_combout\,
	aclr => \reset~combout\,
	ena => \datapath_risc|RF|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output\(13),
	regout => \datapath_risc|RF|registers[0][13]~regout\);

-- Location: LC_X4_Y4_N5
\datapath_risc|RF|registers[1][13]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux18~2\ = (\datapath_risc|mux_a2|output\(0) & (((P1_registers[1][13]) # (\datapath_risc|mux_a2|output\(1))))) # (!\datapath_risc|mux_a2|output\(0) & (\datapath_risc|RF|registers[0][13]~regout\ & ((!\datapath_risc|mux_a2|output\(1)))))
-- \datapath_risc|RF|registers[1][13]~regout\ = DFFEAS(\datapath_risc|RF|Mux18~2\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~1_combout\, \datapath_risc|mux_d3|output\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[0][13]~regout\,
	datab => \datapath_risc|mux_a2|output\(0),
	datac => \datapath_risc|mux_d3|output\(13),
	datad => \datapath_risc|mux_a2|output\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux18~2\,
	regout => \datapath_risc|RF|registers[1][13]~regout\);

-- Location: LC_X4_Y4_N3
\datapath_risc|RF|Mux2~2\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux2~2_combout\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & (((\datapath_risc|RF|registers[1][13]~regout\) # (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10))))) # 
-- (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & (\datapath_risc|RF|registers[0][13]~regout\ & ((!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|RF|registers[0][13]~regout\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	datac => \datapath_risc|RF|registers[1][13]~regout\,
	datad => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux2~2_combout\);

-- Location: LC_X6_Y4_N9
\datapath_risc|RF|registers[3][13]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux2~3\ = (\datapath_risc|RF|Mux2~2_combout\ & (((P1_registers[3][13]) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10))))) # (!\datapath_risc|RF|Mux2~2_combout\ & (\datapath_risc|RF|registers[2][13]~regout\ & 
-- ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10)))))
-- \datapath_risc|RF|registers[3][13]~regout\ = DFFEAS(\datapath_risc|RF|Mux2~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~3_combout\, \datapath_risc|mux_d3|output\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[2][13]~regout\,
	datab => \datapath_risc|RF|Mux2~2_combout\,
	datac => \datapath_risc|mux_d3|output\(13),
	datad => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux2~3\,
	regout => \datapath_risc|RF|registers[3][13]~regout\);

-- Location: LC_X6_Y4_N2
\datapath_risc|mux_op2|output~25\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op2|output~25_combout\ = (\controlpath_risc|m_op2_1~combout\ & (!\controlpath_risc|m_op2_0~combout\ & ((\datapath_risc|RF|Mux2~4\)))) # (!\controlpath_risc|m_op2_1~combout\ & (\controlpath_risc|m_op2_0~combout\ & 
-- (\datapath_risc|RF|Mux18~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6240",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_op2_1~combout\,
	datab => \controlpath_risc|m_op2_0~combout\,
	datac => \datapath_risc|RF|Mux18~4_combout\,
	datad => \datapath_risc|RF|Mux2~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op2|output~25_combout\);

-- Location: LC_X6_Y4_N0
\datapath_risc|mux_op2|output~26\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op2|output~26_combout\ = (\datapath_risc|mux_op2|output~25_combout\) # ((\controlpath_risc|m_op2_1~combout\ & (\controlpath_risc|m_op2_0~combout\ & \datapath_risc|Inst_reg_exe|next_instruction1|dout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_op2_1~combout\,
	datab => \controlpath_risc|m_op2_0~combout\,
	datac => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(5),
	datad => \datapath_risc|mux_op2|output~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op2|output~26_combout\);

-- Location: LC_X6_Y7_N5
\datapath_risc|alu_unit|output[13]~13\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|alu_unit|output[13]~13_combout\ = (\controlpath_risc|op_sel~combout\ & (((!\datapath_risc|mux_op2|output~26_combout\)) # (!\datapath_risc|mux_op1|output\(13)))) # (!\controlpath_risc|op_sel~combout\ & (\datapath_risc|mux_op1|output\(13) $ 
-- (\datapath_risc|alu_unit|carry~combout\ $ (\datapath_risc|mux_op2|output~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "65de",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_op1|output\(13),
	datab => \controlpath_risc|op_sel~combout\,
	datac => \datapath_risc|alu_unit|carry~combout\,
	datad => \datapath_risc|mux_op2|output~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|alu_unit|output[13]~13_combout\);

-- Location: LC_X4_Y4_N6
\datapath_risc|RF|registers[2][13]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux18~3\ = (\datapath_risc|mux_a2|output\(1) & ((\datapath_risc|RF|Mux18~2\ & (\datapath_risc|RF|registers[3][13]~regout\)) # (!\datapath_risc|RF|Mux18~2\ & ((P1_registers[2][13]))))) # (!\datapath_risc|mux_a2|output\(1) & 
-- (((\datapath_risc|RF|Mux18~2\))))
-- \datapath_risc|RF|registers[2][13]~regout\ = DFFEAS(\datapath_risc|RF|Mux18~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~2_combout\, \datapath_risc|mux_d3|output\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[3][13]~regout\,
	datab => \datapath_risc|mux_a2|output\(1),
	datac => \datapath_risc|mux_d3|output\(13),
	datad => \datapath_risc|RF|Mux18~2\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux18~3\,
	regout => \datapath_risc|RF|registers[2][13]~regout\);

-- Location: LC_X6_Y4_N6
\datapath_risc|RF|Mux18~4\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux18~4_combout\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(8) & (((\datapath_risc|RF|Mux18~1\)))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(8) & ((\controlpath_risc|m_a2~combout\ & 
-- ((\datapath_risc|RF|Mux18~1\))) # (!\controlpath_risc|m_a2~combout\ & (\datapath_risc|RF|Mux18~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(8),
	datab => \controlpath_risc|m_a2~combout\,
	datac => \datapath_risc|RF|Mux18~3\,
	datad => \datapath_risc|RF|Mux18~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux18~4_combout\);

-- Location: LC_X6_Y4_N7
\datapath_risc|mux_op1|output[14]~20\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op1|output[14]~20_combout\ = (\controlpath_risc|m_op1_1~combout\ & (\controlpath_risc|m_op1_0~combout\ & (\datapath_risc|RF|Mux18~4_combout\))) # (!\controlpath_risc|m_op1_1~combout\ & (!\controlpath_risc|m_op1_0~combout\ & 
-- ((\datapath_risc|RF|Mux17~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9180",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_op1_1~combout\,
	datab => \controlpath_risc|m_op1_0~combout\,
	datac => \datapath_risc|RF|Mux18~4_combout\,
	datad => \datapath_risc|RF|Mux17~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op1|output[14]~20_combout\);

-- Location: LC_X6_Y4_N8
\datapath_risc|mux_op1|output[14]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op1|output\(14) = (((\datapath_risc|mux_op1|output[14]~20_combout\) # (!\datapath_risc|mux_op1|output[8]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \datapath_risc|mux_op1|output[8]~14\,
	datad => \datapath_risc|mux_op1|output[14]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op1|output\(14));

-- Location: LC_X6_Y9_N3
\datapath_risc|alu_unit|output[14]~14\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|alu_unit|output[14]~14_combout\ = (\controlpath_risc|op_sel~combout\ & (((!\datapath_risc|mux_op1|output\(14))) # (!\datapath_risc|mux_op2|output~28_combout\))) # (!\controlpath_risc|op_sel~combout\ & 
-- (\datapath_risc|mux_op2|output~28_combout\ $ (\datapath_risc|alu_unit|carry~combout\ $ (\datapath_risc|mux_op1|output\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "63be",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|op_sel~combout\,
	datab => \datapath_risc|mux_op2|output~28_combout\,
	datac => \datapath_risc|alu_unit|carry~combout\,
	datad => \datapath_risc|mux_op1|output\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|alu_unit|output[14]~14_combout\);

-- Location: LC_X5_Y7_N5
\datapath_risc|RF|registers[4][14]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux1~0\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & (((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10))))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & 
-- ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & (\datapath_risc|RF|registers[6][14]~regout\)) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(10) & ((P1_registers[4][14])))))
-- \datapath_risc|RF|registers[4][14]~regout\ = DFFEAS(\datapath_risc|RF|Mux1~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~4_combout\, \datapath_risc|mux_d3|output\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[6][14]~regout\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	datac => \datapath_risc|mux_d3|output\(14),
	datad => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(10),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux1~0\,
	regout => \datapath_risc|RF|registers[4][14]~regout\);

-- Location: LC_X5_Y9_N7
\datapath_risc|RF|Mux17~4\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux17~4_combout\ = (\controlpath_risc|m_a2~combout\ & (((\datapath_risc|RF|Mux17~1\)))) # (!\controlpath_risc|m_a2~combout\ & ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(8) & (\datapath_risc|RF|Mux17~1\)) # 
-- (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(8) & ((\datapath_risc|RF|Mux17~3\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f1e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_a2~combout\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(8),
	datac => \datapath_risc|RF|Mux17~1\,
	datad => \datapath_risc|RF|Mux17~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux17~4_combout\);

-- Location: LC_X5_Y9_N6
\datapath_risc|mux_op1|output~21\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op1|output~21_combout\ = ((\controlpath_risc|m_op1_0~combout\ & (\controlpath_risc|m_op1_1~combout\ & \datapath_risc|RF|Mux17~4_combout\))) # (!\datapath_risc|mux_op1|output[8]~14\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "80ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_op1_0~combout\,
	datab => \controlpath_risc|m_op1_1~combout\,
	datac => \datapath_risc|RF|Mux17~4_combout\,
	datad => \datapath_risc|mux_op1|output[8]~14\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op1|output~21_combout\);

-- Location: LC_X6_Y9_N9
\datapath_risc|alu_unit|carry~0\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|alu_unit|carry~0_combout\ = (\datapath_risc|alu_unit|carry~combout\ & ((\datapath_risc|mux_op1|output~22_combout\) # ((\datapath_risc|mux_op1|output~21_combout\) # (\datapath_risc|mux_op2|output~30_combout\)))) # 
-- (!\datapath_risc|alu_unit|carry~combout\ & (\datapath_risc|mux_op2|output~30_combout\ & ((\datapath_risc|mux_op1|output~22_combout\) # (\datapath_risc|mux_op1|output~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fea8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|alu_unit|carry~combout\,
	datab => \datapath_risc|mux_op1|output~22_combout\,
	datac => \datapath_risc|mux_op1|output~21_combout\,
	datad => \datapath_risc|mux_op2|output~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|alu_unit|carry~0_combout\);

-- Location: LC_X6_Y9_N2
\datapath_risc|alu_unit|carry\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|alu_unit|carry~combout\ = ((\controlpath_risc|op_sel~combout\ & (\datapath_risc|alu_unit|carry~combout\)) # (!\controlpath_risc|op_sel~combout\ & ((\datapath_risc|alu_unit|carry~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \datapath_risc|alu_unit|carry~combout\,
	datac => \controlpath_risc|op_sel~combout\,
	datad => \datapath_risc|alu_unit|carry~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|alu_unit|carry~combout\);

-- Location: LC_X1_Y7_N1
\controlpath_risc|WideOr29~0\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|WideOr29~0_combout\ = ((!\controlpath_risc|Q.ADL~regout\ & (!\controlpath_risc|Q.ADI~regout\ & !\controlpath_risc|Q.AON~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \controlpath_risc|Q.ADL~regout\,
	datac => \controlpath_risc|Q.ADI~regout\,
	datad => \controlpath_risc|Q.AON~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|WideOr29~0_combout\);

-- Location: LC_X1_Y7_N2
\controlpath_risc|en_c\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|en_c~combout\ = ((\controlpath_risc|en_c~0_combout\ & ((!\controlpath_risc|WideOr29~0_combout\))) # (!\controlpath_risc|en_c~0_combout\ & (\controlpath_risc|en_c~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0cfc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \controlpath_risc|en_c~combout\,
	datac => \controlpath_risc|en_c~0_combout\,
	datad => \controlpath_risc|WideOr29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|en_c~combout\);

-- Location: LC_X1_Y7_N3
\datapath_risc|carryFF|dout\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|carryFF|dout~regout\ = DFFEAS((\controlpath_risc|en_c~combout\ & (\datapath_risc|alu_unit|carry~combout\ & (!\controlpath_risc|op_sel~combout\))) # (!\controlpath_risc|en_c~combout\ & (((\datapath_risc|carryFF|dout~regout\)))), 
-- GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "22f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|alu_unit|carry~combout\,
	datab => \controlpath_risc|op_sel~combout\,
	datac => \datapath_risc|carryFF|dout~regout\,
	datad => \controlpath_risc|en_c~combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|carryFF|dout~regout\);

-- Location: LC_X8_Y7_N9
\datapath_risc|zeroFF|dout~0\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|zeroFF|dout~0_combout\ = (!\datapath_risc|alu_unit|output[2]~2_combout\ & (!\datapath_risc|alu_unit|output[3]~3_combout\ & (!\datapath_risc|alu_unit|output[4]~4_combout\ & !\datapath_risc|alu_unit|output[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|alu_unit|output[2]~2_combout\,
	datab => \datapath_risc|alu_unit|output[3]~3_combout\,
	datac => \datapath_risc|alu_unit|output[4]~4_combout\,
	datad => \datapath_risc|alu_unit|output[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|zeroFF|dout~0_combout\);

-- Location: LC_X1_Y7_N5
\controlpath_risc|m_z~0\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|m_z~0_combout\ = (\reset~combout\) # ((!\controlpath_risc|Q.LW1~regout\ & (!\controlpath_risc|Q.ADI~regout\ & \controlpath_risc|WideOr19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "abaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \controlpath_risc|Q.LW1~regout\,
	datac => \controlpath_risc|Q.ADI~regout\,
	datad => \controlpath_risc|WideOr19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|m_z~0_combout\);

-- Location: LC_X2_Y7_N2
\controlpath_risc|m_z\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|m_z~combout\ = (\controlpath_risc|m_z~0_combout\ & (((\controlpath_risc|m_z~combout\)))) # (!\controlpath_risc|m_z~0_combout\ & (\controlpath_risc|Q.LW1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_z~0_combout\,
	datab => \controlpath_risc|Q.LW1~regout\,
	datad => \controlpath_risc|m_z~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|m_z~combout\);

-- Location: LC_X2_Y7_N6
\controlpath_risc|WideOr28~0\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|WideOr28~0_combout\ = (\controlpath_risc|Q.ADL~regout\) # ((\controlpath_risc|Q.LW1~regout\) # ((\controlpath_risc|Q.AON~regout\) # (\controlpath_risc|Q.ADI~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|Q.ADL~regout\,
	datab => \controlpath_risc|Q.LW1~regout\,
	datac => \controlpath_risc|Q.AON~regout\,
	datad => \controlpath_risc|Q.ADI~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|WideOr28~0_combout\);

-- Location: LC_X2_Y7_N7
\controlpath_risc|en_z\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|en_z~combout\ = ((GLOBAL(\reset~combout\) & (\controlpath_risc|en_z~combout\)) # (!GLOBAL(\reset~combout\) & ((\controlpath_risc|WideOr28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \controlpath_risc|en_z~combout\,
	datac => \controlpath_risc|WideOr28~0_combout\,
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|en_z~combout\);

-- Location: LC_X6_Y7_N6
\datapath_risc|zeroFF|dout~3\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|zeroFF|dout~3_combout\ = (!\controlpath_risc|m_z~combout\ & (\controlpath_risc|en_z~combout\ & (!\datapath_risc|alu_unit|output[0]~0_combout\ & !\datapath_risc|alu_unit|output[15]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_z~combout\,
	datab => \controlpath_risc|en_z~combout\,
	datac => \datapath_risc|alu_unit|output[0]~0_combout\,
	datad => \datapath_risc|alu_unit|output[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|zeroFF|dout~3_combout\);

-- Location: LC_X6_Y7_N2
\datapath_risc|zeroFF|dout~2\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|zeroFF|dout~2_combout\ = (!\datapath_risc|alu_unit|output[9]~9_combout\ & (!\datapath_risc|alu_unit|output[10]~10_combout\ & (!\datapath_risc|alu_unit|output[12]~12_combout\ & !\datapath_risc|alu_unit|output[11]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|alu_unit|output[9]~9_combout\,
	datab => \datapath_risc|alu_unit|output[10]~10_combout\,
	datac => \datapath_risc|alu_unit|output[12]~12_combout\,
	datad => \datapath_risc|alu_unit|output[11]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|zeroFF|dout~2_combout\);

-- Location: LC_X6_Y7_N0
\datapath_risc|zeroFF|dout~4\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|zeroFF|dout~4_combout\ = (!\datapath_risc|alu_unit|output[13]~13_combout\ & (!\datapath_risc|alu_unit|output[14]~14_combout\ & (\datapath_risc|zeroFF|dout~3_combout\ & \datapath_risc|zeroFF|dout~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|alu_unit|output[13]~13_combout\,
	datab => \datapath_risc|alu_unit|output[14]~14_combout\,
	datac => \datapath_risc|zeroFF|dout~3_combout\,
	datad => \datapath_risc|zeroFF|dout~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|zeroFF|dout~4_combout\);

-- Location: LC_X5_Y6_N1
\datapath_risc|zeroFF|dout~1\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|zeroFF|dout~1_combout\ = (!\datapath_risc|alu_unit|output[7]~7_combout\ & (!\datapath_risc|alu_unit|output[5]~5_combout\ & (!\datapath_risc|alu_unit|output[6]~6_combout\ & !\datapath_risc|alu_unit|output[8]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|alu_unit|output[7]~7_combout\,
	datab => \datapath_risc|alu_unit|output[5]~5_combout\,
	datac => \datapath_risc|alu_unit|output[6]~6_combout\,
	datad => \datapath_risc|alu_unit|output[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|zeroFF|dout~1_combout\);

-- Location: LC_X9_Y7_N8
\datapath_risc|zeroFF|dout~5\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|zeroFF|dout~5_combout\ = (\controlpath_risc|en_z~combout\ & (((\controlpath_risc|m_z~combout\ & \datapath_risc|compare|Equal0~15_combout\)))) # (!\controlpath_risc|en_z~combout\ & (\datapath_risc|zeroFF|dout~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e444",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|en_z~combout\,
	datab => \datapath_risc|zeroFF|dout~regout\,
	datac => \controlpath_risc|m_z~combout\,
	datad => \datapath_risc|compare|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|zeroFF|dout~5_combout\);

-- Location: LC_X9_Y7_N9
\datapath_risc|zeroFF|dout\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|zeroFF|dout~regout\ = DFFEAS((\datapath_risc|zeroFF|dout~5_combout\) # ((\datapath_risc|zeroFF|dout~0_combout\ & (\datapath_risc|zeroFF|dout~4_combout\ & \datapath_risc|zeroFF|dout~1_combout\))), GLOBAL(\clk~combout\), 
-- !GLOBAL(\reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|zeroFF|dout~0_combout\,
	datab => \datapath_risc|zeroFF|dout~4_combout\,
	datac => \datapath_risc|zeroFF|dout~1_combout\,
	datad => \datapath_risc|zeroFF|dout~5_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|zeroFF|dout~regout\);

-- Location: LC_X7_Y8_N4
\controlpath_risc|main~2\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|main~2_combout\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(1) & (!\datapath_risc|carryFF|dout~regout\ & (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(0)))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(1) & 
-- (((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(0) & !\datapath_risc|zeroFF|dout~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0434",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|carryFF|dout~regout\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(1),
	datac => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(0),
	datad => \datapath_risc|zeroFF|dout~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|main~2_combout\);

-- Location: LC_X1_Y7_N9
\controlpath_risc|Q.AON\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|Q.AON~regout\ = DFFEAS((\controlpath_risc|nQ.SW1~0_combout\ & (\controlpath_risc|Selector13~6\ & (!\controlpath_risc|main~4_combout\ & !\controlpath_risc|main~2_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \controlpath_risc|nQ.SW1~0_combout\,
	datab => \controlpath_risc|Selector13~6\,
	datac => \controlpath_risc|main~4_combout\,
	datad => \controlpath_risc|main~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlpath_risc|Q.AON~regout\);

-- Location: LC_X2_Y6_N5
\controlpath_risc|WideOr14~0\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|WideOr14~0_combout\ = (\controlpath_risc|Q.JAL2~regout\) # ((\controlpath_risc|Q.LW1~regout\) # ((\controlpath_risc|Q.AON~regout\) # (\controlpath_risc|Q.SW1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|Q.JAL2~regout\,
	datab => \controlpath_risc|Q.LW1~regout\,
	datac => \controlpath_risc|Q.AON~regout\,
	datad => \controlpath_risc|Q.SW1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|WideOr14~0_combout\);

-- Location: LC_X6_Y4_N1
\controlpath_risc|m_op2_0\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|m_op2_0~combout\ = ((GLOBAL(\controlpath_risc|m_op1_1~0_combout\) & ((\controlpath_risc|m_op2_0~combout\))) # (!GLOBAL(\controlpath_risc|m_op1_1~0_combout\) & (\controlpath_risc|WideOr14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \controlpath_risc|WideOr14~0_combout\,
	datac => \controlpath_risc|m_op1_1~0_combout\,
	datad => \controlpath_risc|m_op2_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|m_op2_0~combout\);

-- Location: LC_X7_Y6_N5
\datapath_risc|Inst_reg_exe|next_instruction1|dout[12]\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|main~3\ = (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(14) & (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(13) & (N1_dout[12] & !\datapath_risc|Inst_reg_exe|next_instruction1|dout\(15))))
-- \datapath_risc|Inst_reg_exe|next_instruction1|dout\(12) = DFFEAS(\controlpath_risc|main~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \controlpath_risc|en_ir~combout\, \datapath_risc|Inst_reg_fetch|next_instruction|dout\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(14),
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(13),
	datac => \datapath_risc|Inst_reg_fetch|next_instruction|dout\(12),
	datad => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(15),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \controlpath_risc|en_ir~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|main~3\,
	regout => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(12));

-- Location: LC_X7_Y10_N1
\controlpath_risc|main~4\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|main~4_combout\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(0) & (\controlpath_risc|main~3\ & ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(0),
	datab => \controlpath_risc|main~3\,
	datad => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|main~4_combout\);

-- Location: LC_X1_Y7_N0
\controlpath_risc|Q.ADL\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|Q.ADL~regout\ = DFFEAS((\controlpath_risc|nQ.SW1~0_combout\ & (!\controlpath_risc|main~1_combout\ & (\controlpath_risc|main~4_combout\ & !\controlpath_risc|main~2_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \controlpath_risc|nQ.SW1~0_combout\,
	datab => \controlpath_risc|main~1_combout\,
	datac => \controlpath_risc|main~4_combout\,
	datad => \controlpath_risc|main~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlpath_risc|Q.ADL~regout\);

-- Location: LC_X3_Y8_N7
\controlpath_risc|m_op1_0~0\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|m_op1_0~0_combout\ = (((!\controlpath_risc|Q.ADI~regout\ & !\controlpath_risc|Q.ADL~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \controlpath_risc|Q.ADI~regout\,
	datad => \controlpath_risc|Q.ADL~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|m_op1_0~0_combout\);

-- Location: LC_X4_Y8_N8
\controlpath_risc|m_op1_0\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|m_op1_0~combout\ = ((GLOBAL(\controlpath_risc|m_op1_1~0_combout\) & ((\controlpath_risc|m_op1_0~combout\))) # (!GLOBAL(\controlpath_risc|m_op1_1~0_combout\) & (!\controlpath_risc|m_op1_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f303",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \controlpath_risc|m_op1_0~0_combout\,
	datac => \controlpath_risc|m_op1_1~0_combout\,
	datad => \controlpath_risc|m_op1_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|m_op1_0~combout\);

-- Location: LC_X7_Y10_N8
\datapath_risc|mux_op2|output~1\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op2|output~1_combout\ = (\controlpath_risc|m_op2_0~combout\ & (\datapath_risc|RF|Mux30~4_combout\ & (!\controlpath_risc|m_op2_1~combout\))) # (!\controlpath_risc|m_op2_0~combout\ & (((\controlpath_risc|m_op2_1~combout\ & 
-- \datapath_risc|RF|Mux14~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|RF|Mux30~4_combout\,
	datab => \controlpath_risc|m_op2_0~combout\,
	datac => \controlpath_risc|m_op2_1~combout\,
	datad => \datapath_risc|RF|Mux14~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op2|output~1_combout\);

-- Location: LC_X7_Y10_N9
\datapath_risc|mux_op2|output~2\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op2|output~2_combout\ = (\datapath_risc|mux_op2|output~1_combout\) # ((\controlpath_risc|m_op2_0~combout\ & (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(1) & \controlpath_risc|m_op2_1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_op2_0~combout\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(1),
	datac => \controlpath_risc|m_op2_1~combout\,
	datad => \datapath_risc|mux_op2|output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op2|output~2_combout\);

-- Location: LC_X6_Y8_N3
\datapath_risc|alu_unit|output[1]~1\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|alu_unit|output[1]~1_combout\ = (\controlpath_risc|op_sel~combout\ & (((!\datapath_risc|mux_op2|output~2_combout\)) # (!\datapath_risc|mux_op1|output[1]~1\))) # (!\controlpath_risc|op_sel~combout\ & (\datapath_risc|mux_op1|output[1]~1\ $ 
-- (\datapath_risc|mux_op2|output~2_combout\ $ (\datapath_risc|alu_unit|carry~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7796",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_op1|output[1]~1\,
	datab => \datapath_risc|mux_op2|output~2_combout\,
	datac => \datapath_risc|alu_unit|carry~combout\,
	datad => \controlpath_risc|op_sel~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|alu_unit|output[1]~1_combout\);

-- Location: LC_X9_Y8_N5
\datapath_risc|regA|dout[1]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_mem_a|output[1]~0\ = (\controlpath_risc|m_mem_a~combout\ & (((\datapath_risc|RF|Mux30~4_combout\)))) # (!\controlpath_risc|m_mem_a~combout\ & (((N3_dout[1]))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \controlpath_risc|m_mem_a~combout\,
	datac => \datapath_risc|alu_unit|output[1]~1_combout\,
	datad => \datapath_risc|RF|Mux30~4_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \controlpath_risc|en_A~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_mem_a|output[1]~0\,
	regout => \datapath_risc|regA|dout\(1));

-- Location: LC_X13_Y6_N6
\datapath_risc|RAM|memory~139\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~139_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~452_combout\, \datapath_risc|RF|Mux9~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux9~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~139_regout\);

-- Location: LC_X4_Y9_N1
\datapath_risc|RAM|memory~91\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux9~4\ = ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & ((\datapath_risc|RF|Mux9~1\))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & (\datapath_risc|RF|Mux9~3\)))
-- \datapath_risc|RAM|memory~91_regout\ = DFFEAS(\datapath_risc|RF|Mux9~4\, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~450_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \datapath_risc|RF|Mux9~3\,
	datac => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(11),
	datad => \datapath_risc|RF|Mux9~1\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux9~4\,
	regout => \datapath_risc|RAM|memory~91_regout\);

-- Location: LC_X12_Y8_N2
\datapath_risc|RAM|memory~107\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~337\ = (\datapath_risc|mux_mem_a|output[1]~0\ & (((\datapath_risc|mux_mem_a|output[0]~1\)))) # (!\datapath_risc|mux_mem_a|output[1]~0\ & ((\datapath_risc|mux_mem_a|output[0]~1\ & ((M1L103Q))) # 
-- (!\datapath_risc|mux_mem_a|output[0]~1\ & (\datapath_risc|RAM|memory~91_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~91_regout\,
	datab => \datapath_risc|mux_mem_a|output[1]~0\,
	datac => \datapath_risc|RF|Mux9~4\,
	datad => \datapath_risc|mux_mem_a|output[0]~1\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~337\,
	regout => \datapath_risc|RAM|memory~107_regout\);

-- Location: LC_X12_Y8_N3
\datapath_risc|RAM|memory~123\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~338\ = (\datapath_risc|mux_mem_a|output[1]~0\ & ((\datapath_risc|RAM|memory~337\ & (\datapath_risc|RAM|memory~139_regout\)) # (!\datapath_risc|RAM|memory~337\ & ((M1L119Q))))) # (!\datapath_risc|mux_mem_a|output[1]~0\ & 
-- (((\datapath_risc|RAM|memory~337\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[1]~0\,
	datab => \datapath_risc|RAM|memory~139_regout\,
	datac => \datapath_risc|RF|Mux9~4\,
	datad => \datapath_risc|RAM|memory~337\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~338\,
	regout => \datapath_risc|RAM|memory~123_regout\);

-- Location: LC_X13_Y9_N0
\datapath_risc|RAM|memory~267\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~267_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~468_combout\, \datapath_risc|RF|Mux9~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux9~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~267_regout\);

-- Location: LC_X14_Y9_N0
\datapath_risc|RAM|memory~219\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~219_regout\ = DFFEAS((((\datapath_risc|RF|Mux9~4\))), GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~466_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \datapath_risc|RF|Mux9~4\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~219_regout\);

-- Location: LC_X14_Y8_N0
\datapath_risc|RAM|memory~235\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~344\ = (\datapath_risc|mux_mem_a|output[1]~0\ & (((\datapath_risc|mux_mem_a|output[0]~1\)))) # (!\datapath_risc|mux_mem_a|output[1]~0\ & ((\datapath_risc|mux_mem_a|output[0]~1\ & ((M1L231Q))) # 
-- (!\datapath_risc|mux_mem_a|output[0]~1\ & (\datapath_risc|RAM|memory~219_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~219_regout\,
	datab => \datapath_risc|mux_mem_a|output[1]~0\,
	datac => \datapath_risc|RF|Mux9~4\,
	datad => \datapath_risc|mux_mem_a|output[0]~1\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~344\,
	regout => \datapath_risc|RAM|memory~235_regout\);

-- Location: LC_X14_Y8_N1
\datapath_risc|RAM|memory~251\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~345\ = (\datapath_risc|mux_mem_a|output[1]~0\ & ((\datapath_risc|RAM|memory~344\ & (\datapath_risc|RAM|memory~267_regout\)) # (!\datapath_risc|RAM|memory~344\ & ((M1L247Q))))) # (!\datapath_risc|mux_mem_a|output[1]~0\ & 
-- (((\datapath_risc|RAM|memory~344\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[1]~0\,
	datab => \datapath_risc|RAM|memory~267_regout\,
	datac => \datapath_risc|RF|Mux9~4\,
	datad => \datapath_risc|RAM|memory~344\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~345\,
	regout => \datapath_risc|RAM|memory~251_regout\);

-- Location: LC_X13_Y5_N9
\datapath_risc|RAM|memory~203\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~203_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~444_combout\, \datapath_risc|RF|Mux9~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux9~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~203_regout\);

-- Location: LC_X10_Y4_N6
\datapath_risc|RAM|memory~155\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~155_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~442_combout\, \datapath_risc|RF|Mux9~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux9~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~155_regout\);

-- Location: LC_X10_Y6_N6
\datapath_risc|RAM|memory~187\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~339\ = (\datapath_risc|mux_mem_a|output[1]~0\ & (((M1L183Q) # (\datapath_risc|mux_mem_a|output[0]~1\)))) # (!\datapath_risc|mux_mem_a|output[1]~0\ & (\datapath_risc|RAM|memory~155_regout\ & 
-- ((!\datapath_risc|mux_mem_a|output[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~155_regout\,
	datab => \datapath_risc|mux_mem_a|output[1]~0\,
	datac => \datapath_risc|RF|Mux9~4\,
	datad => \datapath_risc|mux_mem_a|output[0]~1\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~339\,
	regout => \datapath_risc|RAM|memory~187_regout\);

-- Location: LC_X10_Y6_N7
\datapath_risc|RAM|memory~171\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~340\ = (\datapath_risc|mux_mem_a|output[0]~1\ & ((\datapath_risc|RAM|memory~339\ & (\datapath_risc|RAM|memory~203_regout\)) # (!\datapath_risc|RAM|memory~339\ & ((M1L167Q))))) # (!\datapath_risc|mux_mem_a|output[0]~1\ & 
-- (((\datapath_risc|RAM|memory~339\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[0]~1\,
	datab => \datapath_risc|RAM|memory~203_regout\,
	datac => \datapath_risc|RF|Mux9~4\,
	datad => \datapath_risc|RAM|memory~339\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~340\,
	regout => \datapath_risc|RAM|memory~171_regout\);

-- Location: LC_X14_Y10_N7
\datapath_risc|RAM|memory~75\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~75_regout\ = DFFEAS((((\datapath_risc|RF|Mux9~4\))), GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~460_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \datapath_risc|RF|Mux9~4\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~75_regout\);

-- Location: LC_X14_Y6_N6
\datapath_risc|RAM|memory~27\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~27_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~458_combout\, \datapath_risc|RF|Mux9~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux9~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~27_regout\);

-- Location: LC_X14_Y7_N6
\datapath_risc|RAM|memory~59\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~341\ = (\datapath_risc|mux_mem_a|output[1]~0\ & (((M1L55Q) # (\datapath_risc|mux_mem_a|output[0]~1\)))) # (!\datapath_risc|mux_mem_a|output[1]~0\ & (\datapath_risc|RAM|memory~27_regout\ & 
-- ((!\datapath_risc|mux_mem_a|output[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~27_regout\,
	datab => \datapath_risc|mux_mem_a|output[1]~0\,
	datac => \datapath_risc|RF|Mux9~4\,
	datad => \datapath_risc|mux_mem_a|output[0]~1\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~341\,
	regout => \datapath_risc|RAM|memory~59_regout\);

-- Location: LC_X14_Y7_N7
\datapath_risc|RAM|memory~43\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~342\ = (\datapath_risc|mux_mem_a|output[0]~1\ & ((\datapath_risc|RAM|memory~341\ & (\datapath_risc|RAM|memory~75_regout\)) # (!\datapath_risc|RAM|memory~341\ & ((M1L39Q))))) # (!\datapath_risc|mux_mem_a|output[0]~1\ & 
-- (((\datapath_risc|RAM|memory~341\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~75_regout\,
	datab => \datapath_risc|mux_mem_a|output[0]~1\,
	datac => \datapath_risc|RF|Mux9~4\,
	datad => \datapath_risc|RAM|memory~341\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~342\,
	regout => \datapath_risc|RAM|memory~43_regout\);

-- Location: LC_X11_Y7_N1
\datapath_risc|RAM|memory~343\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~343_combout\ = (\datapath_risc|mux_mem_a|output[2]~3\ & (\datapath_risc|mux_mem_a|output[3]~2\)) # (!\datapath_risc|mux_mem_a|output[2]~3\ & ((\datapath_risc|mux_mem_a|output[3]~2\ & (\datapath_risc|RAM|memory~340\)) # 
-- (!\datapath_risc|mux_mem_a|output[3]~2\ & ((\datapath_risc|RAM|memory~342\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_mem_a|output[2]~3\,
	datab => \datapath_risc|mux_mem_a|output[3]~2\,
	datac => \datapath_risc|RAM|memory~340\,
	datad => \datapath_risc|RAM|memory~342\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~343_combout\);

-- Location: LC_X11_Y7_N2
\datapath_risc|RAM|memory~346\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~346_combout\ = (\datapath_risc|mux_mem_a|output[2]~3\ & ((\datapath_risc|RAM|memory~343_combout\ & ((\datapath_risc|RAM|memory~345\))) # (!\datapath_risc|RAM|memory~343_combout\ & (\datapath_risc|RAM|memory~338\)))) # 
-- (!\datapath_risc|mux_mem_a|output[2]~3\ & (((\datapath_risc|RAM|memory~343_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_mem_a|output[2]~3\,
	datab => \datapath_risc|RAM|memory~338\,
	datac => \datapath_risc|RAM|memory~345\,
	datad => \datapath_risc|RAM|memory~343_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~346_combout\);

-- Location: LC_X1_Y6_N5
\datapath_risc|RF|registers[7][7]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux8~1\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & ((\datapath_risc|RF|Mux8~0\ & ((P1_registers[7][7]))) # (!\datapath_risc|RF|Mux8~0\ & (\datapath_risc|RF|registers[5][7]~regout\)))) # 
-- (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(9) & (((\datapath_risc|RF|Mux8~0\))))
-- \datapath_risc|RF|registers[7][7]~regout\ = DFFEAS(\datapath_risc|RF|Mux8~1\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~7_combout\, \datapath_risc|mux_d3|output\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[5][7]~regout\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(9),
	datac => \datapath_risc|mux_d3|output\(7),
	datad => \datapath_risc|RF|Mux8~0\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux8~1\,
	regout => \datapath_risc|RF|registers[7][7]~regout\);

-- Location: LC_X4_Y6_N1
\datapath_risc|RAM|memory~44\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux8~4\ = ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & (\datapath_risc|RF|Mux8~1\)) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & ((\datapath_risc|RF|Mux8~3\))))
-- \datapath_risc|RAM|memory~44_regout\ = DFFEAS(\datapath_risc|RF|Mux8~4\, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~456_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \datapath_risc|RF|Mux8~1\,
	datac => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(11),
	datad => \datapath_risc|RF|Mux8~3\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux8~4\,
	regout => \datapath_risc|RAM|memory~44_regout\);

-- Location: LC_X12_Y5_N1
\datapath_risc|RAM|memory~236\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~236_regout\ = DFFEAS((((\datapath_risc|RF|Mux8~4\))), GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~462_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \datapath_risc|RF|Mux8~4\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~236_regout\);

-- Location: LC_X11_Y6_N6
\datapath_risc|RAM|memory~172\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~347\ = (\datapath_risc|mux_mem_a|output[2]~3\ & (((\datapath_risc|mux_mem_a|output[3]~2\)))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & ((\datapath_risc|mux_mem_a|output[3]~2\ & ((M1L168Q))) # 
-- (!\datapath_risc|mux_mem_a|output[3]~2\ & (\datapath_risc|RAM|memory~44_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~44_regout\,
	datab => \datapath_risc|mux_mem_a|output[2]~3\,
	datac => \datapath_risc|RF|Mux8~4\,
	datad => \datapath_risc|mux_mem_a|output[3]~2\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~347\,
	regout => \datapath_risc|RAM|memory~172_regout\);

-- Location: LC_X11_Y6_N7
\datapath_risc|RAM|memory~108\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~348\ = (\datapath_risc|mux_mem_a|output[2]~3\ & ((\datapath_risc|RAM|memory~347\ & (\datapath_risc|RAM|memory~236_regout\)) # (!\datapath_risc|RAM|memory~347\ & ((M1L104Q))))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & 
-- (((\datapath_risc|RAM|memory~347\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~236_regout\,
	datab => \datapath_risc|mux_mem_a|output[2]~3\,
	datac => \datapath_risc|RF|Mux8~4\,
	datad => \datapath_risc|RAM|memory~347\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~348\,
	regout => \datapath_risc|RAM|memory~108_regout\);

-- Location: LC_X15_Y9_N2
\datapath_risc|RAM|memory~268\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~268_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~468_combout\, \datapath_risc|RF|Mux8~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux8~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~268_regout\);

-- Location: LC_X14_Y10_N1
\datapath_risc|RAM|memory~76\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~76_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~460_combout\, \datapath_risc|RF|Mux8~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux8~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~76_regout\);

-- Location: LC_X15_Y8_N2
\datapath_risc|RAM|memory~204\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~354\ = (\datapath_risc|mux_mem_a|output[2]~3\ & (((\datapath_risc|mux_mem_a|output[3]~2\)))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & ((\datapath_risc|mux_mem_a|output[3]~2\ & ((M1L200Q))) # 
-- (!\datapath_risc|mux_mem_a|output[3]~2\ & (\datapath_risc|RAM|memory~76_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~76_regout\,
	datab => \datapath_risc|mux_mem_a|output[2]~3\,
	datac => \datapath_risc|RF|Mux8~4\,
	datad => \datapath_risc|mux_mem_a|output[3]~2\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~354\,
	regout => \datapath_risc|RAM|memory~204_regout\);

-- Location: LC_X15_Y8_N3
\datapath_risc|RAM|memory~140\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~355\ = (\datapath_risc|mux_mem_a|output[2]~3\ & ((\datapath_risc|RAM|memory~354\ & (\datapath_risc|RAM|memory~268_regout\)) # (!\datapath_risc|RAM|memory~354\ & ((M1L136Q))))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & 
-- (((\datapath_risc|RAM|memory~354\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~268_regout\,
	datab => \datapath_risc|mux_mem_a|output[2]~3\,
	datac => \datapath_risc|RF|Mux8~4\,
	datad => \datapath_risc|RAM|memory~354\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~355\,
	regout => \datapath_risc|RAM|memory~140_regout\);

-- Location: LC_X11_Y4_N7
\datapath_risc|RAM|memory~220\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~220_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~466_combout\, \datapath_risc|RF|Mux8~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux8~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~220_regout\);

-- Location: LC_X12_Y5_N0
\datapath_risc|RAM|memory~28\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~28_regout\ = DFFEAS((((\datapath_risc|RF|Mux8~4\))), GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~458_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \datapath_risc|RF|Mux8~4\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~28_regout\);

-- Location: LC_X10_Y9_N0
\datapath_risc|RAM|memory~92\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~351\ = (\datapath_risc|mux_mem_a|output[2]~3\ & (((M1L88Q) # (\datapath_risc|mux_mem_a|output[3]~2\)))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & (\datapath_risc|RAM|memory~28_regout\ & 
-- ((!\datapath_risc|mux_mem_a|output[3]~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~28_regout\,
	datab => \datapath_risc|mux_mem_a|output[2]~3\,
	datac => \datapath_risc|RF|Mux8~4\,
	datad => \datapath_risc|mux_mem_a|output[3]~2\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~351\,
	regout => \datapath_risc|RAM|memory~92_regout\);

-- Location: LC_X10_Y9_N1
\datapath_risc|RAM|memory~156\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~352\ = (\datapath_risc|mux_mem_a|output[3]~2\ & ((\datapath_risc|RAM|memory~351\ & (\datapath_risc|RAM|memory~220_regout\)) # (!\datapath_risc|RAM|memory~351\ & ((M1L152Q))))) # (!\datapath_risc|mux_mem_a|output[3]~2\ & 
-- (((\datapath_risc|RAM|memory~351\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~220_regout\,
	datab => \datapath_risc|mux_mem_a|output[3]~2\,
	datac => \datapath_risc|RF|Mux8~4\,
	datad => \datapath_risc|RAM|memory~351\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~352\,
	regout => \datapath_risc|RAM|memory~156_regout\);

-- Location: LC_X12_Y10_N2
\datapath_risc|RAM|memory~60\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~60_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~454_combout\, \datapath_risc|RF|Mux8~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux8~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~60_regout\);

-- Location: LC_X10_Y8_N5
\datapath_risc|RAM|memory~124\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~349\ = (\datapath_risc|mux_mem_a|output[2]~3\ & (((M1L120Q) # (\datapath_risc|mux_mem_a|output[3]~2\)))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & (\datapath_risc|RAM|memory~60_regout\ & 
-- ((!\datapath_risc|mux_mem_a|output[3]~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[2]~3\,
	datab => \datapath_risc|RAM|memory~60_regout\,
	datac => \datapath_risc|RF|Mux8~4\,
	datad => \datapath_risc|mux_mem_a|output[3]~2\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~349\,
	regout => \datapath_risc|RAM|memory~124_regout\);

-- Location: LC_X11_Y5_N5
\datapath_risc|RAM|memory~252\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~252_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~464_combout\, \datapath_risc|RF|Mux8~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux8~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~252_regout\);

-- Location: LC_X11_Y7_N8
\datapath_risc|RAM|memory~188\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~350\ = (\datapath_risc|RAM|memory~349\ & ((\datapath_risc|RAM|memory~252_regout\) # ((!\datapath_risc|mux_mem_a|output[3]~2\)))) # (!\datapath_risc|RAM|memory~349\ & (((M1L184Q & \datapath_risc|mux_mem_a|output[3]~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~349\,
	datab => \datapath_risc|RAM|memory~252_regout\,
	datac => \datapath_risc|RF|Mux8~4\,
	datad => \datapath_risc|mux_mem_a|output[3]~2\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~350\,
	regout => \datapath_risc|RAM|memory~188_regout\);

-- Location: LC_X11_Y7_N5
\datapath_risc|RAM|memory~353\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~353_combout\ = (\datapath_risc|mux_mem_a|output[1]~0\ & (((\datapath_risc|mux_mem_a|output[0]~1\) # (\datapath_risc|RAM|memory~350\)))) # (!\datapath_risc|mux_mem_a|output[1]~0\ & (\datapath_risc|RAM|memory~352\ & 
-- (!\datapath_risc|mux_mem_a|output[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aea4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_mem_a|output[1]~0\,
	datab => \datapath_risc|RAM|memory~352\,
	datac => \datapath_risc|mux_mem_a|output[0]~1\,
	datad => \datapath_risc|RAM|memory~350\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~353_combout\);

-- Location: LC_X11_Y7_N6
\datapath_risc|RAM|memory~356\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~356_combout\ = (\datapath_risc|mux_mem_a|output[0]~1\ & ((\datapath_risc|RAM|memory~353_combout\ & ((\datapath_risc|RAM|memory~355\))) # (!\datapath_risc|RAM|memory~353_combout\ & (\datapath_risc|RAM|memory~348\)))) # 
-- (!\datapath_risc|mux_mem_a|output[0]~1\ & (((\datapath_risc|RAM|memory~353_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_mem_a|output[0]~1\,
	datab => \datapath_risc|RAM|memory~348\,
	datac => \datapath_risc|RAM|memory~355\,
	datad => \datapath_risc|RAM|memory~353_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~356_combout\);

-- Location: LC_X8_Y9_N3
\datapath_risc|RF|registers[2][15]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux16~3\ = (\datapath_risc|RF|Mux16~2\ & ((\datapath_risc|RF|registers[3][15]~regout\) # ((!\datapath_risc|mux_a2|output\(1))))) # (!\datapath_risc|RF|Mux16~2\ & (((P1_registers[2][15] & \datapath_risc|mux_a2|output\(1)))))
-- \datapath_risc|RF|registers[2][15]~regout\ = DFFEAS(\datapath_risc|RF|Mux16~3\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \datapath_risc|RF|Decoder0~2_combout\, \datapath_risc|mux_d3|output\(15), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RF|registers[3][15]~regout\,
	datab => \datapath_risc|RF|Mux16~2\,
	datac => \datapath_risc|mux_d3|output\(15),
	datad => \datapath_risc|mux_a2|output\(1),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \datapath_risc|RF|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux16~3\,
	regout => \datapath_risc|RF|registers[2][15]~regout\);

-- Location: LC_X8_Y9_N1
\datapath_risc|RF|Mux16~4\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RF|Mux16~4_combout\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(8) & (((\datapath_risc|RF|Mux16~1\)))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(8) & ((\controlpath_risc|m_a2~combout\ & 
-- ((\datapath_risc|RF|Mux16~1\))) # (!\controlpath_risc|m_a2~combout\ & (\datapath_risc|RF|Mux16~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe02",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|RF|Mux16~3\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(8),
	datac => \controlpath_risc|m_a2~combout\,
	datad => \datapath_risc|RF|Mux16~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RF|Mux16~4_combout\);

-- Location: LC_X9_Y9_N4
\datapath_risc|mux_d3|output~31\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output~31_combout\ = (\datapath_risc|RF|Mux16~4_combout\ & (((!\controlpath_risc|m_d3_1~combout\ & \controlpath_risc|m_d3_0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|RF|Mux16~4_combout\,
	datac => \controlpath_risc|m_d3_1~combout\,
	datad => \controlpath_risc|m_d3_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output~31_combout\);

-- Location: LC_X2_Y8_N2
\controlpath_risc|m_comp_a~0\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|m_comp_a~0_combout\ = (\reset~combout\) # ((!\controlpath_risc|Q.LW1~regout\ & (!\controlpath_risc|Q.BEQ~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "abab",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \controlpath_risc|Q.LW1~regout\,
	datac => \controlpath_risc|Q.BEQ~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|m_comp_a~0_combout\);

-- Location: LC_X2_Y8_N3
\controlpath_risc|m_comp_b\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|m_comp_b~combout\ = ((\controlpath_risc|m_comp_a~0_combout\ & ((\controlpath_risc|m_comp_b~combout\))) # (!\controlpath_risc|m_comp_a~0_combout\ & (\controlpath_risc|Q.LW1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \controlpath_risc|m_comp_a~0_combout\,
	datac => \controlpath_risc|Q.LW1~regout\,
	datad => \controlpath_risc|m_comp_b~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|m_comp_b~combout\);

-- Location: LC_X4_Y6_N0
\datapath_risc|compare|final[7]~13\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|compare|final[7]~13_combout\ = \datapath_risc|RF|Mux24~4_combout\ $ (((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & ((\datapath_risc|RF|Mux8~1\))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & 
-- (\datapath_risc|RF|Mux8~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1be4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(11),
	datab => \datapath_risc|RF|Mux8~3\,
	datac => \datapath_risc|RF|Mux8~1\,
	datad => \datapath_risc|RF|Mux24~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|compare|final[7]~13_combout\);

-- Location: LC_X4_Y6_N8
\datapath_risc|compare|Equal0~10\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|compare|Equal0~10_combout\ = (\controlpath_risc|m_comp_b~combout\) # ((!\datapath_risc|compare|final[7]~13_combout\ & (\datapath_risc|RF|Mux9~4\ $ (!\datapath_risc|RF|Mux25~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cecd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|RF|Mux9~4\,
	datab => \controlpath_risc|m_comp_b~combout\,
	datac => \datapath_risc|compare|final[7]~13_combout\,
	datad => \datapath_risc|RF|Mux25~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|compare|Equal0~10_combout\);

-- Location: LC_X4_Y6_N9
\datapath_risc|compare|final[1]~16\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|compare|final[1]~16_combout\ = \datapath_risc|RF|Mux30~4_combout\ $ (((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & ((\datapath_risc|RF|Mux14~1\))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & 
-- (\datapath_risc|RF|Mux14~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1eb4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(11),
	datab => \datapath_risc|RF|Mux14~3\,
	datac => \datapath_risc|RF|Mux30~4_combout\,
	datad => \datapath_risc|RF|Mux14~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|compare|final[1]~16_combout\);

-- Location: LC_X4_Y6_N7
\datapath_risc|compare|Equal0~13\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|compare|Equal0~13_combout\ = (\controlpath_risc|m_comp_b~combout\) # ((!\datapath_risc|compare|final[1]~16_combout\ & (\datapath_risc|RF|Mux15~4\ $ (!\datapath_risc|RF|Mux31~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cced",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|RF|Mux15~4\,
	datab => \controlpath_risc|m_comp_b~combout\,
	datac => \datapath_risc|RF|Mux31~4\,
	datad => \datapath_risc|compare|final[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|compare|Equal0~13_combout\);

-- Location: LC_X5_Y8_N0
\datapath_risc|compare|final[5]~14\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|compare|final[5]~14_combout\ = \datapath_risc|RF|Mux26~4_combout\ $ (((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & ((\datapath_risc|RF|Mux10~1\))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & 
-- (\datapath_risc|RF|Mux10~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "36c6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|RF|Mux10~3\,
	datab => \datapath_risc|RF|Mux26~4_combout\,
	datac => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(11),
	datad => \datapath_risc|RF|Mux10~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|compare|final[5]~14_combout\);

-- Location: LC_X4_Y6_N6
\datapath_risc|compare|Equal0~11\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|compare|Equal0~11_combout\ = (\controlpath_risc|m_comp_b~combout\) # ((!\datapath_risc|compare|final[5]~14_combout\ & (\datapath_risc|RF|Mux11~4\ $ (!\datapath_risc|RF|Mux27~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f9",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|RF|Mux11~4\,
	datab => \datapath_risc|RF|Mux27~4_combout\,
	datac => \controlpath_risc|m_comp_b~combout\,
	datad => \datapath_risc|compare|final[5]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|compare|Equal0~11_combout\);

-- Location: LC_X9_Y9_N5
\datapath_risc|compare|final[3]~15\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|compare|final[3]~15_combout\ = \datapath_risc|RF|Mux28~4_combout\ $ (((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & ((\datapath_risc|RF|Mux12~1\))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & 
-- (\datapath_risc|RF|Mux12~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "36c6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|RF|Mux12~3\,
	datab => \datapath_risc|RF|Mux28~4_combout\,
	datac => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(11),
	datad => \datapath_risc|RF|Mux12~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|compare|final[3]~15_combout\);

-- Location: LC_X4_Y6_N2
\datapath_risc|compare|Equal0~12\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|compare|Equal0~12_combout\ = (\controlpath_risc|m_comp_b~combout\) # ((!\datapath_risc|compare|final[3]~15_combout\ & (\datapath_risc|RF|Mux29~4_combout\ $ (!\datapath_risc|RF|Mux13~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dccd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|compare|final[3]~15_combout\,
	datab => \controlpath_risc|m_comp_b~combout\,
	datac => \datapath_risc|RF|Mux29~4_combout\,
	datad => \datapath_risc|RF|Mux13~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|compare|Equal0~12_combout\);

-- Location: LC_X4_Y6_N5
\datapath_risc|compare|Equal0~14\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|compare|Equal0~14_combout\ = (\datapath_risc|compare|Equal0~10_combout\ & (\datapath_risc|compare|Equal0~13_combout\ & (\datapath_risc|compare|Equal0~11_combout\ & \datapath_risc|compare|Equal0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|compare|Equal0~10_combout\,
	datab => \datapath_risc|compare|Equal0~13_combout\,
	datac => \datapath_risc|compare|Equal0~11_combout\,
	datad => \datapath_risc|compare|Equal0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|compare|Equal0~14_combout\);

-- Location: LC_X9_Y9_N2
\datapath_risc|compare|final[15]~17\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|compare|final[15]~17_combout\ = \datapath_risc|RF|Mux16~4_combout\ $ (((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & ((\datapath_risc|RF|Mux0~1\))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & 
-- (\datapath_risc|RF|Mux0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "56a6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|RF|Mux16~4_combout\,
	datab => \datapath_risc|RF|Mux0~3\,
	datac => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(11),
	datad => \datapath_risc|RF|Mux0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|compare|final[15]~17_combout\);

-- Location: LC_X10_Y7_N6
\datapath_risc|compare|Equal0~0\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|compare|Equal0~0_combout\ = (\controlpath_risc|m_comp_b~combout\ & (((!\datapath_risc|RAM|mem_out[15]~15\ & !\datapath_risc|RAM|mem_out[14]~14\)))) # (!\controlpath_risc|m_comp_b~combout\ & (!\datapath_risc|compare|final[15]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "111d",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|compare|final[15]~17_combout\,
	datab => \controlpath_risc|m_comp_b~combout\,
	datac => \datapath_risc|RAM|mem_out[15]~15\,
	datad => \datapath_risc|RAM|mem_out[14]~14\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|compare|Equal0~0_combout\);

-- Location: LC_X5_Y9_N8
\datapath_risc|compare|final[14]~10\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|compare|final[14]~10_combout\ = \datapath_risc|RF|Mux17~4_combout\ $ (((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & (\datapath_risc|RF|Mux1~1\)) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & 
-- ((\datapath_risc|RF|Mux1~3\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "53ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|RF|Mux1~1\,
	datab => \datapath_risc|RF|Mux1~3\,
	datac => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(11),
	datad => \datapath_risc|RF|Mux17~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|compare|final[14]~10_combout\);

-- Location: LC_X8_Y6_N6
\datapath_risc|compare|Equal0~1\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|compare|Equal0~1_combout\ = (\controlpath_risc|m_comp_b~combout\ & (!\datapath_risc|RAM|mem_out[12]~12\ & ((!\datapath_risc|RAM|mem_out[13]~13\)))) # (!\controlpath_risc|m_comp_b~combout\ & 
-- (((!\datapath_risc|compare|final[14]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0347",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|RAM|mem_out[12]~12\,
	datab => \controlpath_risc|m_comp_b~combout\,
	datac => \datapath_risc|compare|final[14]~10_combout\,
	datad => \datapath_risc|RAM|mem_out[13]~13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|compare|Equal0~1_combout\);

-- Location: LC_X10_Y5_N6
\datapath_risc|compare|final[12]~18\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|compare|final[12]~18_combout\ = \datapath_risc|RF|Mux19~4_combout\ $ (((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & (\datapath_risc|RF|Mux3~1\)) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & 
-- ((\datapath_risc|RF|Mux3~3\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "47b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|RF|Mux3~1\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(11),
	datac => \datapath_risc|RF|Mux3~3\,
	datad => \datapath_risc|RF|Mux19~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|compare|final[12]~18_combout\);

-- Location: LC_X10_Y5_N1
\datapath_risc|compare|Equal0~3\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|compare|Equal0~3_combout\ = (\controlpath_risc|m_comp_b~combout\ & (!\datapath_risc|RAM|mem_out[8]~8\ & ((!\datapath_risc|RAM|mem_out[9]~9\)))) # (!\controlpath_risc|m_comp_b~combout\ & (((!\datapath_risc|compare|final[12]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0527",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_comp_b~combout\,
	datab => \datapath_risc|RAM|mem_out[8]~8\,
	datac => \datapath_risc|compare|final[12]~18_combout\,
	datad => \datapath_risc|RAM|mem_out[9]~9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|compare|Equal0~3_combout\);

-- Location: LC_X6_Y4_N4
\datapath_risc|compare|final[13]~11\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|compare|final[13]~11_combout\ = \datapath_risc|RF|Mux18~4_combout\ $ (((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & (\datapath_risc|RF|Mux2~1\)) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & 
-- ((\datapath_risc|RF|Mux2~3\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "596a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|RF|Mux18~4_combout\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(11),
	datac => \datapath_risc|RF|Mux2~1\,
	datad => \datapath_risc|RF|Mux2~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|compare|final[13]~11_combout\);

-- Location: LC_X9_Y7_N2
\datapath_risc|compare|Equal0~2\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|compare|Equal0~2_combout\ = (\controlpath_risc|m_comp_b~combout\ & (!\datapath_risc|RAM|mem_out[10]~10\ & (!\datapath_risc|RAM|mem_out[11]~11\))) # (!\controlpath_risc|m_comp_b~combout\ & (((!\datapath_risc|compare|final[13]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0437",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|RAM|mem_out[10]~10\,
	datab => \controlpath_risc|m_comp_b~combout\,
	datac => \datapath_risc|RAM|mem_out[11]~11\,
	datad => \datapath_risc|compare|final[13]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|compare|Equal0~2_combout\);

-- Location: LC_X9_Y7_N0
\datapath_risc|compare|Equal0~4\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|compare|Equal0~4_combout\ = (\datapath_risc|compare|Equal0~0_combout\ & (\datapath_risc|compare|Equal0~1_combout\ & (\datapath_risc|compare|Equal0~3_combout\ & \datapath_risc|compare|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|compare|Equal0~0_combout\,
	datab => \datapath_risc|compare|Equal0~1_combout\,
	datac => \datapath_risc|compare|Equal0~3_combout\,
	datad => \datapath_risc|compare|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|compare|Equal0~4_combout\);

-- Location: LC_X11_Y7_N9
\datapath_risc|compare|final[11]~19\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|compare|final[11]~19_combout\ = \datapath_risc|RF|Mux20~4_combout\ $ (((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & ((\datapath_risc|RF|Mux4~1\))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & 
-- (\datapath_risc|RF|Mux4~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1be4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(11),
	datab => \datapath_risc|RF|Mux4~3\,
	datac => \datapath_risc|RF|Mux4~1\,
	datad => \datapath_risc|RF|Mux20~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|compare|final[11]~19_combout\);

-- Location: LC_X11_Y7_N4
\datapath_risc|compare|Equal0~5\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|compare|Equal0~5_combout\ = (\controlpath_risc|m_comp_b~combout\ & (((!\datapath_risc|RAM|mem_out[7]~7\ & !\datapath_risc|RAM|mem_out[6]~6\)))) # (!\controlpath_risc|m_comp_b~combout\ & (!\datapath_risc|compare|final[11]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "111b",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_comp_b~combout\,
	datab => \datapath_risc|compare|final[11]~19_combout\,
	datac => \datapath_risc|RAM|mem_out[7]~7\,
	datad => \datapath_risc|RAM|mem_out[6]~6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|compare|Equal0~5_combout\);

-- Location: LC_X5_Y10_N0
\datapath_risc|compare|final[10]~20\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|compare|final[10]~20_combout\ = \datapath_risc|RF|Mux21~4_combout\ $ (((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & (\datapath_risc|RF|Mux5~1\)) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & 
-- ((\datapath_risc|RF|Mux5~3\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "663c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|RF|Mux5~1\,
	datab => \datapath_risc|RF|Mux21~4_combout\,
	datac => \datapath_risc|RF|Mux5~3\,
	datad => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|compare|final[10]~20_combout\);

-- Location: LC_X9_Y6_N5
\datapath_risc|compare|Equal0~6\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|compare|Equal0~6_combout\ = (\controlpath_risc|m_comp_b~combout\ & (((!\datapath_risc|RAM|mem_out[4]~4\ & !\datapath_risc|RAM|mem_out[5]~5\)))) # (!\controlpath_risc|m_comp_b~combout\ & (!\datapath_risc|compare|final[10]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "111b",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_comp_b~combout\,
	datab => \datapath_risc|compare|final[10]~20_combout\,
	datac => \datapath_risc|RAM|mem_out[4]~4\,
	datad => \datapath_risc|RAM|mem_out[5]~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|compare|Equal0~6_combout\);

-- Location: LC_X8_Y10_N0
\datapath_risc|compare|final[8]~12\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|compare|final[8]~12_combout\ = \datapath_risc|RF|Mux23~4_combout\ $ (((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & ((\datapath_risc|RF|Mux7~1\))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & 
-- (\datapath_risc|RF|Mux7~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1de2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|RF|Mux7~3\,
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(11),
	datac => \datapath_risc|RF|Mux7~1\,
	datad => \datapath_risc|RF|Mux23~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|compare|final[8]~12_combout\);

-- Location: LC_X8_Y10_N2
\datapath_risc|compare|Equal0~8\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|compare|Equal0~8_combout\ = (\controlpath_risc|m_comp_b~combout\ & (!\datapath_risc|RAM|mem_out[1]~1\ & ((!\datapath_risc|RAM|mem_out[0]~0\)))) # (!\controlpath_risc|m_comp_b~combout\ & (((!\datapath_risc|compare|final[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0527",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_comp_b~combout\,
	datab => \datapath_risc|RAM|mem_out[1]~1\,
	datac => \datapath_risc|compare|final[8]~12_combout\,
	datad => \datapath_risc|RAM|mem_out[0]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|compare|Equal0~8_combout\);

-- Location: LC_X12_Y7_N9
\datapath_risc|compare|final[9]~21\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|compare|final[9]~21_combout\ = \datapath_risc|RF|Mux22~4_combout\ $ (((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & ((\datapath_risc|RF|Mux6~1\))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(11) & 
-- (\datapath_risc|RF|Mux6~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1eb4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(11),
	datab => \datapath_risc|RF|Mux6~3\,
	datac => \datapath_risc|RF|Mux22~4_combout\,
	datad => \datapath_risc|RF|Mux6~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|compare|final[9]~21_combout\);

-- Location: LC_X13_Y7_N4
\datapath_risc|compare|Equal0~7\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|compare|Equal0~7_combout\ = (\controlpath_risc|m_comp_b~combout\ & (((!\datapath_risc|RAM|mem_out[2]~2\ & !\datapath_risc|RAM|mem_out[3]~3\)))) # (!\controlpath_risc|m_comp_b~combout\ & (!\datapath_risc|compare|final[9]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "111b",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_comp_b~combout\,
	datab => \datapath_risc|compare|final[9]~21_combout\,
	datac => \datapath_risc|RAM|mem_out[2]~2\,
	datad => \datapath_risc|RAM|mem_out[3]~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|compare|Equal0~7_combout\);

-- Location: LC_X9_Y7_N1
\datapath_risc|compare|Equal0~9\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|compare|Equal0~9_combout\ = (\datapath_risc|compare|Equal0~5_combout\ & (\datapath_risc|compare|Equal0~6_combout\ & (\datapath_risc|compare|Equal0~8_combout\ & \datapath_risc|compare|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|compare|Equal0~5_combout\,
	datab => \datapath_risc|compare|Equal0~6_combout\,
	datac => \datapath_risc|compare|Equal0~8_combout\,
	datad => \datapath_risc|compare|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|compare|Equal0~9_combout\);

-- Location: LC_X9_Y7_N7
\datapath_risc|compare|Equal0~15\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|compare|Equal0~15_combout\ = ((\datapath_risc|compare|Equal0~14_combout\ & (\datapath_risc|compare|Equal0~4_combout\ & \datapath_risc|compare|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \datapath_risc|compare|Equal0~14_combout\,
	datac => \datapath_risc|compare|Equal0~4_combout\,
	datad => \datapath_risc|compare|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|compare|Equal0~15_combout\);

-- Location: LC_X9_Y7_N3
\controlpath_risc|Q.JAL2\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|Q.JAL2~regout\ = DFFEAS((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(12) & ((\controlpath_risc|Q.JMP~regout\) # ((\datapath_risc|compare|Equal0~15_combout\ & \controlpath_risc|Q.BEQ~regout\)))) # 
-- (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(12) & (((\datapath_risc|compare|Equal0~15_combout\ & \controlpath_risc|Q.BEQ~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , \reset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(12),
	datab => \controlpath_risc|Q.JMP~regout\,
	datac => \datapath_risc|compare|Equal0~15_combout\,
	datad => \controlpath_risc|Q.BEQ~regout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlpath_risc|Q.JAL2~regout\);

-- Location: LC_X3_Y7_N6
\controlpath_risc|WideOr12~0\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|WideOr12~0_combout\ = (\controlpath_risc|Q.JRI~regout\) # (((\controlpath_risc|Q.JAL2~regout\) # (\controlpath_risc|Q.ADL~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|Q.JRI~regout\,
	datac => \controlpath_risc|Q.JAL2~regout\,
	datad => \controlpath_risc|Q.ADL~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|WideOr12~0_combout\);

-- Location: LC_X4_Y7_N5
\controlpath_risc|m_op1_1\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|m_op1_1~combout\ = (GLOBAL(\controlpath_risc|m_op1_1~0_combout\) & (\controlpath_risc|m_op1_1~combout\)) # (!GLOBAL(\controlpath_risc|m_op1_1~0_combout\) & (((\controlpath_risc|WideOr12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_op1_1~combout\,
	datab => \controlpath_risc|WideOr12~0_combout\,
	datac => \controlpath_risc|m_op1_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|m_op1_1~combout\);

-- Location: LC_X6_Y10_N0
\datapath_risc|mux_op2|output~3\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op2|output~3_combout\ = (\controlpath_risc|m_op2_0~combout\ & (\datapath_risc|RF|Mux29~4_combout\ & ((!\controlpath_risc|m_op2_1~combout\)))) # (!\controlpath_risc|m_op2_0~combout\ & (((\datapath_risc|RF|Mux13~4\ & 
-- \controlpath_risc|m_op2_1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_op2_0~combout\,
	datab => \datapath_risc|RF|Mux29~4_combout\,
	datac => \datapath_risc|RF|Mux13~4\,
	datad => \controlpath_risc|m_op2_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op2|output~3_combout\);

-- Location: LC_X6_Y10_N1
\datapath_risc|mux_op2|output~4\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_op2|output~4_combout\ = (\datapath_risc|mux_op2|output~3_combout\) # ((\controlpath_risc|m_op2_0~combout\ & (\controlpath_risc|m_op2_1~combout\ & \datapath_risc|Inst_reg_exe|next_instruction1|dout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_op2_0~combout\,
	datab => \controlpath_risc|m_op2_1~combout\,
	datac => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(2),
	datad => \datapath_risc|mux_op2|output~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_op2|output~4_combout\);

-- Location: LC_X6_Y8_N5
\datapath_risc|alu_unit|output[2]~2\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|alu_unit|output[2]~2_combout\ = (\controlpath_risc|op_sel~combout\ & (((!\datapath_risc|mux_op2|output~4_combout\)) # (!\datapath_risc|mux_op1|output[2]~3\))) # (!\controlpath_risc|op_sel~combout\ & (\datapath_risc|mux_op1|output[2]~3\ $ 
-- (\datapath_risc|mux_op2|output~4_combout\ $ (\datapath_risc|alu_unit|carry~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7796",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_op1|output[2]~3\,
	datab => \datapath_risc|mux_op2|output~4_combout\,
	datac => \datapath_risc|alu_unit|carry~combout\,
	datad => \controlpath_risc|op_sel~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|alu_unit|output[2]~2_combout\);

-- Location: LC_X10_Y8_N8
\datapath_risc|regA|dout[2]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_mem_a|output[2]~3\ = (\controlpath_risc|m_mem_a~combout\ & (((\datapath_risc|RF|Mux29~4_combout\)))) # (!\controlpath_risc|m_mem_a~combout\ & (((N3_dout[2]))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \controlpath_risc|m_mem_a~combout\,
	datac => \datapath_risc|alu_unit|output[2]~2_combout\,
	datad => \datapath_risc|RF|Mux29~4_combout\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \controlpath_risc|en_A~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_mem_a|output[2]~3\,
	regout => \datapath_risc|regA|dout\(2));

-- Location: LC_X13_Y6_N3
\datapath_risc|RAM|memory~147\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~147_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~452_combout\, \datapath_risc|RF|Mux1~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux1~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~147_regout\);

-- Location: LC_X12_Y8_N9
\datapath_risc|RAM|memory~115\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~417\ = (\datapath_risc|mux_mem_a|output[1]~0\ & (((\datapath_risc|mux_mem_a|output[0]~1\)))) # (!\datapath_risc|mux_mem_a|output[1]~0\ & ((\datapath_risc|mux_mem_a|output[0]~1\ & ((M1L111Q))) # 
-- (!\datapath_risc|mux_mem_a|output[0]~1\ & (\datapath_risc|RAM|memory~99_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[1]~0\,
	datab => \datapath_risc|RAM|memory~99_regout\,
	datac => \datapath_risc|RF|Mux1~4\,
	datad => \datapath_risc|mux_mem_a|output[0]~1\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~417\,
	regout => \datapath_risc|RAM|memory~115_regout\);

-- Location: LC_X12_Y8_N8
\datapath_risc|RAM|memory~131\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~418\ = (\datapath_risc|mux_mem_a|output[1]~0\ & ((\datapath_risc|RAM|memory~417\ & (\datapath_risc|RAM|memory~147_regout\)) # (!\datapath_risc|RAM|memory~417\ & ((M1L127Q))))) # (!\datapath_risc|mux_mem_a|output[1]~0\ & 
-- (((\datapath_risc|RAM|memory~417\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~147_regout\,
	datab => \datapath_risc|mux_mem_a|output[1]~0\,
	datac => \datapath_risc|RF|Mux1~4\,
	datad => \datapath_risc|RAM|memory~417\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~418\,
	regout => \datapath_risc|RAM|memory~131_regout\);

-- Location: LC_X13_Y5_N2
\datapath_risc|RAM|memory~211\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~211_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~444_combout\, \datapath_risc|RF|Mux1~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux1~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~211_regout\);

-- Location: LC_X10_Y4_N1
\datapath_risc|RAM|memory~163\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~163_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~442_combout\, \datapath_risc|RF|Mux1~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux1~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~163_regout\);

-- Location: LC_X10_Y10_N2
\datapath_risc|RAM|memory~195\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~419\ = (\datapath_risc|mux_mem_a|output[1]~0\ & ((\datapath_risc|mux_mem_a|output[0]~1\) # ((M1L191Q)))) # (!\datapath_risc|mux_mem_a|output[1]~0\ & (!\datapath_risc|mux_mem_a|output[0]~1\ & 
-- ((\datapath_risc|RAM|memory~163_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[1]~0\,
	datab => \datapath_risc|mux_mem_a|output[0]~1\,
	datac => \datapath_risc|RF|Mux1~4\,
	datad => \datapath_risc|RAM|memory~163_regout\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~419\,
	regout => \datapath_risc|RAM|memory~195_regout\);

-- Location: LC_X10_Y10_N3
\datapath_risc|RAM|memory~179\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~420\ = (\datapath_risc|mux_mem_a|output[0]~1\ & ((\datapath_risc|RAM|memory~419\ & (\datapath_risc|RAM|memory~211_regout\)) # (!\datapath_risc|RAM|memory~419\ & ((M1L175Q))))) # (!\datapath_risc|mux_mem_a|output[0]~1\ & 
-- (((\datapath_risc|RAM|memory~419\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~211_regout\,
	datab => \datapath_risc|mux_mem_a|output[0]~1\,
	datac => \datapath_risc|RF|Mux1~4\,
	datad => \datapath_risc|RAM|memory~419\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~420\,
	regout => \datapath_risc|RAM|memory~179_regout\);

-- Location: LC_X14_Y9_N1
\datapath_risc|RAM|memory~83\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~83_regout\ = DFFEAS((((\datapath_risc|RF|Mux1~4\))), GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~460_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \datapath_risc|RF|Mux1~4\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~83_regout\);

-- Location: LC_X10_Y4_N4
\datapath_risc|RAM|memory~35\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~35_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~458_combout\, \datapath_risc|RF|Mux1~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux1~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~35_regout\);

-- Location: LC_X9_Y10_N8
\datapath_risc|RAM|memory~67\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~421\ = (\datapath_risc|mux_mem_a|output[0]~1\ & (((\datapath_risc|mux_mem_a|output[1]~0\)))) # (!\datapath_risc|mux_mem_a|output[0]~1\ & ((\datapath_risc|mux_mem_a|output[1]~0\ & ((M1L63Q))) # 
-- (!\datapath_risc|mux_mem_a|output[1]~0\ & (\datapath_risc|RAM|memory~35_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~35_regout\,
	datab => \datapath_risc|mux_mem_a|output[0]~1\,
	datac => \datapath_risc|RF|Mux1~4\,
	datad => \datapath_risc|mux_mem_a|output[1]~0\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~421\,
	regout => \datapath_risc|RAM|memory~67_regout\);

-- Location: LC_X9_Y10_N9
\datapath_risc|RAM|memory~51\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~422\ = (\datapath_risc|mux_mem_a|output[0]~1\ & ((\datapath_risc|RAM|memory~421\ & (\datapath_risc|RAM|memory~83_regout\)) # (!\datapath_risc|RAM|memory~421\ & ((M1L47Q))))) # (!\datapath_risc|mux_mem_a|output[0]~1\ & 
-- (((\datapath_risc|RAM|memory~421\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~83_regout\,
	datab => \datapath_risc|mux_mem_a|output[0]~1\,
	datac => \datapath_risc|RF|Mux1~4\,
	datad => \datapath_risc|RAM|memory~421\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~422\,
	regout => \datapath_risc|RAM|memory~51_regout\);

-- Location: LC_X9_Y10_N7
\datapath_risc|RAM|memory~423\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~423_combout\ = (\datapath_risc|mux_mem_a|output[2]~3\ & (\datapath_risc|mux_mem_a|output[3]~2\)) # (!\datapath_risc|mux_mem_a|output[2]~3\ & ((\datapath_risc|mux_mem_a|output[3]~2\ & (\datapath_risc|RAM|memory~420\)) # 
-- (!\datapath_risc|mux_mem_a|output[3]~2\ & ((\datapath_risc|RAM|memory~422\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_mem_a|output[2]~3\,
	datab => \datapath_risc|mux_mem_a|output[3]~2\,
	datac => \datapath_risc|RAM|memory~420\,
	datad => \datapath_risc|RAM|memory~422\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~423_combout\);

-- Location: LC_X13_Y9_N6
\datapath_risc|RAM|memory~275\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~275_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~468_combout\, \datapath_risc|RF|Mux1~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux1~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~275_regout\);

-- Location: LC_X14_Y9_N2
\datapath_risc|RAM|memory~227\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~227_regout\ = DFFEAS((((\datapath_risc|RF|Mux1~4\))), GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~466_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \datapath_risc|RF|Mux1~4\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~227_regout\);

-- Location: LC_X14_Y8_N4
\datapath_risc|RAM|memory~243\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~424\ = (\datapath_risc|mux_mem_a|output[1]~0\ & (((\datapath_risc|mux_mem_a|output[0]~1\)))) # (!\datapath_risc|mux_mem_a|output[1]~0\ & ((\datapath_risc|mux_mem_a|output[0]~1\ & ((M1L239Q))) # 
-- (!\datapath_risc|mux_mem_a|output[0]~1\ & (\datapath_risc|RAM|memory~227_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~227_regout\,
	datab => \datapath_risc|mux_mem_a|output[1]~0\,
	datac => \datapath_risc|RF|Mux1~4\,
	datad => \datapath_risc|mux_mem_a|output[0]~1\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~424\,
	regout => \datapath_risc|RAM|memory~243_regout\);

-- Location: LC_X14_Y8_N5
\datapath_risc|RAM|memory~259\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~425\ = (\datapath_risc|mux_mem_a|output[1]~0\ & ((\datapath_risc|RAM|memory~424\ & (\datapath_risc|RAM|memory~275_regout\)) # (!\datapath_risc|RAM|memory~424\ & ((M1L255Q))))) # (!\datapath_risc|mux_mem_a|output[1]~0\ & 
-- (((\datapath_risc|RAM|memory~424\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[1]~0\,
	datab => \datapath_risc|RAM|memory~275_regout\,
	datac => \datapath_risc|RF|Mux1~4\,
	datad => \datapath_risc|RAM|memory~424\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~425\,
	regout => \datapath_risc|RAM|memory~259_regout\);

-- Location: LC_X10_Y7_N2
\datapath_risc|RAM|memory~426\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~426_combout\ = (\datapath_risc|mux_mem_a|output[2]~3\ & ((\datapath_risc|RAM|memory~423_combout\ & ((\datapath_risc|RAM|memory~425\))) # (!\datapath_risc|RAM|memory~423_combout\ & (\datapath_risc|RAM|memory~418\)))) # 
-- (!\datapath_risc|mux_mem_a|output[2]~3\ & (((\datapath_risc|RAM|memory~423_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f858",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_mem_a|output[2]~3\,
	datab => \datapath_risc|RAM|memory~418\,
	datac => \datapath_risc|RAM|memory~423_combout\,
	datad => \datapath_risc|RAM|memory~425\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~426_combout\);

-- Location: LC_X7_Y6_N3
\datapath_risc|Inst_reg_exe|next_instruction1|dout[14]\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|main~0\ = (N1_dout[14] & ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(12) & (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(13) & !\datapath_risc|Inst_reg_exe|next_instruction1|dout\(15))) # 
-- (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(12) & (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(13) & \datapath_risc|Inst_reg_exe|next_instruction1|dout\(15)))))
-- \datapath_risc|Inst_reg_exe|next_instruction1|dout\(14) = DFFEAS(\controlpath_risc|main~0\, GLOBAL(\clk~combout\), !GLOBAL(\reset~combout\), , \controlpath_risc|en_ir~combout\, \datapath_risc|Inst_reg_fetch|next_instruction|dout\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1080",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(12),
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(13),
	datac => \datapath_risc|Inst_reg_fetch|next_instruction|dout\(14),
	datad => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(15),
	aclr => \reset~combout\,
	sload => VCC,
	ena => \controlpath_risc|en_ir~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|main~0\,
	regout => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(14));

-- Location: LC_X1_Y7_N8
\controlpath_risc|nQ.SW1~0\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|nQ.SW1~0_combout\ = (!\reset~combout\ & (!\controlpath_risc|main~0\ & (\controlpath_risc|Q.FETCH~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \controlpath_risc|main~0\,
	datac => \controlpath_risc|Q.FETCH~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|nQ.SW1~0_combout\);

-- Location: LC_X1_Y8_N9
\controlpath_risc|Q.SW1\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|Q.SW1~regout\ = DFFEAS((!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(13) & (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(14) & (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(12) & 
-- \controlpath_risc|nQ.SW1~0_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(13),
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(14),
	datac => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(12),
	datad => \controlpath_risc|nQ.SW1~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlpath_risc|Q.SW1~regout\);

-- Location: LC_X2_Y9_N2
\controlpath_risc|Q.SW2\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|Q.SW2~regout\ = DFFEAS(((!\reset~combout\ & ((\controlpath_risc|Q.SW1~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \reset~combout\,
	datad => \controlpath_risc|Q.SW1~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlpath_risc|Q.SW2~regout\);

-- Location: LC_X1_Y9_N0
\controlpath_risc|m_mem_a~4\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|m_mem_a~4_combout\ = (\reset~combout\) # ((!\controlpath_risc|Q.SW2~regout\ & (!\controlpath_risc|Q.LW2~regout\ & \controlpath_risc|WideOr8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "abaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \controlpath_risc|Q.SW2~regout\,
	datac => \controlpath_risc|Q.LW2~regout\,
	datad => \controlpath_risc|WideOr8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|m_mem_a~4_combout\);

-- Location: LC_X9_Y8_N8
\controlpath_risc|m_mem_a\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|m_mem_a~combout\ = ((\controlpath_risc|m_mem_a~4_combout\ & ((\controlpath_risc|m_mem_a~combout\))) # (!\controlpath_risc|m_mem_a~4_combout\ & (\controlpath_risc|WideOr8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \controlpath_risc|m_mem_a~4_combout\,
	datac => \controlpath_risc|WideOr8~0_combout\,
	datad => \controlpath_risc|m_mem_a~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|m_mem_a~combout\);

-- Location: LC_X9_Y8_N0
\datapath_risc|regA|dout[0]\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_mem_a|output[0]~1\ = (\controlpath_risc|m_mem_a~combout\ & (((\datapath_risc|RF|Mux31~4\)))) # (!\controlpath_risc|m_mem_a~combout\ & (((N3_dout[0]))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \controlpath_risc|m_mem_a~combout\,
	datac => \datapath_risc|alu_unit|output[0]~0_combout\,
	datad => \datapath_risc|RF|Mux31~4\,
	aclr => \reset~combout\,
	sload => VCC,
	ena => \controlpath_risc|en_A~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_mem_a|output[0]~1\,
	regout => \datapath_risc|regA|dout\(0));

-- Location: LC_X12_Y5_N9
\datapath_risc|RAM|memory~244\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~244_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~462_combout\, \datapath_risc|RF|Mux0~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux0~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~244_regout\);

-- Location: LC_X11_Y10_N9
\datapath_risc|RAM|memory~52\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~52_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~456_combout\, \datapath_risc|RF|Mux0~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux0~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~52_regout\);

-- Location: LC_X11_Y6_N1
\datapath_risc|RAM|memory~180\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~427\ = (\datapath_risc|mux_mem_a|output[2]~3\ & (((\datapath_risc|mux_mem_a|output[3]~2\)))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & ((\datapath_risc|mux_mem_a|output[3]~2\ & ((M1L176Q))) # 
-- (!\datapath_risc|mux_mem_a|output[3]~2\ & (\datapath_risc|RAM|memory~52_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~52_regout\,
	datab => \datapath_risc|mux_mem_a|output[2]~3\,
	datac => \datapath_risc|RF|Mux0~4\,
	datad => \datapath_risc|mux_mem_a|output[3]~2\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~427\,
	regout => \datapath_risc|RAM|memory~180_regout\);

-- Location: LC_X11_Y6_N5
\datapath_risc|RAM|memory~116\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~428\ = (\datapath_risc|mux_mem_a|output[2]~3\ & ((\datapath_risc|RAM|memory~427\ & (\datapath_risc|RAM|memory~244_regout\)) # (!\datapath_risc|RAM|memory~427\ & ((M1L112Q))))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & 
-- (((\datapath_risc|RAM|memory~427\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~244_regout\,
	datab => \datapath_risc|mux_mem_a|output[2]~3\,
	datac => \datapath_risc|RF|Mux0~4\,
	datad => \datapath_risc|RAM|memory~427\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~428\,
	regout => \datapath_risc|RAM|memory~116_regout\);

-- Location: LC_X15_Y9_N6
\datapath_risc|RAM|memory~276\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~276_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~468_combout\, \datapath_risc|RF|Mux0~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux0~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~276_regout\);

-- Location: LC_X14_Y10_N0
\datapath_risc|RAM|memory~84\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~84_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~460_combout\, \datapath_risc|RF|Mux0~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux0~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~84_regout\);

-- Location: LC_X15_Y8_N0
\datapath_risc|RAM|memory~212\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~434\ = (\datapath_risc|mux_mem_a|output[2]~3\ & (((\datapath_risc|mux_mem_a|output[3]~2\)))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & ((\datapath_risc|mux_mem_a|output[3]~2\ & ((M1L208Q))) # 
-- (!\datapath_risc|mux_mem_a|output[3]~2\ & (\datapath_risc|RAM|memory~84_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~84_regout\,
	datab => \datapath_risc|mux_mem_a|output[2]~3\,
	datac => \datapath_risc|RF|Mux0~4\,
	datad => \datapath_risc|mux_mem_a|output[3]~2\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~434\,
	regout => \datapath_risc|RAM|memory~212_regout\);

-- Location: LC_X15_Y8_N6
\datapath_risc|RAM|memory~148\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~435\ = (\datapath_risc|mux_mem_a|output[2]~3\ & ((\datapath_risc|RAM|memory~434\ & (\datapath_risc|RAM|memory~276_regout\)) # (!\datapath_risc|RAM|memory~434\ & ((M1L144Q))))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & 
-- (((\datapath_risc|RAM|memory~434\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~276_regout\,
	datab => \datapath_risc|mux_mem_a|output[2]~3\,
	datac => \datapath_risc|RF|Mux0~4\,
	datad => \datapath_risc|RAM|memory~434\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~435\,
	regout => \datapath_risc|RAM|memory~148_regout\);

-- Location: LC_X11_Y4_N8
\datapath_risc|RAM|memory~228\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~228_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~466_combout\, \datapath_risc|RF|Mux0~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux0~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~228_regout\);

-- Location: LC_X12_Y5_N3
\datapath_risc|RAM|memory~36\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~36_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~458_combout\, \datapath_risc|RF|Mux0~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux0~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~36_regout\);

-- Location: LC_X11_Y8_N9
\datapath_risc|RAM|memory~100\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~431\ = (\datapath_risc|mux_mem_a|output[3]~2\ & (((\datapath_risc|mux_mem_a|output[2]~3\)))) # (!\datapath_risc|mux_mem_a|output[3]~2\ & ((\datapath_risc|mux_mem_a|output[2]~3\ & ((M1L96Q))) # 
-- (!\datapath_risc|mux_mem_a|output[2]~3\ & (\datapath_risc|RAM|memory~36_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[3]~2\,
	datab => \datapath_risc|RAM|memory~36_regout\,
	datac => \datapath_risc|RF|Mux0~4\,
	datad => \datapath_risc|mux_mem_a|output[2]~3\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~431\,
	regout => \datapath_risc|RAM|memory~100_regout\);

-- Location: LC_X11_Y8_N6
\datapath_risc|RAM|memory~164\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~432\ = (\datapath_risc|mux_mem_a|output[3]~2\ & ((\datapath_risc|RAM|memory~431\ & (\datapath_risc|RAM|memory~228_regout\)) # (!\datapath_risc|RAM|memory~431\ & ((M1L160Q))))) # (!\datapath_risc|mux_mem_a|output[3]~2\ & 
-- (((\datapath_risc|RAM|memory~431\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[3]~2\,
	datab => \datapath_risc|RAM|memory~228_regout\,
	datac => \datapath_risc|RF|Mux0~4\,
	datad => \datapath_risc|RAM|memory~431\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~432\,
	regout => \datapath_risc|RAM|memory~164_regout\);

-- Location: LC_X11_Y5_N3
\datapath_risc|RAM|memory~260\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~260_regout\ = DFFEAS((((\datapath_risc|RF|Mux0~4\))), GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~464_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \datapath_risc|RF|Mux0~4\,
	aclr => GND,
	ena => \datapath_risc|RAM|memory~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~260_regout\);

-- Location: LC_X12_Y10_N5
\datapath_risc|RAM|memory~68\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~68_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \datapath_risc|RAM|memory~454_combout\, \datapath_risc|RF|Mux0~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \datapath_risc|RF|Mux0~4\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath_risc|RAM|memory~68_regout\);

-- Location: LC_X10_Y8_N6
\datapath_risc|RAM|memory~132\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~429\ = (\datapath_risc|mux_mem_a|output[2]~3\ & (((M1L128Q) # (\datapath_risc|mux_mem_a|output[3]~2\)))) # (!\datapath_risc|mux_mem_a|output[2]~3\ & (\datapath_risc|RAM|memory~68_regout\ & 
-- ((!\datapath_risc|mux_mem_a|output[3]~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|mux_mem_a|output[2]~3\,
	datab => \datapath_risc|RAM|memory~68_regout\,
	datac => \datapath_risc|RF|Mux0~4\,
	datad => \datapath_risc|mux_mem_a|output[3]~2\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~429\,
	regout => \datapath_risc|RAM|memory~132_regout\);

-- Location: LC_X11_Y7_N0
\datapath_risc|RAM|memory~196\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~430\ = (\datapath_risc|mux_mem_a|output[3]~2\ & ((\datapath_risc|RAM|memory~429\ & (\datapath_risc|RAM|memory~260_regout\)) # (!\datapath_risc|RAM|memory~429\ & ((M1L192Q))))) # (!\datapath_risc|mux_mem_a|output[3]~2\ & 
-- (((\datapath_risc|RAM|memory~429\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|RAM|memory~260_regout\,
	datab => \datapath_risc|mux_mem_a|output[3]~2\,
	datac => \datapath_risc|RF|Mux0~4\,
	datad => \datapath_risc|RAM|memory~429\,
	aclr => GND,
	sload => VCC,
	ena => \datapath_risc|RAM|memory~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~430\,
	regout => \datapath_risc|RAM|memory~196_regout\);

-- Location: LC_X10_Y7_N8
\datapath_risc|RAM|memory~433\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~433_combout\ = (\datapath_risc|mux_mem_a|output[1]~0\ & (((\datapath_risc|RAM|memory~430\) # (\datapath_risc|mux_mem_a|output[0]~1\)))) # (!\datapath_risc|mux_mem_a|output[1]~0\ & (\datapath_risc|RAM|memory~432\ & 
-- ((!\datapath_risc|mux_mem_a|output[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_mem_a|output[1]~0\,
	datab => \datapath_risc|RAM|memory~432\,
	datac => \datapath_risc|RAM|memory~430\,
	datad => \datapath_risc|mux_mem_a|output[0]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~433_combout\);

-- Location: LC_X10_Y7_N9
\datapath_risc|RAM|memory~436\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|RAM|memory~436_combout\ = (\datapath_risc|mux_mem_a|output[0]~1\ & ((\datapath_risc|RAM|memory~433_combout\ & ((\datapath_risc|RAM|memory~435\))) # (!\datapath_risc|RAM|memory~433_combout\ & (\datapath_risc|RAM|memory~428\)))) # 
-- (!\datapath_risc|mux_mem_a|output[0]~1\ & (((\datapath_risc|RAM|memory~433_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|mux_mem_a|output[0]~1\,
	datab => \datapath_risc|RAM|memory~428\,
	datac => \datapath_risc|RAM|memory~435\,
	datad => \datapath_risc|RAM|memory~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|RAM|memory~436_combout\);

-- Location: LC_X1_Y8_N6
\controlpath_risc|Q.LW1\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|Q.LW1~regout\ = DFFEAS((\controlpath_risc|nQ.LW1~0_combout\ & (\controlpath_risc|main~0\ & ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(15)) # (!\controlpath_risc|Equal9~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(15),
	datab => \controlpath_risc|Equal9~0_combout\,
	datac => \controlpath_risc|nQ.LW1~0_combout\,
	datad => \controlpath_risc|main~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlpath_risc|Q.LW1~regout\);

-- Location: LC_X1_Y9_N4
\controlpath_risc|Q.LW2\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|Q.LW2~regout\ = DFFEAS(((!\reset~combout\ & ((\controlpath_risc|Q.LW1~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \reset~combout\,
	datad => \controlpath_risc|Q.LW1~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlpath_risc|Q.LW2~regout\);

-- Location: LC_X1_Y9_N8
\controlpath_risc|WideOr4\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|WideOr4~combout\ = ((\controlpath_risc|Q.RST1~regout\) # ((\controlpath_risc|Q.LW2~regout\) # (\controlpath_risc|Q.HKT~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \controlpath_risc|Q.RST1~regout\,
	datac => \controlpath_risc|Q.LW2~regout\,
	datad => \controlpath_risc|Q.HKT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|WideOr4~combout\);

-- Location: LC_X1_Y9_N9
\controlpath_risc|rd_mem\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|rd_mem~combout\ = ((GLOBAL(\reset~combout\) & (\controlpath_risc|rd_mem~combout\)) # (!GLOBAL(\reset~combout\) & ((\controlpath_risc|WideOr4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \controlpath_risc|rd_mem~combout\,
	datac => \reset~combout\,
	datad => \controlpath_risc|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|rd_mem~combout\);

-- Location: LC_X2_Y8_N1
\controlpath_risc|main~1\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|main~1_combout\ = (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(14) & (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(15) & (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(12) $ 
-- (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(14),
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(12),
	datac => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(15),
	datad => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|main~1_combout\);

-- Location: LC_X2_Y8_N8
\controlpath_risc|Selector13~5\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|Selector13~5_combout\ = (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(15) & ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(13)) # (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(14) $ 
-- (\datapath_risc|Inst_reg_exe|next_instruction1|dout\(12))))) # (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(15) & ((\datapath_risc|Inst_reg_exe|next_instruction1|dout\(14) $ (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(13))) # 
-- (!\datapath_risc|Inst_reg_exe|next_instruction1|dout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fb67",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(14),
	datab => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(12),
	datac => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(15),
	datad => \datapath_risc|Inst_reg_exe|next_instruction1|dout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|Selector13~5_combout\);

-- Location: LC_X1_Y8_N8
\controlpath_risc|Q.JMP\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|Q.JMP~regout\ = DFFEAS((\controlpath_risc|main~1_combout\ & (\controlpath_risc|nQ.LW1~0_combout\ & (!\controlpath_risc|main~0\ & \controlpath_risc|Selector13~5_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \controlpath_risc|main~1_combout\,
	datab => \controlpath_risc|nQ.LW1~0_combout\,
	datac => \controlpath_risc|main~0\,
	datad => \controlpath_risc|Selector13~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlpath_risc|Q.JMP~regout\);

-- Location: LC_X1_Y9_N3
\controlpath_risc|WideOr6~2\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|WideOr6~2_combout\ = ((\controlpath_risc|Q.RST1~regout\) # ((\controlpath_risc|Q.JMP~regout\) # (\controlpath_risc|Q.HKT~regout\))) # (!\controlpath_risc|WideOr20~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|WideOr20~0_combout\,
	datab => \controlpath_risc|Q.RST1~regout\,
	datac => \controlpath_risc|Q.JMP~regout\,
	datad => \controlpath_risc|Q.HKT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|WideOr6~2_combout\);

-- Location: LC_X5_Y7_N9
\controlpath_risc|Selector13~4\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|Selector13~4_combout\ = (\controlpath_risc|main~2_combout\ & (!\controlpath_risc|main~0\ & (\controlpath_risc|Selector13~6\ & \controlpath_risc|Q.FETCH~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|main~2_combout\,
	datab => \controlpath_risc|main~0\,
	datac => \controlpath_risc|Selector13~6\,
	datad => \controlpath_risc|Q.FETCH~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|Selector13~4_combout\);

-- Location: LC_X9_Y7_N6
\controlpath_risc|Q.HKT\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|Q.HKT~regout\ = DFFEAS(((\controlpath_risc|Selector13~4_combout\) # ((!\datapath_risc|compare|Equal0~15_combout\ & \controlpath_risc|Q.BEQ~regout\))) # (!\controlpath_risc|WideOr6~2_combout\), GLOBAL(\clk~combout\), VCC, , , , , 
-- \reset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfdd",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \controlpath_risc|WideOr6~2_combout\,
	datab => \controlpath_risc|Selector13~4_combout\,
	datac => \datapath_risc|compare|Equal0~15_combout\,
	datad => \controlpath_risc|Q.BEQ~regout\,
	aclr => GND,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlpath_risc|Q.HKT~regout\);

-- Location: LC_X1_Y8_N4
\controlpath_risc|Q.FETCH\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|Q.FETCH~regout\ = DFFEAS((!\reset~combout\ & ((\controlpath_risc|Q.HKT~regout\) # ((\controlpath_risc|Q.RST1~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3232",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \controlpath_risc|Q.HKT~regout\,
	datab => \reset~combout\,
	datac => \controlpath_risc|Q.RST1~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controlpath_risc|Q.FETCH~regout\);

-- Location: LC_X1_Y8_N5
\controlpath_risc|WideOr20~0\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|WideOr20~0_combout\ = (!\controlpath_risc|Q.FETCH~regout\ & (!\controlpath_risc|Q.BEQ~regout\ & (\controlpath_risc|Q.RST~regout\ & \controlpath_risc|en_A~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|Q.FETCH~regout\,
	datab => \controlpath_risc|Q.BEQ~regout\,
	datac => \controlpath_risc|Q.RST~regout\,
	datad => \controlpath_risc|en_A~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|WideOr20~0_combout\);

-- Location: LC_X2_Y7_N9
\controlpath_risc|m_a3_1~0\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|m_a3_1~0_combout\ = (((\controlpath_risc|Q.SW2~regout\) # (\reset~combout\)) # (!\controlpath_risc|WideOr20~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \controlpath_risc|WideOr20~0_combout\,
	datac => \controlpath_risc|Q.SW2~regout\,
	datad => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|m_a3_1~0_combout\);

-- Location: LC_X2_Y6_N4
\controlpath_risc|m_d3_0~0\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|m_d3_0~0_combout\ = (\controlpath_risc|Q.JLR~regout\) # (((\controlpath_risc|Q.LW2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fafa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|Q.JLR~regout\,
	datac => \controlpath_risc|Q.LW2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|m_d3_0~0_combout\);

-- Location: LC_X4_Y7_N8
\controlpath_risc|m_d3_0\ : maxv_lcell
-- Equation(s):
-- \controlpath_risc|m_d3_0~combout\ = ((GLOBAL(\controlpath_risc|m_a3_1~0_combout\) & ((\controlpath_risc|m_d3_0~combout\))) # (!GLOBAL(\controlpath_risc|m_a3_1~0_combout\) & (\controlpath_risc|m_d3_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \controlpath_risc|m_a3_1~0_combout\,
	datac => \controlpath_risc|m_d3_0~0_combout\,
	datad => \controlpath_risc|m_d3_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \controlpath_risc|m_d3_0~combout\);

-- Location: LC_X8_Y10_N3
\datapath_risc|mux_d3|output~0\ : maxv_lcell
-- Equation(s):
-- \datapath_risc|mux_d3|output~0_combout\ = (\controlpath_risc|m_d3_0~combout\ & (\datapath_risc|RF|Mux31~4\ & ((!\controlpath_risc|m_d3_1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlpath_risc|m_d3_0~combout\,
	datab => \datapath_risc|RF|Mux31~4\,
	datad => \controlpath_risc|m_d3_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \datapath_risc|mux_d3|output~0_combout\);

-- Location: PIN_B1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock_50~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clock_50);

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r0[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[0][0]~regout\,
	oe => VCC,
	padio => ww_r0(0));

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r0[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[0][1]~regout\,
	oe => VCC,
	padio => ww_r0(1));

-- Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r0[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[0][2]~regout\,
	oe => VCC,
	padio => ww_r0(2));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r0[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[0][3]~regout\,
	oe => VCC,
	padio => ww_r0(3));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r0[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[0][4]~regout\,
	oe => VCC,
	padio => ww_r0(4));

-- Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r0[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[0][5]~regout\,
	oe => VCC,
	padio => ww_r0(5));

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r0[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[0][6]~regout\,
	oe => VCC,
	padio => ww_r0(6));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r0[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[0][7]~regout\,
	oe => VCC,
	padio => ww_r0(7));

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r0[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[0][8]~regout\,
	oe => VCC,
	padio => ww_r0(8));

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r0[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[0][9]~regout\,
	oe => VCC,
	padio => ww_r0(9));

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r0[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[0][10]~regout\,
	oe => VCC,
	padio => ww_r0(10));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r0[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[0][11]~regout\,
	oe => VCC,
	padio => ww_r0(11));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r0[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[0][12]~regout\,
	oe => VCC,
	padio => ww_r0(12));

-- Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r0[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[0][13]~regout\,
	oe => VCC,
	padio => ww_r0(13));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r0[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[0][14]~regout\,
	oe => VCC,
	padio => ww_r0(14));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r0[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[0][15]~regout\,
	oe => VCC,
	padio => ww_r0(15));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r1[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[1][0]~regout\,
	oe => VCC,
	padio => ww_r1(0));

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r1[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[1][1]~regout\,
	oe => VCC,
	padio => ww_r1(1));

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r1[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[1][2]~regout\,
	oe => VCC,
	padio => ww_r1(2));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r1[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[1][3]~regout\,
	oe => VCC,
	padio => ww_r1(3));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r1[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[1][4]~regout\,
	oe => VCC,
	padio => ww_r1(4));

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r1[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[1][5]~regout\,
	oe => VCC,
	padio => ww_r1(5));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r1[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[1][6]~regout\,
	oe => VCC,
	padio => ww_r1(6));

-- Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r1[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[1][7]~regout\,
	oe => VCC,
	padio => ww_r1(7));

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r1[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[1][8]~regout\,
	oe => VCC,
	padio => ww_r1(8));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r1[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[1][9]~regout\,
	oe => VCC,
	padio => ww_r1(9));

-- Location: PIN_A2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r1[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[1][10]~regout\,
	oe => VCC,
	padio => ww_r1(10));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r1[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[1][11]~regout\,
	oe => VCC,
	padio => ww_r1(11));

-- Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r1[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[1][12]~regout\,
	oe => VCC,
	padio => ww_r1(12));

-- Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r1[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[1][13]~regout\,
	oe => VCC,
	padio => ww_r1(13));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r1[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[1][14]~regout\,
	oe => VCC,
	padio => ww_r1(14));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r1[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[1][15]~regout\,
	oe => VCC,
	padio => ww_r1(15));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r2[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[2][0]~regout\,
	oe => VCC,
	padio => ww_r2(0));

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r2[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[2][1]~regout\,
	oe => VCC,
	padio => ww_r2(1));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r2[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[2][2]~regout\,
	oe => VCC,
	padio => ww_r2(2));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r2[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[2][3]~regout\,
	oe => VCC,
	padio => ww_r2(3));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r2[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[2][4]~regout\,
	oe => VCC,
	padio => ww_r2(4));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r2[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[2][5]~regout\,
	oe => VCC,
	padio => ww_r2(5));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r2[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[2][6]~regout\,
	oe => VCC,
	padio => ww_r2(6));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r2[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[2][7]~regout\,
	oe => VCC,
	padio => ww_r2(7));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r2[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[2][8]~regout\,
	oe => VCC,
	padio => ww_r2(8));

-- Location: PIN_L5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r2[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[2][9]~regout\,
	oe => VCC,
	padio => ww_r2(9));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r2[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[2][10]~regout\,
	oe => VCC,
	padio => ww_r2(10));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r2[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[2][11]~regout\,
	oe => VCC,
	padio => ww_r2(11));

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r2[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[2][12]~regout\,
	oe => VCC,
	padio => ww_r2(12));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r2[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[2][13]~regout\,
	oe => VCC,
	padio => ww_r2(13));

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r2[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[2][14]~regout\,
	oe => VCC,
	padio => ww_r2(14));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r2[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[2][15]~regout\,
	oe => VCC,
	padio => ww_r2(15));

-- Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r3[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[3][0]~regout\,
	oe => VCC,
	padio => ww_r3(0));

-- Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r3[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[3][1]~regout\,
	oe => VCC,
	padio => ww_r3(1));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r3[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[3][2]~regout\,
	oe => VCC,
	padio => ww_r3(2));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r3[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[3][3]~regout\,
	oe => VCC,
	padio => ww_r3(3));

-- Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r3[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[3][4]~regout\,
	oe => VCC,
	padio => ww_r3(4));

-- Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r3[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[3][5]~regout\,
	oe => VCC,
	padio => ww_r3(5));

-- Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r3[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[3][6]~regout\,
	oe => VCC,
	padio => ww_r3(6));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r3[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[3][7]~regout\,
	oe => VCC,
	padio => ww_r3(7));

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r3[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[3][8]~regout\,
	oe => VCC,
	padio => ww_r3(8));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r3[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[3][9]~regout\,
	oe => VCC,
	padio => ww_r3(9));

-- Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r3[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[3][10]~regout\,
	oe => VCC,
	padio => ww_r3(10));

-- Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r3[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[3][11]~regout\,
	oe => VCC,
	padio => ww_r3(11));

-- Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r3[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[3][12]~regout\,
	oe => VCC,
	padio => ww_r3(12));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r3[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[3][13]~regout\,
	oe => VCC,
	padio => ww_r3(13));

-- Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r3[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[3][14]~regout\,
	oe => VCC,
	padio => ww_r3(14));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r3[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[3][15]~regout\,
	oe => VCC,
	padio => ww_r3(15));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r4[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[4][0]~regout\,
	oe => VCC,
	padio => ww_r4(0));

-- Location: PIN_F5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r4[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[4][1]~regout\,
	oe => VCC,
	padio => ww_r4(1));

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r4[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[4][2]~regout\,
	oe => VCC,
	padio => ww_r4(2));

-- Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r4[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[4][3]~regout\,
	oe => VCC,
	padio => ww_r4(3));

-- Location: PIN_E6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r4[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[4][4]~regout\,
	oe => VCC,
	padio => ww_r4(4));

-- Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r4[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[4][5]~regout\,
	oe => VCC,
	padio => ww_r4(5));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r4[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[4][6]~regout\,
	oe => VCC,
	padio => ww_r4(6));

-- Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r4[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[4][7]~regout\,
	oe => VCC,
	padio => ww_r4(7));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r4[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[4][8]~regout\,
	oe => VCC,
	padio => ww_r4(8));

-- Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r4[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[4][9]~regout\,
	oe => VCC,
	padio => ww_r4(9));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r4[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[4][10]~regout\,
	oe => VCC,
	padio => ww_r4(10));

-- Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r4[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[4][11]~regout\,
	oe => VCC,
	padio => ww_r4(11));

-- Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r4[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[4][12]~regout\,
	oe => VCC,
	padio => ww_r4(12));

-- Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r4[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[4][13]~regout\,
	oe => VCC,
	padio => ww_r4(13));

-- Location: PIN_N6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r4[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[4][14]~regout\,
	oe => VCC,
	padio => ww_r4(14));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r4[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[4][15]~regout\,
	oe => VCC,
	padio => ww_r4(15));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r5[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[5][0]~regout\,
	oe => VCC,
	padio => ww_r5(0));

-- Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r5[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[5][1]~regout\,
	oe => VCC,
	padio => ww_r5(1));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r5[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[5][2]~regout\,
	oe => VCC,
	padio => ww_r5(2));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r5[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[5][3]~regout\,
	oe => VCC,
	padio => ww_r5(3));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r5[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[5][4]~regout\,
	oe => VCC,
	padio => ww_r5(4));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r5[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[5][5]~regout\,
	oe => VCC,
	padio => ww_r5(5));

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r5[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[5][6]~regout\,
	oe => VCC,
	padio => ww_r5(6));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r5[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[5][7]~regout\,
	oe => VCC,
	padio => ww_r5(7));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r5[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[5][8]~regout\,
	oe => VCC,
	padio => ww_r5(8));

-- Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r5[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[5][9]~regout\,
	oe => VCC,
	padio => ww_r5(9));

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r5[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[5][10]~regout\,
	oe => VCC,
	padio => ww_r5(10));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r5[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[5][11]~regout\,
	oe => VCC,
	padio => ww_r5(11));

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r5[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[5][12]~regout\,
	oe => VCC,
	padio => ww_r5(12));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r5[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[5][13]~regout\,
	oe => VCC,
	padio => ww_r5(13));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r5[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[5][14]~regout\,
	oe => VCC,
	padio => ww_r5(14));

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r5[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[5][15]~regout\,
	oe => VCC,
	padio => ww_r5(15));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r6[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[6][0]~regout\,
	oe => VCC,
	padio => ww_r6(0));

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r6[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[6][1]~regout\,
	oe => VCC,
	padio => ww_r6(1));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r6[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[6][2]~regout\,
	oe => VCC,
	padio => ww_r6(2));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r6[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[6][3]~regout\,
	oe => VCC,
	padio => ww_r6(3));

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r6[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[6][4]~regout\,
	oe => VCC,
	padio => ww_r6(4));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r6[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[6][5]~regout\,
	oe => VCC,
	padio => ww_r6(5));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r6[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[6][6]~regout\,
	oe => VCC,
	padio => ww_r6(6));

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r6[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[6][7]~regout\,
	oe => VCC,
	padio => ww_r6(7));

-- Location: PIN_N8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r6[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[6][8]~regout\,
	oe => VCC,
	padio => ww_r6(8));

-- Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r6[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[6][9]~regout\,
	oe => VCC,
	padio => ww_r6(9));

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r6[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[6][10]~regout\,
	oe => VCC,
	padio => ww_r6(10));

-- Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r6[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[6][11]~regout\,
	oe => VCC,
	padio => ww_r6(11));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r6[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[6][12]~regout\,
	oe => VCC,
	padio => ww_r6(12));

-- Location: PIN_M10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r6[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[6][13]~regout\,
	oe => VCC,
	padio => ww_r6(13));

-- Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r6[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[6][14]~regout\,
	oe => VCC,
	padio => ww_r6(14));

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r6[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[6][15]~regout\,
	oe => VCC,
	padio => ww_r6(15));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r7[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[7][0]~regout\,
	oe => VCC,
	padio => ww_r7(0));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r7[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[7][1]~regout\,
	oe => VCC,
	padio => ww_r7(1));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r7[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[7][2]~regout\,
	oe => VCC,
	padio => ww_r7(2));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r7[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[7][3]~regout\,
	oe => VCC,
	padio => ww_r7(3));

-- Location: PIN_N5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r7[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[7][4]~regout\,
	oe => VCC,
	padio => ww_r7(4));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r7[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[7][5]~regout\,
	oe => VCC,
	padio => ww_r7(5));

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r7[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[7][6]~regout\,
	oe => VCC,
	padio => ww_r7(6));

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r7[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[7][7]~regout\,
	oe => VCC,
	padio => ww_r7(7));

-- Location: PIN_N7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r7[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[7][8]~regout\,
	oe => VCC,
	padio => ww_r7(8));

-- Location: PIN_P8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r7[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[7][9]~regout\,
	oe => VCC,
	padio => ww_r7(9));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r7[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[7][10]~regout\,
	oe => VCC,
	padio => ww_r7(10));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r7[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[7][11]~regout\,
	oe => VCC,
	padio => ww_r7(11));

-- Location: PIN_P5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r7[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[7][12]~regout\,
	oe => VCC,
	padio => ww_r7(12));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r7[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[7][13]~regout\,
	oe => VCC,
	padio => ww_r7(13));

-- Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r7[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[7][14]~regout\,
	oe => VCC,
	padio => ww_r7(14));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r7[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \datapath_risc|RF|registers[7][15]~regout\,
	oe => VCC,
	padio => ww_r7(15));
END structure;


