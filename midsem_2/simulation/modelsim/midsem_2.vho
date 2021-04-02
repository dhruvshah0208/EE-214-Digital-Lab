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

-- DATE "03/06/2021 12:58:17"

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
	input_vector : IN std_logic_vector(7 DOWNTO 0);
	output_vector : BUFFER std_logic_vector(5 DOWNTO 0)
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
SIGNAL ww_input_vector : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(5 DOWNTO 0);
SIGNAL \add_instance|mux_1|output~0_combout\ : std_logic;
SIGNAL \add_instance|mux_2|output~0_combout\ : std_logic;
SIGNAL \add_instance|case_1|FA|G_1:1:FA|x1|Y~2_combout\ : std_logic;
SIGNAL \add_instance|case_1|FA|G_1:1:FA|x1|Y~combout\ : std_logic;
SIGNAL \add_instance|case_1|FA|G_1:0:FA|ha|C~combout\ : std_logic;
SIGNAL \add_instance|case_1|DA_1|BCD|output~0_combout\ : std_logic;
SIGNAL \add_instance|case_1|FA|G_1:1:FA|o1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|case_1|FA|G_1:2:FA|x1|Y~combout\ : std_logic;
SIGNAL \add_instance|case_1|FA|G_1:3:FA|x1|Y~combout\ : std_logic;
SIGNAL \add_instance|mux_2|output~1_combout\ : std_logic;
SIGNAL \add_instance|mux_4|interconnect~0_combout\ : std_logic;
SIGNAL \add_instance|mux_2|output~2_combout\ : std_logic;
SIGNAL \add_instance|mux_3|interconnect[4]~0_combout\ : std_logic;
SIGNAL \add_instance|mux_3|output~0_combout\ : std_logic;
SIGNAL \add_instance|mux_3|output~1_combout\ : std_logic;
SIGNAL \add_instance|mux_3|output~2_combout\ : std_logic;
SIGNAL \add_instance|mux_4|interconnect[2]~1_combout\ : std_logic;
SIGNAL \add_instance|mux_4|output~7_combout\ : std_logic;
SIGNAL \add_instance|mux_4|output~4_combout\ : std_logic;
SIGNAL \add_instance|mux_4|output~5_combout\ : std_logic;
SIGNAL \add_instance|mux_4|output~6_combout\ : std_logic;
SIGNAL \add_instance|mux_5|interconnect[2]~0_combout\ : std_logic;
SIGNAL \input_vector~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \add_instance|mux_1|ALT_INV_output~0_combout\ : std_logic;

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\add_instance|mux_1|ALT_INV_output~0_combout\ <= NOT \add_instance|mux_1|output~0_combout\;

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => \input_vector~combout\(4));

-- Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: LC_X13_Y6_N1
\add_instance|mux_1|output~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|mux_1|output~0_combout\ = \input_vector~combout\(4) $ (((\input_vector~combout\(0) & (!\input_vector~combout\(2) & !\input_vector~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \input_vector~combout\(4),
	datac => \input_vector~combout\(2),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mux_1|output~0_combout\);

-- Location: LC_X13_Y6_N4
\add_instance|mux_2|output~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|mux_2|output~0_combout\ = (\input_vector~combout\(1) & (\input_vector~combout\(4) & ((!\input_vector~combout\(0)))))

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
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(4),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mux_2|output~0_combout\);

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => \input_vector~combout\(5));

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => \input_vector~combout\(6));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(7),
	combout => \input_vector~combout\(7));

-- Location: LC_X16_Y7_N3
\add_instance|case_1|FA|G_1:1:FA|x1|Y~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|case_1|FA|G_1:1:FA|x1|Y~2_combout\ = \input_vector~combout\(3) $ ((((!\input_vector~combout\(6) & !\input_vector~combout\(5))) # (!\input_vector~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a955",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(3),
	datab => \input_vector~combout\(6),
	datac => \input_vector~combout\(5),
	datad => \input_vector~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|case_1|FA|G_1:1:FA|x1|Y~2_combout\);

-- Location: LC_X13_Y6_N8
\add_instance|case_1|FA|G_1:1:FA|x1|Y\ : maxv_lcell
-- Equation(s):
-- \add_instance|case_1|FA|G_1:1:FA|x1|Y~combout\ = \input_vector~combout\(5) $ (\add_instance|case_1|FA|G_1:1:FA|x1|Y~2_combout\ $ (((\input_vector~combout\(2) & \input_vector~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "963c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \input_vector~combout\(5),
	datac => \add_instance|case_1|FA|G_1:1:FA|x1|Y~2_combout\,
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|case_1|FA|G_1:1:FA|x1|Y~combout\);

-- Location: LC_X15_Y7_N2
\add_instance|case_1|FA|G_1:0:FA|ha|C\ : maxv_lcell
-- Equation(s):
-- \add_instance|case_1|FA|G_1:0:FA|ha|C~combout\ = (((\input_vector~combout\(2) & \input_vector~combout\(4))))

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
	datac => \input_vector~combout\(2),
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|case_1|FA|G_1:0:FA|ha|C~combout\);

-- Location: LC_X16_Y7_N7
\add_instance|case_1|DA_1|BCD|output~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|case_1|DA_1|BCD|output~0_combout\ = ((\input_vector~combout\(7) & ((\input_vector~combout\(6)) # (\input_vector~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(6),
	datac => \input_vector~combout\(5),
	datad => \input_vector~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|case_1|DA_1|BCD|output~0_combout\);

-- Location: LC_X16_Y7_N4
\add_instance|case_1|FA|G_1:1:FA|o1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|case_1|FA|G_1:1:FA|o1|Y~0_combout\ = (\add_instance|case_1|FA|G_1:0:FA|ha|C~combout\ & ((\input_vector~combout\(3)) # (\input_vector~combout\(5) $ (\add_instance|case_1|DA_1|BCD|output~0_combout\)))) # 
-- (!\add_instance|case_1|FA|G_1:0:FA|ha|C~combout\ & (\input_vector~combout\(3) & (\input_vector~combout\(5) $ (\add_instance|case_1|DA_1|BCD|output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \add_instance|case_1|FA|G_1:0:FA|ha|C~combout\,
	datac => \add_instance|case_1|DA_1|BCD|output~0_combout\,
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|case_1|FA|G_1:1:FA|o1|Y~0_combout\);

-- Location: LC_X16_Y7_N8
\add_instance|case_1|FA|G_1:2:FA|x1|Y\ : maxv_lcell
-- Equation(s):
-- \add_instance|case_1|FA|G_1:2:FA|x1|Y~combout\ = \add_instance|case_1|FA|G_1:1:FA|o1|Y~0_combout\ $ (((\input_vector~combout\(6) & ((\input_vector~combout\(5)) # (!\input_vector~combout\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "783c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \input_vector~combout\(6),
	datac => \add_instance|case_1|FA|G_1:1:FA|o1|Y~0_combout\,
	datad => \input_vector~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|case_1|FA|G_1:2:FA|x1|Y~combout\);

-- Location: LC_X16_Y7_N0
\add_instance|case_1|FA|G_1:3:FA|x1|Y\ : maxv_lcell
-- Equation(s):
-- \add_instance|case_1|FA|G_1:3:FA|x1|Y~combout\ = (\input_vector~combout\(6) & (\add_instance|case_1|FA|G_1:1:FA|o1|Y~0_combout\ & ((\input_vector~combout\(5)) # (!\input_vector~combout\(7))))) # (!\input_vector~combout\(6) & (!\input_vector~combout\(5) & 
-- ((\input_vector~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "91c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \input_vector~combout\(6),
	datac => \add_instance|case_1|FA|G_1:1:FA|o1|Y~0_combout\,
	datad => \input_vector~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|case_1|FA|G_1:3:FA|x1|Y~combout\);

-- Location: LC_X13_Y6_N2
\add_instance|mux_2|output~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|mux_2|output~1_combout\ = (\add_instance|case_1|FA|G_1:1:FA|x1|Y~combout\ & (((!\add_instance|case_1|FA|G_1:3:FA|x1|Y~combout\)) # (!\add_instance|case_1|FA|G_1:2:FA|x1|Y~combout\))) # (!\add_instance|case_1|FA|G_1:1:FA|x1|Y~combout\ & 
-- (((\add_instance|case_1|FA|G_1:3:FA|x1|Y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "77aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|case_1|FA|G_1:1:FA|x1|Y~combout\,
	datab => \add_instance|case_1|FA|G_1:2:FA|x1|Y~combout\,
	datad => \add_instance|case_1|FA|G_1:3:FA|x1|Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mux_2|output~1_combout\);

-- Location: LC_X13_Y6_N0
\add_instance|mux_4|interconnect~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|mux_4|interconnect~0_combout\ = (!\input_vector~combout\(1) & (((\input_vector~combout\(0)))))

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
	dataa => \input_vector~combout\(1),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mux_4|interconnect~0_combout\);

-- Location: LC_X13_Y6_N3
\add_instance|mux_2|output~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|mux_2|output~2_combout\ = (\add_instance|mux_2|output~0_combout\ & (((\input_vector~combout\(5))))) # (!\add_instance|mux_2|output~0_combout\ & ((\add_instance|mux_4|interconnect~0_combout\ & (!\add_instance|mux_2|output~1_combout\)) # 
-- (!\add_instance|mux_4|interconnect~0_combout\ & ((!\input_vector~combout\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba15",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|mux_2|output~0_combout\,
	datab => \add_instance|mux_2|output~1_combout\,
	datac => \add_instance|mux_4|interconnect~0_combout\,
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mux_2|output~2_combout\);

-- Location: LC_X13_Y6_N6
\add_instance|mux_3|interconnect[4]~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|mux_3|interconnect[4]~0_combout\ = (\input_vector~combout\(1) & (\input_vector~combout\(0) & (\input_vector~combout\(6) $ (\input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(6),
	datac => \input_vector~combout\(2),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mux_3|interconnect[4]~0_combout\);

-- Location: LC_X13_Y6_N9
\add_instance|mux_3|output~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|mux_3|output~0_combout\ = (\add_instance|case_1|FA|G_1:2:FA|x1|Y~combout\ & (\add_instance|mux_4|interconnect~0_combout\ & ((!\add_instance|case_1|FA|G_1:3:FA|x1|Y~combout\) # (!\add_instance|case_1|FA|G_1:1:FA|x1|Y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "40c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|case_1|FA|G_1:1:FA|x1|Y~combout\,
	datab => \add_instance|case_1|FA|G_1:2:FA|x1|Y~combout\,
	datac => \add_instance|mux_4|interconnect~0_combout\,
	datad => \add_instance|case_1|FA|G_1:3:FA|x1|Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mux_3|output~0_combout\);

-- Location: LC_X13_Y6_N7
\add_instance|mux_3|output~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|mux_3|output~1_combout\ = \input_vector~combout\(6) $ ((((!\input_vector~combout\(5) & !\input_vector~combout\(4))) # (!\input_vector~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a587",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(5),
	datac => \input_vector~combout\(6),
	datad => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mux_3|output~1_combout\);

-- Location: LC_X13_Y6_N5
\add_instance|mux_3|output~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|mux_3|output~2_combout\ = (\add_instance|mux_3|interconnect[4]~0_combout\) # ((\add_instance|mux_3|output~0_combout\) # ((\add_instance|mux_3|output~1_combout\ & !\input_vector~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eefe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|mux_3|interconnect[4]~0_combout\,
	datab => \add_instance|mux_3|output~0_combout\,
	datac => \add_instance|mux_3|output~1_combout\,
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mux_3|output~2_combout\);

-- Location: LC_X16_Y9_N2
\add_instance|mux_4|interconnect[2]~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|mux_4|interconnect[2]~1_combout\ = ((\add_instance|case_1|FA|G_1:1:FA|x1|Y~combout\ & ((!\add_instance|case_1|FA|G_1:2:FA|x1|Y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|case_1|FA|G_1:1:FA|x1|Y~combout\,
	datad => \add_instance|case_1|FA|G_1:2:FA|x1|Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mux_4|interconnect[2]~1_combout\);

-- Location: LC_X16_Y7_N6
\add_instance|mux_4|output~7\ : maxv_lcell
-- Equation(s):
-- \add_instance|mux_4|output~7_combout\ = (\add_instance|mux_4|interconnect[2]~1_combout\ & (\add_instance|case_1|FA|G_1:3:FA|x1|Y~combout\ & (!\input_vector~combout\(1) & \input_vector~combout\(0))))

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
	dataa => \add_instance|mux_4|interconnect[2]~1_combout\,
	datab => \add_instance|case_1|FA|G_1:3:FA|x1|Y~combout\,
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mux_4|output~7_combout\);

-- Location: LC_X16_Y7_N1
\add_instance|mux_4|output~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|mux_4|output~4_combout\ = (\input_vector~combout\(4)) # ((\input_vector~combout\(6)) # ((\input_vector~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(4),
	datab => \input_vector~combout\(6),
	datac => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mux_4|output~4_combout\);

-- Location: LC_X16_Y7_N9
\add_instance|mux_4|output~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|mux_4|output~5_combout\ = (\input_vector~combout\(1) & ((\input_vector~combout\(0) & (!\input_vector~combout\(3))) # (!\input_vector~combout\(0) & ((\add_instance|mux_4|output~4_combout\))))) # (!\input_vector~combout\(1) & 
-- (((\input_vector~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5fc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(3),
	datab => \add_instance|mux_4|output~4_combout\,
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mux_4|output~5_combout\);

-- Location: LC_X16_Y7_N2
\add_instance|mux_4|output~6\ : maxv_lcell
-- Equation(s):
-- \add_instance|mux_4|output~6_combout\ = (\add_instance|mux_4|output~7_combout\) # ((\add_instance|mux_4|output~5_combout\ & (\input_vector~combout\(1) & \input_vector~combout\(7))) # (!\add_instance|mux_4|output~5_combout\ & 
-- ((!\input_vector~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eabb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|mux_4|output~7_combout\,
	datab => \add_instance|mux_4|output~5_combout\,
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mux_4|output~6_combout\);

-- Location: LC_X16_Y7_N5
\add_instance|mux_5|interconnect[2]~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|mux_5|interconnect[2]~0_combout\ = (\add_instance|mux_4|interconnect~0_combout\ & ((\add_instance|case_1|DA_1|BCD|output~0_combout\) # ((\add_instance|case_1|FA|G_1:3:FA|x1|Y~combout\ & !\add_instance|mux_4|interconnect[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ae00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|case_1|DA_1|BCD|output~0_combout\,
	datab => \add_instance|case_1|FA|G_1:3:FA|x1|Y~combout\,
	datac => \add_instance|mux_4|interconnect[2]~1_combout\,
	datad => \add_instance|mux_4|interconnect~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|mux_5|interconnect[2]~0_combout\);

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|mux_1|ALT_INV_output~0_combout\,
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|mux_2|output~2_combout\,
	oe => VCC,
	padio => ww_output_vector(1));

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|mux_3|output~2_combout\,
	oe => VCC,
	padio => ww_output_vector(2));

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|mux_4|output~6_combout\,
	oe => VCC,
	padio => ww_output_vector(3));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|mux_5|interconnect[2]~0_combout\,
	oe => VCC,
	padio => ww_output_vector(4));

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_output_vector(5));
END structure;


