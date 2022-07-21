-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "09/24/2021 23:44:47"

-- 
-- Device: Altera 5M1270ZT144C5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	DUT IS
    PORT (
	input_vector : IN std_logic_vector(9 DOWNTO 0);
	output_vector : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END DUT;

-- Design Ports Information


ARCHITECTURE structure OF DUT IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input_vector : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(7 DOWNTO 0);
SIGNAL \add_instance|shift~0_combout\ : std_logic;
SIGNAL \add_instance|shift~1_combout\ : std_logic;
SIGNAL \add_instance|op[0]~0_combout\ : std_logic;
SIGNAL \add_instance|op[0]~1_combout\ : std_logic;
SIGNAL \add_instance|op[0]~2_combout\ : std_logic;
SIGNAL \add_instance|op[0]~3_combout\ : std_logic;
SIGNAL \add_instance|shift~2_combout\ : std_logic;
SIGNAL \add_instance|shift~3_combout\ : std_logic;
SIGNAL \add_instance|op[1]~4_combout\ : std_logic;
SIGNAL \add_instance|op[1]~5_combout\ : std_logic;
SIGNAL \add_instance|op[1]~6_combout\ : std_logic;
SIGNAL \add_instance|op[1]~7_combout\ : std_logic;
SIGNAL \add_instance|shift~5_combout\ : std_logic;
SIGNAL \add_instance|shift~4_combout\ : std_logic;
SIGNAL \add_instance|op[2]~9_combout\ : std_logic;
SIGNAL \add_instance|op[2]~10_combout\ : std_logic;
SIGNAL \add_instance|carry~0_combout\ : std_logic;
SIGNAL \add_instance|op[2]~8_combout\ : std_logic;
SIGNAL \add_instance|op[2]~11_combout\ : std_logic;
SIGNAL \add_instance|op[3]~12_combout\ : std_logic;
SIGNAL \add_instance|op[3]~13_combout\ : std_logic;
SIGNAL \add_instance|op[3]~14_combout\ : std_logic;
SIGNAL \add_instance|op[3]~15_combout\ : std_logic;
SIGNAL \add_instance|carry~1_combout\ : std_logic;
SIGNAL \add_instance|diff~0_combout\ : std_logic;
SIGNAL \add_instance|op[3]~16_combout\ : std_logic;
SIGNAL \add_instance|carry~2_combout\ : std_logic;
SIGNAL \add_instance|op[4]~17_combout\ : std_logic;
SIGNAL \add_instance|op[4]~18_combout\ : std_logic;
SIGNAL \add_instance|op[4]~19_combout\ : std_logic;
SIGNAL \add_instance|op[4]~20_combout\ : std_logic;
SIGNAL \add_instance|op[5]~21_combout\ : std_logic;
SIGNAL \add_instance|op[5]~22_combout\ : std_logic;
SIGNAL \add_instance|op[5]~23_combout\ : std_logic;
SIGNAL \add_instance|op[6]~24_combout\ : std_logic;
SIGNAL \add_instance|op[6]~25_combout\ : std_logic;
SIGNAL \add_instance|op[6]~26_combout\ : std_logic;
SIGNAL \add_instance|op[6]~27_combout\ : std_logic;
SIGNAL \add_instance|op[7]~28_combout\ : std_logic;
SIGNAL \add_instance|op[7]~29_combout\ : std_logic;
SIGNAL \input_vector~combout\ : std_logic_vector(9 DOWNTO 0);

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => \input_vector~combout\(6));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => \input_vector~combout\(5));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(7),
	combout => \input_vector~combout\(7));

-- Location: LC_X13_Y7_N3
\add_instance|shift~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|shift~0_combout\ = ((\input_vector~combout\(1) & (\input_vector~combout\(5))) # (!\input_vector~combout\(1) & ((\input_vector~combout\(7)))))

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
	datab => \input_vector~combout\(5),
	datac => \input_vector~combout\(7),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|shift~0_combout\);

-- Location: LC_X13_Y7_N4
\add_instance|shift~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|shift~1_combout\ = (\input_vector~combout\(0) & (((\add_instance|shift~0_combout\)))) # (!\input_vector~combout\(0) & (\input_vector~combout\(1) & (\input_vector~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(6),
	datad => \add_instance|shift~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|shift~1_combout\);

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(8),
	combout => \input_vector~combout\(8));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: LC_X13_Y7_N1
\add_instance|op[0]~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[0]~0_combout\ = (!\input_vector~combout\(8) & (((\input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(8),
	datac => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[0]~0_combout\);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => \input_vector~combout\(4));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(9),
	combout => \input_vector~combout\(9));

-- Location: LC_X13_Y7_N0
\add_instance|op[0]~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[0]~1_combout\ = (\input_vector~combout\(4) & (!\input_vector~combout\(8) & ((\input_vector~combout\(1)) # (\input_vector~combout\(2))))) # (!\input_vector~combout\(4) & (((\input_vector~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(4),
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(2),
	datad => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[0]~1_combout\);

-- Location: LC_X13_Y7_N6
\add_instance|op[0]~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[0]~2_combout\ = (\add_instance|op[0]~1_combout\ & ((\input_vector~combout\(9)) # ((!\input_vector~combout\(4) & \input_vector~combout\(0))))) # (!\add_instance|op[0]~1_combout\ & ((\input_vector~combout\(0) & 
-- ((\input_vector~combout\(9)))) # (!\input_vector~combout\(0) & (\input_vector~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dcca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(4),
	datab => \input_vector~combout\(9),
	datac => \add_instance|op[0]~1_combout\,
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[0]~2_combout\);

-- Location: LC_X13_Y7_N8
\add_instance|op[0]~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[0]~3_combout\ = (\add_instance|op[0]~2_combout\ & (((!\input_vector~combout\(9))))) # (!\add_instance|op[0]~2_combout\ & ((\input_vector~combout\(9)) # ((\add_instance|shift~1_combout\ & \add_instance|op[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|shift~1_combout\,
	datab => \add_instance|op[0]~0_combout\,
	datac => \add_instance|op[0]~2_combout\,
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[0]~3_combout\);

-- Location: LC_X16_Y6_N9
\add_instance|shift~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|shift~2_combout\ = (\input_vector~combout\(1) & ((\input_vector~combout\(0) & ((\input_vector~combout\(6)))) # (!\input_vector~combout\(0) & (\input_vector~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(7),
	datab => \input_vector~combout\(6),
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|shift~2_combout\);

-- Location: LC_X11_Y7_N5
\add_instance|shift~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|shift~3_combout\ = (!\input_vector~combout\(1) & ((\input_vector~combout\(0) & (\input_vector~combout\(4))) # (!\input_vector~combout\(0) & ((\input_vector~combout\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(4),
	datab => \input_vector~combout\(0),
	datac => \input_vector~combout\(5),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|shift~3_combout\);

-- Location: LC_X11_Y7_N9
\add_instance|op[1]~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[1]~4_combout\ = ((\input_vector~combout\(2) & (\add_instance|shift~2_combout\)) # (!\input_vector~combout\(2) & ((\add_instance|shift~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|shift~2_combout\,
	datac => \add_instance|shift~3_combout\,
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[1]~4_combout\);

-- Location: LC_X11_Y7_N3
\add_instance|op[1]~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[1]~5_combout\ = (!\input_vector~combout\(4) & (((\input_vector~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(4),
	datac => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[1]~5_combout\);

-- Location: LC_X11_Y7_N4
\add_instance|op[1]~6\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[1]~6_combout\ = (\input_vector~combout\(8) & (\input_vector~combout\(1) $ (\input_vector~combout\(5) $ (\add_instance|op[1]~5_combout\)))) # (!\input_vector~combout\(8) & ((\input_vector~combout\(1)) # ((\input_vector~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d67c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(8),
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(5),
	datad => \add_instance|op[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[1]~6_combout\);

-- Location: LC_X11_Y7_N2
\add_instance|op[1]~7\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[1]~7_combout\ = (\input_vector~combout\(8) & (((\add_instance|op[1]~6_combout\ & !\input_vector~combout\(9))))) # (!\input_vector~combout\(8) & ((\input_vector~combout\(9) & ((!\add_instance|op[1]~6_combout\))) # 
-- (!\input_vector~combout\(9) & (\add_instance|op[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "05e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(8),
	datab => \add_instance|op[1]~4_combout\,
	datac => \add_instance|op[1]~6_combout\,
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[1]~7_combout\);

-- Location: LC_X13_Y7_N5
\add_instance|shift~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|shift~5_combout\ = ((\input_vector~combout\(1) & (\input_vector~combout\(4))) # (!\input_vector~combout\(1) & ((\input_vector~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(4),
	datac => \input_vector~combout\(6),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|shift~5_combout\);

-- Location: LC_X13_Y7_N2
\add_instance|shift~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|shift~4_combout\ = (\input_vector~combout\(2) & (((\input_vector~combout\(7) & \input_vector~combout\(1))))) # (!\input_vector~combout\(2) & (\input_vector~combout\(5) & ((!\input_vector~combout\(1)))))

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
	dataa => \input_vector~combout\(2),
	datab => \input_vector~combout\(5),
	datac => \input_vector~combout\(7),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|shift~4_combout\);

-- Location: LC_X13_Y7_N9
\add_instance|op[2]~9\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[2]~9_combout\ = (\input_vector~combout\(0) & (((\add_instance|shift~4_combout\)))) # (!\input_vector~combout\(0) & (\add_instance|shift~5_combout\ & ((!\input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|shift~5_combout\,
	datab => \add_instance|shift~4_combout\,
	datac => \input_vector~combout\(2),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[2]~9_combout\);

-- Location: LC_X11_Y7_N7
\add_instance|op[2]~10\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[2]~10_combout\ = ((\input_vector~combout\(9) & (\input_vector~combout\(4))) # (!\input_vector~combout\(9) & ((\add_instance|op[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(4),
	datab => \add_instance|op[2]~9_combout\,
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[2]~10_combout\);

-- Location: LC_X16_Y6_N0
\add_instance|carry~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~0_combout\ = (\input_vector~combout\(1) & (\input_vector~combout\(5) & ((\input_vector~combout\(4)) # (!\input_vector~combout\(0))))) # (!\input_vector~combout\(1) & ((\input_vector~combout\(4)) # ((\input_vector~combout\(5)) # 
-- (!\input_vector~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "df45",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(4),
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~0_combout\);

-- Location: LC_X16_Y6_N2
\add_instance|op[2]~8\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[2]~8_combout\ = (\input_vector~combout\(9) & ((\input_vector~combout\(6)) # ((\input_vector~combout\(2))))) # (!\input_vector~combout\(9) & (\input_vector~combout\(6) $ (\add_instance|carry~0_combout\ $ (\input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eb9c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datab => \input_vector~combout\(6),
	datac => \add_instance|carry~0_combout\,
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[2]~8_combout\);

-- Location: LC_X11_Y7_N8
\add_instance|op[2]~11\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[2]~11_combout\ = (\input_vector~combout\(8) & ((\input_vector~combout\(9) & (\add_instance|op[2]~10_combout\)) # (!\input_vector~combout\(9) & ((!\add_instance|op[2]~8_combout\))))) # (!\input_vector~combout\(8) & 
-- ((\input_vector~combout\(9) & ((!\add_instance|op[2]~8_combout\))) # (!\input_vector~combout\(9) & (\add_instance|op[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8d4e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(8),
	datab => \add_instance|op[2]~10_combout\,
	datac => \add_instance|op[2]~8_combout\,
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[2]~11_combout\);

-- Location: LC_X16_Y6_N1
\add_instance|op[3]~12\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[3]~12_combout\ = (\input_vector~combout\(1) & ((\input_vector~combout\(0) & (\input_vector~combout\(4))) # (!\input_vector~combout\(0) & ((\input_vector~combout\(5)))))) # (!\input_vector~combout\(1) & (((\input_vector~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dad0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(4),
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[3]~12_combout\);

-- Location: LC_X16_Y6_N4
\add_instance|op[3]~13\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[3]~13_combout\ = (\input_vector~combout\(2) & (((!\add_instance|op[3]~12_combout\)))) # (!\input_vector~combout\(2) & ((\input_vector~combout\(1)) # ((\input_vector~combout\(6) & \add_instance|op[3]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "54fa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \input_vector~combout\(6),
	datac => \input_vector~combout\(1),
	datad => \add_instance|op[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[3]~13_combout\);

-- Location: LC_X16_Y6_N3
\add_instance|op[3]~14\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[3]~14_combout\ = (\input_vector~combout\(9) & (((\input_vector~combout\(7))))) # (!\input_vector~combout\(9) & ((\add_instance|op[3]~12_combout\ & (\add_instance|op[3]~13_combout\)) # (!\add_instance|op[3]~12_combout\ & 
-- (!\add_instance|op[3]~13_combout\ & \input_vector~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eb40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datab => \add_instance|op[3]~12_combout\,
	datac => \add_instance|op[3]~13_combout\,
	datad => \input_vector~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[3]~14_combout\);

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: LC_X12_Y5_N8
\add_instance|op[3]~15\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[3]~15_combout\ = (\input_vector~combout\(9) & ((\input_vector~combout\(8)) # ((!\add_instance|op[3]~14_combout\ & !\input_vector~combout\(3))))) # (!\input_vector~combout\(9) & (\add_instance|op[3]~14_combout\ & 
-- (!\input_vector~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a4a6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datab => \add_instance|op[3]~14_combout\,
	datac => \input_vector~combout\(8),
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[3]~15_combout\);

-- Location: LC_X16_Y6_N6
\add_instance|carry~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~1_combout\ = ((\input_vector~combout\(6) & ((\add_instance|carry~0_combout\) # (!\input_vector~combout\(2)))) # (!\input_vector~combout\(6) & (\add_instance|carry~0_combout\ & !\input_vector~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(6),
	datac => \add_instance|carry~0_combout\,
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~1_combout\);

-- Location: LC_X12_Y5_N3
\add_instance|diff~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|diff~0_combout\ = \input_vector~combout\(7) $ (\add_instance|carry~1_combout\ $ (((\input_vector~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9966",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(7),
	datab => \add_instance|carry~1_combout\,
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|diff~0_combout\);

-- Location: LC_X12_Y5_N4
\add_instance|op[3]~16\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[3]~16_combout\ = (\add_instance|op[3]~15_combout\ & (((\input_vector~combout\(5))) # (!\input_vector~combout\(8)))) # (!\add_instance|op[3]~15_combout\ & (\input_vector~combout\(8) & ((!\add_instance|diff~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a2e6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|op[3]~15_combout\,
	datab => \input_vector~combout\(8),
	datac => \input_vector~combout\(5),
	datad => \add_instance|diff~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[3]~16_combout\);

-- Location: LC_X12_Y5_N0
\add_instance|carry~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~2_combout\ = (\input_vector~combout\(7) & ((\add_instance|carry~1_combout\) # ((!\input_vector~combout\(3))))) # (!\input_vector~combout\(7) & (\add_instance|carry~1_combout\ & ((!\input_vector~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88ee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(7),
	datab => \add_instance|carry~1_combout\,
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~2_combout\);

-- Location: LC_X12_Y5_N2
\add_instance|op[4]~17\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[4]~17_combout\ = ((\input_vector~combout\(9) & (\input_vector~combout\(6))) # (!\input_vector~combout\(9) & ((!\add_instance|carry~2_combout\))))

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
	dataa => \input_vector~combout\(6),
	datac => \add_instance|carry~2_combout\,
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[4]~17_combout\);

-- Location: LC_X11_Y7_N6
\add_instance|op[4]~18\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[4]~18_combout\ = (\input_vector~combout\(4) & (((!\input_vector~combout\(0) & \input_vector~combout\(2)))))

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
	dataa => \input_vector~combout\(4),
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[4]~18_combout\);

-- Location: LC_X11_Y7_N0
\add_instance|op[4]~19\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[4]~19_combout\ = (\add_instance|shift~1_combout\ & (((!\input_vector~combout\(1) & \add_instance|op[4]~18_combout\)) # (!\input_vector~combout\(2)))) # (!\add_instance|shift~1_combout\ & (!\input_vector~combout\(1) & 
-- (\add_instance|op[4]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30ba",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|shift~1_combout\,
	datab => \input_vector~combout\(1),
	datac => \add_instance|op[4]~18_combout\,
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[4]~19_combout\);

-- Location: LC_X12_Y5_N5
\add_instance|op[4]~20\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[4]~20_combout\ = (\input_vector~combout\(8) & (\add_instance|op[4]~17_combout\)) # (!\input_vector~combout\(8) & (((\add_instance|op[4]~19_combout\ & !\input_vector~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|op[4]~17_combout\,
	datab => \add_instance|op[4]~19_combout\,
	datac => \input_vector~combout\(8),
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[4]~20_combout\);

-- Location: LC_X12_Y5_N6
\add_instance|op[5]~21\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[5]~21_combout\ = (\input_vector~combout\(7) & ((\input_vector~combout\(9)) # ((!\add_instance|carry~1_combout\ & \input_vector~combout\(3))))) # (!\input_vector~combout\(7) & (!\input_vector~combout\(9) & ((\input_vector~combout\(3)) # 
-- (!\add_instance|carry~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9b89",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(7),
	datab => \input_vector~combout\(9),
	datac => \add_instance|carry~1_combout\,
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[5]~21_combout\);

-- Location: LC_X11_Y7_N1
\add_instance|op[5]~22\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[5]~22_combout\ = ((\input_vector~combout\(2) & ((\add_instance|shift~3_combout\))) # (!\input_vector~combout\(2) & (\add_instance|shift~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|shift~2_combout\,
	datac => \add_instance|shift~3_combout\,
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[5]~22_combout\);

-- Location: LC_X12_Y5_N7
\add_instance|op[5]~23\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[5]~23_combout\ = (\input_vector~combout\(8) & (\add_instance|op[5]~21_combout\)) # (!\input_vector~combout\(8) & (((\add_instance|op[5]~22_combout\ & !\input_vector~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|op[5]~21_combout\,
	datab => \add_instance|op[5]~22_combout\,
	datac => \input_vector~combout\(8),
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[5]~23_combout\);

-- Location: LC_X16_Y6_N7
\add_instance|op[6]~24\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[6]~24_combout\ = (\input_vector~combout\(0) & (\input_vector~combout\(7) & ((!\input_vector~combout\(2))))) # (!\input_vector~combout\(0) & (((\input_vector~combout\(4) & \input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(7),
	datab => \input_vector~combout\(4),
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[6]~24_combout\);

-- Location: LC_X16_Y6_N5
\add_instance|op[6]~25\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[6]~25_combout\ = ((\input_vector~combout\(0) & (\input_vector~combout\(5))) # (!\input_vector~combout\(0) & ((\input_vector~combout\(6)))))

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
	datab => \input_vector~combout\(5),
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[6]~25_combout\);

-- Location: LC_X16_Y6_N8
\add_instance|op[6]~26\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[6]~26_combout\ = (\input_vector~combout\(1) & (\add_instance|op[6]~24_combout\)) # (!\input_vector~combout\(1) & (((\add_instance|op[6]~25_combout\ & \input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \add_instance|op[6]~24_combout\,
	datac => \add_instance|op[6]~25_combout\,
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[6]~26_combout\);

-- Location: LC_X12_Y5_N9
\add_instance|op[6]~27\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[6]~27_combout\ = (!\input_vector~combout\(9) & ((\input_vector~combout\(8) & ((!\add_instance|carry~2_combout\))) # (!\input_vector~combout\(8) & (\add_instance|op[6]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "003a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|op[6]~26_combout\,
	datab => \add_instance|carry~2_combout\,
	datac => \input_vector~combout\(8),
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[6]~27_combout\);

-- Location: LC_X13_Y7_N7
\add_instance|op[7]~28\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[7]~28_combout\ = (\add_instance|op[0]~0_combout\ & ((\input_vector~combout\(0) & ((\add_instance|shift~5_combout\))) # (!\input_vector~combout\(0) & (\add_instance|shift~0_combout\))))

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
	dataa => \add_instance|shift~0_combout\,
	datab => \add_instance|op[0]~0_combout\,
	datac => \add_instance|shift~5_combout\,
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[7]~28_combout\);

-- Location: LC_X12_Y5_N1
\add_instance|op[7]~29\ : maxv_lcell
-- Equation(s):
-- \add_instance|op[7]~29_combout\ = (!\input_vector~combout\(9) & ((\add_instance|op[7]~28_combout\) # ((!\add_instance|carry~2_combout\ & \input_vector~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ba",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|op[7]~28_combout\,
	datab => \add_instance|carry~2_combout\,
	datac => \input_vector~combout\(8),
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|op[7]~29_combout\);

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[0]~3_combout\,
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[1]~7_combout\,
	oe => VCC,
	padio => ww_output_vector(1));

-- Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[2]~11_combout\,
	oe => VCC,
	padio => ww_output_vector(2));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[3]~16_combout\,
	oe => VCC,
	padio => ww_output_vector(3));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[4]~20_combout\,
	oe => VCC,
	padio => ww_output_vector(4));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[5]~23_combout\,
	oe => VCC,
	padio => ww_output_vector(5));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[6]~27_combout\,
	oe => VCC,
	padio => ww_output_vector(6));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|op[7]~29_combout\,
	oe => VCC,
	padio => ww_output_vector(7));
END structure;


