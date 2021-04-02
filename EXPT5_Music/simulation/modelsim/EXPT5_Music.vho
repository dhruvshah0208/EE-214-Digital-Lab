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

-- DATE "03/31/2021 17:03:47"

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

ENTITY 	music IS
    PORT (
	toneOut : OUT std_logic;
	clk_50 : IN std_logic;
	resetn : IN std_logic;
	LED : OUT std_logic_vector(7 DOWNTO 0)
	);
END music;

-- Design Ports Information


ARCHITECTURE structure OF music IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_toneOut : std_logic;
SIGNAL ww_clk_50 : std_logic;
SIGNAL ww_resetn : std_logic;
SIGNAL ww_LED : std_logic_vector(7 DOWNTO 0);
SIGNAL \tone_generator|re~regout\ : std_logic;
SIGNAL \tone_generator|ma~regout\ : std_logic;
SIGNAL \clk_50~combout\ : std_logic;
SIGNAL \resetn~combout\ : std_logic;
SIGNAL \timecounter[0]~1\ : std_logic;
SIGNAL \timecounter[0]~1COUT1_55\ : std_logic;
SIGNAL \timecounter[1]~3\ : std_logic;
SIGNAL \timecounter[1]~3COUT1_56\ : std_logic;
SIGNAL \timecounter[2]~5\ : std_logic;
SIGNAL \timecounter[3]~7\ : std_logic;
SIGNAL \timecounter[3]~7COUT1_57\ : std_logic;
SIGNAL \timecounter[4]~9\ : std_logic;
SIGNAL \timecounter[4]~9COUT1_58\ : std_logic;
SIGNAL \timecounter[5]~15\ : std_logic;
SIGNAL \timecounter[5]~15COUT1_59\ : std_logic;
SIGNAL \timecounter[6]~11\ : std_logic;
SIGNAL \timecounter[6]~11COUT1_60\ : std_logic;
SIGNAL \timecounter[7]~13\ : std_logic;
SIGNAL \timecounter[8]~17\ : std_logic;
SIGNAL \timecounter[8]~17COUT1_61\ : std_logic;
SIGNAL \timecounter[9]~19\ : std_logic;
SIGNAL \timecounter[9]~19COUT1_62\ : std_logic;
SIGNAL \timecounter[10]~21\ : std_logic;
SIGNAL \timecounter[10]~21COUT1_63\ : std_logic;
SIGNAL \timecounter[11]~23\ : std_logic;
SIGNAL \timecounter[11]~23COUT1_64\ : std_logic;
SIGNAL \timecounter[12]~27\ : std_logic;
SIGNAL \timecounter[13]~29\ : std_logic;
SIGNAL \timecounter[13]~29COUT1_65\ : std_logic;
SIGNAL \timecounter[14]~25\ : std_logic;
SIGNAL \timecounter[14]~25COUT1_66\ : std_logic;
SIGNAL \timecounter[15]~31\ : std_logic;
SIGNAL \timecounter[15]~31COUT1_67\ : std_logic;
SIGNAL \timecounter[16]~33\ : std_logic;
SIGNAL \timecounter[16]~33COUT1_68\ : std_logic;
SIGNAL \timecounter[17]~35\ : std_logic;
SIGNAL \timecounter[18]~37\ : std_logic;
SIGNAL \timecounter[18]~37COUT1_69\ : std_logic;
SIGNAL \timecounter[19]~39\ : std_logic;
SIGNAL \timecounter[19]~39COUT1_70\ : std_logic;
SIGNAL \timecounter[20]~43\ : std_logic;
SIGNAL \timecounter[20]~43COUT1_71\ : std_logic;
SIGNAL \timecounter[21]~45\ : std_logic;
SIGNAL \timecounter[21]~45COUT1_72\ : std_logic;
SIGNAL \timecounter[22]~41\ : std_logic;
SIGNAL \timecounter[23]~47\ : std_logic;
SIGNAL \timecounter[23]~47COUT1_73\ : std_logic;
SIGNAL \timecounter[24]~49\ : std_logic;
SIGNAL \timecounter[24]~49COUT1_74\ : std_logic;
SIGNAL \timecounter[25]~51\ : std_logic;
SIGNAL \timecounter[25]~51COUT1_75\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \index_current[2]~1_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \tone_generator|Add3~42\ : std_logic;
SIGNAL \tone_generator|Add3~42COUT1_105\ : std_logic;
SIGNAL \tone_generator|Add3~50_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \tone_generator|Add3~35_combout\ : std_logic;
SIGNAL \tone_generator|Add3~37\ : std_logic;
SIGNAL \tone_generator|Add3~37COUT1_101\ : std_logic;
SIGNAL \tone_generator|Add3~20_combout\ : std_logic;
SIGNAL \tone_generator|Add3~22\ : std_logic;
SIGNAL \tone_generator|Add3~22COUT1_102\ : std_logic;
SIGNAL \tone_generator|Add3~25_combout\ : std_logic;
SIGNAL \tone_generator|Add3~27\ : std_logic;
SIGNAL \tone_generator|Add3~27COUT1_103\ : std_logic;
SIGNAL \tone_generator|Add3~30_combout\ : std_logic;
SIGNAL \tone_generator|Add3~32\ : std_logic;
SIGNAL \tone_generator|Add3~32COUT1_104\ : std_logic;
SIGNAL \tone_generator|Add3~45_combout\ : std_logic;
SIGNAL \tone_generator|Add3~52\ : std_logic;
SIGNAL \tone_generator|Add3~52COUT1_106\ : std_logic;
SIGNAL \tone_generator|Add3~55_combout\ : std_logic;
SIGNAL \tone_generator|Add3~47\ : std_logic;
SIGNAL \tone_generator|Add3~40_combout\ : std_logic;
SIGNAL \tone_generator|Equal3~2\ : std_logic;
SIGNAL \tone_generator|Equal3~1\ : std_logic;
SIGNAL \tone_generator|Add3~95_combout\ : std_logic;
SIGNAL \tone_generator|Add3~57\ : std_logic;
SIGNAL \tone_generator|Add3~57COUT1_107\ : std_logic;
SIGNAL \tone_generator|Add3~60_combout\ : std_logic;
SIGNAL \tone_generator|Add3~70_combout\ : std_logic;
SIGNAL \tone_generator|Add3~72\ : std_logic;
SIGNAL \tone_generator|Add3~72COUT1_109\ : std_logic;
SIGNAL \tone_generator|Add3~75_combout\ : std_logic;
SIGNAL \tone_generator|Add3~62\ : std_logic;
SIGNAL \tone_generator|Add3~62COUT1_108\ : std_logic;
SIGNAL \tone_generator|Add3~65_combout\ : std_logic;
SIGNAL \tone_generator|Add3~67\ : std_logic;
SIGNAL \tone_generator|Add3~77\ : std_logic;
SIGNAL \tone_generator|Add3~77COUT1_110\ : std_logic;
SIGNAL \tone_generator|Add3~82\ : std_logic;
SIGNAL \tone_generator|Add3~82COUT1_111\ : std_logic;
SIGNAL \tone_generator|Add3~85_combout\ : std_logic;
SIGNAL \tone_generator|Add3~87\ : std_logic;
SIGNAL \tone_generator|Add3~87COUT1_112\ : std_logic;
SIGNAL \tone_generator|Add3~90_combout\ : std_logic;
SIGNAL \tone_generator|Equal3~4\ : std_logic;
SIGNAL \tone_generator|Equal3~3\ : std_logic;
SIGNAL \tone_generator|Equal3~5_combout\ : std_logic;
SIGNAL \tone_generator|Add3~80_combout\ : std_logic;
SIGNAL \tone_generator|Add3~92\ : std_logic;
SIGNAL \tone_generator|Add3~97\ : std_logic;
SIGNAL \tone_generator|Add3~97COUT1_113\ : std_logic;
SIGNAL \tone_generator|Add3~0_combout\ : std_logic;
SIGNAL \tone_generator|Add3~2\ : std_logic;
SIGNAL \tone_generator|Add3~2COUT1_114\ : std_logic;
SIGNAL \tone_generator|Add3~5_combout\ : std_logic;
SIGNAL \tone_generator|Add3~7\ : std_logic;
SIGNAL \tone_generator|Add3~7COUT1_115\ : std_logic;
SIGNAL \tone_generator|Add3~10_combout\ : std_logic;
SIGNAL \tone_generator|Add3~12\ : std_logic;
SIGNAL \tone_generator|Add3~12COUT1_116\ : std_logic;
SIGNAL \tone_generator|Add3~15_combout\ : std_logic;
SIGNAL \tone_generator|Equal3~0\ : std_logic;
SIGNAL \tone_generator|ma~0\ : std_logic;
SIGNAL \tone_generator|Add1~25_combout\ : std_logic;
SIGNAL \Mux4~0\ : std_logic;
SIGNAL \tone_generator|Add1~27\ : std_logic;
SIGNAL \tone_generator|Add1~27COUT1_101\ : std_logic;
SIGNAL \tone_generator|Add1~20_combout\ : std_logic;
SIGNAL \tone_generator|Add1~22\ : std_logic;
SIGNAL \tone_generator|Add1~22COUT1_102\ : std_logic;
SIGNAL \tone_generator|Add1~30_combout\ : std_logic;
SIGNAL \tone_generator|Add1~32\ : std_logic;
SIGNAL \tone_generator|Add1~32COUT1_103\ : std_logic;
SIGNAL \tone_generator|Add1~35_combout\ : std_logic;
SIGNAL \tone_generator|Add1~37\ : std_logic;
SIGNAL \tone_generator|Add1~37COUT1_104\ : std_logic;
SIGNAL \tone_generator|Add1~40_combout\ : std_logic;
SIGNAL \tone_generator|Add1~42\ : std_logic;
SIGNAL \tone_generator|Add1~45_combout\ : std_logic;
SIGNAL \tone_generator|Add1~47\ : std_logic;
SIGNAL \tone_generator|Add1~47COUT1_105\ : std_logic;
SIGNAL \tone_generator|Add1~55_combout\ : std_logic;
SIGNAL \tone_generator|Add1~57\ : std_logic;
SIGNAL \tone_generator|Add1~57COUT1_106\ : std_logic;
SIGNAL \tone_generator|Add1~50_combout\ : std_logic;
SIGNAL \tone_generator|Equal1~2\ : std_logic;
SIGNAL \tone_generator|Equal1~1\ : std_logic;
SIGNAL \tone_generator|Add1~75_combout\ : std_logic;
SIGNAL \tone_generator|Add1~77\ : std_logic;
SIGNAL \tone_generator|Add1~77COUT1_109\ : std_logic;
SIGNAL \tone_generator|Add1~65_combout\ : std_logic;
SIGNAL \tone_generator|Add1~52\ : std_logic;
SIGNAL \tone_generator|Add1~52COUT1_107\ : std_logic;
SIGNAL \tone_generator|Add1~60_combout\ : std_logic;
SIGNAL \tone_generator|Add1~62\ : std_logic;
SIGNAL \tone_generator|Add1~62COUT1_108\ : std_logic;
SIGNAL \tone_generator|Add1~70_combout\ : std_logic;
SIGNAL \tone_generator|Add1~72\ : std_logic;
SIGNAL \tone_generator|Add1~67\ : std_logic;
SIGNAL \tone_generator|Add1~67COUT1_110\ : std_logic;
SIGNAL \tone_generator|Add1~92COUT1_111\ : std_logic;
SIGNAL \tone_generator|Add1~82COUT1_112\ : std_logic;
SIGNAL \tone_generator|Add1~87\ : std_logic;
SIGNAL \tone_generator|Add1~95_combout\ : std_logic;
SIGNAL \tone_generator|Add1~90_combout\ : std_logic;
SIGNAL \tone_generator|Add1~92\ : std_logic;
SIGNAL \tone_generator|Add1~80_combout\ : std_logic;
SIGNAL \tone_generator|Add1~82\ : std_logic;
SIGNAL \tone_generator|Add1~85_combout\ : std_logic;
SIGNAL \tone_generator|Equal1~4\ : std_logic;
SIGNAL \tone_generator|Equal1~3\ : std_logic;
SIGNAL \tone_generator|Equal1~5_combout\ : std_logic;
SIGNAL \tone_generator|Add1~97\ : std_logic;
SIGNAL \tone_generator|Add1~97COUT1_113\ : std_logic;
SIGNAL \tone_generator|Add1~0_combout\ : std_logic;
SIGNAL \tone_generator|Add1~2\ : std_logic;
SIGNAL \tone_generator|Add1~2COUT1_114\ : std_logic;
SIGNAL \tone_generator|Add1~5_combout\ : std_logic;
SIGNAL \tone_generator|Add1~7\ : std_logic;
SIGNAL \tone_generator|Add1~7COUT1_115\ : std_logic;
SIGNAL \tone_generator|Add1~10_combout\ : std_logic;
SIGNAL \tone_generator|Add1~12\ : std_logic;
SIGNAL \tone_generator|Add1~12COUT1_116\ : std_logic;
SIGNAL \tone_generator|Add1~15_combout\ : std_logic;
SIGNAL \tone_generator|Equal1~0\ : std_logic;
SIGNAL \tone_generator|re~0\ : std_logic;
SIGNAL \tone_generator|toneOut~regout\ : std_logic;
SIGNAL timecounter : std_logic_vector(26 DOWNTO 0);
SIGNAL index_current : std_logic_vector(3 DOWNTO 0);
SIGNAL index_next : std_logic_vector(3 DOWNTO 0);
SIGNAL \tone_generator|count_ma\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \tone_generator|count_re\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \tone_generator|LED\ : std_logic_vector(7 DOWNTO 0);

BEGIN

toneOut <= ww_toneOut;
ww_clk_50 <= clk_50;
ww_resetn <= resetn;
LED <= ww_LED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk_50~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk_50,
	combout => \clk_50~combout\);

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\resetn~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_resetn,
	combout => \resetn~combout\);

-- Location: LC_X4_Y9_N2
\timecounter[0]\ : maxv_lcell
-- Equation(s):
-- timecounter(0) = DFFEAS((!timecounter(0)), GLOBAL(\clk_50~combout\), VCC, , , , , \index_current[2]~1_combout\, )
-- \timecounter[0]~1\ = CARRY((timecounter(0)))
-- \timecounter[0]~1COUT1_55\ = CARRY((timecounter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => timecounter(0),
	aclr => GND,
	sclr => \index_current[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(0),
	cout0 => \timecounter[0]~1\,
	cout1 => \timecounter[0]~1COUT1_55\);

-- Location: LC_X4_Y9_N3
\timecounter[1]\ : maxv_lcell
-- Equation(s):
-- timecounter(1) = DFFEAS(timecounter(1) $ ((((\timecounter[0]~1\)))), GLOBAL(\clk_50~combout\), VCC, , , , , \index_current[2]~1_combout\, )
-- \timecounter[1]~3\ = CARRY(((!\timecounter[0]~1\)) # (!timecounter(1)))
-- \timecounter[1]~3COUT1_56\ = CARRY(((!\timecounter[0]~1COUT1_55\)) # (!timecounter(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => timecounter(1),
	aclr => GND,
	sclr => \index_current[2]~1_combout\,
	cin0 => \timecounter[0]~1\,
	cin1 => \timecounter[0]~1COUT1_55\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(1),
	cout0 => \timecounter[1]~3\,
	cout1 => \timecounter[1]~3COUT1_56\);

-- Location: LC_X4_Y9_N4
\timecounter[2]\ : maxv_lcell
-- Equation(s):
-- timecounter(2) = DFFEAS(timecounter(2) $ ((((!\timecounter[1]~3\)))), GLOBAL(\clk_50~combout\), VCC, , , , , \index_current[2]~1_combout\, )
-- \timecounter[2]~5\ = CARRY((timecounter(2) & ((!\timecounter[1]~3COUT1_56\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => timecounter(2),
	aclr => GND,
	sclr => \index_current[2]~1_combout\,
	cin0 => \timecounter[1]~3\,
	cin1 => \timecounter[1]~3COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(2),
	cout => \timecounter[2]~5\);

-- Location: LC_X4_Y9_N5
\timecounter[3]\ : maxv_lcell
-- Equation(s):
-- timecounter(3) = DFFEAS(timecounter(3) $ ((((\timecounter[2]~5\)))), GLOBAL(\clk_50~combout\), VCC, , , , , \index_current[2]~1_combout\, )
-- \timecounter[3]~7\ = CARRY(((!\timecounter[2]~5\)) # (!timecounter(3)))
-- \timecounter[3]~7COUT1_57\ = CARRY(((!\timecounter[2]~5\)) # (!timecounter(3)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => timecounter(3),
	aclr => GND,
	sclr => \index_current[2]~1_combout\,
	cin => \timecounter[2]~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(3),
	cout0 => \timecounter[3]~7\,
	cout1 => \timecounter[3]~7COUT1_57\);

-- Location: LC_X4_Y9_N6
\timecounter[4]\ : maxv_lcell
-- Equation(s):
-- timecounter(4) = DFFEAS(timecounter(4) $ ((((!(!\timecounter[2]~5\ & \timecounter[3]~7\) # (\timecounter[2]~5\ & \timecounter[3]~7COUT1_57\))))), GLOBAL(\clk_50~combout\), VCC, , , , , \index_current[2]~1_combout\, )
-- \timecounter[4]~9\ = CARRY((timecounter(4) & ((!\timecounter[3]~7\))))
-- \timecounter[4]~9COUT1_58\ = CARRY((timecounter(4) & ((!\timecounter[3]~7COUT1_57\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => timecounter(4),
	aclr => GND,
	sclr => \index_current[2]~1_combout\,
	cin => \timecounter[2]~5\,
	cin0 => \timecounter[3]~7\,
	cin1 => \timecounter[3]~7COUT1_57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(4),
	cout0 => \timecounter[4]~9\,
	cout1 => \timecounter[4]~9COUT1_58\);

-- Location: LC_X4_Y9_N7
\timecounter[5]\ : maxv_lcell
-- Equation(s):
-- timecounter(5) = DFFEAS((timecounter(5) $ (((!\timecounter[2]~5\ & \timecounter[4]~9\) # (\timecounter[2]~5\ & \timecounter[4]~9COUT1_58\)))), GLOBAL(\clk_50~combout\), VCC, , , , , \index_current[2]~1_combout\, )
-- \timecounter[5]~15\ = CARRY(((!\timecounter[4]~9\) # (!timecounter(5))))
-- \timecounter[5]~15COUT1_59\ = CARRY(((!\timecounter[4]~9COUT1_58\) # (!timecounter(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	datab => timecounter(5),
	aclr => GND,
	sclr => \index_current[2]~1_combout\,
	cin => \timecounter[2]~5\,
	cin0 => \timecounter[4]~9\,
	cin1 => \timecounter[4]~9COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(5),
	cout0 => \timecounter[5]~15\,
	cout1 => \timecounter[5]~15COUT1_59\);

-- Location: LC_X4_Y9_N8
\timecounter[6]\ : maxv_lcell
-- Equation(s):
-- timecounter(6) = DFFEAS((timecounter(6) $ ((!(!\timecounter[2]~5\ & \timecounter[5]~15\) # (\timecounter[2]~5\ & \timecounter[5]~15COUT1_59\)))), GLOBAL(\clk_50~combout\), VCC, , , , , \index_current[2]~1_combout\, )
-- \timecounter[6]~11\ = CARRY(((timecounter(6) & !\timecounter[5]~15\)))
-- \timecounter[6]~11COUT1_60\ = CARRY(((timecounter(6) & !\timecounter[5]~15COUT1_59\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	datab => timecounter(6),
	aclr => GND,
	sclr => \index_current[2]~1_combout\,
	cin => \timecounter[2]~5\,
	cin0 => \timecounter[5]~15\,
	cin1 => \timecounter[5]~15COUT1_59\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(6),
	cout0 => \timecounter[6]~11\,
	cout1 => \timecounter[6]~11COUT1_60\);

-- Location: LC_X4_Y9_N9
\timecounter[7]\ : maxv_lcell
-- Equation(s):
-- timecounter(7) = DFFEAS((timecounter(7) $ (((!\timecounter[2]~5\ & \timecounter[6]~11\) # (\timecounter[2]~5\ & \timecounter[6]~11COUT1_60\)))), GLOBAL(\clk_50~combout\), VCC, , , , , \index_current[2]~1_combout\, )
-- \timecounter[7]~13\ = CARRY(((!\timecounter[6]~11COUT1_60\) # (!timecounter(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	datab => timecounter(7),
	aclr => GND,
	sclr => \index_current[2]~1_combout\,
	cin => \timecounter[2]~5\,
	cin0 => \timecounter[6]~11\,
	cin1 => \timecounter[6]~11COUT1_60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(7),
	cout => \timecounter[7]~13\);

-- Location: LC_X5_Y9_N0
\timecounter[8]\ : maxv_lcell
-- Equation(s):
-- timecounter(8) = DFFEAS((timecounter(8) $ ((!\timecounter[7]~13\))), GLOBAL(\clk_50~combout\), VCC, , , , , \index_current[2]~1_combout\, )
-- \timecounter[8]~17\ = CARRY(((timecounter(8) & !\timecounter[7]~13\)))
-- \timecounter[8]~17COUT1_61\ = CARRY(((timecounter(8) & !\timecounter[7]~13\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	datab => timecounter(8),
	aclr => GND,
	sclr => \index_current[2]~1_combout\,
	cin => \timecounter[7]~13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(8),
	cout0 => \timecounter[8]~17\,
	cout1 => \timecounter[8]~17COUT1_61\);

-- Location: LC_X5_Y9_N1
\timecounter[9]\ : maxv_lcell
-- Equation(s):
-- timecounter(9) = DFFEAS((timecounter(9) $ (((!\timecounter[7]~13\ & \timecounter[8]~17\) # (\timecounter[7]~13\ & \timecounter[8]~17COUT1_61\)))), GLOBAL(\clk_50~combout\), VCC, , , , , \index_current[2]~1_combout\, )
-- \timecounter[9]~19\ = CARRY(((!\timecounter[8]~17\) # (!timecounter(9))))
-- \timecounter[9]~19COUT1_62\ = CARRY(((!\timecounter[8]~17COUT1_61\) # (!timecounter(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	datab => timecounter(9),
	aclr => GND,
	sclr => \index_current[2]~1_combout\,
	cin => \timecounter[7]~13\,
	cin0 => \timecounter[8]~17\,
	cin1 => \timecounter[8]~17COUT1_61\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(9),
	cout0 => \timecounter[9]~19\,
	cout1 => \timecounter[9]~19COUT1_62\);

-- Location: LC_X5_Y9_N2
\timecounter[10]\ : maxv_lcell
-- Equation(s):
-- timecounter(10) = DFFEAS((timecounter(10) $ ((!(!\timecounter[7]~13\ & \timecounter[9]~19\) # (\timecounter[7]~13\ & \timecounter[9]~19COUT1_62\)))), GLOBAL(\clk_50~combout\), VCC, , , , , \index_current[2]~1_combout\, )
-- \timecounter[10]~21\ = CARRY(((timecounter(10) & !\timecounter[9]~19\)))
-- \timecounter[10]~21COUT1_63\ = CARRY(((timecounter(10) & !\timecounter[9]~19COUT1_62\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	datab => timecounter(10),
	aclr => GND,
	sclr => \index_current[2]~1_combout\,
	cin => \timecounter[7]~13\,
	cin0 => \timecounter[9]~19\,
	cin1 => \timecounter[9]~19COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(10),
	cout0 => \timecounter[10]~21\,
	cout1 => \timecounter[10]~21COUT1_63\);

-- Location: LC_X5_Y9_N3
\timecounter[11]\ : maxv_lcell
-- Equation(s):
-- timecounter(11) = DFFEAS(timecounter(11) $ (((((!\timecounter[7]~13\ & \timecounter[10]~21\) # (\timecounter[7]~13\ & \timecounter[10]~21COUT1_63\))))), GLOBAL(\clk_50~combout\), VCC, , , , , \index_current[2]~1_combout\, )
-- \timecounter[11]~23\ = CARRY(((!\timecounter[10]~21\)) # (!timecounter(11)))
-- \timecounter[11]~23COUT1_64\ = CARRY(((!\timecounter[10]~21COUT1_63\)) # (!timecounter(11)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => timecounter(11),
	aclr => GND,
	sclr => \index_current[2]~1_combout\,
	cin => \timecounter[7]~13\,
	cin0 => \timecounter[10]~21\,
	cin1 => \timecounter[10]~21COUT1_63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(11),
	cout0 => \timecounter[11]~23\,
	cout1 => \timecounter[11]~23COUT1_64\);

-- Location: LC_X5_Y9_N4
\timecounter[12]\ : maxv_lcell
-- Equation(s):
-- timecounter(12) = DFFEAS(timecounter(12) $ ((((!(!\timecounter[7]~13\ & \timecounter[11]~23\) # (\timecounter[7]~13\ & \timecounter[11]~23COUT1_64\))))), GLOBAL(\clk_50~combout\), VCC, , , , , \index_current[2]~1_combout\, )
-- \timecounter[12]~27\ = CARRY((timecounter(12) & ((!\timecounter[11]~23COUT1_64\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => timecounter(12),
	aclr => GND,
	sclr => \index_current[2]~1_combout\,
	cin => \timecounter[7]~13\,
	cin0 => \timecounter[11]~23\,
	cin1 => \timecounter[11]~23COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(12),
	cout => \timecounter[12]~27\);

-- Location: LC_X5_Y9_N5
\timecounter[13]\ : maxv_lcell
-- Equation(s):
-- timecounter(13) = DFFEAS(timecounter(13) $ ((((\timecounter[12]~27\)))), GLOBAL(\clk_50~combout\), VCC, , , , , \index_current[2]~1_combout\, )
-- \timecounter[13]~29\ = CARRY(((!\timecounter[12]~27\)) # (!timecounter(13)))
-- \timecounter[13]~29COUT1_65\ = CARRY(((!\timecounter[12]~27\)) # (!timecounter(13)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => timecounter(13),
	aclr => GND,
	sclr => \index_current[2]~1_combout\,
	cin => \timecounter[12]~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(13),
	cout0 => \timecounter[13]~29\,
	cout1 => \timecounter[13]~29COUT1_65\);

-- Location: LC_X5_Y9_N6
\timecounter[14]\ : maxv_lcell
-- Equation(s):
-- timecounter(14) = DFFEAS(timecounter(14) $ ((((!(!\timecounter[12]~27\ & \timecounter[13]~29\) # (\timecounter[12]~27\ & \timecounter[13]~29COUT1_65\))))), GLOBAL(\clk_50~combout\), VCC, , , , , \index_current[2]~1_combout\, )
-- \timecounter[14]~25\ = CARRY((timecounter(14) & ((!\timecounter[13]~29\))))
-- \timecounter[14]~25COUT1_66\ = CARRY((timecounter(14) & ((!\timecounter[13]~29COUT1_65\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => timecounter(14),
	aclr => GND,
	sclr => \index_current[2]~1_combout\,
	cin => \timecounter[12]~27\,
	cin0 => \timecounter[13]~29\,
	cin1 => \timecounter[13]~29COUT1_65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(14),
	cout0 => \timecounter[14]~25\,
	cout1 => \timecounter[14]~25COUT1_66\);

-- Location: LC_X5_Y9_N7
\timecounter[15]\ : maxv_lcell
-- Equation(s):
-- timecounter(15) = DFFEAS((timecounter(15) $ (((!\timecounter[12]~27\ & \timecounter[14]~25\) # (\timecounter[12]~27\ & \timecounter[14]~25COUT1_66\)))), GLOBAL(\clk_50~combout\), VCC, , , , , \index_current[2]~1_combout\, )
-- \timecounter[15]~31\ = CARRY(((!\timecounter[14]~25\) # (!timecounter(15))))
-- \timecounter[15]~31COUT1_67\ = CARRY(((!\timecounter[14]~25COUT1_66\) # (!timecounter(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	datab => timecounter(15),
	aclr => GND,
	sclr => \index_current[2]~1_combout\,
	cin => \timecounter[12]~27\,
	cin0 => \timecounter[14]~25\,
	cin1 => \timecounter[14]~25COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(15),
	cout0 => \timecounter[15]~31\,
	cout1 => \timecounter[15]~31COUT1_67\);

-- Location: LC_X5_Y9_N8
\timecounter[16]\ : maxv_lcell
-- Equation(s):
-- timecounter(16) = DFFEAS(timecounter(16) $ ((((!(!\timecounter[12]~27\ & \timecounter[15]~31\) # (\timecounter[12]~27\ & \timecounter[15]~31COUT1_67\))))), GLOBAL(\clk_50~combout\), VCC, , , , , \index_current[2]~1_combout\, )
-- \timecounter[16]~33\ = CARRY((timecounter(16) & ((!\timecounter[15]~31\))))
-- \timecounter[16]~33COUT1_68\ = CARRY((timecounter(16) & ((!\timecounter[15]~31COUT1_67\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => timecounter(16),
	aclr => GND,
	sclr => \index_current[2]~1_combout\,
	cin => \timecounter[12]~27\,
	cin0 => \timecounter[15]~31\,
	cin1 => \timecounter[15]~31COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(16),
	cout0 => \timecounter[16]~33\,
	cout1 => \timecounter[16]~33COUT1_68\);

-- Location: LC_X5_Y9_N9
\timecounter[17]\ : maxv_lcell
-- Equation(s):
-- timecounter(17) = DFFEAS((timecounter(17) $ (((!\timecounter[12]~27\ & \timecounter[16]~33\) # (\timecounter[12]~27\ & \timecounter[16]~33COUT1_68\)))), GLOBAL(\clk_50~combout\), VCC, , , , , \index_current[2]~1_combout\, )
-- \timecounter[17]~35\ = CARRY(((!\timecounter[16]~33COUT1_68\) # (!timecounter(17))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	datab => timecounter(17),
	aclr => GND,
	sclr => \index_current[2]~1_combout\,
	cin => \timecounter[12]~27\,
	cin0 => \timecounter[16]~33\,
	cin1 => \timecounter[16]~33COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(17),
	cout => \timecounter[17]~35\);

-- Location: LC_X6_Y9_N0
\timecounter[18]\ : maxv_lcell
-- Equation(s):
-- timecounter(18) = DFFEAS((timecounter(18) $ ((!\timecounter[17]~35\))), GLOBAL(\clk_50~combout\), VCC, , , , , \index_current[2]~1_combout\, )
-- \timecounter[18]~37\ = CARRY(((timecounter(18) & !\timecounter[17]~35\)))
-- \timecounter[18]~37COUT1_69\ = CARRY(((timecounter(18) & !\timecounter[17]~35\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	datab => timecounter(18),
	aclr => GND,
	sclr => \index_current[2]~1_combout\,
	cin => \timecounter[17]~35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(18),
	cout0 => \timecounter[18]~37\,
	cout1 => \timecounter[18]~37COUT1_69\);

-- Location: LC_X6_Y9_N1
\timecounter[19]\ : maxv_lcell
-- Equation(s):
-- timecounter(19) = DFFEAS((timecounter(19) $ (((!\timecounter[17]~35\ & \timecounter[18]~37\) # (\timecounter[17]~35\ & \timecounter[18]~37COUT1_69\)))), GLOBAL(\clk_50~combout\), VCC, , , , , \index_current[2]~1_combout\, )
-- \timecounter[19]~39\ = CARRY(((!\timecounter[18]~37\) # (!timecounter(19))))
-- \timecounter[19]~39COUT1_70\ = CARRY(((!\timecounter[18]~37COUT1_69\) # (!timecounter(19))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	datab => timecounter(19),
	aclr => GND,
	sclr => \index_current[2]~1_combout\,
	cin => \timecounter[17]~35\,
	cin0 => \timecounter[18]~37\,
	cin1 => \timecounter[18]~37COUT1_69\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(19),
	cout0 => \timecounter[19]~39\,
	cout1 => \timecounter[19]~39COUT1_70\);

-- Location: LC_X6_Y9_N2
\timecounter[20]\ : maxv_lcell
-- Equation(s):
-- timecounter(20) = DFFEAS((timecounter(20) $ ((!(!\timecounter[17]~35\ & \timecounter[19]~39\) # (\timecounter[17]~35\ & \timecounter[19]~39COUT1_70\)))), GLOBAL(\clk_50~combout\), VCC, , , , , \index_current[2]~1_combout\, )
-- \timecounter[20]~43\ = CARRY(((timecounter(20) & !\timecounter[19]~39\)))
-- \timecounter[20]~43COUT1_71\ = CARRY(((timecounter(20) & !\timecounter[19]~39COUT1_70\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	datab => timecounter(20),
	aclr => GND,
	sclr => \index_current[2]~1_combout\,
	cin => \timecounter[17]~35\,
	cin0 => \timecounter[19]~39\,
	cin1 => \timecounter[19]~39COUT1_70\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(20),
	cout0 => \timecounter[20]~43\,
	cout1 => \timecounter[20]~43COUT1_71\);

-- Location: LC_X6_Y9_N3
\timecounter[21]\ : maxv_lcell
-- Equation(s):
-- timecounter(21) = DFFEAS(timecounter(21) $ (((((!\timecounter[17]~35\ & \timecounter[20]~43\) # (\timecounter[17]~35\ & \timecounter[20]~43COUT1_71\))))), GLOBAL(\clk_50~combout\), VCC, , , , , \index_current[2]~1_combout\, )
-- \timecounter[21]~45\ = CARRY(((!\timecounter[20]~43\)) # (!timecounter(21)))
-- \timecounter[21]~45COUT1_72\ = CARRY(((!\timecounter[20]~43COUT1_71\)) # (!timecounter(21)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => timecounter(21),
	aclr => GND,
	sclr => \index_current[2]~1_combout\,
	cin => \timecounter[17]~35\,
	cin0 => \timecounter[20]~43\,
	cin1 => \timecounter[20]~43COUT1_71\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(21),
	cout0 => \timecounter[21]~45\,
	cout1 => \timecounter[21]~45COUT1_72\);

-- Location: LC_X6_Y9_N4
\timecounter[22]\ : maxv_lcell
-- Equation(s):
-- timecounter(22) = DFFEAS(timecounter(22) $ ((((!(!\timecounter[17]~35\ & \timecounter[21]~45\) # (\timecounter[17]~35\ & \timecounter[21]~45COUT1_72\))))), GLOBAL(\clk_50~combout\), VCC, , , , , \index_current[2]~1_combout\, )
-- \timecounter[22]~41\ = CARRY((timecounter(22) & ((!\timecounter[21]~45COUT1_72\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => timecounter(22),
	aclr => GND,
	sclr => \index_current[2]~1_combout\,
	cin => \timecounter[17]~35\,
	cin0 => \timecounter[21]~45\,
	cin1 => \timecounter[21]~45COUT1_72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(22),
	cout => \timecounter[22]~41\);

-- Location: LC_X6_Y9_N5
\timecounter[23]\ : maxv_lcell
-- Equation(s):
-- timecounter(23) = DFFEAS(timecounter(23) $ ((((\timecounter[22]~41\)))), GLOBAL(\clk_50~combout\), VCC, , , , , \index_current[2]~1_combout\, )
-- \timecounter[23]~47\ = CARRY(((!\timecounter[22]~41\)) # (!timecounter(23)))
-- \timecounter[23]~47COUT1_73\ = CARRY(((!\timecounter[22]~41\)) # (!timecounter(23)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => timecounter(23),
	aclr => GND,
	sclr => \index_current[2]~1_combout\,
	cin => \timecounter[22]~41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(23),
	cout0 => \timecounter[23]~47\,
	cout1 => \timecounter[23]~47COUT1_73\);

-- Location: LC_X6_Y9_N6
\timecounter[24]\ : maxv_lcell
-- Equation(s):
-- timecounter(24) = DFFEAS(timecounter(24) $ ((((!(!\timecounter[22]~41\ & \timecounter[23]~47\) # (\timecounter[22]~41\ & \timecounter[23]~47COUT1_73\))))), GLOBAL(\clk_50~combout\), VCC, , , , , \index_current[2]~1_combout\, )
-- \timecounter[24]~49\ = CARRY((timecounter(24) & ((!\timecounter[23]~47\))))
-- \timecounter[24]~49COUT1_74\ = CARRY((timecounter(24) & ((!\timecounter[23]~47COUT1_73\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => timecounter(24),
	aclr => GND,
	sclr => \index_current[2]~1_combout\,
	cin => \timecounter[22]~41\,
	cin0 => \timecounter[23]~47\,
	cin1 => \timecounter[23]~47COUT1_73\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(24),
	cout0 => \timecounter[24]~49\,
	cout1 => \timecounter[24]~49COUT1_74\);

-- Location: LC_X6_Y9_N7
\timecounter[25]\ : maxv_lcell
-- Equation(s):
-- timecounter(25) = DFFEAS((timecounter(25) $ (((!\timecounter[22]~41\ & \timecounter[24]~49\) # (\timecounter[22]~41\ & \timecounter[24]~49COUT1_74\)))), GLOBAL(\clk_50~combout\), VCC, , , , , \index_current[2]~1_combout\, )
-- \timecounter[25]~51\ = CARRY(((!\timecounter[24]~49\) # (!timecounter(25))))
-- \timecounter[25]~51COUT1_75\ = CARRY(((!\timecounter[24]~49COUT1_74\) # (!timecounter(25))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	datab => timecounter(25),
	aclr => GND,
	sclr => \index_current[2]~1_combout\,
	cin => \timecounter[22]~41\,
	cin0 => \timecounter[24]~49\,
	cin1 => \timecounter[24]~49COUT1_74\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(25),
	cout0 => \timecounter[25]~51\,
	cout1 => \timecounter[25]~51COUT1_75\);

-- Location: LC_X6_Y9_N8
\timecounter[26]\ : maxv_lcell
-- Equation(s):
-- timecounter(26) = DFFEAS((((!\timecounter[22]~41\ & \timecounter[25]~51\) # (\timecounter[22]~41\ & \timecounter[25]~51COUT1_75\) $ (!timecounter(26)))), GLOBAL(\clk_50~combout\), VCC, , , , , \index_current[2]~1_combout\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	datad => timecounter(26),
	aclr => GND,
	sclr => \index_current[2]~1_combout\,
	cin => \timecounter[22]~41\,
	cin0 => \timecounter[25]~51\,
	cin1 => \timecounter[25]~51COUT1_75\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(26));

-- Location: LC_X7_Y9_N8
\Equal0~6\ : maxv_lcell
-- Equation(s):
-- \Equal0~6_combout\ = (((timecounter(22)) # (!timecounter(21))) # (!timecounter(20))) # (!timecounter(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff7f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => timecounter(23),
	datab => timecounter(20),
	datac => timecounter(21),
	datad => timecounter(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~6_combout\);

-- Location: LC_X7_Y9_N9
\Equal0~7\ : maxv_lcell
-- Equation(s):
-- \Equal0~7_combout\ = (timecounter(26)) # ((timecounter(25)) # ((timecounter(24)) # (\Equal0~6_combout\)))

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
	dataa => timecounter(26),
	datab => timecounter(25),
	datac => timecounter(24),
	datad => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~7_combout\);

-- Location: LC_X7_Y9_N5
\Equal0~5\ : maxv_lcell
-- Equation(s):
-- \Equal0~5_combout\ = ((timecounter(16)) # ((!timecounter(18)) # (!timecounter(17)))) # (!timecounter(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => timecounter(19),
	datab => timecounter(16),
	datac => timecounter(17),
	datad => timecounter(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~5_combout\);

-- Location: LC_X6_Y9_N9
\Equal0~3\ : maxv_lcell
-- Equation(s):
-- \Equal0~3_combout\ = (((timecounter(14)) # (!timecounter(15))) # (!timecounter(12))) # (!timecounter(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f7ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => timecounter(13),
	datab => timecounter(12),
	datac => timecounter(14),
	datad => timecounter(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~3_combout\);

-- Location: LC_X4_Y9_N0
\Equal0~1\ : maxv_lcell
-- Equation(s):
-- \Equal0~1_combout\ = (timecounter(6)) # (((timecounter(4)) # (timecounter(7))) # (!timecounter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => timecounter(6),
	datab => timecounter(5),
	datac => timecounter(4),
	datad => timecounter(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1_combout\);

-- Location: LC_X4_Y9_N1
\Equal0~0\ : maxv_lcell
-- Equation(s):
-- \Equal0~0_combout\ = (timecounter(1)) # ((timecounter(0)) # ((timecounter(3)) # (timecounter(2))))

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
	dataa => timecounter(1),
	datab => timecounter(0),
	datac => timecounter(3),
	datad => timecounter(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0_combout\);

-- Location: LC_X7_Y9_N0
\Equal0~2\ : maxv_lcell
-- Equation(s):
-- \Equal0~2_combout\ = (timecounter(8)) # ((timecounter(9)) # ((!timecounter(11)) # (!timecounter(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "efff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => timecounter(8),
	datab => timecounter(9),
	datac => timecounter(10),
	datad => timecounter(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~2_combout\);

-- Location: LC_X7_Y9_N1
\Equal0~4\ : maxv_lcell
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\) # ((\Equal0~1_combout\) # ((\Equal0~0_combout\) # (\Equal0~2_combout\)))

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
	dataa => \Equal0~3_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~4_combout\);

-- Location: LC_X7_Y9_N2
\index_current[2]~1\ : maxv_lcell
-- Equation(s):
-- \index_current[2]~1_combout\ = (\resetn~combout\) # ((!\Equal0~7_combout\ & (!\Equal0~5_combout\ & !\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaab",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \resetn~combout\,
	datab => \Equal0~7_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \index_current[2]~1_combout\);

-- Location: LC_X8_Y9_N9
\index_current[2]\ : maxv_lcell
-- Equation(s):
-- index_current(2) = DFFEAS((((!\resetn~combout\))), GLOBAL(\clk_50~combout\), VCC, , \index_current[2]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	datad => \resetn~combout\,
	aclr => GND,
	ena => \index_current[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => index_current(2));

-- Location: LC_X8_Y9_N3
\index_next[0]\ : maxv_lcell
-- Equation(s):
-- index_next(0) = ((GLOBAL(\Mux1~0_combout\) & (index_current(0))) # (!GLOBAL(\Mux1~0_combout\) & ((index_next(0)))))

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
	dataa => index_current(0),
	datac => \Mux1~0_combout\,
	datad => index_next(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => index_next(0));

-- Location: LC_X8_Y9_N4
\index_current[0]\ : maxv_lcell
-- Equation(s):
-- index_current(0) = DFFEAS(((!\resetn~combout\ & ((!index_next(0))))), GLOBAL(\clk_50~combout\), VCC, , \index_current[2]~1_combout\, , , , )

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
	clk => \clk_50~combout\,
	datab => \resetn~combout\,
	datad => index_next(0),
	aclr => GND,
	ena => \index_current[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => index_current(0));

-- Location: LC_X8_Y9_N6
\Mux1~0\ : maxv_lcell
-- Equation(s):
-- \Mux1~0_combout\ = ((index_current(2)) # ((!index_current(0) & !index_current(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => index_current(2),
	datac => index_current(0),
	datad => index_current(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~0_combout\);

-- Location: LC_X8_Y9_N8
\Mux0~0\ : maxv_lcell
-- Equation(s):
-- \Mux0~0_combout\ = ((index_current(0) $ (index_current(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => index_current(0),
	datad => index_current(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0_combout\);

-- Location: LC_X8_Y9_N0
\index_next[1]\ : maxv_lcell
-- Equation(s):
-- index_next(1) = ((GLOBAL(\Mux1~0_combout\) & ((\Mux0~0_combout\))) # (!GLOBAL(\Mux1~0_combout\) & (index_next(1))))

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
	datab => index_next(1),
	datac => \Mux1~0_combout\,
	datad => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => index_next(1));

-- Location: LC_X8_Y9_N1
\index_current[1]\ : maxv_lcell
-- Equation(s):
-- index_current(1) = DFFEAS(((!\resetn~combout\ & ((!index_next(1))))), GLOBAL(\clk_50~combout\), VCC, , \index_current[2]~1_combout\, , , , )

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
	clk => \clk_50~combout\,
	datab => \resetn~combout\,
	datad => index_next(1),
	aclr => GND,
	ena => \index_current[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => index_current(1));

-- Location: LC_X11_Y9_N5
\tone_generator|Add3~40\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add3~40_combout\ = \tone_generator|count_ma\(5) $ ((((\tone_generator|Add3~47\))))
-- \tone_generator|Add3~42\ = CARRY(((!\tone_generator|Add3~47\)) # (!\tone_generator|count_ma\(5)))
-- \tone_generator|Add3~42COUT1_105\ = CARRY(((!\tone_generator|Add3~47\)) # (!\tone_generator|count_ma\(5)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tone_generator|count_ma\(5),
	cin => \tone_generator|Add3~47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add3~40_combout\,
	cout0 => \tone_generator|Add3~42\,
	cout1 => \tone_generator|Add3~42COUT1_105\);

-- Location: LC_X11_Y9_N6
\tone_generator|Add3~50\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add3~50_combout\ = \tone_generator|count_ma\(6) $ ((((!(!\tone_generator|Add3~47\ & \tone_generator|Add3~42\) # (\tone_generator|Add3~47\ & \tone_generator|Add3~42COUT1_105\)))))
-- \tone_generator|Add3~52\ = CARRY((\tone_generator|count_ma\(6) & ((!\tone_generator|Add3~42\))))
-- \tone_generator|Add3~52COUT1_106\ = CARRY((\tone_generator|count_ma\(6) & ((!\tone_generator|Add3~42COUT1_105\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tone_generator|count_ma\(6),
	cin => \tone_generator|Add3~47\,
	cin0 => \tone_generator|Add3~42\,
	cin1 => \tone_generator|Add3~42COUT1_105\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add3~50_combout\,
	cout0 => \tone_generator|Add3~52\,
	cout1 => \tone_generator|Add3~52COUT1_106\);

-- Location: LC_X9_Y9_N4
\Mux3~0\ : maxv_lcell
-- Equation(s):
-- \Mux3~0_combout\ = (!index_current(1) & (((index_current(2)))))

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
	dataa => index_current(1),
	datac => index_current(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~0_combout\);

-- Location: LC_X10_Y9_N0
\tone_generator|count_ma[6]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ma\(6) = DFFEAS(GND, GLOBAL(\clk_50~combout\), VCC, , \Mux3~0_combout\, \tone_generator|Add3~50_combout\, , , VCC)

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
	clk => \clk_50~combout\,
	datac => \tone_generator|Add3~50_combout\,
	aclr => GND,
	sload => VCC,
	ena => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ma\(6));

-- Location: LC_X11_Y9_N0
\tone_generator|Add3~35\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add3~35_combout\ = ((!\tone_generator|count_ma\(0)))
-- \tone_generator|Add3~37\ = CARRY(((\tone_generator|count_ma\(0))))
-- \tone_generator|Add3~37COUT1_101\ = CARRY(((\tone_generator|count_ma\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \tone_generator|count_ma\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add3~35_combout\,
	cout0 => \tone_generator|Add3~37\,
	cout1 => \tone_generator|Add3~37COUT1_101\);

-- Location: LC_X10_Y9_N7
\tone_generator|count_ma[0]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal3~1\ = (\tone_generator|count_ma\(1) & (\tone_generator|count_ma\(3) & (!B1_count_ma[0] & \tone_generator|count_ma\(2))))
-- \tone_generator|count_ma\(0) = DFFEAS(\tone_generator|Equal3~1\, GLOBAL(\clk_50~combout\), VCC, , \Mux3~0_combout\, \tone_generator|Add3~35_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \tone_generator|count_ma\(1),
	datab => \tone_generator|count_ma\(3),
	datac => \tone_generator|Add3~35_combout\,
	datad => \tone_generator|count_ma\(2),
	aclr => GND,
	sload => VCC,
	ena => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal3~1\,
	regout => \tone_generator|count_ma\(0));

-- Location: LC_X11_Y9_N1
\tone_generator|Add3~20\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add3~20_combout\ = (\tone_generator|count_ma\(1) $ ((\tone_generator|Add3~37\)))
-- \tone_generator|Add3~22\ = CARRY(((!\tone_generator|Add3~37\) # (!\tone_generator|count_ma\(1))))
-- \tone_generator|Add3~22COUT1_102\ = CARRY(((!\tone_generator|Add3~37COUT1_101\) # (!\tone_generator|count_ma\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \tone_generator|count_ma\(1),
	cin0 => \tone_generator|Add3~37\,
	cin1 => \tone_generator|Add3~37COUT1_101\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add3~20_combout\,
	cout0 => \tone_generator|Add3~22\,
	cout1 => \tone_generator|Add3~22COUT1_102\);

-- Location: LC_X10_Y9_N6
\tone_generator|count_ma[1]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ma\(1) = DFFEAS(((\tone_generator|Add3~20_combout\ & ((!\tone_generator|Equal3~0\) # (!\tone_generator|Equal3~5_combout\)))), GLOBAL(\clk_50~combout\), VCC, , \Mux3~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7700",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \tone_generator|Equal3~5_combout\,
	datab => \tone_generator|Equal3~0\,
	datad => \tone_generator|Add3~20_combout\,
	aclr => GND,
	ena => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ma\(1));

-- Location: LC_X11_Y9_N2
\tone_generator|Add3~25\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add3~25_combout\ = (\tone_generator|count_ma\(2) $ ((!\tone_generator|Add3~22\)))
-- \tone_generator|Add3~27\ = CARRY(((\tone_generator|count_ma\(2) & !\tone_generator|Add3~22\)))
-- \tone_generator|Add3~27COUT1_103\ = CARRY(((\tone_generator|count_ma\(2) & !\tone_generator|Add3~22COUT1_102\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \tone_generator|count_ma\(2),
	cin0 => \tone_generator|Add3~22\,
	cin1 => \tone_generator|Add3~22COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add3~25_combout\,
	cout0 => \tone_generator|Add3~27\,
	cout1 => \tone_generator|Add3~27COUT1_103\);

-- Location: LC_X10_Y9_N4
\tone_generator|count_ma[2]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ma\(2) = DFFEAS(((\tone_generator|Add3~25_combout\ & ((!\tone_generator|Equal3~5_combout\) # (!\tone_generator|Equal3~0\)))), GLOBAL(\clk_50~combout\), VCC, , \Mux3~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	datab => \tone_generator|Equal3~0\,
	datac => \tone_generator|Add3~25_combout\,
	datad => \tone_generator|Equal3~5_combout\,
	aclr => GND,
	ena => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ma\(2));

-- Location: LC_X11_Y9_N3
\tone_generator|Add3~30\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add3~30_combout\ = \tone_generator|count_ma\(3) $ ((((\tone_generator|Add3~27\))))
-- \tone_generator|Add3~32\ = CARRY(((!\tone_generator|Add3~27\)) # (!\tone_generator|count_ma\(3)))
-- \tone_generator|Add3~32COUT1_104\ = CARRY(((!\tone_generator|Add3~27COUT1_103\)) # (!\tone_generator|count_ma\(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tone_generator|count_ma\(3),
	cin0 => \tone_generator|Add3~27\,
	cin1 => \tone_generator|Add3~27COUT1_103\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add3~30_combout\,
	cout0 => \tone_generator|Add3~32\,
	cout1 => \tone_generator|Add3~32COUT1_104\);

-- Location: LC_X10_Y9_N1
\tone_generator|count_ma[3]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ma\(3) = DFFEAS(((\tone_generator|Add3~30_combout\ & ((!\tone_generator|Equal3~5_combout\) # (!\tone_generator|Equal3~0\)))), GLOBAL(\clk_50~combout\), VCC, , \Mux3~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	datab => \tone_generator|Equal3~0\,
	datac => \tone_generator|Add3~30_combout\,
	datad => \tone_generator|Equal3~5_combout\,
	aclr => GND,
	ena => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ma\(3));

-- Location: LC_X11_Y9_N4
\tone_generator|Add3~45\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add3~45_combout\ = (\tone_generator|count_ma\(4) $ ((!\tone_generator|Add3~32\)))
-- \tone_generator|Add3~47\ = CARRY(((\tone_generator|count_ma\(4) & !\tone_generator|Add3~32COUT1_104\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \tone_generator|count_ma\(4),
	cin0 => \tone_generator|Add3~32\,
	cin1 => \tone_generator|Add3~32COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add3~45_combout\,
	cout => \tone_generator|Add3~47\);

-- Location: LC_X11_Y9_N7
\tone_generator|Add3~55\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add3~55_combout\ = \tone_generator|count_ma\(7) $ (((((!\tone_generator|Add3~47\ & \tone_generator|Add3~52\) # (\tone_generator|Add3~47\ & \tone_generator|Add3~52COUT1_106\)))))
-- \tone_generator|Add3~57\ = CARRY(((!\tone_generator|Add3~52\)) # (!\tone_generator|count_ma\(7)))
-- \tone_generator|Add3~57COUT1_107\ = CARRY(((!\tone_generator|Add3~52COUT1_106\)) # (!\tone_generator|count_ma\(7)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tone_generator|count_ma\(7),
	cin => \tone_generator|Add3~47\,
	cin0 => \tone_generator|Add3~52\,
	cin1 => \tone_generator|Add3~52COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add3~55_combout\,
	cout0 => \tone_generator|Add3~57\,
	cout1 => \tone_generator|Add3~57COUT1_107\);

-- Location: LC_X10_Y9_N8
\tone_generator|count_ma[7]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ma\(7) = DFFEAS((((\tone_generator|Add3~55_combout\))), GLOBAL(\clk_50~combout\), VCC, , \Mux3~0_combout\, , , , )

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
	clk => \clk_50~combout\,
	datad => \tone_generator|Add3~55_combout\,
	aclr => GND,
	ena => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ma\(7));

-- Location: LC_X10_Y9_N2
\tone_generator|count_ma[4]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal3~2\ = (\tone_generator|count_ma\(5) & (!\tone_generator|count_ma\(6) & (!B1_count_ma[4] & !\tone_generator|count_ma\(7))))
-- \tone_generator|count_ma\(4) = DFFEAS(\tone_generator|Equal3~2\, GLOBAL(\clk_50~combout\), VCC, , \Mux3~0_combout\, \tone_generator|Add3~45_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \tone_generator|count_ma\(5),
	datab => \tone_generator|count_ma\(6),
	datac => \tone_generator|Add3~45_combout\,
	datad => \tone_generator|count_ma\(7),
	aclr => GND,
	sload => VCC,
	ena => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal3~2\,
	regout => \tone_generator|count_ma\(4));

-- Location: LC_X10_Y9_N5
\tone_generator|count_ma[5]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ma\(5) = DFFEAS(((\tone_generator|Add3~40_combout\ & ((!\tone_generator|Equal3~0\) # (!\tone_generator|Equal3~5_combout\)))), GLOBAL(\clk_50~combout\), VCC, , \Mux3~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7700",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \tone_generator|Equal3~5_combout\,
	datab => \tone_generator|Equal3~0\,
	datad => \tone_generator|Add3~40_combout\,
	aclr => GND,
	ena => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ma\(5));

-- Location: LC_X12_Y9_N5
\tone_generator|Add3~95\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add3~95_combout\ = (\tone_generator|count_ma\(15) $ ((\tone_generator|Add3~92\)))
-- \tone_generator|Add3~97\ = CARRY(((!\tone_generator|Add3~92\) # (!\tone_generator|count_ma\(15))))
-- \tone_generator|Add3~97COUT1_113\ = CARRY(((!\tone_generator|Add3~92\) # (!\tone_generator|count_ma\(15))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \tone_generator|count_ma\(15),
	cin => \tone_generator|Add3~92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add3~95_combout\,
	cout0 => \tone_generator|Add3~97\,
	cout1 => \tone_generator|Add3~97COUT1_113\);

-- Location: LC_X13_Y9_N9
\tone_generator|count_ma[15]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ma\(15) = DFFEAS((((\tone_generator|Add3~95_combout\))), GLOBAL(\clk_50~combout\), VCC, , \Mux3~0_combout\, , , , )

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
	clk => \clk_50~combout\,
	datad => \tone_generator|Add3~95_combout\,
	aclr => GND,
	ena => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ma\(15));

-- Location: LC_X11_Y9_N8
\tone_generator|Add3~60\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add3~60_combout\ = (\tone_generator|count_ma\(8) $ ((!(!\tone_generator|Add3~47\ & \tone_generator|Add3~57\) # (\tone_generator|Add3~47\ & \tone_generator|Add3~57COUT1_107\))))
-- \tone_generator|Add3~62\ = CARRY(((\tone_generator|count_ma\(8) & !\tone_generator|Add3~57\)))
-- \tone_generator|Add3~62COUT1_108\ = CARRY(((\tone_generator|count_ma\(8) & !\tone_generator|Add3~57COUT1_107\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \tone_generator|count_ma\(8),
	cin => \tone_generator|Add3~47\,
	cin0 => \tone_generator|Add3~57\,
	cin1 => \tone_generator|Add3~57COUT1_107\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add3~60_combout\,
	cout0 => \tone_generator|Add3~62\,
	cout1 => \tone_generator|Add3~62COUT1_108\);

-- Location: LC_X14_Y9_N3
\tone_generator|count_ma[8]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ma\(8) = DFFEAS(((\tone_generator|Add3~60_combout\ & ((!\tone_generator|Equal3~5_combout\) # (!\tone_generator|Equal3~0\)))), GLOBAL(\clk_50~combout\), VCC, , \Mux3~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	datab => \tone_generator|Equal3~0\,
	datac => \tone_generator|Add3~60_combout\,
	datad => \tone_generator|Equal3~5_combout\,
	aclr => GND,
	ena => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ma\(8));

-- Location: LC_X12_Y9_N0
\tone_generator|Add3~70\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add3~70_combout\ = \tone_generator|count_ma\(10) $ ((((!\tone_generator|Add3~67\))))
-- \tone_generator|Add3~72\ = CARRY((\tone_generator|count_ma\(10) & ((!\tone_generator|Add3~67\))))
-- \tone_generator|Add3~72COUT1_109\ = CARRY((\tone_generator|count_ma\(10) & ((!\tone_generator|Add3~67\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tone_generator|count_ma\(10),
	cin => \tone_generator|Add3~67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add3~70_combout\,
	cout0 => \tone_generator|Add3~72\,
	cout1 => \tone_generator|Add3~72COUT1_109\);

-- Location: LC_X13_Y9_N7
\tone_generator|count_ma[10]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ma\(10) = DFFEAS((((\tone_generator|Add3~70_combout\))), GLOBAL(\clk_50~combout\), VCC, , \Mux3~0_combout\, , , , )

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
	clk => \clk_50~combout\,
	datad => \tone_generator|Add3~70_combout\,
	aclr => GND,
	ena => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ma\(10));

-- Location: LC_X12_Y9_N1
\tone_generator|Add3~75\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add3~75_combout\ = (\tone_generator|count_ma\(11) $ (((!\tone_generator|Add3~67\ & \tone_generator|Add3~72\) # (\tone_generator|Add3~67\ & \tone_generator|Add3~72COUT1_109\))))
-- \tone_generator|Add3~77\ = CARRY(((!\tone_generator|Add3~72\) # (!\tone_generator|count_ma\(11))))
-- \tone_generator|Add3~77COUT1_110\ = CARRY(((!\tone_generator|Add3~72COUT1_109\) # (!\tone_generator|count_ma\(11))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \tone_generator|count_ma\(11),
	cin => \tone_generator|Add3~67\,
	cin0 => \tone_generator|Add3~72\,
	cin1 => \tone_generator|Add3~72COUT1_109\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add3~75_combout\,
	cout0 => \tone_generator|Add3~77\,
	cout1 => \tone_generator|Add3~77COUT1_110\);

-- Location: LC_X13_Y9_N4
\tone_generator|count_ma[11]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ma\(11) = DFFEAS(GND, GLOBAL(\clk_50~combout\), VCC, , \Mux3~0_combout\, \tone_generator|Add3~75_combout\, , , VCC)

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
	clk => \clk_50~combout\,
	datac => \tone_generator|Add3~75_combout\,
	aclr => GND,
	sload => VCC,
	ena => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ma\(11));

-- Location: LC_X11_Y9_N9
\tone_generator|Add3~65\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add3~65_combout\ = (\tone_generator|count_ma\(9) $ (((!\tone_generator|Add3~47\ & \tone_generator|Add3~62\) # (\tone_generator|Add3~47\ & \tone_generator|Add3~62COUT1_108\))))
-- \tone_generator|Add3~67\ = CARRY(((!\tone_generator|Add3~62COUT1_108\) # (!\tone_generator|count_ma\(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \tone_generator|count_ma\(9),
	cin => \tone_generator|Add3~47\,
	cin0 => \tone_generator|Add3~62\,
	cin1 => \tone_generator|Add3~62COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add3~65_combout\,
	cout => \tone_generator|Add3~67\);

-- Location: LC_X14_Y9_N8
\tone_generator|count_ma[9]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal3~3\ = (\tone_generator|count_ma\(8) & (!\tone_generator|count_ma\(11) & (!B1_count_ma[9] & !\tone_generator|count_ma\(10))))
-- \tone_generator|count_ma\(9) = DFFEAS(\tone_generator|Equal3~3\, GLOBAL(\clk_50~combout\), VCC, , \Mux3~0_combout\, \tone_generator|Add3~65_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \tone_generator|count_ma\(8),
	datab => \tone_generator|count_ma\(11),
	datac => \tone_generator|Add3~65_combout\,
	datad => \tone_generator|count_ma\(10),
	aclr => GND,
	sload => VCC,
	ena => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal3~3\,
	regout => \tone_generator|count_ma\(9));

-- Location: LC_X12_Y9_N2
\tone_generator|Add3~80\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add3~80_combout\ = (\tone_generator|count_ma\(12) $ ((!(!\tone_generator|Add3~67\ & \tone_generator|Add3~77\) # (\tone_generator|Add3~67\ & \tone_generator|Add3~77COUT1_110\))))
-- \tone_generator|Add3~82\ = CARRY(((\tone_generator|count_ma\(12) & !\tone_generator|Add3~77\)))
-- \tone_generator|Add3~82COUT1_111\ = CARRY(((\tone_generator|count_ma\(12) & !\tone_generator|Add3~77COUT1_110\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \tone_generator|count_ma\(12),
	cin => \tone_generator|Add3~67\,
	cin0 => \tone_generator|Add3~77\,
	cin1 => \tone_generator|Add3~77COUT1_110\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add3~80_combout\,
	cout0 => \tone_generator|Add3~82\,
	cout1 => \tone_generator|Add3~82COUT1_111\);

-- Location: LC_X12_Y9_N3
\tone_generator|Add3~85\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add3~85_combout\ = \tone_generator|count_ma\(13) $ (((((!\tone_generator|Add3~67\ & \tone_generator|Add3~82\) # (\tone_generator|Add3~67\ & \tone_generator|Add3~82COUT1_111\)))))
-- \tone_generator|Add3~87\ = CARRY(((!\tone_generator|Add3~82\)) # (!\tone_generator|count_ma\(13)))
-- \tone_generator|Add3~87COUT1_112\ = CARRY(((!\tone_generator|Add3~82COUT1_111\)) # (!\tone_generator|count_ma\(13)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tone_generator|count_ma\(13),
	cin => \tone_generator|Add3~67\,
	cin0 => \tone_generator|Add3~82\,
	cin1 => \tone_generator|Add3~82COUT1_111\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add3~85_combout\,
	cout0 => \tone_generator|Add3~87\,
	cout1 => \tone_generator|Add3~87COUT1_112\);

-- Location: LC_X13_Y9_N3
\tone_generator|count_ma[13]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ma\(13) = DFFEAS(((\tone_generator|Add3~85_combout\ & ((!\tone_generator|Equal3~0\) # (!\tone_generator|Equal3~5_combout\)))), GLOBAL(\clk_50~combout\), VCC, , \Mux3~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	datab => \tone_generator|Equal3~5_combout\,
	datac => \tone_generator|Equal3~0\,
	datad => \tone_generator|Add3~85_combout\,
	aclr => GND,
	ena => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ma\(13));

-- Location: LC_X12_Y9_N4
\tone_generator|Add3~90\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add3~90_combout\ = (\tone_generator|count_ma\(14) $ ((!(!\tone_generator|Add3~67\ & \tone_generator|Add3~87\) # (\tone_generator|Add3~67\ & \tone_generator|Add3~87COUT1_112\))))
-- \tone_generator|Add3~92\ = CARRY(((\tone_generator|count_ma\(14) & !\tone_generator|Add3~87COUT1_112\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \tone_generator|count_ma\(14),
	cin => \tone_generator|Add3~67\,
	cin0 => \tone_generator|Add3~87\,
	cin1 => \tone_generator|Add3~87COUT1_112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add3~90_combout\,
	cout => \tone_generator|Add3~92\);

-- Location: LC_X13_Y9_N2
\tone_generator|count_ma[14]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal3~4\ = (\tone_generator|count_ma\(12) & (!\tone_generator|count_ma\(15) & (!B1_count_ma[14] & \tone_generator|count_ma\(13))))
-- \tone_generator|count_ma\(14) = DFFEAS(\tone_generator|Equal3~4\, GLOBAL(\clk_50~combout\), VCC, , \Mux3~0_combout\, \tone_generator|Add3~90_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \tone_generator|count_ma\(12),
	datab => \tone_generator|count_ma\(15),
	datac => \tone_generator|Add3~90_combout\,
	datad => \tone_generator|count_ma\(13),
	aclr => GND,
	sload => VCC,
	ena => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal3~4\,
	regout => \tone_generator|count_ma\(14));

-- Location: LC_X10_Y9_N3
\tone_generator|Equal3~5\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal3~5_combout\ = (\tone_generator|Equal3~2\ & (\tone_generator|Equal3~1\ & (\tone_generator|Equal3~4\ & \tone_generator|Equal3~3\)))

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
	dataa => \tone_generator|Equal3~2\,
	datab => \tone_generator|Equal3~1\,
	datac => \tone_generator|Equal3~4\,
	datad => \tone_generator|Equal3~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal3~5_combout\);

-- Location: LC_X13_Y9_N8
\tone_generator|count_ma[12]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ma\(12) = DFFEAS(((\tone_generator|Add3~80_combout\ & ((!\tone_generator|Equal3~0\) # (!\tone_generator|Equal3~5_combout\)))), GLOBAL(\clk_50~combout\), VCC, , \Mux3~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	datab => \tone_generator|Equal3~5_combout\,
	datac => \tone_generator|Equal3~0\,
	datad => \tone_generator|Add3~80_combout\,
	aclr => GND,
	ena => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ma\(12));

-- Location: LC_X12_Y9_N6
\tone_generator|Add3~0\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add3~0_combout\ = \tone_generator|count_ma\(16) $ ((((!(!\tone_generator|Add3~92\ & \tone_generator|Add3~97\) # (\tone_generator|Add3~92\ & \tone_generator|Add3~97COUT1_113\)))))
-- \tone_generator|Add3~2\ = CARRY((\tone_generator|count_ma\(16) & ((!\tone_generator|Add3~97\))))
-- \tone_generator|Add3~2COUT1_114\ = CARRY((\tone_generator|count_ma\(16) & ((!\tone_generator|Add3~97COUT1_113\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tone_generator|count_ma\(16),
	cin => \tone_generator|Add3~92\,
	cin0 => \tone_generator|Add3~97\,
	cin1 => \tone_generator|Add3~97COUT1_113\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add3~0_combout\,
	cout0 => \tone_generator|Add3~2\,
	cout1 => \tone_generator|Add3~2COUT1_114\);

-- Location: LC_X13_Y9_N0
\tone_generator|count_ma[16]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ma\(16) = DFFEAS(((\tone_generator|Add3~0_combout\ & ((!\tone_generator|Equal3~5_combout\) # (!\tone_generator|Equal3~0\)))), GLOBAL(\clk_50~combout\), VCC, , \Mux3~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \tone_generator|Equal3~0\,
	datac => \tone_generator|Add3~0_combout\,
	datad => \tone_generator|Equal3~5_combout\,
	aclr => GND,
	ena => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ma\(16));

-- Location: LC_X12_Y9_N7
\tone_generator|Add3~5\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add3~5_combout\ = \tone_generator|count_ma\(17) $ (((((!\tone_generator|Add3~92\ & \tone_generator|Add3~2\) # (\tone_generator|Add3~92\ & \tone_generator|Add3~2COUT1_114\)))))
-- \tone_generator|Add3~7\ = CARRY(((!\tone_generator|Add3~2\)) # (!\tone_generator|count_ma\(17)))
-- \tone_generator|Add3~7COUT1_115\ = CARRY(((!\tone_generator|Add3~2COUT1_114\)) # (!\tone_generator|count_ma\(17)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tone_generator|count_ma\(17),
	cin => \tone_generator|Add3~92\,
	cin0 => \tone_generator|Add3~2\,
	cin1 => \tone_generator|Add3~2COUT1_114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add3~5_combout\,
	cout0 => \tone_generator|Add3~7\,
	cout1 => \tone_generator|Add3~7COUT1_115\);

-- Location: LC_X13_Y9_N6
\tone_generator|count_ma[17]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal3~0\ = (!\tone_generator|count_ma\(19) & (\tone_generator|count_ma\(16) & (!B1_count_ma[17] & !\tone_generator|count_ma\(18))))
-- \tone_generator|count_ma\(17) = DFFEAS(\tone_generator|Equal3~0\, GLOBAL(\clk_50~combout\), VCC, , \Mux3~0_combout\, \tone_generator|Add3~5_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \tone_generator|count_ma\(19),
	datab => \tone_generator|count_ma\(16),
	datac => \tone_generator|Add3~5_combout\,
	datad => \tone_generator|count_ma\(18),
	aclr => GND,
	sload => VCC,
	ena => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal3~0\,
	regout => \tone_generator|count_ma\(17));

-- Location: LC_X12_Y9_N8
\tone_generator|Add3~10\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add3~10_combout\ = \tone_generator|count_ma\(18) $ ((((!(!\tone_generator|Add3~92\ & \tone_generator|Add3~7\) # (\tone_generator|Add3~92\ & \tone_generator|Add3~7COUT1_115\)))))
-- \tone_generator|Add3~12\ = CARRY((\tone_generator|count_ma\(18) & ((!\tone_generator|Add3~7\))))
-- \tone_generator|Add3~12COUT1_116\ = CARRY((\tone_generator|count_ma\(18) & ((!\tone_generator|Add3~7COUT1_115\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tone_generator|count_ma\(18),
	cin => \tone_generator|Add3~92\,
	cin0 => \tone_generator|Add3~7\,
	cin1 => \tone_generator|Add3~7COUT1_115\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add3~10_combout\,
	cout0 => \tone_generator|Add3~12\,
	cout1 => \tone_generator|Add3~12COUT1_116\);

-- Location: LC_X13_Y9_N1
\tone_generator|count_ma[18]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ma\(18) = DFFEAS(GND, GLOBAL(\clk_50~combout\), VCC, , \Mux3~0_combout\, \tone_generator|Add3~10_combout\, , , VCC)

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
	clk => \clk_50~combout\,
	datac => \tone_generator|Add3~10_combout\,
	aclr => GND,
	sload => VCC,
	ena => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ma\(18));

-- Location: LC_X12_Y9_N9
\tone_generator|Add3~15\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add3~15_combout\ = (((!\tone_generator|Add3~92\ & \tone_generator|Add3~12\) # (\tone_generator|Add3~92\ & \tone_generator|Add3~12COUT1_116\) $ (\tone_generator|count_ma\(19))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \tone_generator|count_ma\(19),
	cin => \tone_generator|Add3~92\,
	cin0 => \tone_generator|Add3~12\,
	cin1 => \tone_generator|Add3~12COUT1_116\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add3~15_combout\);

-- Location: LC_X13_Y9_N5
\tone_generator|count_ma[19]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ma\(19) = DFFEAS(GND, GLOBAL(\clk_50~combout\), VCC, , \Mux3~0_combout\, \tone_generator|Add3~15_combout\, , , VCC)

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
	clk => \clk_50~combout\,
	datac => \tone_generator|Add3~15_combout\,
	aclr => GND,
	sload => VCC,
	ena => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ma\(19));

-- Location: LC_X10_Y9_N9
\tone_generator|ma\ : maxv_lcell
-- Equation(s):
-- \tone_generator|ma~0\ = (B1_ma $ (((\tone_generator|Equal3~0\ & \tone_generator|Equal3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3cf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	datab => \tone_generator|Equal3~0\,
	datad => \tone_generator|Equal3~5_combout\,
	aclr => GND,
	ena => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|ma~0\,
	regout => \tone_generator|ma~regout\);

-- Location: LC_X7_Y7_N0
\tone_generator|Add1~25\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add1~25_combout\ = (!\tone_generator|count_re\(0))
-- \tone_generator|Add1~27\ = CARRY((\tone_generator|count_re\(0)))
-- \tone_generator|Add1~27COUT1_101\ = CARRY((\tone_generator|count_re\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tone_generator|count_re\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add1~25_combout\,
	cout0 => \tone_generator|Add1~27\,
	cout1 => \tone_generator|Add1~27COUT1_101\);

-- Location: LC_X8_Y9_N7
\tone_generator|LED[1]\ : maxv_lcell
-- Equation(s):
-- \Mux4~0\ = (((index_current(1) & index_current(2))))
-- \tone_generator|LED\(1) = DFFEAS(\Mux4~0\, GLOBAL(\clk_50~combout\), VCC, , index_current(2), , , , )

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
	clk => \clk_50~combout\,
	datac => index_current(1),
	datad => index_current(2),
	aclr => GND,
	ena => index_current(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~0\,
	regout => \tone_generator|LED\(1));

-- Location: LC_X6_Y7_N0
\tone_generator|count_re[0]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal1~1\ = (\tone_generator|count_re\(1) & (!\tone_generator|count_re\(3) & (!B1_count_re[0] & !\tone_generator|count_re\(2))))
-- \tone_generator|count_re\(0) = DFFEAS(\tone_generator|Equal1~1\, GLOBAL(\clk_50~combout\), VCC, , \Mux4~0\, \tone_generator|Add1~25_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \tone_generator|count_re\(1),
	datab => \tone_generator|count_re\(3),
	datac => \tone_generator|Add1~25_combout\,
	datad => \tone_generator|count_re\(2),
	aclr => GND,
	sload => VCC,
	ena => \Mux4~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal1~1\,
	regout => \tone_generator|count_re\(0));

-- Location: LC_X7_Y7_N1
\tone_generator|Add1~20\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add1~20_combout\ = \tone_generator|count_re\(1) $ ((((\tone_generator|Add1~27\))))
-- \tone_generator|Add1~22\ = CARRY(((!\tone_generator|Add1~27\)) # (!\tone_generator|count_re\(1)))
-- \tone_generator|Add1~22COUT1_102\ = CARRY(((!\tone_generator|Add1~27COUT1_101\)) # (!\tone_generator|count_re\(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tone_generator|count_re\(1),
	cin0 => \tone_generator|Add1~27\,
	cin1 => \tone_generator|Add1~27COUT1_101\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add1~20_combout\,
	cout0 => \tone_generator|Add1~22\,
	cout1 => \tone_generator|Add1~22COUT1_102\);

-- Location: LC_X6_Y7_N5
\tone_generator|count_re[1]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_re\(1) = DFFEAS((\tone_generator|Add1~20_combout\ & (((!\tone_generator|Equal1~0\) # (!\tone_generator|Equal1~5_combout\)))), GLOBAL(\clk_50~combout\), VCC, , \Mux4~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \tone_generator|Add1~20_combout\,
	datac => \tone_generator|Equal1~5_combout\,
	datad => \tone_generator|Equal1~0\,
	aclr => GND,
	ena => \Mux4~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_re\(1));

-- Location: LC_X7_Y7_N2
\tone_generator|Add1~30\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add1~30_combout\ = \tone_generator|count_re\(2) $ ((((!\tone_generator|Add1~22\))))
-- \tone_generator|Add1~32\ = CARRY((\tone_generator|count_re\(2) & ((!\tone_generator|Add1~22\))))
-- \tone_generator|Add1~32COUT1_103\ = CARRY((\tone_generator|count_re\(2) & ((!\tone_generator|Add1~22COUT1_102\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tone_generator|count_re\(2),
	cin0 => \tone_generator|Add1~22\,
	cin1 => \tone_generator|Add1~22COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add1~30_combout\,
	cout0 => \tone_generator|Add1~32\,
	cout1 => \tone_generator|Add1~32COUT1_103\);

-- Location: LC_X6_Y7_N1
\tone_generator|count_re[2]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_re\(2) = DFFEAS(GND, GLOBAL(\clk_50~combout\), VCC, , \Mux4~0\, \tone_generator|Add1~30_combout\, , , VCC)

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
	clk => \clk_50~combout\,
	datac => \tone_generator|Add1~30_combout\,
	aclr => GND,
	sload => VCC,
	ena => \Mux4~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_re\(2));

-- Location: LC_X7_Y7_N3
\tone_generator|Add1~35\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add1~35_combout\ = \tone_generator|count_re\(3) $ ((((\tone_generator|Add1~32\))))
-- \tone_generator|Add1~37\ = CARRY(((!\tone_generator|Add1~32\)) # (!\tone_generator|count_re\(3)))
-- \tone_generator|Add1~37COUT1_104\ = CARRY(((!\tone_generator|Add1~32COUT1_103\)) # (!\tone_generator|count_re\(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tone_generator|count_re\(3),
	cin0 => \tone_generator|Add1~32\,
	cin1 => \tone_generator|Add1~32COUT1_103\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add1~35_combout\,
	cout0 => \tone_generator|Add1~37\,
	cout1 => \tone_generator|Add1~37COUT1_104\);

-- Location: LC_X6_Y7_N9
\tone_generator|count_re[3]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_re\(3) = DFFEAS(GND, GLOBAL(\clk_50~combout\), VCC, , \Mux4~0\, \tone_generator|Add1~35_combout\, , , VCC)

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
	clk => \clk_50~combout\,
	datac => \tone_generator|Add1~35_combout\,
	aclr => GND,
	sload => VCC,
	ena => \Mux4~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_re\(3));

-- Location: LC_X7_Y7_N4
\tone_generator|Add1~40\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add1~40_combout\ = (\tone_generator|count_re\(4) $ ((!\tone_generator|Add1~37\)))
-- \tone_generator|Add1~42\ = CARRY(((\tone_generator|count_re\(4) & !\tone_generator|Add1~37COUT1_104\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \tone_generator|count_re\(4),
	cin0 => \tone_generator|Add1~37\,
	cin1 => \tone_generator|Add1~37COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add1~40_combout\,
	cout => \tone_generator|Add1~42\);

-- Location: LC_X5_Y7_N4
\tone_generator|count_re[4]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_re\(4) = DFFEAS(((\tone_generator|Add1~40_combout\ & ((!\tone_generator|Equal1~0\) # (!\tone_generator|Equal1~5_combout\)))), GLOBAL(\clk_50~combout\), VCC, , \Mux4~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \tone_generator|Equal1~5_combout\,
	datac => \tone_generator|Equal1~0\,
	datad => \tone_generator|Add1~40_combout\,
	aclr => GND,
	ena => \Mux4~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_re\(4));

-- Location: LC_X7_Y7_N5
\tone_generator|Add1~45\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add1~45_combout\ = (\tone_generator|count_re\(5) $ ((\tone_generator|Add1~42\)))
-- \tone_generator|Add1~47\ = CARRY(((!\tone_generator|Add1~42\) # (!\tone_generator|count_re\(5))))
-- \tone_generator|Add1~47COUT1_105\ = CARRY(((!\tone_generator|Add1~42\) # (!\tone_generator|count_re\(5))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \tone_generator|count_re\(5),
	cin => \tone_generator|Add1~42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add1~45_combout\,
	cout0 => \tone_generator|Add1~47\,
	cout1 => \tone_generator|Add1~47COUT1_105\);

-- Location: LC_X5_Y7_N9
\tone_generator|count_re[5]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_re\(5) = DFFEAS(((\tone_generator|Add1~45_combout\ & ((!\tone_generator|Equal1~0\) # (!\tone_generator|Equal1~5_combout\)))), GLOBAL(\clk_50~combout\), VCC, , \Mux4~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \tone_generator|Equal1~5_combout\,
	datac => \tone_generator|Equal1~0\,
	datad => \tone_generator|Add1~45_combout\,
	aclr => GND,
	ena => \Mux4~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_re\(5));

-- Location: LC_X7_Y7_N6
\tone_generator|Add1~55\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add1~55_combout\ = (\tone_generator|count_re\(6) $ ((!(!\tone_generator|Add1~42\ & \tone_generator|Add1~47\) # (\tone_generator|Add1~42\ & \tone_generator|Add1~47COUT1_105\))))
-- \tone_generator|Add1~57\ = CARRY(((\tone_generator|count_re\(6) & !\tone_generator|Add1~47\)))
-- \tone_generator|Add1~57COUT1_106\ = CARRY(((\tone_generator|count_re\(6) & !\tone_generator|Add1~47COUT1_105\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \tone_generator|count_re\(6),
	cin => \tone_generator|Add1~42\,
	cin0 => \tone_generator|Add1~47\,
	cin1 => \tone_generator|Add1~47COUT1_105\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add1~55_combout\,
	cout0 => \tone_generator|Add1~57\,
	cout1 => \tone_generator|Add1~57COUT1_106\);

-- Location: LC_X5_Y7_N0
\tone_generator|count_re[6]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal1~2\ = (\tone_generator|count_re\(4) & (\tone_generator|count_re\(7) & (!B1_count_re[6] & \tone_generator|count_re\(5))))
-- \tone_generator|count_re\(6) = DFFEAS(\tone_generator|Equal1~2\, GLOBAL(\clk_50~combout\), VCC, , \Mux4~0\, \tone_generator|Add1~55_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \tone_generator|count_re\(4),
	datab => \tone_generator|count_re\(7),
	datac => \tone_generator|Add1~55_combout\,
	datad => \tone_generator|count_re\(5),
	aclr => GND,
	sload => VCC,
	ena => \Mux4~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal1~2\,
	regout => \tone_generator|count_re\(6));

-- Location: LC_X7_Y7_N7
\tone_generator|Add1~50\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add1~50_combout\ = (\tone_generator|count_re\(7) $ (((!\tone_generator|Add1~42\ & \tone_generator|Add1~57\) # (\tone_generator|Add1~42\ & \tone_generator|Add1~57COUT1_106\))))
-- \tone_generator|Add1~52\ = CARRY(((!\tone_generator|Add1~57\) # (!\tone_generator|count_re\(7))))
-- \tone_generator|Add1~52COUT1_107\ = CARRY(((!\tone_generator|Add1~57COUT1_106\) # (!\tone_generator|count_re\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \tone_generator|count_re\(7),
	cin => \tone_generator|Add1~42\,
	cin0 => \tone_generator|Add1~57\,
	cin1 => \tone_generator|Add1~57COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add1~50_combout\,
	cout0 => \tone_generator|Add1~52\,
	cout1 => \tone_generator|Add1~52COUT1_107\);

-- Location: LC_X5_Y7_N1
\tone_generator|count_re[7]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_re\(7) = DFFEAS(((\tone_generator|Add1~50_combout\ & ((!\tone_generator|Equal1~0\) # (!\tone_generator|Equal1~5_combout\)))), GLOBAL(\clk_50~combout\), VCC, , \Mux4~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \tone_generator|Equal1~5_combout\,
	datac => \tone_generator|Equal1~0\,
	datad => \tone_generator|Add1~50_combout\,
	aclr => GND,
	ena => \Mux4~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_re\(7));

-- Location: LC_X8_Y7_N0
\tone_generator|Add1~75\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add1~75_combout\ = (\tone_generator|count_re\(10) $ ((!\tone_generator|Add1~72\)))
-- \tone_generator|Add1~77\ = CARRY(((\tone_generator|count_re\(10) & !\tone_generator|Add1~72\)))
-- \tone_generator|Add1~77COUT1_109\ = CARRY(((\tone_generator|count_re\(10) & !\tone_generator|Add1~72\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \tone_generator|count_re\(10),
	cin => \tone_generator|Add1~72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add1~75_combout\,
	cout0 => \tone_generator|Add1~77\,
	cout1 => \tone_generator|Add1~77COUT1_109\);

-- Location: LC_X9_Y7_N2
\tone_generator|count_re[10]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_re\(10) = DFFEAS((((\tone_generator|Add1~75_combout\))), GLOBAL(\clk_50~combout\), VCC, , \Mux4~0\, , , , )

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
	clk => \clk_50~combout\,
	datad => \tone_generator|Add1~75_combout\,
	aclr => GND,
	ena => \Mux4~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_re\(10));

-- Location: LC_X8_Y7_N1
\tone_generator|Add1~65\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add1~65_combout\ = (\tone_generator|count_re\(11) $ (((!\tone_generator|Add1~72\ & \tone_generator|Add1~77\) # (\tone_generator|Add1~72\ & \tone_generator|Add1~77COUT1_109\))))
-- \tone_generator|Add1~67\ = CARRY(((!\tone_generator|Add1~77\) # (!\tone_generator|count_re\(11))))
-- \tone_generator|Add1~67COUT1_110\ = CARRY(((!\tone_generator|Add1~77COUT1_109\) # (!\tone_generator|count_re\(11))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \tone_generator|count_re\(11),
	cin => \tone_generator|Add1~72\,
	cin0 => \tone_generator|Add1~77\,
	cin1 => \tone_generator|Add1~77COUT1_109\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add1~65_combout\,
	cout0 => \tone_generator|Add1~67\,
	cout1 => \tone_generator|Add1~67COUT1_110\);

-- Location: LC_X5_Y7_N5
\tone_generator|count_re[11]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_re\(11) = DFFEAS(((\tone_generator|Add1~65_combout\ & ((!\tone_generator|Equal1~0\) # (!\tone_generator|Equal1~5_combout\)))), GLOBAL(\clk_50~combout\), VCC, , \Mux4~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \tone_generator|Equal1~5_combout\,
	datac => \tone_generator|Equal1~0\,
	datad => \tone_generator|Add1~65_combout\,
	aclr => GND,
	ena => \Mux4~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_re\(11));

-- Location: LC_X7_Y7_N8
\tone_generator|Add1~60\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add1~60_combout\ = (\tone_generator|count_re\(8) $ ((!(!\tone_generator|Add1~42\ & \tone_generator|Add1~52\) # (\tone_generator|Add1~42\ & \tone_generator|Add1~52COUT1_107\))))
-- \tone_generator|Add1~62\ = CARRY(((\tone_generator|count_re\(8) & !\tone_generator|Add1~52\)))
-- \tone_generator|Add1~62COUT1_108\ = CARRY(((\tone_generator|count_re\(8) & !\tone_generator|Add1~52COUT1_107\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \tone_generator|count_re\(8),
	cin => \tone_generator|Add1~42\,
	cin0 => \tone_generator|Add1~52\,
	cin1 => \tone_generator|Add1~52COUT1_107\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add1~60_combout\,
	cout0 => \tone_generator|Add1~62\,
	cout1 => \tone_generator|Add1~62COUT1_108\);

-- Location: LC_X6_Y7_N2
\tone_generator|count_re[8]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_re\(8) = DFFEAS(((\tone_generator|Add1~60_combout\ & ((!\tone_generator|Equal1~5_combout\) # (!\tone_generator|Equal1~0\)))), GLOBAL(\clk_50~combout\), VCC, , \Mux4~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	datab => \tone_generator|Equal1~0\,
	datac => \tone_generator|Equal1~5_combout\,
	datad => \tone_generator|Add1~60_combout\,
	aclr => GND,
	ena => \Mux4~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_re\(8));

-- Location: LC_X7_Y7_N9
\tone_generator|Add1~70\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add1~70_combout\ = (\tone_generator|count_re\(9) $ (((!\tone_generator|Add1~42\ & \tone_generator|Add1~62\) # (\tone_generator|Add1~42\ & \tone_generator|Add1~62COUT1_108\))))
-- \tone_generator|Add1~72\ = CARRY(((!\tone_generator|Add1~62COUT1_108\) # (!\tone_generator|count_re\(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \tone_generator|count_re\(9),
	cin => \tone_generator|Add1~42\,
	cin0 => \tone_generator|Add1~62\,
	cin1 => \tone_generator|Add1~62COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add1~70_combout\,
	cout => \tone_generator|Add1~72\);

-- Location: LC_X6_Y7_N6
\tone_generator|count_re[9]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal1~3\ = (\tone_generator|count_re\(11) & (\tone_generator|count_re\(8) & (!B1_count_re[9] & !\tone_generator|count_re\(10))))
-- \tone_generator|count_re\(9) = DFFEAS(\tone_generator|Equal1~3\, GLOBAL(\clk_50~combout\), VCC, , \Mux4~0\, \tone_generator|Add1~70_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \tone_generator|count_re\(11),
	datab => \tone_generator|count_re\(8),
	datac => \tone_generator|Add1~70_combout\,
	datad => \tone_generator|count_re\(10),
	aclr => GND,
	sload => VCC,
	ena => \Mux4~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal1~3\,
	regout => \tone_generator|count_re\(9));

-- Location: LC_X8_Y7_N2
\tone_generator|Add1~90\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add1~90_combout\ = \tone_generator|count_re\(12) $ ((((!(!\tone_generator|Add1~72\ & \tone_generator|Add1~67\) # (\tone_generator|Add1~72\ & \tone_generator|Add1~67COUT1_110\)))))
-- \tone_generator|Add1~92\ = CARRY((\tone_generator|count_re\(12) & ((!\tone_generator|Add1~67\))))
-- \tone_generator|Add1~92COUT1_111\ = CARRY((\tone_generator|count_re\(12) & ((!\tone_generator|Add1~67COUT1_110\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tone_generator|count_re\(12),
	cin => \tone_generator|Add1~72\,
	cin0 => \tone_generator|Add1~67\,
	cin1 => \tone_generator|Add1~67COUT1_110\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add1~90_combout\,
	cout0 => \tone_generator|Add1~92\,
	cout1 => \tone_generator|Add1~92COUT1_111\);

-- Location: LC_X8_Y7_N3
\tone_generator|Add1~80\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add1~80_combout\ = (\tone_generator|count_re\(13) $ (((!\tone_generator|Add1~72\ & \tone_generator|Add1~92\) # (\tone_generator|Add1~72\ & \tone_generator|Add1~92COUT1_111\))))
-- \tone_generator|Add1~82\ = CARRY(((!\tone_generator|Add1~92\) # (!\tone_generator|count_re\(13))))
-- \tone_generator|Add1~82COUT1_112\ = CARRY(((!\tone_generator|Add1~92COUT1_111\) # (!\tone_generator|count_re\(13))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \tone_generator|count_re\(13),
	cin => \tone_generator|Add1~72\,
	cin0 => \tone_generator|Add1~92\,
	cin1 => \tone_generator|Add1~92COUT1_111\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add1~80_combout\,
	cout0 => \tone_generator|Add1~82\,
	cout1 => \tone_generator|Add1~82COUT1_112\);

-- Location: LC_X8_Y7_N4
\tone_generator|Add1~85\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add1~85_combout\ = (\tone_generator|count_re\(14) $ ((!(!\tone_generator|Add1~72\ & \tone_generator|Add1~82\) # (\tone_generator|Add1~72\ & \tone_generator|Add1~82COUT1_112\))))
-- \tone_generator|Add1~87\ = CARRY(((\tone_generator|count_re\(14) & !\tone_generator|Add1~82COUT1_112\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \tone_generator|count_re\(14),
	cin => \tone_generator|Add1~72\,
	cin0 => \tone_generator|Add1~82\,
	cin1 => \tone_generator|Add1~82COUT1_112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add1~85_combout\,
	cout => \tone_generator|Add1~87\);

-- Location: LC_X8_Y7_N5
\tone_generator|Add1~95\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add1~95_combout\ = \tone_generator|count_re\(15) $ ((((\tone_generator|Add1~87\))))
-- \tone_generator|Add1~97\ = CARRY(((!\tone_generator|Add1~87\)) # (!\tone_generator|count_re\(15)))
-- \tone_generator|Add1~97COUT1_113\ = CARRY(((!\tone_generator|Add1~87\)) # (!\tone_generator|count_re\(15)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tone_generator|count_re\(15),
	cin => \tone_generator|Add1~87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add1~95_combout\,
	cout0 => \tone_generator|Add1~97\,
	cout1 => \tone_generator|Add1~97COUT1_113\);

-- Location: LC_X9_Y7_N3
\tone_generator|count_re[15]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_re\(15) = DFFEAS((((\tone_generator|Add1~95_combout\))), GLOBAL(\clk_50~combout\), VCC, , \Mux4~0\, , , , )

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
	clk => \clk_50~combout\,
	datad => \tone_generator|Add1~95_combout\,
	aclr => GND,
	ena => \Mux4~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_re\(15));

-- Location: LC_X6_Y7_N4
\tone_generator|count_re[12]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal1~4\ = (\tone_generator|count_re\(14) & (!\tone_generator|count_re\(15) & (!B1_count_re[12] & \tone_generator|count_re\(13))))
-- \tone_generator|count_re\(12) = DFFEAS(\tone_generator|Equal1~4\, GLOBAL(\clk_50~combout\), VCC, , \Mux4~0\, \tone_generator|Add1~90_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \tone_generator|count_re\(14),
	datab => \tone_generator|count_re\(15),
	datac => \tone_generator|Add1~90_combout\,
	datad => \tone_generator|count_re\(13),
	aclr => GND,
	sload => VCC,
	ena => \Mux4~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal1~4\,
	regout => \tone_generator|count_re\(12));

-- Location: LC_X6_Y7_N3
\tone_generator|count_re[13]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_re\(13) = DFFEAS(((\tone_generator|Add1~80_combout\ & ((!\tone_generator|Equal1~5_combout\) # (!\tone_generator|Equal1~0\)))), GLOBAL(\clk_50~combout\), VCC, , \Mux4~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	datab => \tone_generator|Equal1~0\,
	datac => \tone_generator|Equal1~5_combout\,
	datad => \tone_generator|Add1~80_combout\,
	aclr => GND,
	ena => \Mux4~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_re\(13));

-- Location: LC_X5_Y7_N8
\tone_generator|count_re[14]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_re\(14) = DFFEAS(((\tone_generator|Add1~85_combout\ & ((!\tone_generator|Equal1~0\) # (!\tone_generator|Equal1~5_combout\)))), GLOBAL(\clk_50~combout\), VCC, , \Mux4~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \tone_generator|Equal1~5_combout\,
	datac => \tone_generator|Equal1~0\,
	datad => \tone_generator|Add1~85_combout\,
	aclr => GND,
	ena => \Mux4~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_re\(14));

-- Location: LC_X6_Y7_N7
\tone_generator|Equal1~5\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal1~5_combout\ = (\tone_generator|Equal1~2\ & (\tone_generator|Equal1~1\ & (\tone_generator|Equal1~4\ & \tone_generator|Equal1~3\)))

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
	dataa => \tone_generator|Equal1~2\,
	datab => \tone_generator|Equal1~1\,
	datac => \tone_generator|Equal1~4\,
	datad => \tone_generator|Equal1~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal1~5_combout\);

-- Location: LC_X8_Y7_N6
\tone_generator|Add1~0\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add1~0_combout\ = (\tone_generator|count_re\(16) $ ((!(!\tone_generator|Add1~87\ & \tone_generator|Add1~97\) # (\tone_generator|Add1~87\ & \tone_generator|Add1~97COUT1_113\))))
-- \tone_generator|Add1~2\ = CARRY(((\tone_generator|count_re\(16) & !\tone_generator|Add1~97\)))
-- \tone_generator|Add1~2COUT1_114\ = CARRY(((\tone_generator|count_re\(16) & !\tone_generator|Add1~97COUT1_113\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \tone_generator|count_re\(16),
	cin => \tone_generator|Add1~87\,
	cin0 => \tone_generator|Add1~97\,
	cin1 => \tone_generator|Add1~97COUT1_113\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add1~0_combout\,
	cout0 => \tone_generator|Add1~2\,
	cout1 => \tone_generator|Add1~2COUT1_114\);

-- Location: LC_X5_Y7_N6
\tone_generator|count_re[16]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_re\(16) = DFFEAS(((\tone_generator|Add1~0_combout\ & ((!\tone_generator|Equal1~0\) # (!\tone_generator|Equal1~5_combout\)))), GLOBAL(\clk_50~combout\), VCC, , \Mux4~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \tone_generator|Equal1~5_combout\,
	datac => \tone_generator|Equal1~0\,
	datad => \tone_generator|Add1~0_combout\,
	aclr => GND,
	ena => \Mux4~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_re\(16));

-- Location: LC_X8_Y7_N7
\tone_generator|Add1~5\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add1~5_combout\ = (\tone_generator|count_re\(17) $ (((!\tone_generator|Add1~87\ & \tone_generator|Add1~2\) # (\tone_generator|Add1~87\ & \tone_generator|Add1~2COUT1_114\))))
-- \tone_generator|Add1~7\ = CARRY(((!\tone_generator|Add1~2\) # (!\tone_generator|count_re\(17))))
-- \tone_generator|Add1~7COUT1_115\ = CARRY(((!\tone_generator|Add1~2COUT1_114\) # (!\tone_generator|count_re\(17))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \tone_generator|count_re\(17),
	cin => \tone_generator|Add1~87\,
	cin0 => \tone_generator|Add1~2\,
	cin1 => \tone_generator|Add1~2COUT1_114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add1~5_combout\,
	cout0 => \tone_generator|Add1~7\,
	cout1 => \tone_generator|Add1~7COUT1_115\);

-- Location: LC_X5_Y7_N7
\tone_generator|count_re[17]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal1~0\ = (\tone_generator|count_re\(16) & (!\tone_generator|count_re\(19) & (!B1_count_re[17] & !\tone_generator|count_re\(18))))
-- \tone_generator|count_re\(17) = DFFEAS(\tone_generator|Equal1~0\, GLOBAL(\clk_50~combout\), VCC, , \Mux4~0\, \tone_generator|Add1~5_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \tone_generator|count_re\(16),
	datab => \tone_generator|count_re\(19),
	datac => \tone_generator|Add1~5_combout\,
	datad => \tone_generator|count_re\(18),
	aclr => GND,
	sload => VCC,
	ena => \Mux4~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal1~0\,
	regout => \tone_generator|count_re\(17));

-- Location: LC_X8_Y7_N8
\tone_generator|Add1~10\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add1~10_combout\ = (\tone_generator|count_re\(18) $ ((!(!\tone_generator|Add1~87\ & \tone_generator|Add1~7\) # (\tone_generator|Add1~87\ & \tone_generator|Add1~7COUT1_115\))))
-- \tone_generator|Add1~12\ = CARRY(((\tone_generator|count_re\(18) & !\tone_generator|Add1~7\)))
-- \tone_generator|Add1~12COUT1_116\ = CARRY(((\tone_generator|count_re\(18) & !\tone_generator|Add1~7COUT1_115\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \tone_generator|count_re\(18),
	cin => \tone_generator|Add1~87\,
	cin0 => \tone_generator|Add1~7\,
	cin1 => \tone_generator|Add1~7COUT1_115\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add1~10_combout\,
	cout0 => \tone_generator|Add1~12\,
	cout1 => \tone_generator|Add1~12COUT1_116\);

-- Location: LC_X5_Y7_N3
\tone_generator|count_re[18]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_re\(18) = DFFEAS(GND, GLOBAL(\clk_50~combout\), VCC, , \Mux4~0\, \tone_generator|Add1~10_combout\, , , VCC)

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
	clk => \clk_50~combout\,
	datac => \tone_generator|Add1~10_combout\,
	aclr => GND,
	sload => VCC,
	ena => \Mux4~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_re\(18));

-- Location: LC_X8_Y7_N9
\tone_generator|Add1~15\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add1~15_combout\ = (((!\tone_generator|Add1~87\ & \tone_generator|Add1~12\) # (\tone_generator|Add1~87\ & \tone_generator|Add1~12COUT1_116\) $ (\tone_generator|count_re\(19))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \tone_generator|count_re\(19),
	cin => \tone_generator|Add1~87\,
	cin0 => \tone_generator|Add1~12\,
	cin1 => \tone_generator|Add1~12COUT1_116\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add1~15_combout\);

-- Location: LC_X5_Y7_N2
\tone_generator|count_re[19]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_re\(19) = DFFEAS(GND, GLOBAL(\clk_50~combout\), VCC, , \Mux4~0\, \tone_generator|Add1~15_combout\, , , VCC)

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
	clk => \clk_50~combout\,
	datac => \tone_generator|Add1~15_combout\,
	aclr => GND,
	sload => VCC,
	ena => \Mux4~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_re\(19));

-- Location: LC_X6_Y7_N8
\tone_generator|re\ : maxv_lcell
-- Equation(s):
-- \tone_generator|re~0\ = (B1_re $ (((\tone_generator|Equal1~0\ & \tone_generator|Equal1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3cf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	datab => \tone_generator|Equal1~0\,
	datad => \tone_generator|Equal1~5_combout\,
	aclr => GND,
	ena => \Mux4~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|re~0\,
	regout => \tone_generator|re~regout\);

-- Location: LC_X9_Y9_N2
\tone_generator|toneOut\ : maxv_lcell
-- Equation(s):
-- \tone_generator|toneOut~regout\ = DFFEAS((index_current(2) & ((index_current(1) & ((\tone_generator|re~0\))) # (!index_current(1) & (\tone_generator|ma~0\)))) # (!index_current(2) & (((\tone_generator|ma~0\)))), GLOBAL(\clk_50~combout\), VCC, , 
-- index_current(2), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f870",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => index_current(2),
	datab => index_current(1),
	datac => \tone_generator|ma~0\,
	datad => \tone_generator|re~0\,
	aclr => GND,
	ena => index_current(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|toneOut~regout\);

-- Location: LC_X8_Y9_N5
\tone_generator|LED[3]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|LED\(3) = DFFEAS((((!\Mux4~0\))), GLOBAL(\clk_50~combout\), VCC, , index_current(2), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	datac => \Mux4~0\,
	aclr => GND,
	ena => index_current(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|LED\(3));

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\toneOut~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \tone_generator|toneOut~regout\,
	oe => VCC,
	padio => ww_toneOut);

-- Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LED[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_LED(0));

-- Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LED[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \tone_generator|LED\(1),
	oe => VCC,
	padio => ww_LED(1));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LED[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_LED(2));

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LED[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \tone_generator|LED\(3),
	oe => VCC,
	padio => ww_LED(3));

-- Location: PIN_108,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LED[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_LED(4));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LED[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_LED(5));

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LED[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_LED(6));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LED[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_LED(7));
END structure;


