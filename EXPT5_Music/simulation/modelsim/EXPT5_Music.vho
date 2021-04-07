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

-- DATE "04/07/2021 14:07:18"

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
SIGNAL \tone_generator|ga~regout\ : std_logic;
SIGNAL \tone_generator|ma~regout\ : std_logic;
SIGNAL \tone_generator|ni_lower~regout\ : std_logic;
SIGNAL \tone_generator|sa1~regout\ : std_logic;
SIGNAL \tone_generator|dha~regout\ : std_logic;
SIGNAL \tone_generator|pa~regout\ : std_logic;
SIGNAL \Add1~130\ : std_logic;
SIGNAL \clk_50~combout\ : std_logic;
SIGNAL \resetn~combout\ : std_logic;
SIGNAL \Add1~132_cout0\ : std_logic;
SIGNAL \Add1~132COUT1_136\ : std_logic;
SIGNAL \Add1~125_combout\ : std_logic;
SIGNAL \Add1~127\ : std_logic;
SIGNAL \Add1~127COUT1_137\ : std_logic;
SIGNAL \Add1~120_combout\ : std_logic;
SIGNAL \Add1~122\ : std_logic;
SIGNAL \Add1~110_combout\ : std_logic;
SIGNAL \Add1~112\ : std_logic;
SIGNAL \Add1~112COUT1_138\ : std_logic;
SIGNAL \Add1~105_combout\ : std_logic;
SIGNAL \Add1~107\ : std_logic;
SIGNAL \Add1~107COUT1_139\ : std_logic;
SIGNAL \Add1~115_combout\ : std_logic;
SIGNAL \Add1~117\ : std_logic;
SIGNAL \Add1~117COUT1_140\ : std_logic;
SIGNAL \Add1~100_combout\ : std_logic;
SIGNAL \Add1~102\ : std_logic;
SIGNAL \Add1~102COUT1_141\ : std_logic;
SIGNAL \Add1~90_combout\ : std_logic;
SIGNAL \Add1~92\ : std_logic;
SIGNAL \Add1~85_combout\ : std_logic;
SIGNAL \Add1~87\ : std_logic;
SIGNAL \Add1~87COUT1_142\ : std_logic;
SIGNAL \Add1~80_combout\ : std_logic;
SIGNAL \Add1~82\ : std_logic;
SIGNAL \Add1~82COUT1_143\ : std_logic;
SIGNAL \Add1~95_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \Add1~97\ : std_logic;
SIGNAL \Add1~97COUT1_144\ : std_logic;
SIGNAL \Add1~75_combout\ : std_logic;
SIGNAL \Add1~77\ : std_logic;
SIGNAL \Add1~77COUT1_145\ : std_logic;
SIGNAL \Add1~70_combout\ : std_logic;
SIGNAL \Add1~72\ : std_logic;
SIGNAL \Add1~65_combout\ : std_logic;
SIGNAL \Add1~67\ : std_logic;
SIGNAL \Add1~67COUT1_146\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~62COUT1_147\ : std_logic;
SIGNAL \Add1~55_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~57COUT1_148\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~42COUT1_149\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Add1~52\ : std_logic;
SIGNAL \Add1~45_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~47COUT1_150\ : std_logic;
SIGNAL \Add1~35_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~37COUT1_151\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add1~32\ : std_logic;
SIGNAL \Add1~32COUT1_152\ : std_logic;
SIGNAL \Add1~25_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~27COUT1_153\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~15_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~17COUT1_154\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~12\ : std_logic;
SIGNAL \Add1~12COUT1_155\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~7COUT1_156\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \fsm_state~regout\ : std_logic;
SIGNAL \index_register[3]~1_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \index_register[1]~0_combout\ : std_logic;
SIGNAL \tone_generator|Add0~42\ : std_logic;
SIGNAL \tone_generator|Add0~42COUT1_105\ : std_logic;
SIGNAL \tone_generator|Add0~45_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \note_code[1]~0\ : std_logic;
SIGNAL \tone_generator|Add0~25_combout\ : std_logic;
SIGNAL \tone_generator|Add0~27\ : std_logic;
SIGNAL \tone_generator|Add0~27COUT1_101\ : std_logic;
SIGNAL \tone_generator|Add0~30_combout\ : std_logic;
SIGNAL \tone_generator|Add0~32\ : std_logic;
SIGNAL \tone_generator|Add0~32COUT1_102\ : std_logic;
SIGNAL \tone_generator|Add0~35_combout\ : std_logic;
SIGNAL \tone_generator|Add0~37\ : std_logic;
SIGNAL \tone_generator|Add0~37COUT1_103\ : std_logic;
SIGNAL \tone_generator|Add0~20_combout\ : std_logic;
SIGNAL \tone_generator|Add0~22\ : std_logic;
SIGNAL \tone_generator|Add0~22COUT1_104\ : std_logic;
SIGNAL \tone_generator|Add0~55_combout\ : std_logic;
SIGNAL \tone_generator|Add0~47\ : std_logic;
SIGNAL \tone_generator|Add0~47COUT1_106\ : std_logic;
SIGNAL \tone_generator|Add0~50_combout\ : std_logic;
SIGNAL \tone_generator|Add0~57\ : std_logic;
SIGNAL \tone_generator|Add0~40_combout\ : std_logic;
SIGNAL \tone_generator|Equal0~2\ : std_logic;
SIGNAL \tone_generator|Add0~65_combout\ : std_logic;
SIGNAL \tone_generator|Add0~67\ : std_logic;
SIGNAL \tone_generator|Add0~67COUT1_109\ : std_logic;
SIGNAL \tone_generator|Add0~75_combout\ : std_logic;
SIGNAL \tone_generator|Add0~77\ : std_logic;
SIGNAL \tone_generator|Add0~77COUT1_110\ : std_logic;
SIGNAL \tone_generator|Add0~80_combout\ : std_logic;
SIGNAL \tone_generator|Add0~85_combout\ : std_logic;
SIGNAL \tone_generator|Add0~82\ : std_logic;
SIGNAL \tone_generator|Add0~82COUT1_111\ : std_logic;
SIGNAL \tone_generator|Add0~90_combout\ : std_logic;
SIGNAL \tone_generator|Equal0~4\ : std_logic;
SIGNAL \tone_generator|Add0~52\ : std_logic;
SIGNAL \tone_generator|Add0~52COUT1_107\ : std_logic;
SIGNAL \tone_generator|Add0~70_combout\ : std_logic;
SIGNAL \tone_generator|Equal0~3\ : std_logic;
SIGNAL \tone_generator|Equal0~1\ : std_logic;
SIGNAL \tone_generator|Equal0~5_combout\ : std_logic;
SIGNAL \tone_generator|Add0~72\ : std_logic;
SIGNAL \tone_generator|Add0~72COUT1_108\ : std_logic;
SIGNAL \tone_generator|Add0~60_combout\ : std_logic;
SIGNAL \tone_generator|Add0~62\ : std_logic;
SIGNAL \tone_generator|Add0~92\ : std_logic;
SIGNAL \tone_generator|Add0~92COUT1_112\ : std_logic;
SIGNAL \tone_generator|Add0~95_combout\ : std_logic;
SIGNAL \tone_generator|Add0~97\ : std_logic;
SIGNAL \tone_generator|Add0~87\ : std_logic;
SIGNAL \tone_generator|Add0~87COUT1_113\ : std_logic;
SIGNAL \tone_generator|Add0~0_combout\ : std_logic;
SIGNAL \tone_generator|Add0~2\ : std_logic;
SIGNAL \tone_generator|Add0~2COUT1_114\ : std_logic;
SIGNAL \tone_generator|Add0~5_combout\ : std_logic;
SIGNAL \tone_generator|Add0~7\ : std_logic;
SIGNAL \tone_generator|Add0~7COUT1_115\ : std_logic;
SIGNAL \tone_generator|Add0~10_combout\ : std_logic;
SIGNAL \tone_generator|Add0~12\ : std_logic;
SIGNAL \tone_generator|Add0~12COUT1_116\ : std_logic;
SIGNAL \tone_generator|Add0~15_combout\ : std_logic;
SIGNAL \tone_generator|Equal0~0\ : std_logic;
SIGNAL \tone_generator|sa1~0\ : std_logic;
SIGNAL \tone_generator|Add1~75_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \tone_generator|LED~26\ : std_logic;
SIGNAL \tone_generator|Add1~25_combout\ : std_logic;
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
SIGNAL \tone_generator|Add1~95_combout\ : std_logic;
SIGNAL \tone_generator|Add1~77\ : std_logic;
SIGNAL \tone_generator|Add1~77COUT1_109\ : std_logic;
SIGNAL \tone_generator|Add1~65_combout\ : std_logic;
SIGNAL \tone_generator|Add1~67\ : std_logic;
SIGNAL \tone_generator|Add1~67COUT1_110\ : std_logic;
SIGNAL \tone_generator|Add1~92\ : std_logic;
SIGNAL \tone_generator|Add1~92COUT1_111\ : std_logic;
SIGNAL \tone_generator|Add1~80_combout\ : std_logic;
SIGNAL \tone_generator|Add1~90_combout\ : std_logic;
SIGNAL \tone_generator|Equal1~4\ : std_logic;
SIGNAL \tone_generator|Equal1~1\ : std_logic;
SIGNAL \tone_generator|Add1~52\ : std_logic;
SIGNAL \tone_generator|Add1~52COUT1_107\ : std_logic;
SIGNAL \tone_generator|Add1~62\ : std_logic;
SIGNAL \tone_generator|Add1~62COUT1_108\ : std_logic;
SIGNAL \tone_generator|Add1~70_combout\ : std_logic;
SIGNAL \tone_generator|Equal1~3\ : std_logic;
SIGNAL \tone_generator|Equal1~5_combout\ : std_logic;
SIGNAL \tone_generator|Add1~60_combout\ : std_logic;
SIGNAL \tone_generator|Add1~72\ : std_logic;
SIGNAL \tone_generator|Add1~82\ : std_logic;
SIGNAL \tone_generator|Add1~82COUT1_112\ : std_logic;
SIGNAL \tone_generator|Add1~85_combout\ : std_logic;
SIGNAL \tone_generator|Add1~87\ : std_logic;
SIGNAL \tone_generator|Add1~97\ : std_logic;
SIGNAL \tone_generator|Add1~97COUT1_113\ : std_logic;
SIGNAL \tone_generator|Add1~0_combout\ : std_logic;
SIGNAL \tone_generator|Add1~2\ : std_logic;
SIGNAL \tone_generator|Add1~2COUT1_114\ : std_logic;
SIGNAL \tone_generator|Add1~5_combout\ : std_logic;
SIGNAL \tone_generator|Add1~7COUT1_115\ : std_logic;
SIGNAL \tone_generator|Add1~12\ : std_logic;
SIGNAL \tone_generator|Add1~12COUT1_116\ : std_logic;
SIGNAL \tone_generator|Add1~15_combout\ : std_logic;
SIGNAL \tone_generator|Add1~7\ : std_logic;
SIGNAL \tone_generator|Add1~10_combout\ : std_logic;
SIGNAL \tone_generator|Equal1~0\ : std_logic;
SIGNAL \tone_generator|re~0\ : std_logic;
SIGNAL \tone_generator|Add7~45_combout\ : std_logic;
SIGNAL \tone_generator|ni_lower~5_combout\ : std_logic;
SIGNAL \tone_generator|ni_lower~10_combout\ : std_logic;
SIGNAL \tone_generator|ni_lower~9_combout\ : std_logic;
SIGNAL \tone_generator|Add7~47\ : std_logic;
SIGNAL \tone_generator|Add7~47COUT1_105\ : std_logic;
SIGNAL \tone_generator|Add7~50_combout\ : std_logic;
SIGNAL \tone_generator|Add7~52\ : std_logic;
SIGNAL \tone_generator|Add7~52COUT1_106\ : std_logic;
SIGNAL \tone_generator|Add7~55_combout\ : std_logic;
SIGNAL \tone_generator|Add7~25_combout\ : std_logic;
SIGNAL \tone_generator|Add7~27\ : std_logic;
SIGNAL \tone_generator|Add7~27COUT1_101\ : std_logic;
SIGNAL \tone_generator|Add7~20_combout\ : std_logic;
SIGNAL \tone_generator|Add7~22\ : std_logic;
SIGNAL \tone_generator|Add7~22COUT1_102\ : std_logic;
SIGNAL \tone_generator|Add7~30_combout\ : std_logic;
SIGNAL \tone_generator|Add7~32\ : std_logic;
SIGNAL \tone_generator|Add7~32COUT1_103\ : std_logic;
SIGNAL \tone_generator|Add7~35_combout\ : std_logic;
SIGNAL \tone_generator|Add7~37\ : std_logic;
SIGNAL \tone_generator|Add7~37COUT1_104\ : std_logic;
SIGNAL \tone_generator|Add7~40_combout\ : std_logic;
SIGNAL \tone_generator|Add7~42\ : std_logic;
SIGNAL \tone_generator|Add7~70_combout\ : std_logic;
SIGNAL \tone_generator|Add7~72\ : std_logic;
SIGNAL \tone_generator|Add7~72COUT1_109\ : std_logic;
SIGNAL \tone_generator|Add7~75_combout\ : std_logic;
SIGNAL \tone_generator|Add7~57\ : std_logic;
SIGNAL \tone_generator|Add7~57COUT1_107\ : std_logic;
SIGNAL \tone_generator|Add7~65_combout\ : std_logic;
SIGNAL \tone_generator|Add7~67\ : std_logic;
SIGNAL \tone_generator|Add7~67COUT1_108\ : std_logic;
SIGNAL \tone_generator|Add7~60_combout\ : std_logic;
SIGNAL \tone_generator|Add7~62\ : std_logic;
SIGNAL \tone_generator|Add7~77\ : std_logic;
SIGNAL \tone_generator|Add7~77COUT1_110\ : std_logic;
SIGNAL \tone_generator|Add7~82\ : std_logic;
SIGNAL \tone_generator|Add7~82COUT1_111\ : std_logic;
SIGNAL \tone_generator|Add7~85_combout\ : std_logic;
SIGNAL \tone_generator|Add7~87\ : std_logic;
SIGNAL \tone_generator|Add7~87COUT1_112\ : std_logic;
SIGNAL \tone_generator|Add7~95_combout\ : std_logic;
SIGNAL \tone_generator|Add7~90_combout\ : std_logic;
SIGNAL \tone_generator|Equal7~4\ : std_logic;
SIGNAL \tone_generator|Equal7~1\ : std_logic;
SIGNAL \tone_generator|Equal7~3\ : std_logic;
SIGNAL \tone_generator|Equal7~2\ : std_logic;
SIGNAL \tone_generator|Equal7~5_combout\ : std_logic;
SIGNAL \tone_generator|Add7~80_combout\ : std_logic;
SIGNAL \tone_generator|Add7~97\ : std_logic;
SIGNAL \tone_generator|Add7~92\ : std_logic;
SIGNAL \tone_generator|Add7~92COUT1_113\ : std_logic;
SIGNAL \tone_generator|Add7~0_combout\ : std_logic;
SIGNAL \tone_generator|Add7~2\ : std_logic;
SIGNAL \tone_generator|Add7~2COUT1_114\ : std_logic;
SIGNAL \tone_generator|Add7~5_combout\ : std_logic;
SIGNAL \tone_generator|Add7~7\ : std_logic;
SIGNAL \tone_generator|Add7~7COUT1_115\ : std_logic;
SIGNAL \tone_generator|Add7~10_combout\ : std_logic;
SIGNAL \tone_generator|Add7~12\ : std_logic;
SIGNAL \tone_generator|Add7~12COUT1_116\ : std_logic;
SIGNAL \tone_generator|Add7~15_combout\ : std_logic;
SIGNAL \tone_generator|Equal7~0\ : std_logic;
SIGNAL \tone_generator|ni_lower~8\ : std_logic;
SIGNAL \tone_generator|Add2~32COUT1_101\ : std_logic;
SIGNAL \tone_generator|Add2~22\ : std_logic;
SIGNAL \tone_generator|Add2~22COUT1_102\ : std_logic;
SIGNAL \tone_generator|Add2~25_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \tone_generator|LED~29_combout\ : std_logic;
SIGNAL \tone_generator|ga~3_combout\ : std_logic;
SIGNAL \tone_generator|Add2~27\ : std_logic;
SIGNAL \tone_generator|Add2~27COUT1_103\ : std_logic;
SIGNAL \tone_generator|Add2~35_combout\ : std_logic;
SIGNAL \tone_generator|Add2~30_combout\ : std_logic;
SIGNAL \tone_generator|Add2~32\ : std_logic;
SIGNAL \tone_generator|Add2~20_combout\ : std_logic;
SIGNAL \tone_generator|Equal2~1\ : std_logic;
SIGNAL \tone_generator|Add2~50_combout\ : std_logic;
SIGNAL \tone_generator|Add2~52\ : std_logic;
SIGNAL \tone_generator|Add2~52COUT1_105\ : std_logic;
SIGNAL \tone_generator|Add2~57\ : std_logic;
SIGNAL \tone_generator|Add2~57COUT1_106\ : std_logic;
SIGNAL \tone_generator|Add2~40_combout\ : std_logic;
SIGNAL \tone_generator|Add2~37\ : std_logic;
SIGNAL \tone_generator|Add2~37COUT1_104\ : std_logic;
SIGNAL \tone_generator|Add2~45_combout\ : std_logic;
SIGNAL \tone_generator|Add2~47\ : std_logic;
SIGNAL \tone_generator|Add2~55_combout\ : std_logic;
SIGNAL \tone_generator|Equal2~2\ : std_logic;
SIGNAL \tone_generator|Add2~95_combout\ : std_logic;
SIGNAL \tone_generator|Add2~65_combout\ : std_logic;
SIGNAL \tone_generator|Add2~67\ : std_logic;
SIGNAL \tone_generator|Add2~67COUT1_109\ : std_logic;
SIGNAL \tone_generator|Add2~75_combout\ : std_logic;
SIGNAL \tone_generator|Add2~42\ : std_logic;
SIGNAL \tone_generator|Add2~42COUT1_107\ : std_logic;
SIGNAL \tone_generator|Add2~60_combout\ : std_logic;
SIGNAL \tone_generator|Add2~62\ : std_logic;
SIGNAL \tone_generator|Add2~62COUT1_108\ : std_logic;
SIGNAL \tone_generator|Add2~70_combout\ : std_logic;
SIGNAL \tone_generator|Add2~72\ : std_logic;
SIGNAL \tone_generator|Add2~77\ : std_logic;
SIGNAL \tone_generator|Add2~77COUT1_110\ : std_logic;
SIGNAL \tone_generator|Add2~87\ : std_logic;
SIGNAL \tone_generator|Add2~87COUT1_111\ : std_logic;
SIGNAL \tone_generator|Add2~90_combout\ : std_logic;
SIGNAL \tone_generator|Add2~85_combout\ : std_logic;
SIGNAL \tone_generator|Equal2~4\ : std_logic;
SIGNAL \tone_generator|Equal2~3\ : std_logic;
SIGNAL \tone_generator|Equal2~5_combout\ : std_logic;
SIGNAL \tone_generator|Add2~92\ : std_logic;
SIGNAL \tone_generator|Add2~92COUT1_112\ : std_logic;
SIGNAL \tone_generator|Add2~80_combout\ : std_logic;
SIGNAL \tone_generator|Add2~82\ : std_logic;
SIGNAL \tone_generator|Add2~97\ : std_logic;
SIGNAL \tone_generator|Add2~97COUT1_113\ : std_logic;
SIGNAL \tone_generator|Add2~0_combout\ : std_logic;
SIGNAL \tone_generator|Add2~2\ : std_logic;
SIGNAL \tone_generator|Add2~2COUT1_114\ : std_logic;
SIGNAL \tone_generator|Add2~5_combout\ : std_logic;
SIGNAL \tone_generator|Add2~7\ : std_logic;
SIGNAL \tone_generator|Add2~7COUT1_115\ : std_logic;
SIGNAL \tone_generator|Add2~10_combout\ : std_logic;
SIGNAL \tone_generator|Add2~12\ : std_logic;
SIGNAL \tone_generator|Add2~12COUT1_116\ : std_logic;
SIGNAL \tone_generator|Add2~15_combout\ : std_logic;
SIGNAL \tone_generator|Equal2~0\ : std_logic;
SIGNAL \tone_generator|ga~2\ : std_logic;
SIGNAL \tone_generator|Add3~70_combout\ : std_logic;
SIGNAL \tone_generator|ma~5_combout\ : std_logic;
SIGNAL \tone_generator|ma~9_combout\ : std_logic;
SIGNAL \tone_generator|Add3~72\ : std_logic;
SIGNAL \tone_generator|Add3~72COUT1_109\ : std_logic;
SIGNAL \tone_generator|Add3~75_combout\ : std_logic;
SIGNAL \tone_generator|Add3~40_combout\ : std_logic;
SIGNAL \tone_generator|Add3~42\ : std_logic;
SIGNAL \tone_generator|Add3~42COUT1_105\ : std_logic;
SIGNAL \tone_generator|Add3~50_combout\ : std_logic;
SIGNAL \tone_generator|Add3~52\ : std_logic;
SIGNAL \tone_generator|Add3~52COUT1_106\ : std_logic;
SIGNAL \tone_generator|Add3~55_combout\ : std_logic;
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
SIGNAL \tone_generator|Add3~47\ : std_logic;
SIGNAL \tone_generator|Add3~57\ : std_logic;
SIGNAL \tone_generator|Add3~57COUT1_107\ : std_logic;
SIGNAL \tone_generator|Add3~60_combout\ : std_logic;
SIGNAL \tone_generator|Add3~62\ : std_logic;
SIGNAL \tone_generator|Add3~62COUT1_108\ : std_logic;
SIGNAL \tone_generator|Add3~65_combout\ : std_logic;
SIGNAL \tone_generator|Add3~67\ : std_logic;
SIGNAL \tone_generator|Add3~77\ : std_logic;
SIGNAL \tone_generator|Add3~77COUT1_110\ : std_logic;
SIGNAL \tone_generator|Add3~80_combout\ : std_logic;
SIGNAL \tone_generator|Add3~82\ : std_logic;
SIGNAL \tone_generator|Add3~82COUT1_111\ : std_logic;
SIGNAL \tone_generator|Add3~87\ : std_logic;
SIGNAL \tone_generator|Add3~87COUT1_112\ : std_logic;
SIGNAL \tone_generator|Add3~90_combout\ : std_logic;
SIGNAL \tone_generator|Add3~95_combout\ : std_logic;
SIGNAL \tone_generator|Equal3~4\ : std_logic;
SIGNAL \tone_generator|Equal3~1\ : std_logic;
SIGNAL \tone_generator|Equal3~2\ : std_logic;
SIGNAL \tone_generator|Equal3~3\ : std_logic;
SIGNAL \tone_generator|Equal3~5_combout\ : std_logic;
SIGNAL \tone_generator|Add3~85_combout\ : std_logic;
SIGNAL \tone_generator|Add3~92\ : std_logic;
SIGNAL \tone_generator|Add3~97\ : std_logic;
SIGNAL \tone_generator|Add3~97COUT1_113\ : std_logic;
SIGNAL \tone_generator|Add3~0_combout\ : std_logic;
SIGNAL \tone_generator|Add3~2\ : std_logic;
SIGNAL \tone_generator|Add3~2COUT1_114\ : std_logic;
SIGNAL \tone_generator|Add3~5_combout\ : std_logic;
SIGNAL \tone_generator|Add3~7COUT1_115\ : std_logic;
SIGNAL \tone_generator|Add3~12\ : std_logic;
SIGNAL \tone_generator|Add3~12COUT1_116\ : std_logic;
SIGNAL \tone_generator|Add3~15_combout\ : std_logic;
SIGNAL \tone_generator|Add3~7\ : std_logic;
SIGNAL \tone_generator|Add3~10_combout\ : std_logic;
SIGNAL \tone_generator|Equal3~0\ : std_logic;
SIGNAL \tone_generator|ma~8\ : std_logic;
SIGNAL \tone_generator|toneOut~2_combout\ : std_logic;
SIGNAL \tone_generator|toneOut~3_combout\ : std_logic;
SIGNAL \tone_generator|toneOut~4_combout\ : std_logic;
SIGNAL \tone_generator|toneOut~5_combout\ : std_logic;
SIGNAL \tone_generator|Add4~95_combout\ : std_logic;
SIGNAL \tone_generator|pa~3_combout\ : std_logic;
SIGNAL \tone_generator|pa~10_combout\ : std_logic;
SIGNAL \tone_generator|Add4~70_combout\ : std_logic;
SIGNAL \tone_generator|Add4~72\ : std_logic;
SIGNAL \tone_generator|Add4~72COUT1_109\ : std_logic;
SIGNAL \tone_generator|Add4~75_combout\ : std_logic;
SIGNAL \tone_generator|Add4~77\ : std_logic;
SIGNAL \tone_generator|Add4~77COUT1_110\ : std_logic;
SIGNAL \tone_generator|Add4~82\ : std_logic;
SIGNAL \tone_generator|Add4~82COUT1_111\ : std_logic;
SIGNAL \tone_generator|Add4~85_combout\ : std_logic;
SIGNAL \tone_generator|Add4~80_combout\ : std_logic;
SIGNAL \tone_generator|Equal4~4\ : std_logic;
SIGNAL \tone_generator|Add4~50_combout\ : std_logic;
SIGNAL \tone_generator|Add4~52\ : std_logic;
SIGNAL \tone_generator|Add4~52COUT1_105\ : std_logic;
SIGNAL \tone_generator|Add4~40_combout\ : std_logic;
SIGNAL \tone_generator|Add4~42\ : std_logic;
SIGNAL \tone_generator|Add4~42COUT1_106\ : std_logic;
SIGNAL \tone_generator|Add4~55_combout\ : std_logic;
SIGNAL \tone_generator|Add4~20_combout\ : std_logic;
SIGNAL \tone_generator|Add4~22\ : std_logic;
SIGNAL \tone_generator|Add4~22COUT1_101\ : std_logic;
SIGNAL \tone_generator|Add4~30_combout\ : std_logic;
SIGNAL \tone_generator|Add4~32\ : std_logic;
SIGNAL \tone_generator|Add4~32COUT1_102\ : std_logic;
SIGNAL \tone_generator|Add4~25_combout\ : std_logic;
SIGNAL \tone_generator|Add4~27\ : std_logic;
SIGNAL \tone_generator|Add4~27COUT1_103\ : std_logic;
SIGNAL \tone_generator|Add4~35_combout\ : std_logic;
SIGNAL \tone_generator|Add4~37\ : std_logic;
SIGNAL \tone_generator|Add4~37COUT1_104\ : std_logic;
SIGNAL \tone_generator|Add4~45_combout\ : std_logic;
SIGNAL \tone_generator|Add4~47\ : std_logic;
SIGNAL \tone_generator|Add4~57\ : std_logic;
SIGNAL \tone_generator|Add4~57COUT1_107\ : std_logic;
SIGNAL \tone_generator|Add4~60_combout\ : std_logic;
SIGNAL \tone_generator|Equal4~3_combout\ : std_logic;
SIGNAL \tone_generator|Equal4~1\ : std_logic;
SIGNAL \tone_generator|Equal4~2\ : std_logic;
SIGNAL \tone_generator|Equal4~5_combout\ : std_logic;
SIGNAL \tone_generator|Add4~62\ : std_logic;
SIGNAL \tone_generator|Add4~62COUT1_108\ : std_logic;
SIGNAL \tone_generator|Add4~65_combout\ : std_logic;
SIGNAL \tone_generator|Add4~67\ : std_logic;
SIGNAL \tone_generator|Add4~87\ : std_logic;
SIGNAL \tone_generator|Add4~87COUT1_112\ : std_logic;
SIGNAL \tone_generator|Add4~90_combout\ : std_logic;
SIGNAL \tone_generator|Add4~92\ : std_logic;
SIGNAL \tone_generator|Add4~97\ : std_logic;
SIGNAL \tone_generator|Add4~97COUT1_113\ : std_logic;
SIGNAL \tone_generator|Add4~0_combout\ : std_logic;
SIGNAL \tone_generator|Add4~2\ : std_logic;
SIGNAL \tone_generator|Add4~2COUT1_114\ : std_logic;
SIGNAL \tone_generator|Add4~5_combout\ : std_logic;
SIGNAL \tone_generator|Add4~7\ : std_logic;
SIGNAL \tone_generator|Add4~7COUT1_115\ : std_logic;
SIGNAL \tone_generator|Add4~10_combout\ : std_logic;
SIGNAL \tone_generator|Add4~12\ : std_logic;
SIGNAL \tone_generator|Add4~12COUT1_116\ : std_logic;
SIGNAL \tone_generator|Add4~15_combout\ : std_logic;
SIGNAL \tone_generator|Equal4~0\ : std_logic;
SIGNAL \tone_generator|pa~9\ : std_logic;
SIGNAL \tone_generator|Add5~42\ : std_logic;
SIGNAL \tone_generator|Add5~42COUT1_105\ : std_logic;
SIGNAL \tone_generator|Add5~50_combout\ : std_logic;
SIGNAL \tone_generator|dha~3_combout\ : std_logic;
SIGNAL \tone_generator|dha~10\ : std_logic;
SIGNAL \tone_generator|Add5~25_combout\ : std_logic;
SIGNAL \tone_generator|Add5~27\ : std_logic;
SIGNAL \tone_generator|Add5~27COUT1_101\ : std_logic;
SIGNAL \tone_generator|Add5~30_combout\ : std_logic;
SIGNAL \tone_generator|Add5~32\ : std_logic;
SIGNAL \tone_generator|Add5~32COUT1_102\ : std_logic;
SIGNAL \tone_generator|Add5~20_combout\ : std_logic;
SIGNAL \tone_generator|Add5~22\ : std_logic;
SIGNAL \tone_generator|Add5~22COUT1_103\ : std_logic;
SIGNAL \tone_generator|Add5~35_combout\ : std_logic;
SIGNAL \tone_generator|Add5~37\ : std_logic;
SIGNAL \tone_generator|Add5~37COUT1_104\ : std_logic;
SIGNAL \tone_generator|Add5~45_combout\ : std_logic;
SIGNAL \tone_generator|Add5~52\ : std_logic;
SIGNAL \tone_generator|Add5~52COUT1_106\ : std_logic;
SIGNAL \tone_generator|Add5~55_combout\ : std_logic;
SIGNAL \tone_generator|Add5~47\ : std_logic;
SIGNAL \tone_generator|Add5~40_combout\ : std_logic;
SIGNAL \tone_generator|Equal5~2\ : std_logic;
SIGNAL \tone_generator|Add5~60_combout\ : std_logic;
SIGNAL \tone_generator|Add5~62\ : std_logic;
SIGNAL \tone_generator|Add5~62COUT1_109\ : std_logic;
SIGNAL \tone_generator|Add5~75_combout\ : std_logic;
SIGNAL \tone_generator|Add5~57\ : std_logic;
SIGNAL \tone_generator|Add5~57COUT1_107\ : std_logic;
SIGNAL \tone_generator|Add5~65_combout\ : std_logic;
SIGNAL \tone_generator|Add5~67\ : std_logic;
SIGNAL \tone_generator|Add5~67COUT1_108\ : std_logic;
SIGNAL \tone_generator|Add5~70_combout\ : std_logic;
SIGNAL \tone_generator|Add5~72\ : std_logic;
SIGNAL \tone_generator|Add5~77\ : std_logic;
SIGNAL \tone_generator|Add5~77COUT1_110\ : std_logic;
SIGNAL \tone_generator|Add5~80_combout\ : std_logic;
SIGNAL \tone_generator|Add5~82\ : std_logic;
SIGNAL \tone_generator|Add5~82COUT1_111\ : std_logic;
SIGNAL \tone_generator|Add5~85_combout\ : std_logic;
SIGNAL \tone_generator|Add5~95_combout\ : std_logic;
SIGNAL \tone_generator|Equal5~4_combout\ : std_logic;
SIGNAL \tone_generator|Equal5~1\ : std_logic;
SIGNAL \tone_generator|Equal5~3\ : std_logic;
SIGNAL \tone_generator|Equal5~5_combout\ : std_logic;
SIGNAL \tone_generator|Add5~87\ : std_logic;
SIGNAL \tone_generator|Add5~87COUT1_112\ : std_logic;
SIGNAL \tone_generator|Add5~90_combout\ : std_logic;
SIGNAL \tone_generator|Add5~92\ : std_logic;
SIGNAL \tone_generator|Add5~97\ : std_logic;
SIGNAL \tone_generator|Add5~97COUT1_113\ : std_logic;
SIGNAL \tone_generator|Add5~2COUT1_114\ : std_logic;
SIGNAL \tone_generator|Add5~7\ : std_logic;
SIGNAL \tone_generator|Add5~7COUT1_115\ : std_logic;
SIGNAL \tone_generator|Add5~10_combout\ : std_logic;
SIGNAL \tone_generator|Add5~12\ : std_logic;
SIGNAL \tone_generator|Add5~12COUT1_116\ : std_logic;
SIGNAL \tone_generator|Add5~15_combout\ : std_logic;
SIGNAL \tone_generator|Add5~0_combout\ : std_logic;
SIGNAL \tone_generator|Add5~2\ : std_logic;
SIGNAL \tone_generator|Add5~5_combout\ : std_logic;
SIGNAL \tone_generator|Equal5~0\ : std_logic;
SIGNAL \tone_generator|dha~9\ : std_logic;
SIGNAL \tone_generator|toneOut~7_combout\ : std_logic;
SIGNAL \tone_generator|toneOut~6_combout\ : std_logic;
SIGNAL \tone_generator|toneOut~regout\ : std_logic;
SIGNAL \tone_generator|count_pa\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \tone_generator|count_dha\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \tone_generator|count_sa1\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \tone_generator|count_ni_lower\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \tone_generator|count_ma\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \tone_generator|count_ga\ : std_logic_vector(19 DOWNTO 0);
SIGNAL timecounter : std_logic_vector(26 DOWNTO 0);
SIGNAL index_register : std_logic_vector(3 DOWNTO 0);
SIGNAL \tone_generator|count_re\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \tone_generator|LED\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_fsm_state~regout\ : std_logic;

BEGIN

toneOut <= ww_toneOut;
ww_clk_50 <= clk_50;
ww_resetn <= resetn;
LED <= ww_LED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_fsm_state~regout\ <= NOT \fsm_state~regout\;

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk_50~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk_50,
	combout => \clk_50~combout\);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\resetn~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_resetn,
	combout => \resetn~combout\);

-- Location: LC_X6_Y9_N2
\timecounter[0]\ : maxv_lcell
-- Equation(s):
-- timecounter(0) = DFFEAS(((!\resetn~combout\ & ((!timecounter(0))))), GLOBAL(\clk_50~combout\), VCC, , , , , , )

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
	datad => timecounter(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(0));

-- Location: LC_X7_Y9_N2
\Add1~132\ : maxv_lcell
-- Equation(s):
-- \Add1~132_cout0\ = CARRY(((!timecounter(0))))
-- \Add1~132COUT1_136\ = CARRY(((!timecounter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => timecounter(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~130\,
	cout0 => \Add1~132_cout0\,
	cout1 => \Add1~132COUT1_136\);

-- Location: LC_X7_Y9_N3
\Add1~125\ : maxv_lcell
-- Equation(s):
-- \Add1~125_combout\ = timecounter(1) $ ((((\Add1~132_cout0\))))
-- \Add1~127\ = CARRY(((!\Add1~132_cout0\)) # (!timecounter(1)))
-- \Add1~127COUT1_137\ = CARRY(((!\Add1~132COUT1_136\)) # (!timecounter(1)))

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
	dataa => timecounter(1),
	cin0 => \Add1~132_cout0\,
	cin1 => \Add1~132COUT1_136\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~125_combout\,
	cout0 => \Add1~127\,
	cout1 => \Add1~127COUT1_137\);

-- Location: LC_X6_Y9_N1
\timecounter[1]\ : maxv_lcell
-- Equation(s):
-- timecounter(1) = DFFEAS(((!\resetn~combout\ & (\Add1~125_combout\ & \Equal1~8_combout\))), GLOBAL(\clk_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	datab => \resetn~combout\,
	datac => \Add1~125_combout\,
	datad => \Equal1~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(1));

-- Location: LC_X7_Y9_N4
\Add1~120\ : maxv_lcell
-- Equation(s):
-- \Add1~120_combout\ = (timecounter(2) $ ((!\Add1~127\)))
-- \Add1~122\ = CARRY(((timecounter(2) & !\Add1~127COUT1_137\)))

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
	datab => timecounter(2),
	cin0 => \Add1~127\,
	cin1 => \Add1~127COUT1_137\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~120_combout\,
	cout => \Add1~122\);

-- Location: LC_X6_Y9_N4
\timecounter[2]\ : maxv_lcell
-- Equation(s):
-- timecounter(2) = DFFEAS((\Equal1~8_combout\ & (\Add1~120_combout\ & ((!\resetn~combout\)))), GLOBAL(\clk_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0088",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \Equal1~8_combout\,
	datab => \Add1~120_combout\,
	datad => \resetn~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(2));

-- Location: LC_X7_Y9_N5
\Add1~110\ : maxv_lcell
-- Equation(s):
-- \Add1~110_combout\ = (timecounter(3) $ ((\Add1~122\)))
-- \Add1~112\ = CARRY(((!\Add1~122\) # (!timecounter(3))))
-- \Add1~112COUT1_138\ = CARRY(((!\Add1~122\) # (!timecounter(3))))

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
	datab => timecounter(3),
	cin => \Add1~122\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~110_combout\,
	cout0 => \Add1~112\,
	cout1 => \Add1~112COUT1_138\);

-- Location: LC_X6_Y9_N7
\timecounter[3]\ : maxv_lcell
-- Equation(s):
-- timecounter(3) = DFFEAS(((!\resetn~combout\ & (\Add1~110_combout\ & \Equal1~8_combout\))), GLOBAL(\clk_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	datab => \resetn~combout\,
	datac => \Add1~110_combout\,
	datad => \Equal1~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(3));

-- Location: LC_X7_Y9_N6
\Add1~105\ : maxv_lcell
-- Equation(s):
-- \Add1~105_combout\ = timecounter(4) $ ((((!(!\Add1~122\ & \Add1~112\) # (\Add1~122\ & \Add1~112COUT1_138\)))))
-- \Add1~107\ = CARRY((timecounter(4) & ((!\Add1~112\))))
-- \Add1~107COUT1_139\ = CARRY((timecounter(4) & ((!\Add1~112COUT1_138\))))

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
	dataa => timecounter(4),
	cin => \Add1~122\,
	cin0 => \Add1~112\,
	cin1 => \Add1~112COUT1_138\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~105_combout\,
	cout0 => \Add1~107\,
	cout1 => \Add1~107COUT1_139\);

-- Location: LC_X6_Y9_N0
\timecounter[4]\ : maxv_lcell
-- Equation(s):
-- timecounter(4) = DFFEAS(((!\resetn~combout\ & (\Add1~105_combout\ & \Equal1~8_combout\))), GLOBAL(\clk_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	datab => \resetn~combout\,
	datac => \Add1~105_combout\,
	datad => \Equal1~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(4));

-- Location: LC_X7_Y9_N7
\Add1~115\ : maxv_lcell
-- Equation(s):
-- \Add1~115_combout\ = timecounter(5) $ (((((!\Add1~122\ & \Add1~107\) # (\Add1~122\ & \Add1~107COUT1_139\)))))
-- \Add1~117\ = CARRY(((!\Add1~107\)) # (!timecounter(5)))
-- \Add1~117COUT1_140\ = CARRY(((!\Add1~107COUT1_139\)) # (!timecounter(5)))

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
	dataa => timecounter(5),
	cin => \Add1~122\,
	cin0 => \Add1~107\,
	cin1 => \Add1~107COUT1_139\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~115_combout\,
	cout0 => \Add1~117\,
	cout1 => \Add1~117COUT1_140\);

-- Location: LC_X6_Y9_N5
\timecounter[5]\ : maxv_lcell
-- Equation(s):
-- timecounter(5) = DFFEAS((\Add1~115_combout\ & (!\resetn~combout\ & ((\Equal1~8_combout\)))), GLOBAL(\clk_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2200",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \Add1~115_combout\,
	datab => \resetn~combout\,
	datad => \Equal1~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(5));

-- Location: LC_X7_Y9_N8
\Add1~100\ : maxv_lcell
-- Equation(s):
-- \Add1~100_combout\ = timecounter(6) $ ((((!(!\Add1~122\ & \Add1~117\) # (\Add1~122\ & \Add1~117COUT1_140\)))))
-- \Add1~102\ = CARRY((timecounter(6) & ((!\Add1~117\))))
-- \Add1~102COUT1_141\ = CARRY((timecounter(6) & ((!\Add1~117COUT1_140\))))

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
	dataa => timecounter(6),
	cin => \Add1~122\,
	cin0 => \Add1~117\,
	cin1 => \Add1~117COUT1_140\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~100_combout\,
	cout0 => \Add1~102\,
	cout1 => \Add1~102COUT1_141\);

-- Location: LC_X6_Y9_N8
\timecounter[6]\ : maxv_lcell
-- Equation(s):
-- timecounter(6) = DFFEAS((\Equal1~8_combout\ & (!\resetn~combout\ & ((\Add1~100_combout\)))), GLOBAL(\clk_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2200",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \Equal1~8_combout\,
	datab => \resetn~combout\,
	datad => \Add1~100_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(6));

-- Location: LC_X7_Y9_N9
\Add1~90\ : maxv_lcell
-- Equation(s):
-- \Add1~90_combout\ = (timecounter(7) $ (((!\Add1~122\ & \Add1~102\) # (\Add1~122\ & \Add1~102COUT1_141\))))
-- \Add1~92\ = CARRY(((!\Add1~102COUT1_141\) # (!timecounter(7))))

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
	datab => timecounter(7),
	cin => \Add1~122\,
	cin0 => \Add1~102\,
	cin1 => \Add1~102COUT1_141\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~90_combout\,
	cout => \Add1~92\);

-- Location: LC_X12_Y9_N6
\timecounter[7]\ : maxv_lcell
-- Equation(s):
-- timecounter(7) = DFFEAS(((!\resetn~combout\ & (\Equal1~8_combout\ & \Add1~90_combout\))), GLOBAL(\clk_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	datab => \resetn~combout\,
	datac => \Equal1~8_combout\,
	datad => \Add1~90_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(7));

-- Location: LC_X8_Y9_N0
\Add1~85\ : maxv_lcell
-- Equation(s):
-- \Add1~85_combout\ = (timecounter(8) $ ((!\Add1~92\)))
-- \Add1~87\ = CARRY(((timecounter(8) & !\Add1~92\)))
-- \Add1~87COUT1_142\ = CARRY(((timecounter(8) & !\Add1~92\)))

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
	datab => timecounter(8),
	cin => \Add1~92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~85_combout\,
	cout0 => \Add1~87\,
	cout1 => \Add1~87COUT1_142\);

-- Location: LC_X12_Y9_N8
\timecounter[8]\ : maxv_lcell
-- Equation(s):
-- timecounter(8) = DFFEAS(((!\resetn~combout\ & (\Equal1~8_combout\ & \Add1~85_combout\))), GLOBAL(\clk_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	datab => \resetn~combout\,
	datac => \Equal1~8_combout\,
	datad => \Add1~85_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(8));

-- Location: LC_X8_Y9_N1
\Add1~80\ : maxv_lcell
-- Equation(s):
-- \Add1~80_combout\ = (timecounter(9) $ (((!\Add1~92\ & \Add1~87\) # (\Add1~92\ & \Add1~87COUT1_142\))))
-- \Add1~82\ = CARRY(((!\Add1~87\) # (!timecounter(9))))
-- \Add1~82COUT1_143\ = CARRY(((!\Add1~87COUT1_142\) # (!timecounter(9))))

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
	datab => timecounter(9),
	cin => \Add1~92\,
	cin0 => \Add1~87\,
	cin1 => \Add1~87COUT1_142\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~80_combout\,
	cout0 => \Add1~82\,
	cout1 => \Add1~82COUT1_143\);

-- Location: LC_X12_Y9_N4
\timecounter[9]\ : maxv_lcell
-- Equation(s):
-- timecounter(9) = DFFEAS(((!\resetn~combout\ & (\Equal1~8_combout\ & \Add1~80_combout\))), GLOBAL(\clk_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	datab => \resetn~combout\,
	datac => \Equal1~8_combout\,
	datad => \Add1~80_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(9));

-- Location: LC_X8_Y9_N2
\Add1~95\ : maxv_lcell
-- Equation(s):
-- \Add1~95_combout\ = (timecounter(10) $ ((!(!\Add1~92\ & \Add1~82\) # (\Add1~92\ & \Add1~82COUT1_143\))))
-- \Add1~97\ = CARRY(((timecounter(10) & !\Add1~82\)))
-- \Add1~97COUT1_144\ = CARRY(((timecounter(10) & !\Add1~82COUT1_143\)))

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
	datab => timecounter(10),
	cin => \Add1~92\,
	cin0 => \Add1~82\,
	cin1 => \Add1~82COUT1_143\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~95_combout\,
	cout0 => \Add1~97\,
	cout1 => \Add1~97COUT1_144\);

-- Location: LC_X12_Y9_N9
\timecounter[10]\ : maxv_lcell
-- Equation(s):
-- timecounter(10) = DFFEAS(((!\resetn~combout\ & (\Equal1~8_combout\ & \Add1~95_combout\))), GLOBAL(\clk_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	datab => \resetn~combout\,
	datac => \Equal1~8_combout\,
	datad => \Add1~95_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(10));

-- Location: LC_X12_Y9_N3
\Equal1~5\ : maxv_lcell
-- Equation(s):
-- \Equal1~5_combout\ = (timecounter(7)) # (((timecounter(9)) # (timecounter(8))) # (!timecounter(10)))

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
	dataa => timecounter(7),
	datab => timecounter(10),
	datac => timecounter(9),
	datad => timecounter(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~5_combout\);

-- Location: LC_X6_Y9_N9
\Equal1~6\ : maxv_lcell
-- Equation(s):
-- \Equal1~6_combout\ = ((timecounter(4)) # ((timecounter(3)) # (timecounter(6)))) # (!timecounter(5))

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
	dataa => timecounter(5),
	datab => timecounter(4),
	datac => timecounter(3),
	datad => timecounter(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~6_combout\);

-- Location: LC_X6_Y9_N6
\Equal1~7\ : maxv_lcell
-- Equation(s):
-- \Equal1~7_combout\ = ((timecounter(1)) # ((timecounter(2)) # (!timecounter(0))))

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
	datab => timecounter(1),
	datac => timecounter(2),
	datad => timecounter(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~7_combout\);

-- Location: LC_X8_Y9_N3
\Add1~75\ : maxv_lcell
-- Equation(s):
-- \Add1~75_combout\ = (timecounter(11) $ (((!\Add1~92\ & \Add1~97\) # (\Add1~92\ & \Add1~97COUT1_144\))))
-- \Add1~77\ = CARRY(((!\Add1~97\) # (!timecounter(11))))
-- \Add1~77COUT1_145\ = CARRY(((!\Add1~97COUT1_144\) # (!timecounter(11))))

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
	datab => timecounter(11),
	cin => \Add1~92\,
	cin0 => \Add1~97\,
	cin1 => \Add1~97COUT1_144\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~75_combout\,
	cout0 => \Add1~77\,
	cout1 => \Add1~77COUT1_145\);

-- Location: LC_X11_Y9_N9
\timecounter[11]\ : maxv_lcell
-- Equation(s):
-- timecounter(11) = DFFEAS(((\Equal1~8_combout\ & (!\resetn~combout\ & \Add1~75_combout\))), GLOBAL(\clk_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	datab => \Equal1~8_combout\,
	datac => \resetn~combout\,
	datad => \Add1~75_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(11));

-- Location: LC_X8_Y9_N4
\Add1~70\ : maxv_lcell
-- Equation(s):
-- \Add1~70_combout\ = (timecounter(12) $ ((!(!\Add1~92\ & \Add1~77\) # (\Add1~92\ & \Add1~77COUT1_145\))))
-- \Add1~72\ = CARRY(((timecounter(12) & !\Add1~77COUT1_145\)))

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
	datab => timecounter(12),
	cin => \Add1~92\,
	cin0 => \Add1~77\,
	cin1 => \Add1~77COUT1_145\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~70_combout\,
	cout => \Add1~72\);

-- Location: LC_X11_Y9_N7
\timecounter[12]\ : maxv_lcell
-- Equation(s):
-- timecounter(12) = DFFEAS(((\Equal1~8_combout\ & (!\resetn~combout\ & \Add1~70_combout\))), GLOBAL(\clk_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	datab => \Equal1~8_combout\,
	datac => \resetn~combout\,
	datad => \Add1~70_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(12));

-- Location: LC_X8_Y9_N5
\Add1~65\ : maxv_lcell
-- Equation(s):
-- \Add1~65_combout\ = (timecounter(13) $ ((\Add1~72\)))
-- \Add1~67\ = CARRY(((!\Add1~72\) # (!timecounter(13))))
-- \Add1~67COUT1_146\ = CARRY(((!\Add1~72\) # (!timecounter(13))))

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
	datab => timecounter(13),
	cin => \Add1~72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~65_combout\,
	cout0 => \Add1~67\,
	cout1 => \Add1~67COUT1_146\);

-- Location: LC_X11_Y9_N5
\timecounter[13]\ : maxv_lcell
-- Equation(s):
-- timecounter(13) = DFFEAS(((\Equal1~8_combout\ & (!\resetn~combout\ & \Add1~65_combout\))), GLOBAL(\clk_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	datab => \Equal1~8_combout\,
	datac => \resetn~combout\,
	datad => \Add1~65_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(13));

-- Location: LC_X8_Y9_N6
\Add1~60\ : maxv_lcell
-- Equation(s):
-- \Add1~60_combout\ = (timecounter(14) $ ((!(!\Add1~72\ & \Add1~67\) # (\Add1~72\ & \Add1~67COUT1_146\))))
-- \Add1~62\ = CARRY(((timecounter(14) & !\Add1~67\)))
-- \Add1~62COUT1_147\ = CARRY(((timecounter(14) & !\Add1~67COUT1_146\)))

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
	datab => timecounter(14),
	cin => \Add1~72\,
	cin0 => \Add1~67\,
	cin1 => \Add1~67COUT1_146\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~60_combout\,
	cout0 => \Add1~62\,
	cout1 => \Add1~62COUT1_147\);

-- Location: LC_X11_Y9_N2
\timecounter[14]\ : maxv_lcell
-- Equation(s):
-- timecounter(14) = DFFEAS((!\resetn~combout\ & (((\Add1~60_combout\ & \Equal1~8_combout\)))), GLOBAL(\clk_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \resetn~combout\,
	datac => \Add1~60_combout\,
	datad => \Equal1~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(14));

-- Location: LC_X8_Y9_N7
\Add1~55\ : maxv_lcell
-- Equation(s):
-- \Add1~55_combout\ = (timecounter(15) $ (((!\Add1~72\ & \Add1~62\) # (\Add1~72\ & \Add1~62COUT1_147\))))
-- \Add1~57\ = CARRY(((!\Add1~62\) # (!timecounter(15))))
-- \Add1~57COUT1_148\ = CARRY(((!\Add1~62COUT1_147\) # (!timecounter(15))))

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
	datab => timecounter(15),
	cin => \Add1~72\,
	cin0 => \Add1~62\,
	cin1 => \Add1~62COUT1_147\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~55_combout\,
	cout0 => \Add1~57\,
	cout1 => \Add1~57COUT1_148\);

-- Location: LC_X10_Y9_N7
\timecounter[15]\ : maxv_lcell
-- Equation(s):
-- timecounter(15) = DFFEAS((!\resetn~combout\ & (((\Add1~55_combout\ & \Equal1~8_combout\)))), GLOBAL(\clk_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \resetn~combout\,
	datac => \Add1~55_combout\,
	datad => \Equal1~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(15));

-- Location: LC_X8_Y9_N8
\Add1~40\ : maxv_lcell
-- Equation(s):
-- \Add1~40_combout\ = timecounter(16) $ ((((!(!\Add1~72\ & \Add1~57\) # (\Add1~72\ & \Add1~57COUT1_148\)))))
-- \Add1~42\ = CARRY((timecounter(16) & ((!\Add1~57\))))
-- \Add1~42COUT1_149\ = CARRY((timecounter(16) & ((!\Add1~57COUT1_148\))))

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
	dataa => timecounter(16),
	cin => \Add1~72\,
	cin0 => \Add1~57\,
	cin1 => \Add1~57COUT1_148\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~40_combout\,
	cout0 => \Add1~42\,
	cout1 => \Add1~42COUT1_149\);

-- Location: LC_X10_Y9_N3
\timecounter[16]\ : maxv_lcell
-- Equation(s):
-- timecounter(16) = DFFEAS((!\resetn~combout\ & (\Add1~40_combout\ & ((\Equal1~8_combout\)))), GLOBAL(\clk_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4400",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \resetn~combout\,
	datab => \Add1~40_combout\,
	datad => \Equal1~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(16));

-- Location: LC_X8_Y9_N9
\Add1~50\ : maxv_lcell
-- Equation(s):
-- \Add1~50_combout\ = (timecounter(17) $ (((!\Add1~72\ & \Add1~42\) # (\Add1~72\ & \Add1~42COUT1_149\))))
-- \Add1~52\ = CARRY(((!\Add1~42COUT1_149\) # (!timecounter(17))))

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
	datab => timecounter(17),
	cin => \Add1~72\,
	cin0 => \Add1~42\,
	cin1 => \Add1~42COUT1_149\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~50_combout\,
	cout => \Add1~52\);

-- Location: LC_X10_Y9_N2
\timecounter[17]\ : maxv_lcell
-- Equation(s):
-- timecounter(17) = DFFEAS((\Equal1~8_combout\ & (((!\resetn~combout\ & \Add1~50_combout\)))), GLOBAL(\clk_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \Equal1~8_combout\,
	datac => \resetn~combout\,
	datad => \Add1~50_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(17));

-- Location: LC_X9_Y9_N0
\Add1~45\ : maxv_lcell
-- Equation(s):
-- \Add1~45_combout\ = timecounter(18) $ ((((!\Add1~52\))))
-- \Add1~47\ = CARRY((timecounter(18) & ((!\Add1~52\))))
-- \Add1~47COUT1_150\ = CARRY((timecounter(18) & ((!\Add1~52\))))

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
	dataa => timecounter(18),
	cin => \Add1~52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~45_combout\,
	cout0 => \Add1~47\,
	cout1 => \Add1~47COUT1_150\);

-- Location: LC_X10_Y9_N6
\timecounter[18]\ : maxv_lcell
-- Equation(s):
-- timecounter(18) = DFFEAS((\Equal1~8_combout\ & (((!\resetn~combout\ & \Add1~45_combout\)))), GLOBAL(\clk_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \Equal1~8_combout\,
	datac => \resetn~combout\,
	datad => \Add1~45_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(18));

-- Location: LC_X9_Y9_N1
\Add1~35\ : maxv_lcell
-- Equation(s):
-- \Add1~35_combout\ = (timecounter(19) $ (((!\Add1~52\ & \Add1~47\) # (\Add1~52\ & \Add1~47COUT1_150\))))
-- \Add1~37\ = CARRY(((!\Add1~47\) # (!timecounter(19))))
-- \Add1~37COUT1_151\ = CARRY(((!\Add1~47COUT1_150\) # (!timecounter(19))))

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
	datab => timecounter(19),
	cin => \Add1~52\,
	cin0 => \Add1~47\,
	cin1 => \Add1~47COUT1_150\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~35_combout\,
	cout0 => \Add1~37\,
	cout1 => \Add1~37COUT1_151\);

-- Location: LC_X11_Y9_N3
\timecounter[19]\ : maxv_lcell
-- Equation(s):
-- timecounter(19) = DFFEAS(((\Equal1~8_combout\ & (!\resetn~combout\ & \Add1~35_combout\))), GLOBAL(\clk_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	datab => \Equal1~8_combout\,
	datac => \resetn~combout\,
	datad => \Add1~35_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(19));

-- Location: LC_X9_Y9_N2
\Add1~30\ : maxv_lcell
-- Equation(s):
-- \Add1~30_combout\ = (timecounter(20) $ ((!(!\Add1~52\ & \Add1~37\) # (\Add1~52\ & \Add1~37COUT1_151\))))
-- \Add1~32\ = CARRY(((timecounter(20) & !\Add1~37\)))
-- \Add1~32COUT1_152\ = CARRY(((timecounter(20) & !\Add1~37COUT1_151\)))

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
	datab => timecounter(20),
	cin => \Add1~52\,
	cin0 => \Add1~37\,
	cin1 => \Add1~37COUT1_151\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~30_combout\,
	cout0 => \Add1~32\,
	cout1 => \Add1~32COUT1_152\);

-- Location: LC_X12_Y9_N5
\timecounter[20]\ : maxv_lcell
-- Equation(s):
-- timecounter(20) = DFFEAS(((!\resetn~combout\ & (\Equal1~8_combout\ & \Add1~30_combout\))), GLOBAL(\clk_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	datab => \resetn~combout\,
	datac => \Equal1~8_combout\,
	datad => \Add1~30_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(20));

-- Location: LC_X9_Y9_N3
\Add1~25\ : maxv_lcell
-- Equation(s):
-- \Add1~25_combout\ = (timecounter(21) $ (((!\Add1~52\ & \Add1~32\) # (\Add1~52\ & \Add1~32COUT1_152\))))
-- \Add1~27\ = CARRY(((!\Add1~32\) # (!timecounter(21))))
-- \Add1~27COUT1_153\ = CARRY(((!\Add1~32COUT1_152\) # (!timecounter(21))))

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
	datab => timecounter(21),
	cin => \Add1~52\,
	cin0 => \Add1~32\,
	cin1 => \Add1~32COUT1_152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~25_combout\,
	cout0 => \Add1~27\,
	cout1 => \Add1~27COUT1_153\);

-- Location: LC_X11_Y9_N4
\timecounter[21]\ : maxv_lcell
-- Equation(s):
-- timecounter(21) = DFFEAS(((\Equal1~8_combout\ & (!\resetn~combout\ & \Add1~25_combout\))), GLOBAL(\clk_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	datab => \Equal1~8_combout\,
	datac => \resetn~combout\,
	datad => \Add1~25_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(21));

-- Location: LC_X9_Y9_N4
\Add1~20\ : maxv_lcell
-- Equation(s):
-- \Add1~20_combout\ = (timecounter(22) $ ((!(!\Add1~52\ & \Add1~27\) # (\Add1~52\ & \Add1~27COUT1_153\))))
-- \Add1~22\ = CARRY(((timecounter(22) & !\Add1~27COUT1_153\)))

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
	datab => timecounter(22),
	cin => \Add1~52\,
	cin0 => \Add1~27\,
	cin1 => \Add1~27COUT1_153\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~20_combout\,
	cout => \Add1~22\);

-- Location: LC_X12_Y9_N7
\timecounter[22]\ : maxv_lcell
-- Equation(s):
-- timecounter(22) = DFFEAS((\Equal1~8_combout\ & (!\resetn~combout\ & (\Add1~20_combout\))), GLOBAL(\clk_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2020",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \Equal1~8_combout\,
	datab => \resetn~combout\,
	datac => \Add1~20_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(22));

-- Location: LC_X9_Y9_N5
\Add1~15\ : maxv_lcell
-- Equation(s):
-- \Add1~15_combout\ = (timecounter(23) $ ((\Add1~22\)))
-- \Add1~17\ = CARRY(((!\Add1~22\) # (!timecounter(23))))
-- \Add1~17COUT1_154\ = CARRY(((!\Add1~22\) # (!timecounter(23))))

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
	datab => timecounter(23),
	cin => \Add1~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~15_combout\,
	cout0 => \Add1~17\,
	cout1 => \Add1~17COUT1_154\);

-- Location: LC_X10_Y9_N5
\timecounter[23]\ : maxv_lcell
-- Equation(s):
-- timecounter(23) = DFFEAS((\Equal1~8_combout\ & (((!\resetn~combout\ & \Add1~15_combout\)))), GLOBAL(\clk_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \Equal1~8_combout\,
	datac => \resetn~combout\,
	datad => \Add1~15_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(23));

-- Location: LC_X9_Y9_N6
\Add1~10\ : maxv_lcell
-- Equation(s):
-- \Add1~10_combout\ = timecounter(24) $ ((((!(!\Add1~22\ & \Add1~17\) # (\Add1~22\ & \Add1~17COUT1_154\)))))
-- \Add1~12\ = CARRY((timecounter(24) & ((!\Add1~17\))))
-- \Add1~12COUT1_155\ = CARRY((timecounter(24) & ((!\Add1~17COUT1_154\))))

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
	dataa => timecounter(24),
	cin => \Add1~22\,
	cin0 => \Add1~17\,
	cin1 => \Add1~17COUT1_154\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~10_combout\,
	cout0 => \Add1~12\,
	cout1 => \Add1~12COUT1_155\);

-- Location: LC_X10_Y9_N0
\timecounter[24]\ : maxv_lcell
-- Equation(s):
-- timecounter(24) = DFFEAS((!\resetn~combout\ & (((\Add1~10_combout\ & \Equal1~8_combout\)))), GLOBAL(\clk_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \resetn~combout\,
	datac => \Add1~10_combout\,
	datad => \Equal1~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(24));

-- Location: LC_X9_Y9_N7
\Add1~5\ : maxv_lcell
-- Equation(s):
-- \Add1~5_combout\ = (timecounter(25) $ (((!\Add1~22\ & \Add1~12\) # (\Add1~22\ & \Add1~12COUT1_155\))))
-- \Add1~7\ = CARRY(((!\Add1~12\) # (!timecounter(25))))
-- \Add1~7COUT1_156\ = CARRY(((!\Add1~12COUT1_155\) # (!timecounter(25))))

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
	datab => timecounter(25),
	cin => \Add1~22\,
	cin0 => \Add1~12\,
	cin1 => \Add1~12COUT1_155\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~5_combout\,
	cout0 => \Add1~7\,
	cout1 => \Add1~7COUT1_156\);

-- Location: LC_X10_Y9_N8
\timecounter[25]\ : maxv_lcell
-- Equation(s):
-- timecounter(25) = DFFEAS((\Equal1~8_combout\ & (((!\resetn~combout\ & \Add1~5_combout\)))), GLOBAL(\clk_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \Equal1~8_combout\,
	datac => \resetn~combout\,
	datad => \Add1~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(25));

-- Location: LC_X9_Y9_N8
\Add1~0\ : maxv_lcell
-- Equation(s):
-- \Add1~0_combout\ = (((!\Add1~22\ & \Add1~7\) # (\Add1~22\ & \Add1~7COUT1_156\) $ (!timecounter(26))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => timecounter(26),
	cin => \Add1~22\,
	cin0 => \Add1~7\,
	cin1 => \Add1~7COUT1_156\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~0_combout\);

-- Location: LC_X10_Y9_N1
\timecounter[26]\ : maxv_lcell
-- Equation(s):
-- timecounter(26) = DFFEAS((!\resetn~combout\ & (((\Add1~0_combout\ & \Equal1~8_combout\)))), GLOBAL(\clk_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \resetn~combout\,
	datac => \Add1~0_combout\,
	datad => \Equal1~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => timecounter(26));

-- Location: LC_X10_Y9_N9
\Equal1~0\ : maxv_lcell
-- Equation(s):
-- \Equal1~0_combout\ = ((timecounter(26)) # ((timecounter(24)) # (timecounter(25)))) # (!timecounter(23))

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
	dataa => timecounter(23),
	datab => timecounter(26),
	datac => timecounter(24),
	datad => timecounter(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~0_combout\);

-- Location: LC_X10_Y9_N4
\Equal1~2\ : maxv_lcell
-- Equation(s):
-- \Equal1~2_combout\ = (((timecounter(16)) # (!timecounter(15))) # (!timecounter(17))) # (!timecounter(18))

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
	dataa => timecounter(18),
	datab => timecounter(17),
	datac => timecounter(15),
	datad => timecounter(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~2_combout\);

-- Location: LC_X11_Y9_N6
\Equal1~3\ : maxv_lcell
-- Equation(s):
-- \Equal1~3_combout\ = (((timecounter(14)) # (!timecounter(11))) # (!timecounter(12))) # (!timecounter(13))

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
	datad => timecounter(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~3_combout\);

-- Location: LC_X11_Y9_N8
\Equal1~1\ : maxv_lcell
-- Equation(s):
-- \Equal1~1_combout\ = (((timecounter(22)) # (!timecounter(21))) # (!timecounter(20))) # (!timecounter(19))

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
	dataa => timecounter(19),
	datab => timecounter(20),
	datac => timecounter(21),
	datad => timecounter(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~1_combout\);

-- Location: LC_X11_Y9_N0
\Equal1~4\ : maxv_lcell
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~0_combout\) # ((\Equal1~2_combout\) # ((\Equal1~3_combout\) # (\Equal1~1_combout\)))

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
	dataa => \Equal1~0_combout\,
	datab => \Equal1~2_combout\,
	datac => \Equal1~3_combout\,
	datad => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~4_combout\);

-- Location: LC_X11_Y9_N1
\Equal1~8\ : maxv_lcell
-- Equation(s):
-- \Equal1~8_combout\ = (\Equal1~5_combout\) # ((\Equal1~6_combout\) # ((\Equal1~7_combout\) # (\Equal1~4_combout\)))

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
	dataa => \Equal1~5_combout\,
	datab => \Equal1~6_combout\,
	datac => \Equal1~7_combout\,
	datad => \Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~8_combout\);

-- Location: LC_X9_Y10_N1
fsm_state : maxv_lcell
-- Equation(s):
-- \fsm_state~regout\ = DFFEAS(((!\resetn~combout\ & ((\fsm_state~regout\) # (!\Equal1~8_combout\)))), GLOBAL(\clk_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	datab => \fsm_state~regout\,
	datac => \resetn~combout\,
	datad => \Equal1~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \fsm_state~regout\);

-- Location: LC_X10_Y10_N3
\index_register[3]~1\ : maxv_lcell
-- Equation(s):
-- \index_register[3]~1_combout\ = (((!\resetn~combout\ & !\Equal1~8_combout\)))

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
	datac => \resetn~combout\,
	datad => \Equal1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \index_register[3]~1_combout\);

-- Location: LC_X10_Y10_N7
\index_register[0]\ : maxv_lcell
-- Equation(s):
-- index_register(0) = DFFEAS(((!index_register(0) & (\fsm_state~regout\))), GLOBAL(\clk_50~combout\), VCC, , \index_register[3]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	datab => index_register(0),
	datac => \fsm_state~regout\,
	aclr => GND,
	ena => \index_register[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => index_register(0));

-- Location: LC_X9_Y10_N4
\Add0~0\ : maxv_lcell
-- Equation(s):
-- \Add0~0_combout\ = ((index_register(1) & ((index_register(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => index_register(1),
	datad => index_register(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\);

-- Location: LC_X9_Y10_N7
\index_register[1]~0\ : maxv_lcell
-- Equation(s):
-- \index_register[1]~0_combout\ = (\fsm_state~regout\ & (((!index_register(3)) # (!index_register(2))) # (!\Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4ccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \fsm_state~regout\,
	datac => index_register(2),
	datad => index_register(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \index_register[1]~0_combout\);

-- Location: LC_X10_Y10_N5
\index_register[1]\ : maxv_lcell
-- Equation(s):
-- index_register(1) = DFFEAS(((\index_register[1]~0_combout\ & (index_register(1) $ (index_register(0))))), GLOBAL(\clk_50~combout\), VCC, , \index_register[3]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => index_register(1),
	datac => index_register(0),
	datad => \index_register[1]~0_combout\,
	aclr => GND,
	ena => \index_register[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => index_register(1));

-- Location: LC_X10_Y10_N9
\index_register[2]\ : maxv_lcell
-- Equation(s):
-- index_register(2) = DFFEAS((\fsm_state~regout\ & (index_register(2) $ (((index_register(1) & index_register(0)))))), GLOBAL(\clk_50~combout\), VCC, , \index_register[3]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7080",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => index_register(1),
	datab => index_register(0),
	datac => \fsm_state~regout\,
	datad => index_register(2),
	aclr => GND,
	ena => \index_register[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => index_register(2));

-- Location: LC_X10_Y10_N0
\index_register[3]\ : maxv_lcell
-- Equation(s):
-- index_register(3) = DFFEAS((\fsm_state~regout\ & (index_register(3) $ (((index_register(2) & \Add0~0_combout\))))), GLOBAL(\clk_50~combout\), VCC, , \index_register[3]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "28a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \fsm_state~regout\,
	datab => index_register(2),
	datac => index_register(3),
	datad => \Add0~0_combout\,
	aclr => GND,
	ena => \index_register[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => index_register(3));

-- Location: LC_X9_Y7_N5
\tone_generator|Add0~40\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add0~40_combout\ = (\tone_generator|count_sa1\(5) $ ((\tone_generator|Add0~57\)))
-- \tone_generator|Add0~42\ = CARRY(((!\tone_generator|Add0~57\) # (!\tone_generator|count_sa1\(5))))
-- \tone_generator|Add0~42COUT1_105\ = CARRY(((!\tone_generator|Add0~57\) # (!\tone_generator|count_sa1\(5))))

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
	datab => \tone_generator|count_sa1\(5),
	cin => \tone_generator|Add0~57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add0~40_combout\,
	cout0 => \tone_generator|Add0~42\,
	cout1 => \tone_generator|Add0~42COUT1_105\);

-- Location: LC_X9_Y7_N6
\tone_generator|Add0~45\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add0~45_combout\ = (\tone_generator|count_sa1\(6) $ ((!(!\tone_generator|Add0~57\ & \tone_generator|Add0~42\) # (\tone_generator|Add0~57\ & \tone_generator|Add0~42COUT1_105\))))
-- \tone_generator|Add0~47\ = CARRY(((\tone_generator|count_sa1\(6) & !\tone_generator|Add0~42\)))
-- \tone_generator|Add0~47COUT1_106\ = CARRY(((\tone_generator|count_sa1\(6) & !\tone_generator|Add0~42COUT1_105\)))

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
	datab => \tone_generator|count_sa1\(6),
	cin => \tone_generator|Add0~57\,
	cin0 => \tone_generator|Add0~42\,
	cin1 => \tone_generator|Add0~42COUT1_105\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add0~45_combout\,
	cout0 => \tone_generator|Add0~47\,
	cout1 => \tone_generator|Add0~47COUT1_106\);

-- Location: LC_X10_Y10_N6
\Mux12~0\ : maxv_lcell
-- Equation(s):
-- \Mux12~0_combout\ = (index_register(3) & (((index_register(2))))) # (!index_register(3) & (!index_register(1) & (index_register(0) & !index_register(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => index_register(1),
	datab => index_register(0),
	datac => index_register(3),
	datad => index_register(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~0_combout\);

-- Location: LC_X9_Y8_N2
\tone_generator|LED[0]\ : maxv_lcell
-- Equation(s):
-- \note_code[1]~0\ = (((\fsm_state~regout\ & \Mux12~0_combout\)))
-- \tone_generator|LED\(0) = DFFEAS(\note_code[1]~0\, GLOBAL(\clk_50~combout\), VCC, , , , , , )

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
	datac => \fsm_state~regout\,
	datad => \Mux12~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \note_code[1]~0\,
	regout => \tone_generator|LED\(0));

-- Location: LC_X10_Y6_N2
\tone_generator|count_sa1[6]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_sa1\(6) = DFFEAS(((\tone_generator|Add0~45_combout\ & ((!\tone_generator|Equal0~0\) # (!\tone_generator|Equal0~5_combout\)))), GLOBAL(\clk_50~combout\), VCC, , \note_code[1]~0\, , , , )

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
	datab => \tone_generator|Equal0~5_combout\,
	datac => \tone_generator|Equal0~0\,
	datad => \tone_generator|Add0~45_combout\,
	aclr => GND,
	ena => \note_code[1]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_sa1\(6));

-- Location: LC_X9_Y7_N0
\tone_generator|Add0~25\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add0~25_combout\ = ((!\tone_generator|count_sa1\(0)))
-- \tone_generator|Add0~27\ = CARRY(((\tone_generator|count_sa1\(0))))
-- \tone_generator|Add0~27COUT1_101\ = CARRY(((\tone_generator|count_sa1\(0))))

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
	datab => \tone_generator|count_sa1\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add0~25_combout\,
	cout0 => \tone_generator|Add0~27\,
	cout1 => \tone_generator|Add0~27COUT1_101\);

-- Location: LC_X9_Y6_N2
\tone_generator|count_sa1[0]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal0~1\ = (\tone_generator|count_sa1\(3) & (!\tone_generator|count_sa1\(2) & (!B1_count_sa1[0] & !\tone_generator|count_sa1\(1))))
-- \tone_generator|count_sa1\(0) = DFFEAS(\tone_generator|Equal0~1\, GLOBAL(\clk_50~combout\), VCC, , \note_code[1]~0\, \tone_generator|Add0~25_combout\, , , VCC)

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
	dataa => \tone_generator|count_sa1\(3),
	datab => \tone_generator|count_sa1\(2),
	datac => \tone_generator|Add0~25_combout\,
	datad => \tone_generator|count_sa1\(1),
	aclr => GND,
	sload => VCC,
	ena => \note_code[1]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal0~1\,
	regout => \tone_generator|count_sa1\(0));

-- Location: LC_X9_Y7_N1
\tone_generator|Add0~30\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add0~30_combout\ = \tone_generator|count_sa1\(1) $ ((((\tone_generator|Add0~27\))))
-- \tone_generator|Add0~32\ = CARRY(((!\tone_generator|Add0~27\)) # (!\tone_generator|count_sa1\(1)))
-- \tone_generator|Add0~32COUT1_102\ = CARRY(((!\tone_generator|Add0~27COUT1_101\)) # (!\tone_generator|count_sa1\(1)))

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
	dataa => \tone_generator|count_sa1\(1),
	cin0 => \tone_generator|Add0~27\,
	cin1 => \tone_generator|Add0~27COUT1_101\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add0~30_combout\,
	cout0 => \tone_generator|Add0~32\,
	cout1 => \tone_generator|Add0~32COUT1_102\);

-- Location: LC_X8_Y7_N5
\tone_generator|count_sa1[1]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_sa1\(1) = DFFEAS((((\tone_generator|Add0~30_combout\))), GLOBAL(\clk_50~combout\), VCC, , \note_code[1]~0\, , , , )

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
	datad => \tone_generator|Add0~30_combout\,
	aclr => GND,
	ena => \note_code[1]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_sa1\(1));

-- Location: LC_X9_Y7_N2
\tone_generator|Add0~35\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add0~35_combout\ = (\tone_generator|count_sa1\(2) $ ((!\tone_generator|Add0~32\)))
-- \tone_generator|Add0~37\ = CARRY(((\tone_generator|count_sa1\(2) & !\tone_generator|Add0~32\)))
-- \tone_generator|Add0~37COUT1_103\ = CARRY(((\tone_generator|count_sa1\(2) & !\tone_generator|Add0~32COUT1_102\)))

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
	datab => \tone_generator|count_sa1\(2),
	cin0 => \tone_generator|Add0~32\,
	cin1 => \tone_generator|Add0~32COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add0~35_combout\,
	cout0 => \tone_generator|Add0~37\,
	cout1 => \tone_generator|Add0~37COUT1_103\);

-- Location: LC_X8_Y7_N7
\tone_generator|count_sa1[2]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_sa1\(2) = DFFEAS(GND, GLOBAL(\clk_50~combout\), VCC, , \note_code[1]~0\, \tone_generator|Add0~35_combout\, , , VCC)

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
	datac => \tone_generator|Add0~35_combout\,
	aclr => GND,
	sload => VCC,
	ena => \note_code[1]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_sa1\(2));

-- Location: LC_X9_Y7_N3
\tone_generator|Add0~20\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add0~20_combout\ = (\tone_generator|count_sa1\(3) $ ((\tone_generator|Add0~37\)))
-- \tone_generator|Add0~22\ = CARRY(((!\tone_generator|Add0~37\) # (!\tone_generator|count_sa1\(3))))
-- \tone_generator|Add0~22COUT1_104\ = CARRY(((!\tone_generator|Add0~37COUT1_103\) # (!\tone_generator|count_sa1\(3))))

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
	datab => \tone_generator|count_sa1\(3),
	cin0 => \tone_generator|Add0~37\,
	cin1 => \tone_generator|Add0~37COUT1_103\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add0~20_combout\,
	cout0 => \tone_generator|Add0~22\,
	cout1 => \tone_generator|Add0~22COUT1_104\);

-- Location: LC_X9_Y6_N5
\tone_generator|count_sa1[3]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_sa1\(3) = DFFEAS(((\tone_generator|Add0~20_combout\ & ((!\tone_generator|Equal0~5_combout\) # (!\tone_generator|Equal0~0\)))), GLOBAL(\clk_50~combout\), VCC, , \note_code[1]~0\, , , , )

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
	datab => \tone_generator|Equal0~0\,
	datac => \tone_generator|Add0~20_combout\,
	datad => \tone_generator|Equal0~5_combout\,
	aclr => GND,
	ena => \note_code[1]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_sa1\(3));

-- Location: LC_X9_Y7_N4
\tone_generator|Add0~55\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add0~55_combout\ = (\tone_generator|count_sa1\(4) $ ((!\tone_generator|Add0~22\)))
-- \tone_generator|Add0~57\ = CARRY(((\tone_generator|count_sa1\(4) & !\tone_generator|Add0~22COUT1_104\)))

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
	datab => \tone_generator|count_sa1\(4),
	cin0 => \tone_generator|Add0~22\,
	cin1 => \tone_generator|Add0~22COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add0~55_combout\,
	cout => \tone_generator|Add0~57\);

-- Location: LC_X9_Y7_N7
\tone_generator|Add0~50\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add0~50_combout\ = \tone_generator|count_sa1\(7) $ (((((!\tone_generator|Add0~57\ & \tone_generator|Add0~47\) # (\tone_generator|Add0~57\ & \tone_generator|Add0~47COUT1_106\)))))
-- \tone_generator|Add0~52\ = CARRY(((!\tone_generator|Add0~47\)) # (!\tone_generator|count_sa1\(7)))
-- \tone_generator|Add0~52COUT1_107\ = CARRY(((!\tone_generator|Add0~47COUT1_106\)) # (!\tone_generator|count_sa1\(7)))

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
	dataa => \tone_generator|count_sa1\(7),
	cin => \tone_generator|Add0~57\,
	cin0 => \tone_generator|Add0~47\,
	cin1 => \tone_generator|Add0~47COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add0~50_combout\,
	cout0 => \tone_generator|Add0~52\,
	cout1 => \tone_generator|Add0~52COUT1_107\);

-- Location: LC_X9_Y6_N8
\tone_generator|count_sa1[7]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_sa1\(7) = DFFEAS(((\tone_generator|Add0~50_combout\ & ((!\tone_generator|Equal0~0\) # (!\tone_generator|Equal0~5_combout\)))), GLOBAL(\clk_50~combout\), VCC, , \note_code[1]~0\, , , , )

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
	dataa => \tone_generator|Equal0~5_combout\,
	datab => \tone_generator|Equal0~0\,
	datad => \tone_generator|Add0~50_combout\,
	aclr => GND,
	ena => \note_code[1]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_sa1\(7));

-- Location: LC_X9_Y6_N6
\tone_generator|count_sa1[4]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal0~2\ = (\tone_generator|count_sa1\(5) & (\tone_generator|count_sa1\(6) & (!B1_count_sa1[4] & \tone_generator|count_sa1\(7))))
-- \tone_generator|count_sa1\(4) = DFFEAS(\tone_generator|Equal0~2\, GLOBAL(\clk_50~combout\), VCC, , \note_code[1]~0\, \tone_generator|Add0~55_combout\, , , VCC)

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
	dataa => \tone_generator|count_sa1\(5),
	datab => \tone_generator|count_sa1\(6),
	datac => \tone_generator|Add0~55_combout\,
	datad => \tone_generator|count_sa1\(7),
	aclr => GND,
	sload => VCC,
	ena => \note_code[1]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal0~2\,
	regout => \tone_generator|count_sa1\(4));

-- Location: LC_X9_Y6_N7
\tone_generator|count_sa1[5]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_sa1\(5) = DFFEAS(((\tone_generator|Add0~40_combout\ & ((!\tone_generator|Equal0~0\) # (!\tone_generator|Equal0~5_combout\)))), GLOBAL(\clk_50~combout\), VCC, , \note_code[1]~0\, , , , )

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
	dataa => \tone_generator|Equal0~5_combout\,
	datab => \tone_generator|Equal0~0\,
	datad => \tone_generator|Add0~40_combout\,
	aclr => GND,
	ena => \note_code[1]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_sa1\(5));

-- Location: LC_X10_Y7_N0
\tone_generator|Add0~65\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add0~65_combout\ = (\tone_generator|count_sa1\(10) $ ((!\tone_generator|Add0~62\)))
-- \tone_generator|Add0~67\ = CARRY(((\tone_generator|count_sa1\(10) & !\tone_generator|Add0~62\)))
-- \tone_generator|Add0~67COUT1_109\ = CARRY(((\tone_generator|count_sa1\(10) & !\tone_generator|Add0~62\)))

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
	datab => \tone_generator|count_sa1\(10),
	cin => \tone_generator|Add0~62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add0~65_combout\,
	cout0 => \tone_generator|Add0~67\,
	cout1 => \tone_generator|Add0~67COUT1_109\);

-- Location: LC_X10_Y6_N8
\tone_generator|count_sa1[10]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_sa1\(10) = DFFEAS(((\tone_generator|Add0~65_combout\ & ((!\tone_generator|Equal0~5_combout\) # (!\tone_generator|Equal0~0\)))), GLOBAL(\clk_50~combout\), VCC, , \note_code[1]~0\, , , , )

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
	dataa => \tone_generator|Equal0~0\,
	datac => \tone_generator|Add0~65_combout\,
	datad => \tone_generator|Equal0~5_combout\,
	aclr => GND,
	ena => \note_code[1]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_sa1\(10));

-- Location: LC_X10_Y7_N1
\tone_generator|Add0~75\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add0~75_combout\ = \tone_generator|count_sa1\(11) $ (((((!\tone_generator|Add0~62\ & \tone_generator|Add0~67\) # (\tone_generator|Add0~62\ & \tone_generator|Add0~67COUT1_109\)))))
-- \tone_generator|Add0~77\ = CARRY(((!\tone_generator|Add0~67\)) # (!\tone_generator|count_sa1\(11)))
-- \tone_generator|Add0~77COUT1_110\ = CARRY(((!\tone_generator|Add0~67COUT1_109\)) # (!\tone_generator|count_sa1\(11)))

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
	dataa => \tone_generator|count_sa1\(11),
	cin => \tone_generator|Add0~62\,
	cin0 => \tone_generator|Add0~67\,
	cin1 => \tone_generator|Add0~67COUT1_109\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add0~75_combout\,
	cout0 => \tone_generator|Add0~77\,
	cout1 => \tone_generator|Add0~77COUT1_110\);

-- Location: LC_X10_Y6_N6
\tone_generator|count_sa1[11]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_sa1\(11) = DFFEAS((((\tone_generator|Add0~75_combout\))), GLOBAL(\clk_50~combout\), VCC, , \note_code[1]~0\, , , , )

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
	datad => \tone_generator|Add0~75_combout\,
	aclr => GND,
	ena => \note_code[1]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_sa1\(11));

-- Location: LC_X10_Y7_N2
\tone_generator|Add0~80\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add0~80_combout\ = (\tone_generator|count_sa1\(12) $ ((!(!\tone_generator|Add0~62\ & \tone_generator|Add0~77\) # (\tone_generator|Add0~62\ & \tone_generator|Add0~77COUT1_110\))))
-- \tone_generator|Add0~82\ = CARRY(((\tone_generator|count_sa1\(12) & !\tone_generator|Add0~77\)))
-- \tone_generator|Add0~82COUT1_111\ = CARRY(((\tone_generator|count_sa1\(12) & !\tone_generator|Add0~77COUT1_110\)))

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
	datab => \tone_generator|count_sa1\(12),
	cin => \tone_generator|Add0~62\,
	cin0 => \tone_generator|Add0~77\,
	cin1 => \tone_generator|Add0~77COUT1_110\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add0~80_combout\,
	cout0 => \tone_generator|Add0~82\,
	cout1 => \tone_generator|Add0~82COUT1_111\);

-- Location: LC_X9_Y6_N0
\tone_generator|count_sa1[12]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_sa1\(12) = DFFEAS(((\tone_generator|Add0~80_combout\ & ((!\tone_generator|Equal0~0\) # (!\tone_generator|Equal0~5_combout\)))), GLOBAL(\clk_50~combout\), VCC, , \note_code[1]~0\, , , , )

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
	dataa => \tone_generator|Equal0~5_combout\,
	datab => \tone_generator|Equal0~0\,
	datad => \tone_generator|Add0~80_combout\,
	aclr => GND,
	ena => \note_code[1]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_sa1\(12));

-- Location: LC_X10_Y7_N5
\tone_generator|Add0~85\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add0~85_combout\ = (\tone_generator|count_sa1\(15) $ ((\tone_generator|Add0~97\)))
-- \tone_generator|Add0~87\ = CARRY(((!\tone_generator|Add0~97\) # (!\tone_generator|count_sa1\(15))))
-- \tone_generator|Add0~87COUT1_113\ = CARRY(((!\tone_generator|Add0~97\) # (!\tone_generator|count_sa1\(15))))

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
	datab => \tone_generator|count_sa1\(15),
	cin => \tone_generator|Add0~97\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add0~85_combout\,
	cout0 => \tone_generator|Add0~87\,
	cout1 => \tone_generator|Add0~87COUT1_113\);

-- Location: LC_X9_Y6_N9
\tone_generator|count_sa1[15]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_sa1\(15) = DFFEAS(((\tone_generator|Add0~85_combout\ & ((!\tone_generator|Equal0~0\) # (!\tone_generator|Equal0~5_combout\)))), GLOBAL(\clk_50~combout\), VCC, , \note_code[1]~0\, , , , )

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
	dataa => \tone_generator|Equal0~5_combout\,
	datab => \tone_generator|Equal0~0\,
	datad => \tone_generator|Add0~85_combout\,
	aclr => GND,
	ena => \note_code[1]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_sa1\(15));

-- Location: LC_X9_Y6_N1
\tone_generator|count_sa1[13]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal0~4\ = (!\tone_generator|count_sa1\(14) & (\tone_generator|count_sa1\(12) & (!B1_count_sa1[13] & \tone_generator|count_sa1\(15))))
-- \tone_generator|count_sa1\(13) = DFFEAS(\tone_generator|Equal0~4\, GLOBAL(\clk_50~combout\), VCC, , \note_code[1]~0\, \tone_generator|Add0~90_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \tone_generator|count_sa1\(14),
	datab => \tone_generator|count_sa1\(12),
	datac => \tone_generator|Add0~90_combout\,
	datad => \tone_generator|count_sa1\(15),
	aclr => GND,
	sload => VCC,
	ena => \note_code[1]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal0~4\,
	regout => \tone_generator|count_sa1\(13));

-- Location: LC_X10_Y7_N3
\tone_generator|Add0~90\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add0~90_combout\ = (\tone_generator|count_sa1\(13) $ (((!\tone_generator|Add0~62\ & \tone_generator|Add0~82\) # (\tone_generator|Add0~62\ & \tone_generator|Add0~82COUT1_111\))))
-- \tone_generator|Add0~92\ = CARRY(((!\tone_generator|Add0~82\) # (!\tone_generator|count_sa1\(13))))
-- \tone_generator|Add0~92COUT1_112\ = CARRY(((!\tone_generator|Add0~82COUT1_111\) # (!\tone_generator|count_sa1\(13))))

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
	datab => \tone_generator|count_sa1\(13),
	cin => \tone_generator|Add0~62\,
	cin0 => \tone_generator|Add0~82\,
	cin1 => \tone_generator|Add0~82COUT1_111\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add0~90_combout\,
	cout0 => \tone_generator|Add0~92\,
	cout1 => \tone_generator|Add0~92COUT1_112\);

-- Location: LC_X10_Y6_N9
\tone_generator|count_sa1[8]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal0~3\ = (!\tone_generator|count_sa1\(11) & (\tone_generator|count_sa1\(9) & (!B1_count_sa1[8] & \tone_generator|count_sa1\(10))))
-- \tone_generator|count_sa1\(8) = DFFEAS(\tone_generator|Equal0~3\, GLOBAL(\clk_50~combout\), VCC, , \note_code[1]~0\, \tone_generator|Add0~70_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \tone_generator|count_sa1\(11),
	datab => \tone_generator|count_sa1\(9),
	datac => \tone_generator|Add0~70_combout\,
	datad => \tone_generator|count_sa1\(10),
	aclr => GND,
	sload => VCC,
	ena => \note_code[1]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal0~3\,
	regout => \tone_generator|count_sa1\(8));

-- Location: LC_X9_Y7_N8
\tone_generator|Add0~70\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add0~70_combout\ = \tone_generator|count_sa1\(8) $ ((((!(!\tone_generator|Add0~57\ & \tone_generator|Add0~52\) # (\tone_generator|Add0~57\ & \tone_generator|Add0~52COUT1_107\)))))
-- \tone_generator|Add0~72\ = CARRY((\tone_generator|count_sa1\(8) & ((!\tone_generator|Add0~52\))))
-- \tone_generator|Add0~72COUT1_108\ = CARRY((\tone_generator|count_sa1\(8) & ((!\tone_generator|Add0~52COUT1_107\))))

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
	dataa => \tone_generator|count_sa1\(8),
	cin => \tone_generator|Add0~57\,
	cin0 => \tone_generator|Add0~52\,
	cin1 => \tone_generator|Add0~52COUT1_107\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add0~70_combout\,
	cout0 => \tone_generator|Add0~72\,
	cout1 => \tone_generator|Add0~72COUT1_108\);

-- Location: LC_X9_Y6_N3
\tone_generator|Equal0~5\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal0~5_combout\ = (\tone_generator|Equal0~2\ & (\tone_generator|Equal0~4\ & (\tone_generator|Equal0~3\ & \tone_generator|Equal0~1\)))

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
	dataa => \tone_generator|Equal0~2\,
	datab => \tone_generator|Equal0~4\,
	datac => \tone_generator|Equal0~3\,
	datad => \tone_generator|Equal0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal0~5_combout\);

-- Location: LC_X9_Y7_N9
\tone_generator|Add0~60\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add0~60_combout\ = \tone_generator|count_sa1\(9) $ (((((!\tone_generator|Add0~57\ & \tone_generator|Add0~72\) # (\tone_generator|Add0~57\ & \tone_generator|Add0~72COUT1_108\)))))
-- \tone_generator|Add0~62\ = CARRY(((!\tone_generator|Add0~72COUT1_108\)) # (!\tone_generator|count_sa1\(9)))

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
	dataa => \tone_generator|count_sa1\(9),
	cin => \tone_generator|Add0~57\,
	cin0 => \tone_generator|Add0~72\,
	cin1 => \tone_generator|Add0~72COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add0~60_combout\,
	cout => \tone_generator|Add0~62\);

-- Location: LC_X10_Y6_N1
\tone_generator|count_sa1[9]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_sa1\(9) = DFFEAS(((\tone_generator|Add0~60_combout\ & ((!\tone_generator|Equal0~0\) # (!\tone_generator|Equal0~5_combout\)))), GLOBAL(\clk_50~combout\), VCC, , \note_code[1]~0\, , , , )

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
	datab => \tone_generator|Equal0~5_combout\,
	datac => \tone_generator|Equal0~0\,
	datad => \tone_generator|Add0~60_combout\,
	aclr => GND,
	ena => \note_code[1]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_sa1\(9));

-- Location: LC_X10_Y7_N4
\tone_generator|Add0~95\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add0~95_combout\ = \tone_generator|count_sa1\(14) $ ((((!(!\tone_generator|Add0~62\ & \tone_generator|Add0~92\) # (\tone_generator|Add0~62\ & \tone_generator|Add0~92COUT1_112\)))))
-- \tone_generator|Add0~97\ = CARRY((\tone_generator|count_sa1\(14) & ((!\tone_generator|Add0~92COUT1_112\))))

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
	dataa => \tone_generator|count_sa1\(14),
	cin => \tone_generator|Add0~62\,
	cin0 => \tone_generator|Add0~92\,
	cin1 => \tone_generator|Add0~92COUT1_112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add0~95_combout\,
	cout => \tone_generator|Add0~97\);

-- Location: LC_X10_Y6_N0
\tone_generator|count_sa1[14]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_sa1\(14) = DFFEAS(GND, GLOBAL(\clk_50~combout\), VCC, , \note_code[1]~0\, \tone_generator|Add0~95_combout\, , , VCC)

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
	datac => \tone_generator|Add0~95_combout\,
	aclr => GND,
	sload => VCC,
	ena => \note_code[1]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_sa1\(14));

-- Location: LC_X10_Y7_N6
\tone_generator|Add0~0\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add0~0_combout\ = (\tone_generator|count_sa1\(16) $ ((!(!\tone_generator|Add0~97\ & \tone_generator|Add0~87\) # (\tone_generator|Add0~97\ & \tone_generator|Add0~87COUT1_113\))))
-- \tone_generator|Add0~2\ = CARRY(((\tone_generator|count_sa1\(16) & !\tone_generator|Add0~87\)))
-- \tone_generator|Add0~2COUT1_114\ = CARRY(((\tone_generator|count_sa1\(16) & !\tone_generator|Add0~87COUT1_113\)))

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
	datab => \tone_generator|count_sa1\(16),
	cin => \tone_generator|Add0~97\,
	cin0 => \tone_generator|Add0~87\,
	cin1 => \tone_generator|Add0~87COUT1_113\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add0~0_combout\,
	cout0 => \tone_generator|Add0~2\,
	cout1 => \tone_generator|Add0~2COUT1_114\);

-- Location: LC_X10_Y6_N7
\tone_generator|count_sa1[16]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_sa1\(16) = DFFEAS(((\tone_generator|Add0~0_combout\ & ((!\tone_generator|Equal0~0\) # (!\tone_generator|Equal0~5_combout\)))), GLOBAL(\clk_50~combout\), VCC, , \note_code[1]~0\, , , , )

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
	datab => \tone_generator|Equal0~5_combout\,
	datac => \tone_generator|Equal0~0\,
	datad => \tone_generator|Add0~0_combout\,
	aclr => GND,
	ena => \note_code[1]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_sa1\(16));

-- Location: LC_X10_Y7_N7
\tone_generator|Add0~5\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add0~5_combout\ = (\tone_generator|count_sa1\(17) $ (((!\tone_generator|Add0~97\ & \tone_generator|Add0~2\) # (\tone_generator|Add0~97\ & \tone_generator|Add0~2COUT1_114\))))
-- \tone_generator|Add0~7\ = CARRY(((!\tone_generator|Add0~2\) # (!\tone_generator|count_sa1\(17))))
-- \tone_generator|Add0~7COUT1_115\ = CARRY(((!\tone_generator|Add0~2COUT1_114\) # (!\tone_generator|count_sa1\(17))))

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
	datab => \tone_generator|count_sa1\(17),
	cin => \tone_generator|Add0~97\,
	cin0 => \tone_generator|Add0~2\,
	cin1 => \tone_generator|Add0~2COUT1_114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add0~5_combout\,
	cout0 => \tone_generator|Add0~7\,
	cout1 => \tone_generator|Add0~7COUT1_115\);

-- Location: LC_X10_Y6_N5
\tone_generator|count_sa1[17]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal0~0\ = (!\tone_generator|count_sa1\(19) & (\tone_generator|count_sa1\(16) & (!B1_count_sa1[17] & !\tone_generator|count_sa1\(18))))
-- \tone_generator|count_sa1\(17) = DFFEAS(\tone_generator|Equal0~0\, GLOBAL(\clk_50~combout\), VCC, , \note_code[1]~0\, \tone_generator|Add0~5_combout\, , , VCC)

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
	dataa => \tone_generator|count_sa1\(19),
	datab => \tone_generator|count_sa1\(16),
	datac => \tone_generator|Add0~5_combout\,
	datad => \tone_generator|count_sa1\(18),
	aclr => GND,
	sload => VCC,
	ena => \note_code[1]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal0~0\,
	regout => \tone_generator|count_sa1\(17));

-- Location: LC_X10_Y7_N8
\tone_generator|Add0~10\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add0~10_combout\ = \tone_generator|count_sa1\(18) $ ((((!(!\tone_generator|Add0~97\ & \tone_generator|Add0~7\) # (\tone_generator|Add0~97\ & \tone_generator|Add0~7COUT1_115\)))))
-- \tone_generator|Add0~12\ = CARRY((\tone_generator|count_sa1\(18) & ((!\tone_generator|Add0~7\))))
-- \tone_generator|Add0~12COUT1_116\ = CARRY((\tone_generator|count_sa1\(18) & ((!\tone_generator|Add0~7COUT1_115\))))

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
	dataa => \tone_generator|count_sa1\(18),
	cin => \tone_generator|Add0~97\,
	cin0 => \tone_generator|Add0~7\,
	cin1 => \tone_generator|Add0~7COUT1_115\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add0~10_combout\,
	cout0 => \tone_generator|Add0~12\,
	cout1 => \tone_generator|Add0~12COUT1_116\);

-- Location: LC_X10_Y6_N3
\tone_generator|count_sa1[18]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_sa1\(18) = DFFEAS(GND, GLOBAL(\clk_50~combout\), VCC, , \note_code[1]~0\, \tone_generator|Add0~10_combout\, , , VCC)

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
	datac => \tone_generator|Add0~10_combout\,
	aclr => GND,
	sload => VCC,
	ena => \note_code[1]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_sa1\(18));

-- Location: LC_X10_Y7_N9
\tone_generator|Add0~15\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add0~15_combout\ = (((!\tone_generator|Add0~97\ & \tone_generator|Add0~12\) # (\tone_generator|Add0~97\ & \tone_generator|Add0~12COUT1_116\) $ (\tone_generator|count_sa1\(19))))

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
	datad => \tone_generator|count_sa1\(19),
	cin => \tone_generator|Add0~97\,
	cin0 => \tone_generator|Add0~12\,
	cin1 => \tone_generator|Add0~12COUT1_116\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add0~15_combout\);

-- Location: LC_X10_Y6_N4
\tone_generator|count_sa1[19]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_sa1\(19) = DFFEAS(GND, GLOBAL(\clk_50~combout\), VCC, , \note_code[1]~0\, \tone_generator|Add0~15_combout\, , , VCC)

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
	datac => \tone_generator|Add0~15_combout\,
	aclr => GND,
	sload => VCC,
	ena => \note_code[1]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_sa1\(19));

-- Location: LC_X9_Y6_N4
\tone_generator|sa1\ : maxv_lcell
-- Equation(s):
-- \tone_generator|sa1~0\ = (B1_sa1 $ (((\tone_generator|Equal0~0\ & \tone_generator|Equal0~5_combout\))))

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
	datab => \tone_generator|Equal0~0\,
	datad => \tone_generator|Equal0~5_combout\,
	aclr => GND,
	ena => \note_code[1]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|sa1~0\,
	regout => \tone_generator|sa1~regout\);

-- Location: LC_X5_Y4_N0
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

-- Location: LC_X10_Y10_N4
\Mux11~0\ : maxv_lcell
-- Equation(s):
-- \Mux11~0_combout\ = ((!index_register(0) & (index_register(1) & !index_register(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => index_register(0),
	datac => index_register(1),
	datad => index_register(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~0_combout\);

-- Location: LC_X9_Y10_N5
\tone_generator|LED[1]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|LED~26\ = ((\fsm_state~regout\ & (!\Mux12~0_combout\ & \Mux11~0_combout\)))
-- \tone_generator|LED\(1) = DFFEAS(\tone_generator|LED~26\, GLOBAL(\clk_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	datab => \fsm_state~regout\,
	datac => \Mux12~0_combout\,
	datad => \Mux11~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|LED~26\,
	regout => \tone_generator|LED\(1));

-- Location: LC_X7_Y4_N3
\tone_generator|count_re[10]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_re\(10) = DFFEAS(GND, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|LED~26\, \tone_generator|Add1~75_combout\, , , VCC)

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
	datac => \tone_generator|Add1~75_combout\,
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|LED~26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_re\(10));

-- Location: LC_X4_Y4_N0
\tone_generator|Add1~25\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add1~25_combout\ = ((!\tone_generator|count_re\(0)))
-- \tone_generator|Add1~27\ = CARRY(((\tone_generator|count_re\(0))))
-- \tone_generator|Add1~27COUT1_101\ = CARRY(((\tone_generator|count_re\(0))))

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
	datab => \tone_generator|count_re\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add1~25_combout\,
	cout0 => \tone_generator|Add1~27\,
	cout1 => \tone_generator|Add1~27COUT1_101\);

-- Location: LC_X7_Y4_N4
\tone_generator|count_re[0]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal1~1\ = (\tone_generator|count_re\(1) & (!\tone_generator|count_re\(3) & (!B1_count_re[0] & !\tone_generator|count_re\(2))))
-- \tone_generator|count_re\(0) = DFFEAS(\tone_generator|Equal1~1\, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|LED~26\, \tone_generator|Add1~25_combout\, , , VCC)

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
	ena => \tone_generator|LED~26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal1~1\,
	regout => \tone_generator|count_re\(0));

-- Location: LC_X4_Y4_N1
\tone_generator|Add1~20\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add1~20_combout\ = (\tone_generator|count_re\(1) $ ((\tone_generator|Add1~27\)))
-- \tone_generator|Add1~22\ = CARRY(((!\tone_generator|Add1~27\) # (!\tone_generator|count_re\(1))))
-- \tone_generator|Add1~22COUT1_102\ = CARRY(((!\tone_generator|Add1~27COUT1_101\) # (!\tone_generator|count_re\(1))))

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
	datab => \tone_generator|count_re\(1),
	cin0 => \tone_generator|Add1~27\,
	cin1 => \tone_generator|Add1~27COUT1_101\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add1~20_combout\,
	cout0 => \tone_generator|Add1~22\,
	cout1 => \tone_generator|Add1~22COUT1_102\);

-- Location: LC_X7_Y4_N6
\tone_generator|count_re[1]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_re\(1) = DFFEAS(((\tone_generator|Add1~20_combout\ & ((!\tone_generator|Equal1~0\) # (!\tone_generator|Equal1~5_combout\)))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|LED~26\, , , , )

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
	datab => \tone_generator|Equal1~5_combout\,
	datac => \tone_generator|Add1~20_combout\,
	datad => \tone_generator|Equal1~0\,
	aclr => GND,
	ena => \tone_generator|LED~26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_re\(1));

-- Location: LC_X4_Y4_N2
\tone_generator|Add1~30\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add1~30_combout\ = (\tone_generator|count_re\(2) $ ((!\tone_generator|Add1~22\)))
-- \tone_generator|Add1~32\ = CARRY(((\tone_generator|count_re\(2) & !\tone_generator|Add1~22\)))
-- \tone_generator|Add1~32COUT1_103\ = CARRY(((\tone_generator|count_re\(2) & !\tone_generator|Add1~22COUT1_102\)))

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
	datab => \tone_generator|count_re\(2),
	cin0 => \tone_generator|Add1~22\,
	cin1 => \tone_generator|Add1~22COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add1~30_combout\,
	cout0 => \tone_generator|Add1~32\,
	cout1 => \tone_generator|Add1~32COUT1_103\);

-- Location: LC_X7_Y4_N2
\tone_generator|count_re[2]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_re\(2) = DFFEAS(GND, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|LED~26\, \tone_generator|Add1~30_combout\, , , VCC)

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
	ena => \tone_generator|LED~26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_re\(2));

-- Location: LC_X4_Y4_N3
\tone_generator|Add1~35\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add1~35_combout\ = (\tone_generator|count_re\(3) $ ((\tone_generator|Add1~32\)))
-- \tone_generator|Add1~37\ = CARRY(((!\tone_generator|Add1~32\) # (!\tone_generator|count_re\(3))))
-- \tone_generator|Add1~37COUT1_104\ = CARRY(((!\tone_generator|Add1~32COUT1_103\) # (!\tone_generator|count_re\(3))))

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
	datab => \tone_generator|count_re\(3),
	cin0 => \tone_generator|Add1~32\,
	cin1 => \tone_generator|Add1~32COUT1_103\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add1~35_combout\,
	cout0 => \tone_generator|Add1~37\,
	cout1 => \tone_generator|Add1~37COUT1_104\);

-- Location: LC_X8_Y4_N2
\tone_generator|count_re[3]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_re\(3) = DFFEAS(GND, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|LED~26\, \tone_generator|Add1~35_combout\, , , VCC)

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
	ena => \tone_generator|LED~26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_re\(3));

-- Location: LC_X4_Y4_N4
\tone_generator|Add1~40\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add1~40_combout\ = \tone_generator|count_re\(4) $ ((((!\tone_generator|Add1~37\))))
-- \tone_generator|Add1~42\ = CARRY((\tone_generator|count_re\(4) & ((!\tone_generator|Add1~37COUT1_104\))))

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
	dataa => \tone_generator|count_re\(4),
	cin0 => \tone_generator|Add1~37\,
	cin1 => \tone_generator|Add1~37COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add1~40_combout\,
	cout => \tone_generator|Add1~42\);

-- Location: LC_X6_Y4_N1
\tone_generator|count_re[4]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_re\(4) = DFFEAS(((\tone_generator|Add1~40_combout\ & ((!\tone_generator|Equal1~5_combout\) # (!\tone_generator|Equal1~0\)))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|LED~26\, , , , )

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
	datab => \tone_generator|Equal1~0\,
	datac => \tone_generator|Add1~40_combout\,
	datad => \tone_generator|Equal1~5_combout\,
	aclr => GND,
	ena => \tone_generator|LED~26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_re\(4));

-- Location: LC_X4_Y4_N5
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

-- Location: LC_X6_Y4_N0
\tone_generator|count_re[5]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_re\(5) = DFFEAS(((\tone_generator|Add1~45_combout\ & ((!\tone_generator|Equal1~0\) # (!\tone_generator|Equal1~5_combout\)))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|LED~26\, , , , )

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
	datab => \tone_generator|Equal1~5_combout\,
	datac => \tone_generator|Equal1~0\,
	datad => \tone_generator|Add1~45_combout\,
	aclr => GND,
	ena => \tone_generator|LED~26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_re\(5));

-- Location: LC_X4_Y4_N6
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

-- Location: LC_X6_Y4_N5
\tone_generator|count_re[6]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal1~2\ = (\tone_generator|count_re\(7) & (\tone_generator|count_re\(5) & (!B1_count_re[6] & \tone_generator|count_re\(4))))
-- \tone_generator|count_re\(6) = DFFEAS(\tone_generator|Equal1~2\, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|LED~26\, \tone_generator|Add1~55_combout\, , , VCC)

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
	dataa => \tone_generator|count_re\(7),
	datab => \tone_generator|count_re\(5),
	datac => \tone_generator|Add1~55_combout\,
	datad => \tone_generator|count_re\(4),
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|LED~26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal1~2\,
	regout => \tone_generator|count_re\(6));

-- Location: LC_X4_Y4_N7
\tone_generator|Add1~50\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add1~50_combout\ = \tone_generator|count_re\(7) $ (((((!\tone_generator|Add1~42\ & \tone_generator|Add1~57\) # (\tone_generator|Add1~42\ & \tone_generator|Add1~57COUT1_106\)))))
-- \tone_generator|Add1~52\ = CARRY(((!\tone_generator|Add1~57\)) # (!\tone_generator|count_re\(7)))
-- \tone_generator|Add1~52COUT1_107\ = CARRY(((!\tone_generator|Add1~57COUT1_106\)) # (!\tone_generator|count_re\(7)))

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
	dataa => \tone_generator|count_re\(7),
	cin => \tone_generator|Add1~42\,
	cin0 => \tone_generator|Add1~57\,
	cin1 => \tone_generator|Add1~57COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add1~50_combout\,
	cout0 => \tone_generator|Add1~52\,
	cout1 => \tone_generator|Add1~52COUT1_107\);

-- Location: LC_X6_Y4_N4
\tone_generator|count_re[7]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_re\(7) = DFFEAS(((\tone_generator|Add1~50_combout\ & ((!\tone_generator|Equal1~0\) # (!\tone_generator|Equal1~5_combout\)))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|LED~26\, , , , )

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
	datab => \tone_generator|Equal1~5_combout\,
	datac => \tone_generator|Equal1~0\,
	datad => \tone_generator|Add1~50_combout\,
	aclr => GND,
	ena => \tone_generator|LED~26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_re\(7));

-- Location: LC_X5_Y4_N5
\tone_generator|Add1~95\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add1~95_combout\ = (\tone_generator|count_re\(15) $ ((\tone_generator|Add1~87\)))
-- \tone_generator|Add1~97\ = CARRY(((!\tone_generator|Add1~87\) # (!\tone_generator|count_re\(15))))
-- \tone_generator|Add1~97COUT1_113\ = CARRY(((!\tone_generator|Add1~87\) # (!\tone_generator|count_re\(15))))

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
	datab => \tone_generator|count_re\(15),
	cin => \tone_generator|Add1~87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add1~95_combout\,
	cout0 => \tone_generator|Add1~97\,
	cout1 => \tone_generator|Add1~97COUT1_113\);

-- Location: LC_X8_Y4_N5
\tone_generator|count_re[15]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_re\(15) = DFFEAS(GND, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|LED~26\, \tone_generator|Add1~95_combout\, , , VCC)

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
	datac => \tone_generator|Add1~95_combout\,
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|LED~26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_re\(15));

-- Location: LC_X5_Y4_N1
\tone_generator|Add1~65\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add1~65_combout\ = \tone_generator|count_re\(11) $ (((((!\tone_generator|Add1~72\ & \tone_generator|Add1~77\) # (\tone_generator|Add1~72\ & \tone_generator|Add1~77COUT1_109\)))))
-- \tone_generator|Add1~67\ = CARRY(((!\tone_generator|Add1~77\)) # (!\tone_generator|count_re\(11)))
-- \tone_generator|Add1~67COUT1_110\ = CARRY(((!\tone_generator|Add1~77COUT1_109\)) # (!\tone_generator|count_re\(11)))

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
	dataa => \tone_generator|count_re\(11),
	cin => \tone_generator|Add1~72\,
	cin0 => \tone_generator|Add1~77\,
	cin1 => \tone_generator|Add1~77COUT1_109\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add1~65_combout\,
	cout0 => \tone_generator|Add1~67\,
	cout1 => \tone_generator|Add1~67COUT1_110\);

-- Location: LC_X7_Y4_N1
\tone_generator|count_re[11]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_re\(11) = DFFEAS((\tone_generator|Add1~65_combout\ & (((!\tone_generator|Equal1~0\)) # (!\tone_generator|Equal1~5_combout\))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|LED~26\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "44cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \tone_generator|Equal1~5_combout\,
	datab => \tone_generator|Add1~65_combout\,
	datad => \tone_generator|Equal1~0\,
	aclr => GND,
	ena => \tone_generator|LED~26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_re\(11));

-- Location: LC_X5_Y4_N2
\tone_generator|Add1~90\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add1~90_combout\ = (\tone_generator|count_re\(12) $ ((!(!\tone_generator|Add1~72\ & \tone_generator|Add1~67\) # (\tone_generator|Add1~72\ & \tone_generator|Add1~67COUT1_110\))))
-- \tone_generator|Add1~92\ = CARRY(((\tone_generator|count_re\(12) & !\tone_generator|Add1~67\)))
-- \tone_generator|Add1~92COUT1_111\ = CARRY(((\tone_generator|count_re\(12) & !\tone_generator|Add1~67COUT1_110\)))

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
	datab => \tone_generator|count_re\(12),
	cin => \tone_generator|Add1~72\,
	cin0 => \tone_generator|Add1~67\,
	cin1 => \tone_generator|Add1~67COUT1_110\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add1~90_combout\,
	cout0 => \tone_generator|Add1~92\,
	cout1 => \tone_generator|Add1~92COUT1_111\);

-- Location: LC_X5_Y4_N3
\tone_generator|Add1~80\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add1~80_combout\ = \tone_generator|count_re\(13) $ (((((!\tone_generator|Add1~72\ & \tone_generator|Add1~92\) # (\tone_generator|Add1~72\ & \tone_generator|Add1~92COUT1_111\)))))
-- \tone_generator|Add1~82\ = CARRY(((!\tone_generator|Add1~92\)) # (!\tone_generator|count_re\(13)))
-- \tone_generator|Add1~82COUT1_112\ = CARRY(((!\tone_generator|Add1~92COUT1_111\)) # (!\tone_generator|count_re\(13)))

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
	dataa => \tone_generator|count_re\(13),
	cin => \tone_generator|Add1~72\,
	cin0 => \tone_generator|Add1~92\,
	cin1 => \tone_generator|Add1~92COUT1_111\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add1~80_combout\,
	cout0 => \tone_generator|Add1~82\,
	cout1 => \tone_generator|Add1~82COUT1_112\);

-- Location: LC_X6_Y4_N7
\tone_generator|count_re[13]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_re\(13) = DFFEAS(((\tone_generator|Add1~80_combout\ & ((!\tone_generator|Equal1~0\) # (!\tone_generator|Equal1~5_combout\)))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|LED~26\, , , , )

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
	datab => \tone_generator|Equal1~5_combout\,
	datac => \tone_generator|Equal1~0\,
	datad => \tone_generator|Add1~80_combout\,
	aclr => GND,
	ena => \tone_generator|LED~26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_re\(13));

-- Location: LC_X7_Y4_N7
\tone_generator|count_re[12]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal1~4\ = (\tone_generator|count_re\(14) & (!\tone_generator|count_re\(15) & (!B1_count_re[12] & \tone_generator|count_re\(13))))
-- \tone_generator|count_re\(12) = DFFEAS(\tone_generator|Equal1~4\, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|LED~26\, \tone_generator|Add1~90_combout\, , , VCC)

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
	ena => \tone_generator|LED~26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal1~4\,
	regout => \tone_generator|count_re\(12));

-- Location: LC_X4_Y4_N8
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

-- Location: LC_X4_Y4_N9
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

-- Location: LC_X7_Y4_N9
\tone_generator|count_re[9]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal1~3\ = (!\tone_generator|count_re\(10) & (\tone_generator|count_re\(8) & (!B1_count_re[9] & \tone_generator|count_re\(11))))
-- \tone_generator|count_re\(9) = DFFEAS(\tone_generator|Equal1~3\, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|LED~26\, \tone_generator|Add1~70_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \tone_generator|count_re\(10),
	datab => \tone_generator|count_re\(8),
	datac => \tone_generator|Add1~70_combout\,
	datad => \tone_generator|count_re\(11),
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|LED~26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal1~3\,
	regout => \tone_generator|count_re\(9));

-- Location: LC_X7_Y4_N8
\tone_generator|Equal1~5\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal1~5_combout\ = (\tone_generator|Equal1~2\ & (\tone_generator|Equal1~4\ & (\tone_generator|Equal1~1\ & \tone_generator|Equal1~3\)))

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
	datab => \tone_generator|Equal1~4\,
	datac => \tone_generator|Equal1~1\,
	datad => \tone_generator|Equal1~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal1~5_combout\);

-- Location: LC_X6_Y4_N6
\tone_generator|count_re[8]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_re\(8) = DFFEAS(((\tone_generator|Add1~60_combout\ & ((!\tone_generator|Equal1~0\) # (!\tone_generator|Equal1~5_combout\)))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|LED~26\, , , , )

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
	datab => \tone_generator|Equal1~5_combout\,
	datac => \tone_generator|Equal1~0\,
	datad => \tone_generator|Add1~60_combout\,
	aclr => GND,
	ena => \tone_generator|LED~26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_re\(8));

-- Location: LC_X5_Y4_N4
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

-- Location: LC_X7_Y4_N5
\tone_generator|count_re[14]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_re\(14) = DFFEAS(((\tone_generator|Add1~85_combout\ & ((!\tone_generator|Equal1~5_combout\) # (!\tone_generator|Equal1~0\)))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|LED~26\, , , , )

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
	datab => \tone_generator|Equal1~0\,
	datac => \tone_generator|Add1~85_combout\,
	datad => \tone_generator|Equal1~5_combout\,
	aclr => GND,
	ena => \tone_generator|LED~26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_re\(14));

-- Location: LC_X5_Y4_N6
\tone_generator|Add1~0\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add1~0_combout\ = \tone_generator|count_re\(16) $ ((((!(!\tone_generator|Add1~87\ & \tone_generator|Add1~97\) # (\tone_generator|Add1~87\ & \tone_generator|Add1~97COUT1_113\)))))
-- \tone_generator|Add1~2\ = CARRY((\tone_generator|count_re\(16) & ((!\tone_generator|Add1~97\))))
-- \tone_generator|Add1~2COUT1_114\ = CARRY((\tone_generator|count_re\(16) & ((!\tone_generator|Add1~97COUT1_113\))))

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
	dataa => \tone_generator|count_re\(16),
	cin => \tone_generator|Add1~87\,
	cin0 => \tone_generator|Add1~97\,
	cin1 => \tone_generator|Add1~97COUT1_113\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add1~0_combout\,
	cout0 => \tone_generator|Add1~2\,
	cout1 => \tone_generator|Add1~2COUT1_114\);

-- Location: LC_X6_Y4_N3
\tone_generator|count_re[16]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_re\(16) = DFFEAS(((\tone_generator|Add1~0_combout\ & ((!\tone_generator|Equal1~5_combout\) # (!\tone_generator|Equal1~0\)))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|LED~26\, , , , )

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
	datab => \tone_generator|Equal1~0\,
	datac => \tone_generator|Add1~0_combout\,
	datad => \tone_generator|Equal1~5_combout\,
	aclr => GND,
	ena => \tone_generator|LED~26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_re\(16));

-- Location: LC_X5_Y4_N7
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

-- Location: LC_X5_Y4_N8
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

-- Location: LC_X5_Y4_N9
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

-- Location: LC_X6_Y4_N8
\tone_generator|count_re[19]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_re\(19) = DFFEAS(GND, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|LED~26\, \tone_generator|Add1~15_combout\, , , VCC)

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
	ena => \tone_generator|LED~26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_re\(19));

-- Location: LC_X6_Y4_N2
\tone_generator|count_re[17]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal1~0\ = (\tone_generator|count_re\(16) & (!\tone_generator|count_re\(18) & (!B1_count_re[17] & !\tone_generator|count_re\(19))))
-- \tone_generator|count_re\(17) = DFFEAS(\tone_generator|Equal1~0\, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|LED~26\, \tone_generator|Add1~5_combout\, , , VCC)

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
	datab => \tone_generator|count_re\(18),
	datac => \tone_generator|Add1~5_combout\,
	datad => \tone_generator|count_re\(19),
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|LED~26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal1~0\,
	regout => \tone_generator|count_re\(17));

-- Location: LC_X6_Y4_N9
\tone_generator|count_re[18]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_re\(18) = DFFEAS(GND, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|LED~26\, \tone_generator|Add1~10_combout\, , , VCC)

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
	ena => \tone_generator|LED~26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_re\(18));

-- Location: LC_X7_Y4_N0
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
	ena => \tone_generator|LED~26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|re~0\,
	regout => \tone_generator|re~regout\);

-- Location: LC_X6_Y5_N5
\tone_generator|Add7~45\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add7~45_combout\ = (\tone_generator|count_ni_lower\(5) $ ((\tone_generator|Add7~42\)))
-- \tone_generator|Add7~47\ = CARRY(((!\tone_generator|Add7~42\) # (!\tone_generator|count_ni_lower\(5))))
-- \tone_generator|Add7~47COUT1_105\ = CARRY(((!\tone_generator|Add7~42\) # (!\tone_generator|count_ni_lower\(5))))

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
	datab => \tone_generator|count_ni_lower\(5),
	cin => \tone_generator|Add7~42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add7~45_combout\,
	cout0 => \tone_generator|Add7~47\,
	cout1 => \tone_generator|Add7~47COUT1_105\);

-- Location: LC_X9_Y10_N8
\tone_generator|ni_lower~5\ : maxv_lcell
-- Equation(s):
-- \tone_generator|ni_lower~5_combout\ = (index_register(0) & (((index_register(3) & index_register(1))))) # (!index_register(0) & (((!index_register(3) & !index_register(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a005",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => index_register(0),
	datac => index_register(3),
	datad => index_register(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|ni_lower~5_combout\);

-- Location: LC_X9_Y10_N9
\tone_generator|ni_lower~10\ : maxv_lcell
-- Equation(s):
-- \tone_generator|ni_lower~10_combout\ = ((\fsm_state~regout\ & (!index_register(2) & \tone_generator|ni_lower~5_combout\)))

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
	datab => \fsm_state~regout\,
	datac => index_register(2),
	datad => \tone_generator|ni_lower~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|ni_lower~10_combout\);

-- Location: LC_X9_Y10_N6
\tone_generator|ni_lower~9\ : maxv_lcell
-- Equation(s):
-- \tone_generator|ni_lower~9_combout\ = (\tone_generator|ni_lower~10_combout\ & (((!\Mux12~0_combout\ & !\Mux11~0_combout\)) # (!\fsm_state~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~0_combout\,
	datab => \Mux11~0_combout\,
	datac => \fsm_state~regout\,
	datad => \tone_generator|ni_lower~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|ni_lower~9_combout\);

-- Location: LC_X6_Y8_N5
\tone_generator|count_ni_lower[5]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ni_lower\(5) = DFFEAS((((\tone_generator|Add7~45_combout\))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ni_lower~9_combout\, , , , )

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
	datad => \tone_generator|Add7~45_combout\,
	aclr => GND,
	ena => \tone_generator|ni_lower~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ni_lower\(5));

-- Location: LC_X6_Y5_N6
\tone_generator|Add7~50\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add7~50_combout\ = (\tone_generator|count_ni_lower\(6) $ ((!(!\tone_generator|Add7~42\ & \tone_generator|Add7~47\) # (\tone_generator|Add7~42\ & \tone_generator|Add7~47COUT1_105\))))
-- \tone_generator|Add7~52\ = CARRY(((\tone_generator|count_ni_lower\(6) & !\tone_generator|Add7~47\)))
-- \tone_generator|Add7~52COUT1_106\ = CARRY(((\tone_generator|count_ni_lower\(6) & !\tone_generator|Add7~47COUT1_105\)))

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
	datab => \tone_generator|count_ni_lower\(6),
	cin => \tone_generator|Add7~42\,
	cin0 => \tone_generator|Add7~47\,
	cin1 => \tone_generator|Add7~47COUT1_105\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add7~50_combout\,
	cout0 => \tone_generator|Add7~52\,
	cout1 => \tone_generator|Add7~52COUT1_106\);

-- Location: LC_X6_Y6_N1
\tone_generator|count_ni_lower[6]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ni_lower\(6) = DFFEAS(GND, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ni_lower~9_combout\, \tone_generator|Add7~50_combout\, , , VCC)

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
	datac => \tone_generator|Add7~50_combout\,
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|ni_lower~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ni_lower\(6));

-- Location: LC_X6_Y5_N7
\tone_generator|Add7~55\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add7~55_combout\ = \tone_generator|count_ni_lower\(7) $ (((((!\tone_generator|Add7~42\ & \tone_generator|Add7~52\) # (\tone_generator|Add7~42\ & \tone_generator|Add7~52COUT1_106\)))))
-- \tone_generator|Add7~57\ = CARRY(((!\tone_generator|Add7~52\)) # (!\tone_generator|count_ni_lower\(7)))
-- \tone_generator|Add7~57COUT1_107\ = CARRY(((!\tone_generator|Add7~52COUT1_106\)) # (!\tone_generator|count_ni_lower\(7)))

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
	dataa => \tone_generator|count_ni_lower\(7),
	cin => \tone_generator|Add7~42\,
	cin0 => \tone_generator|Add7~52\,
	cin1 => \tone_generator|Add7~52COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add7~55_combout\,
	cout0 => \tone_generator|Add7~57\,
	cout1 => \tone_generator|Add7~57COUT1_107\);

-- Location: LC_X7_Y6_N8
\tone_generator|count_ni_lower[7]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ni_lower\(7) = DFFEAS(GND, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ni_lower~9_combout\, \tone_generator|Add7~55_combout\, , , VCC)

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
	datac => \tone_generator|Add7~55_combout\,
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|ni_lower~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ni_lower\(7));

-- Location: LC_X6_Y5_N0
\tone_generator|Add7~25\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add7~25_combout\ = ((!\tone_generator|count_ni_lower\(0)))
-- \tone_generator|Add7~27\ = CARRY(((\tone_generator|count_ni_lower\(0))))
-- \tone_generator|Add7~27COUT1_101\ = CARRY(((\tone_generator|count_ni_lower\(0))))

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
	datab => \tone_generator|count_ni_lower\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add7~25_combout\,
	cout0 => \tone_generator|Add7~27\,
	cout1 => \tone_generator|Add7~27COUT1_101\);

-- Location: LC_X6_Y6_N3
\tone_generator|count_ni_lower[0]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ni_lower\(0) = DFFEAS(((\tone_generator|Add7~25_combout\) # ((\tone_generator|Equal7~0\ & \tone_generator|Equal7~5_combout\))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ni_lower~9_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	datab => \tone_generator|Add7~25_combout\,
	datac => \tone_generator|Equal7~0\,
	datad => \tone_generator|Equal7~5_combout\,
	aclr => GND,
	ena => \tone_generator|ni_lower~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ni_lower\(0));

-- Location: LC_X6_Y5_N1
\tone_generator|Add7~20\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add7~20_combout\ = (\tone_generator|count_ni_lower\(1) $ ((\tone_generator|Add7~27\)))
-- \tone_generator|Add7~22\ = CARRY(((!\tone_generator|Add7~27\) # (!\tone_generator|count_ni_lower\(1))))
-- \tone_generator|Add7~22COUT1_102\ = CARRY(((!\tone_generator|Add7~27COUT1_101\) # (!\tone_generator|count_ni_lower\(1))))

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
	datab => \tone_generator|count_ni_lower\(1),
	cin0 => \tone_generator|Add7~27\,
	cin1 => \tone_generator|Add7~27COUT1_101\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add7~20_combout\,
	cout0 => \tone_generator|Add7~22\,
	cout1 => \tone_generator|Add7~22COUT1_102\);

-- Location: LC_X6_Y6_N7
\tone_generator|count_ni_lower[1]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal7~1\ = (\tone_generator|count_ni_lower\(2) & (!\tone_generator|count_ni_lower\(3) & (B1_count_ni_lower[1] & \tone_generator|count_ni_lower\(0))))
-- \tone_generator|count_ni_lower\(1) = DFFEAS(\tone_generator|Equal7~1\, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ni_lower~9_combout\, \tone_generator|Add7~20_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \tone_generator|count_ni_lower\(2),
	datab => \tone_generator|count_ni_lower\(3),
	datac => \tone_generator|Add7~20_combout\,
	datad => \tone_generator|count_ni_lower\(0),
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|ni_lower~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal7~1\,
	regout => \tone_generator|count_ni_lower\(1));

-- Location: LC_X6_Y5_N2
\tone_generator|Add7~30\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add7~30_combout\ = (\tone_generator|count_ni_lower\(2) $ ((!\tone_generator|Add7~22\)))
-- \tone_generator|Add7~32\ = CARRY(((\tone_generator|count_ni_lower\(2) & !\tone_generator|Add7~22\)))
-- \tone_generator|Add7~32COUT1_103\ = CARRY(((\tone_generator|count_ni_lower\(2) & !\tone_generator|Add7~22COUT1_102\)))

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
	datab => \tone_generator|count_ni_lower\(2),
	cin0 => \tone_generator|Add7~22\,
	cin1 => \tone_generator|Add7~22COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add7~30_combout\,
	cout0 => \tone_generator|Add7~32\,
	cout1 => \tone_generator|Add7~32COUT1_103\);

-- Location: LC_X6_Y6_N8
\tone_generator|count_ni_lower[2]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ni_lower\(2) = DFFEAS(GND, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ni_lower~9_combout\, \tone_generator|Add7~30_combout\, , , VCC)

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
	datac => \tone_generator|Add7~30_combout\,
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|ni_lower~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ni_lower\(2));

-- Location: LC_X6_Y5_N3
\tone_generator|Add7~35\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add7~35_combout\ = \tone_generator|count_ni_lower\(3) $ ((((\tone_generator|Add7~32\))))
-- \tone_generator|Add7~37\ = CARRY(((!\tone_generator|Add7~32\)) # (!\tone_generator|count_ni_lower\(3)))
-- \tone_generator|Add7~37COUT1_104\ = CARRY(((!\tone_generator|Add7~32COUT1_103\)) # (!\tone_generator|count_ni_lower\(3)))

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
	dataa => \tone_generator|count_ni_lower\(3),
	cin0 => \tone_generator|Add7~32\,
	cin1 => \tone_generator|Add7~32COUT1_103\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add7~35_combout\,
	cout0 => \tone_generator|Add7~37\,
	cout1 => \tone_generator|Add7~37COUT1_104\);

-- Location: LC_X6_Y6_N2
\tone_generator|count_ni_lower[3]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ni_lower\(3) = DFFEAS(((\tone_generator|Add7~35_combout\ & ((!\tone_generator|Equal7~5_combout\) # (!\tone_generator|Equal7~0\)))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ni_lower~9_combout\, , , , )

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
	dataa => \tone_generator|Equal7~0\,
	datac => \tone_generator|Add7~35_combout\,
	datad => \tone_generator|Equal7~5_combout\,
	aclr => GND,
	ena => \tone_generator|ni_lower~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ni_lower\(3));

-- Location: LC_X6_Y5_N4
\tone_generator|Add7~40\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add7~40_combout\ = \tone_generator|count_ni_lower\(4) $ ((((!\tone_generator|Add7~37\))))
-- \tone_generator|Add7~42\ = CARRY((\tone_generator|count_ni_lower\(4) & ((!\tone_generator|Add7~37COUT1_104\))))

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
	dataa => \tone_generator|count_ni_lower\(4),
	cin0 => \tone_generator|Add7~37\,
	cin1 => \tone_generator|Add7~37COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add7~40_combout\,
	cout => \tone_generator|Add7~42\);

-- Location: LC_X7_Y6_N2
\tone_generator|count_ni_lower[4]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal7~2\ = (!\tone_generator|count_ni_lower\(6) & (!\tone_generator|count_ni_lower\(7) & (!B1_count_ni_lower[4] & !\tone_generator|count_ni_lower\(5))))
-- \tone_generator|count_ni_lower\(4) = DFFEAS(\tone_generator|Equal7~2\, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ni_lower~9_combout\, \tone_generator|Add7~40_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \tone_generator|count_ni_lower\(6),
	datab => \tone_generator|count_ni_lower\(7),
	datac => \tone_generator|Add7~40_combout\,
	datad => \tone_generator|count_ni_lower\(5),
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|ni_lower~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal7~2\,
	regout => \tone_generator|count_ni_lower\(4));

-- Location: LC_X7_Y5_N0
\tone_generator|Add7~70\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add7~70_combout\ = (\tone_generator|count_ni_lower\(10) $ ((!\tone_generator|Add7~62\)))
-- \tone_generator|Add7~72\ = CARRY(((\tone_generator|count_ni_lower\(10) & !\tone_generator|Add7~62\)))
-- \tone_generator|Add7~72COUT1_109\ = CARRY(((\tone_generator|count_ni_lower\(10) & !\tone_generator|Add7~62\)))

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
	datab => \tone_generator|count_ni_lower\(10),
	cin => \tone_generator|Add7~62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add7~70_combout\,
	cout0 => \tone_generator|Add7~72\,
	cout1 => \tone_generator|Add7~72COUT1_109\);

-- Location: LC_X7_Y6_N1
\tone_generator|count_ni_lower[10]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ni_lower\(10) = DFFEAS((((\tone_generator|Add7~70_combout\))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ni_lower~9_combout\, , , , )

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
	datad => \tone_generator|Add7~70_combout\,
	aclr => GND,
	ena => \tone_generator|ni_lower~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ni_lower\(10));

-- Location: LC_X7_Y5_N1
\tone_generator|Add7~75\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add7~75_combout\ = \tone_generator|count_ni_lower\(11) $ (((((!\tone_generator|Add7~62\ & \tone_generator|Add7~72\) # (\tone_generator|Add7~62\ & \tone_generator|Add7~72COUT1_109\)))))
-- \tone_generator|Add7~77\ = CARRY(((!\tone_generator|Add7~72\)) # (!\tone_generator|count_ni_lower\(11)))
-- \tone_generator|Add7~77COUT1_110\ = CARRY(((!\tone_generator|Add7~72COUT1_109\)) # (!\tone_generator|count_ni_lower\(11)))

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
	dataa => \tone_generator|count_ni_lower\(11),
	cin => \tone_generator|Add7~62\,
	cin0 => \tone_generator|Add7~72\,
	cin1 => \tone_generator|Add7~72COUT1_109\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add7~75_combout\,
	cout0 => \tone_generator|Add7~77\,
	cout1 => \tone_generator|Add7~77COUT1_110\);

-- Location: LC_X7_Y6_N0
\tone_generator|count_ni_lower[11]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ni_lower\(11) = DFFEAS(GND, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ni_lower~9_combout\, \tone_generator|Add7~75_combout\, , , VCC)

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
	datac => \tone_generator|Add7~75_combout\,
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|ni_lower~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ni_lower\(11));

-- Location: LC_X6_Y5_N8
\tone_generator|Add7~65\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add7~65_combout\ = (\tone_generator|count_ni_lower\(8) $ ((!(!\tone_generator|Add7~42\ & \tone_generator|Add7~57\) # (\tone_generator|Add7~42\ & \tone_generator|Add7~57COUT1_107\))))
-- \tone_generator|Add7~67\ = CARRY(((\tone_generator|count_ni_lower\(8) & !\tone_generator|Add7~57\)))
-- \tone_generator|Add7~67COUT1_108\ = CARRY(((\tone_generator|count_ni_lower\(8) & !\tone_generator|Add7~57COUT1_107\)))

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
	datab => \tone_generator|count_ni_lower\(8),
	cin => \tone_generator|Add7~42\,
	cin0 => \tone_generator|Add7~57\,
	cin1 => \tone_generator|Add7~57COUT1_107\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add7~65_combout\,
	cout0 => \tone_generator|Add7~67\,
	cout1 => \tone_generator|Add7~67COUT1_108\);

-- Location: LC_X7_Y6_N7
\tone_generator|count_ni_lower[8]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal7~3\ = (\tone_generator|count_ni_lower\(9) & (!\tone_generator|count_ni_lower\(11) & (!B1_count_ni_lower[8] & !\tone_generator|count_ni_lower\(10))))
-- \tone_generator|count_ni_lower\(8) = DFFEAS(\tone_generator|Equal7~3\, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ni_lower~9_combout\, \tone_generator|Add7~65_combout\, , , VCC)

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
	dataa => \tone_generator|count_ni_lower\(9),
	datab => \tone_generator|count_ni_lower\(11),
	datac => \tone_generator|Add7~65_combout\,
	datad => \tone_generator|count_ni_lower\(10),
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|ni_lower~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal7~3\,
	regout => \tone_generator|count_ni_lower\(8));

-- Location: LC_X6_Y5_N9
\tone_generator|Add7~60\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add7~60_combout\ = (\tone_generator|count_ni_lower\(9) $ (((!\tone_generator|Add7~42\ & \tone_generator|Add7~67\) # (\tone_generator|Add7~42\ & \tone_generator|Add7~67COUT1_108\))))
-- \tone_generator|Add7~62\ = CARRY(((!\tone_generator|Add7~67COUT1_108\) # (!\tone_generator|count_ni_lower\(9))))

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
	datab => \tone_generator|count_ni_lower\(9),
	cin => \tone_generator|Add7~42\,
	cin0 => \tone_generator|Add7~67\,
	cin1 => \tone_generator|Add7~67COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add7~60_combout\,
	cout => \tone_generator|Add7~62\);

-- Location: LC_X6_Y6_N9
\tone_generator|count_ni_lower[9]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ni_lower\(9) = DFFEAS(((\tone_generator|Add7~60_combout\ & ((!\tone_generator|Equal7~0\) # (!\tone_generator|Equal7~5_combout\)))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ni_lower~9_combout\, , , , )

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
	dataa => \tone_generator|Equal7~5_combout\,
	datac => \tone_generator|Equal7~0\,
	datad => \tone_generator|Add7~60_combout\,
	aclr => GND,
	ena => \tone_generator|ni_lower~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ni_lower\(9));

-- Location: LC_X7_Y5_N2
\tone_generator|Add7~80\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add7~80_combout\ = (\tone_generator|count_ni_lower\(12) $ ((!(!\tone_generator|Add7~62\ & \tone_generator|Add7~77\) # (\tone_generator|Add7~62\ & \tone_generator|Add7~77COUT1_110\))))
-- \tone_generator|Add7~82\ = CARRY(((\tone_generator|count_ni_lower\(12) & !\tone_generator|Add7~77\)))
-- \tone_generator|Add7~82COUT1_111\ = CARRY(((\tone_generator|count_ni_lower\(12) & !\tone_generator|Add7~77COUT1_110\)))

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
	datab => \tone_generator|count_ni_lower\(12),
	cin => \tone_generator|Add7~62\,
	cin0 => \tone_generator|Add7~77\,
	cin1 => \tone_generator|Add7~77COUT1_110\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add7~80_combout\,
	cout0 => \tone_generator|Add7~82\,
	cout1 => \tone_generator|Add7~82COUT1_111\);

-- Location: LC_X7_Y5_N3
\tone_generator|Add7~85\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add7~85_combout\ = (\tone_generator|count_ni_lower\(13) $ (((!\tone_generator|Add7~62\ & \tone_generator|Add7~82\) # (\tone_generator|Add7~62\ & \tone_generator|Add7~82COUT1_111\))))
-- \tone_generator|Add7~87\ = CARRY(((!\tone_generator|Add7~82\) # (!\tone_generator|count_ni_lower\(13))))
-- \tone_generator|Add7~87COUT1_112\ = CARRY(((!\tone_generator|Add7~82COUT1_111\) # (!\tone_generator|count_ni_lower\(13))))

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
	datab => \tone_generator|count_ni_lower\(13),
	cin => \tone_generator|Add7~62\,
	cin0 => \tone_generator|Add7~82\,
	cin1 => \tone_generator|Add7~82COUT1_111\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add7~85_combout\,
	cout0 => \tone_generator|Add7~87\,
	cout1 => \tone_generator|Add7~87COUT1_112\);

-- Location: LC_X7_Y6_N4
\tone_generator|count_ni_lower[13]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ni_lower\(13) = DFFEAS(((\tone_generator|Add7~85_combout\ & ((!\tone_generator|Equal7~5_combout\) # (!\tone_generator|Equal7~0\)))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ni_lower~9_combout\, , , , )

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
	dataa => \tone_generator|Equal7~0\,
	datac => \tone_generator|Equal7~5_combout\,
	datad => \tone_generator|Add7~85_combout\,
	aclr => GND,
	ena => \tone_generator|ni_lower~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ni_lower\(13));

-- Location: LC_X7_Y5_N4
\tone_generator|Add7~95\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add7~95_combout\ = \tone_generator|count_ni_lower\(14) $ ((((!(!\tone_generator|Add7~62\ & \tone_generator|Add7~87\) # (\tone_generator|Add7~62\ & \tone_generator|Add7~87COUT1_112\)))))
-- \tone_generator|Add7~97\ = CARRY((\tone_generator|count_ni_lower\(14) & ((!\tone_generator|Add7~87COUT1_112\))))

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
	dataa => \tone_generator|count_ni_lower\(14),
	cin => \tone_generator|Add7~62\,
	cin0 => \tone_generator|Add7~87\,
	cin1 => \tone_generator|Add7~87COUT1_112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add7~95_combout\,
	cout => \tone_generator|Add7~97\);

-- Location: LC_X7_Y5_N5
\tone_generator|Add7~90\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add7~90_combout\ = \tone_generator|count_ni_lower\(15) $ ((((\tone_generator|Add7~97\))))
-- \tone_generator|Add7~92\ = CARRY(((!\tone_generator|Add7~97\)) # (!\tone_generator|count_ni_lower\(15)))
-- \tone_generator|Add7~92COUT1_113\ = CARRY(((!\tone_generator|Add7~97\)) # (!\tone_generator|count_ni_lower\(15)))

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
	dataa => \tone_generator|count_ni_lower\(15),
	cin => \tone_generator|Add7~97\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add7~90_combout\,
	cout0 => \tone_generator|Add7~92\,
	cout1 => \tone_generator|Add7~92COUT1_113\);

-- Location: LC_X6_Y6_N0
\tone_generator|count_ni_lower[15]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ni_lower\(15) = DFFEAS(((\tone_generator|Add7~90_combout\ & ((!\tone_generator|Equal7~0\) # (!\tone_generator|Equal7~5_combout\)))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ni_lower~9_combout\, , , , )

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
	dataa => \tone_generator|Equal7~5_combout\,
	datac => \tone_generator|Equal7~0\,
	datad => \tone_generator|Add7~90_combout\,
	aclr => GND,
	ena => \tone_generator|ni_lower~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ni_lower\(15));

-- Location: LC_X7_Y6_N5
\tone_generator|count_ni_lower[14]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal7~4\ = (\tone_generator|count_ni_lower\(12) & (\tone_generator|count_ni_lower\(13) & (!B1_count_ni_lower[14] & \tone_generator|count_ni_lower\(15))))
-- \tone_generator|count_ni_lower\(14) = DFFEAS(\tone_generator|Equal7~4\, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ni_lower~9_combout\, \tone_generator|Add7~95_combout\, , , VCC)

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
	dataa => \tone_generator|count_ni_lower\(12),
	datab => \tone_generator|count_ni_lower\(13),
	datac => \tone_generator|Add7~95_combout\,
	datad => \tone_generator|count_ni_lower\(15),
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|ni_lower~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal7~4\,
	regout => \tone_generator|count_ni_lower\(14));

-- Location: LC_X7_Y6_N3
\tone_generator|Equal7~5\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal7~5_combout\ = (\tone_generator|Equal7~4\ & (\tone_generator|Equal7~1\ & (\tone_generator|Equal7~3\ & \tone_generator|Equal7~2\)))

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
	dataa => \tone_generator|Equal7~4\,
	datab => \tone_generator|Equal7~1\,
	datac => \tone_generator|Equal7~3\,
	datad => \tone_generator|Equal7~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal7~5_combout\);

-- Location: LC_X7_Y6_N6
\tone_generator|count_ni_lower[12]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ni_lower\(12) = DFFEAS(((\tone_generator|Add7~80_combout\ & ((!\tone_generator|Equal7~0\) # (!\tone_generator|Equal7~5_combout\)))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ni_lower~9_combout\, , , , )

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
	dataa => \tone_generator|Equal7~5_combout\,
	datac => \tone_generator|Add7~80_combout\,
	datad => \tone_generator|Equal7~0\,
	aclr => GND,
	ena => \tone_generator|ni_lower~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ni_lower\(12));

-- Location: LC_X7_Y5_N6
\tone_generator|Add7~0\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add7~0_combout\ = (\tone_generator|count_ni_lower\(16) $ ((!(!\tone_generator|Add7~97\ & \tone_generator|Add7~92\) # (\tone_generator|Add7~97\ & \tone_generator|Add7~92COUT1_113\))))
-- \tone_generator|Add7~2\ = CARRY(((\tone_generator|count_ni_lower\(16) & !\tone_generator|Add7~92\)))
-- \tone_generator|Add7~2COUT1_114\ = CARRY(((\tone_generator|count_ni_lower\(16) & !\tone_generator|Add7~92COUT1_113\)))

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
	datab => \tone_generator|count_ni_lower\(16),
	cin => \tone_generator|Add7~97\,
	cin0 => \tone_generator|Add7~92\,
	cin1 => \tone_generator|Add7~92COUT1_113\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add7~0_combout\,
	cout0 => \tone_generator|Add7~2\,
	cout1 => \tone_generator|Add7~2COUT1_114\);

-- Location: LC_X6_Y6_N6
\tone_generator|count_ni_lower[16]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ni_lower\(16) = DFFEAS(((\tone_generator|Add7~0_combout\ & ((!\tone_generator|Equal7~0\) # (!\tone_generator|Equal7~5_combout\)))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ni_lower~9_combout\, , , , )

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
	dataa => \tone_generator|Equal7~5_combout\,
	datac => \tone_generator|Equal7~0\,
	datad => \tone_generator|Add7~0_combout\,
	aclr => GND,
	ena => \tone_generator|ni_lower~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ni_lower\(16));

-- Location: LC_X7_Y5_N7
\tone_generator|Add7~5\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add7~5_combout\ = \tone_generator|count_ni_lower\(17) $ (((((!\tone_generator|Add7~97\ & \tone_generator|Add7~2\) # (\tone_generator|Add7~97\ & \tone_generator|Add7~2COUT1_114\)))))
-- \tone_generator|Add7~7\ = CARRY(((!\tone_generator|Add7~2\)) # (!\tone_generator|count_ni_lower\(17)))
-- \tone_generator|Add7~7COUT1_115\ = CARRY(((!\tone_generator|Add7~2COUT1_114\)) # (!\tone_generator|count_ni_lower\(17)))

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
	dataa => \tone_generator|count_ni_lower\(17),
	cin => \tone_generator|Add7~97\,
	cin0 => \tone_generator|Add7~2\,
	cin1 => \tone_generator|Add7~2COUT1_114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add7~5_combout\,
	cout0 => \tone_generator|Add7~7\,
	cout1 => \tone_generator|Add7~7COUT1_115\);

-- Location: LC_X6_Y6_N5
\tone_generator|count_ni_lower[17]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal7~0\ = (!\tone_generator|count_ni_lower\(19) & (\tone_generator|count_ni_lower\(16) & (!B1_count_ni_lower[17] & !\tone_generator|count_ni_lower\(18))))
-- \tone_generator|count_ni_lower\(17) = DFFEAS(\tone_generator|Equal7~0\, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ni_lower~9_combout\, \tone_generator|Add7~5_combout\, , , VCC)

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
	dataa => \tone_generator|count_ni_lower\(19),
	datab => \tone_generator|count_ni_lower\(16),
	datac => \tone_generator|Add7~5_combout\,
	datad => \tone_generator|count_ni_lower\(18),
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|ni_lower~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal7~0\,
	regout => \tone_generator|count_ni_lower\(17));

-- Location: LC_X7_Y5_N8
\tone_generator|Add7~10\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add7~10_combout\ = (\tone_generator|count_ni_lower\(18) $ ((!(!\tone_generator|Add7~97\ & \tone_generator|Add7~7\) # (\tone_generator|Add7~97\ & \tone_generator|Add7~7COUT1_115\))))
-- \tone_generator|Add7~12\ = CARRY(((\tone_generator|count_ni_lower\(18) & !\tone_generator|Add7~7\)))
-- \tone_generator|Add7~12COUT1_116\ = CARRY(((\tone_generator|count_ni_lower\(18) & !\tone_generator|Add7~7COUT1_115\)))

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
	datab => \tone_generator|count_ni_lower\(18),
	cin => \tone_generator|Add7~97\,
	cin0 => \tone_generator|Add7~7\,
	cin1 => \tone_generator|Add7~7COUT1_115\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add7~10_combout\,
	cout0 => \tone_generator|Add7~12\,
	cout1 => \tone_generator|Add7~12COUT1_116\);

-- Location: LC_X5_Y6_N5
\tone_generator|count_ni_lower[18]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ni_lower\(18) = DFFEAS(GND, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ni_lower~9_combout\, \tone_generator|Add7~10_combout\, , , VCC)

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
	datac => \tone_generator|Add7~10_combout\,
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|ni_lower~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ni_lower\(18));

-- Location: LC_X7_Y5_N9
\tone_generator|Add7~15\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add7~15_combout\ = (((!\tone_generator|Add7~97\ & \tone_generator|Add7~12\) # (\tone_generator|Add7~97\ & \tone_generator|Add7~12COUT1_116\) $ (\tone_generator|count_ni_lower\(19))))

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
	datad => \tone_generator|count_ni_lower\(19),
	cin => \tone_generator|Add7~97\,
	cin0 => \tone_generator|Add7~12\,
	cin1 => \tone_generator|Add7~12COUT1_116\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add7~15_combout\);

-- Location: LC_X6_Y6_N4
\tone_generator|count_ni_lower[19]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ni_lower\(19) = DFFEAS(GND, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ni_lower~9_combout\, \tone_generator|Add7~15_combout\, , , VCC)

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
	datac => \tone_generator|Add7~15_combout\,
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|ni_lower~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ni_lower\(19));

-- Location: LC_X7_Y6_N9
\tone_generator|ni_lower\ : maxv_lcell
-- Equation(s):
-- \tone_generator|ni_lower~8\ = (B1_ni_lower $ (((\tone_generator|Equal7~0\ & \tone_generator|Equal7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5af0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \tone_generator|Equal7~0\,
	datad => \tone_generator|Equal7~5_combout\,
	aclr => GND,
	ena => \tone_generator|ni_lower~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|ni_lower~8\,
	regout => \tone_generator|ni_lower~regout\);

-- Location: LC_X3_Y7_N0
\tone_generator|Add2~30\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add2~30_combout\ = (!\tone_generator|count_ga\(0))
-- \tone_generator|Add2~32\ = CARRY((\tone_generator|count_ga\(0)))
-- \tone_generator|Add2~32COUT1_101\ = CARRY((\tone_generator|count_ga\(0)))

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
	dataa => \tone_generator|count_ga\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add2~30_combout\,
	cout0 => \tone_generator|Add2~32\,
	cout1 => \tone_generator|Add2~32COUT1_101\);

-- Location: LC_X3_Y7_N1
\tone_generator|Add2~20\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add2~20_combout\ = (\tone_generator|count_ga\(1) $ ((\tone_generator|Add2~32\)))
-- \tone_generator|Add2~22\ = CARRY(((!\tone_generator|Add2~32\) # (!\tone_generator|count_ga\(1))))
-- \tone_generator|Add2~22COUT1_102\ = CARRY(((!\tone_generator|Add2~32COUT1_101\) # (!\tone_generator|count_ga\(1))))

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
	datab => \tone_generator|count_ga\(1),
	cin0 => \tone_generator|Add2~32\,
	cin1 => \tone_generator|Add2~32COUT1_101\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add2~20_combout\,
	cout0 => \tone_generator|Add2~22\,
	cout1 => \tone_generator|Add2~22COUT1_102\);

-- Location: LC_X3_Y7_N2
\tone_generator|Add2~25\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add2~25_combout\ = \tone_generator|count_ga\(2) $ ((((!\tone_generator|Add2~22\))))
-- \tone_generator|Add2~27\ = CARRY((\tone_generator|count_ga\(2) & ((!\tone_generator|Add2~22\))))
-- \tone_generator|Add2~27COUT1_103\ = CARRY((\tone_generator|count_ga\(2) & ((!\tone_generator|Add2~22COUT1_102\))))

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
	dataa => \tone_generator|count_ga\(2),
	cin0 => \tone_generator|Add2~22\,
	cin1 => \tone_generator|Add2~22COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add2~25_combout\,
	cout0 => \tone_generator|Add2~27\,
	cout1 => \tone_generator|Add2~27COUT1_103\);

-- Location: LC_X10_Y10_N1
\Mux10~0\ : maxv_lcell
-- Equation(s):
-- \Mux10~0_combout\ = ((index_register(0) & (!index_register(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => index_register(0),
	datac => index_register(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~0_combout\);

-- Location: LC_X10_Y10_N2
\tone_generator|LED~29\ : maxv_lcell
-- Equation(s):
-- \tone_generator|LED~29_combout\ = (\fsm_state~regout\ & (!index_register(2) & (index_register(3) & \Mux10~0_combout\)))

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
	dataa => \fsm_state~regout\,
	datab => index_register(2),
	datac => index_register(3),
	datad => \Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|LED~29_combout\);

-- Location: LC_X10_Y10_N8
\tone_generator|ga~3\ : maxv_lcell
-- Equation(s):
-- \tone_generator|ga~3_combout\ = (\tone_generator|LED~29_combout\ & (((!\Mux11~0_combout\ & !\Mux12~0_combout\)) # (!\fsm_state~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5700",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fsm_state~regout\,
	datab => \Mux11~0_combout\,
	datac => \Mux12~0_combout\,
	datad => \tone_generator|LED~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|ga~3_combout\);

-- Location: LC_X4_Y6_N1
\tone_generator|count_ga[2]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ga\(2) = DFFEAS(((\tone_generator|Add2~25_combout\ & ((!\tone_generator|Equal2~5_combout\) # (!\tone_generator|Equal2~0\)))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ga~3_combout\, , , , )

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
	dataa => \tone_generator|Equal2~0\,
	datac => \tone_generator|Equal2~5_combout\,
	datad => \tone_generator|Add2~25_combout\,
	aclr => GND,
	ena => \tone_generator|ga~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ga\(2));

-- Location: LC_X3_Y7_N3
\tone_generator|Add2~35\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add2~35_combout\ = \tone_generator|count_ga\(3) $ ((((\tone_generator|Add2~27\))))
-- \tone_generator|Add2~37\ = CARRY(((!\tone_generator|Add2~27\)) # (!\tone_generator|count_ga\(3)))
-- \tone_generator|Add2~37COUT1_104\ = CARRY(((!\tone_generator|Add2~27COUT1_103\)) # (!\tone_generator|count_ga\(3)))

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
	dataa => \tone_generator|count_ga\(3),
	cin0 => \tone_generator|Add2~27\,
	cin1 => \tone_generator|Add2~27COUT1_103\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add2~35_combout\,
	cout0 => \tone_generator|Add2~37\,
	cout1 => \tone_generator|Add2~37COUT1_104\);

-- Location: LC_X4_Y6_N7
\tone_generator|count_ga[3]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ga\(3) = DFFEAS(GND, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ga~3_combout\, \tone_generator|Add2~35_combout\, , , VCC)

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
	datac => \tone_generator|Add2~35_combout\,
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|ga~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ga\(3));

-- Location: LC_X4_Y6_N8
\tone_generator|count_ga[0]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal2~1\ = (\tone_generator|count_ga\(1) & (!\tone_generator|count_ga\(3) & (!B1_count_ga[0] & \tone_generator|count_ga\(2))))
-- \tone_generator|count_ga\(0) = DFFEAS(\tone_generator|Equal2~1\, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ga~3_combout\, \tone_generator|Add2~30_combout\, , , VCC)

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
	dataa => \tone_generator|count_ga\(1),
	datab => \tone_generator|count_ga\(3),
	datac => \tone_generator|Add2~30_combout\,
	datad => \tone_generator|count_ga\(2),
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|ga~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal2~1\,
	regout => \tone_generator|count_ga\(0));

-- Location: LC_X4_Y6_N4
\tone_generator|count_ga[1]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ga\(1) = DFFEAS(((\tone_generator|Add2~20_combout\ & ((!\tone_generator|Equal2~5_combout\) # (!\tone_generator|Equal2~0\)))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ga~3_combout\, , , , )

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
	dataa => \tone_generator|Equal2~0\,
	datac => \tone_generator|Add2~20_combout\,
	datad => \tone_generator|Equal2~5_combout\,
	aclr => GND,
	ena => \tone_generator|ga~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ga\(1));

-- Location: LC_X3_Y7_N5
\tone_generator|Add2~50\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add2~50_combout\ = (\tone_generator|count_ga\(5) $ ((\tone_generator|Add2~47\)))
-- \tone_generator|Add2~52\ = CARRY(((!\tone_generator|Add2~47\) # (!\tone_generator|count_ga\(5))))
-- \tone_generator|Add2~52COUT1_105\ = CARRY(((!\tone_generator|Add2~47\) # (!\tone_generator|count_ga\(5))))

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
	datab => \tone_generator|count_ga\(5),
	cin => \tone_generator|Add2~47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add2~50_combout\,
	cout0 => \tone_generator|Add2~52\,
	cout1 => \tone_generator|Add2~52COUT1_105\);

-- Location: LC_X4_Y6_N6
\tone_generator|count_ga[5]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ga\(5) = DFFEAS(GND, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ga~3_combout\, \tone_generator|Add2~50_combout\, , , VCC)

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
	datac => \tone_generator|Add2~50_combout\,
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|ga~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ga\(5));

-- Location: LC_X3_Y7_N6
\tone_generator|Add2~55\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add2~55_combout\ = (\tone_generator|count_ga\(6) $ ((!(!\tone_generator|Add2~47\ & \tone_generator|Add2~52\) # (\tone_generator|Add2~47\ & \tone_generator|Add2~52COUT1_105\))))
-- \tone_generator|Add2~57\ = CARRY(((\tone_generator|count_ga\(6) & !\tone_generator|Add2~52\)))
-- \tone_generator|Add2~57COUT1_106\ = CARRY(((\tone_generator|count_ga\(6) & !\tone_generator|Add2~52COUT1_105\)))

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
	datab => \tone_generator|count_ga\(6),
	cin => \tone_generator|Add2~47\,
	cin0 => \tone_generator|Add2~52\,
	cin1 => \tone_generator|Add2~52COUT1_105\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add2~55_combout\,
	cout0 => \tone_generator|Add2~57\,
	cout1 => \tone_generator|Add2~57COUT1_106\);

-- Location: LC_X3_Y7_N7
\tone_generator|Add2~40\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add2~40_combout\ = (\tone_generator|count_ga\(7) $ (((!\tone_generator|Add2~47\ & \tone_generator|Add2~57\) # (\tone_generator|Add2~47\ & \tone_generator|Add2~57COUT1_106\))))
-- \tone_generator|Add2~42\ = CARRY(((!\tone_generator|Add2~57\) # (!\tone_generator|count_ga\(7))))
-- \tone_generator|Add2~42COUT1_107\ = CARRY(((!\tone_generator|Add2~57COUT1_106\) # (!\tone_generator|count_ga\(7))))

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
	datab => \tone_generator|count_ga\(7),
	cin => \tone_generator|Add2~47\,
	cin0 => \tone_generator|Add2~57\,
	cin1 => \tone_generator|Add2~57COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add2~40_combout\,
	cout0 => \tone_generator|Add2~42\,
	cout1 => \tone_generator|Add2~42COUT1_107\);

-- Location: LC_X4_Y6_N2
\tone_generator|count_ga[7]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ga\(7) = DFFEAS(((\tone_generator|Add2~40_combout\ & ((!\tone_generator|Equal2~5_combout\) # (!\tone_generator|Equal2~0\)))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ga~3_combout\, , , , )

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
	dataa => \tone_generator|Equal2~0\,
	datac => \tone_generator|Equal2~5_combout\,
	datad => \tone_generator|Add2~40_combout\,
	aclr => GND,
	ena => \tone_generator|ga~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ga\(7));

-- Location: LC_X3_Y7_N4
\tone_generator|Add2~45\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add2~45_combout\ = \tone_generator|count_ga\(4) $ ((((!\tone_generator|Add2~37\))))
-- \tone_generator|Add2~47\ = CARRY((\tone_generator|count_ga\(4) & ((!\tone_generator|Add2~37COUT1_104\))))

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
	dataa => \tone_generator|count_ga\(4),
	cin0 => \tone_generator|Add2~37\,
	cin1 => \tone_generator|Add2~37COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add2~45_combout\,
	cout => \tone_generator|Add2~47\);

-- Location: LC_X4_Y6_N0
\tone_generator|count_ga[4]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal2~2\ = (!\tone_generator|count_ga\(6) & (\tone_generator|count_ga\(7) & (!B1_count_ga[4] & !\tone_generator|count_ga\(5))))
-- \tone_generator|count_ga\(4) = DFFEAS(\tone_generator|Equal2~2\, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ga~3_combout\, \tone_generator|Add2~45_combout\, , , VCC)

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
	dataa => \tone_generator|count_ga\(6),
	datab => \tone_generator|count_ga\(7),
	datac => \tone_generator|Add2~45_combout\,
	datad => \tone_generator|count_ga\(5),
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|ga~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal2~2\,
	regout => \tone_generator|count_ga\(4));

-- Location: LC_X4_Y6_N5
\tone_generator|count_ga[6]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ga\(6) = DFFEAS(GND, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ga~3_combout\, \tone_generator|Add2~55_combout\, , , VCC)

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
	datac => \tone_generator|Add2~55_combout\,
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|ga~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ga\(6));

-- Location: LC_X4_Y7_N5
\tone_generator|Add2~95\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add2~95_combout\ = (\tone_generator|count_ga\(15) $ ((\tone_generator|Add2~82\)))
-- \tone_generator|Add2~97\ = CARRY(((!\tone_generator|Add2~82\) # (!\tone_generator|count_ga\(15))))
-- \tone_generator|Add2~97COUT1_113\ = CARRY(((!\tone_generator|Add2~82\) # (!\tone_generator|count_ga\(15))))

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
	datab => \tone_generator|count_ga\(15),
	cin => \tone_generator|Add2~82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add2~95_combout\,
	cout0 => \tone_generator|Add2~97\,
	cout1 => \tone_generator|Add2~97COUT1_113\);

-- Location: LC_X3_Y6_N3
\tone_generator|count_ga[15]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ga\(15) = DFFEAS(GND, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ga~3_combout\, \tone_generator|Add2~95_combout\, , , VCC)

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
	datac => \tone_generator|Add2~95_combout\,
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|ga~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ga\(15));

-- Location: LC_X4_Y7_N0
\tone_generator|Add2~65\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add2~65_combout\ = (\tone_generator|count_ga\(10) $ ((!\tone_generator|Add2~72\)))
-- \tone_generator|Add2~67\ = CARRY(((\tone_generator|count_ga\(10) & !\tone_generator|Add2~72\)))
-- \tone_generator|Add2~67COUT1_109\ = CARRY(((\tone_generator|count_ga\(10) & !\tone_generator|Add2~72\)))

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
	datab => \tone_generator|count_ga\(10),
	cin => \tone_generator|Add2~72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add2~65_combout\,
	cout0 => \tone_generator|Add2~67\,
	cout1 => \tone_generator|Add2~67COUT1_109\);

-- Location: LC_X3_Y6_N0
\tone_generator|count_ga[10]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ga\(10) = DFFEAS(((\tone_generator|Add2~65_combout\ & ((!\tone_generator|Equal2~0\) # (!\tone_generator|Equal2~5_combout\)))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ga~3_combout\, , , , )

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
	dataa => \tone_generator|Equal2~5_combout\,
	datac => \tone_generator|Equal2~0\,
	datad => \tone_generator|Add2~65_combout\,
	aclr => GND,
	ena => \tone_generator|ga~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ga\(10));

-- Location: LC_X4_Y7_N1
\tone_generator|Add2~75\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add2~75_combout\ = (\tone_generator|count_ga\(11) $ (((!\tone_generator|Add2~72\ & \tone_generator|Add2~67\) # (\tone_generator|Add2~72\ & \tone_generator|Add2~67COUT1_109\))))
-- \tone_generator|Add2~77\ = CARRY(((!\tone_generator|Add2~67\) # (!\tone_generator|count_ga\(11))))
-- \tone_generator|Add2~77COUT1_110\ = CARRY(((!\tone_generator|Add2~67COUT1_109\) # (!\tone_generator|count_ga\(11))))

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
	datab => \tone_generator|count_ga\(11),
	cin => \tone_generator|Add2~72\,
	cin0 => \tone_generator|Add2~67\,
	cin1 => \tone_generator|Add2~67COUT1_109\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add2~75_combout\,
	cout0 => \tone_generator|Add2~77\,
	cout1 => \tone_generator|Add2~77COUT1_110\);

-- Location: LC_X3_Y6_N6
\tone_generator|count_ga[11]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ga\(11) = DFFEAS(GND, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ga~3_combout\, \tone_generator|Add2~75_combout\, , , VCC)

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
	datac => \tone_generator|Add2~75_combout\,
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|ga~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ga\(11));

-- Location: LC_X3_Y7_N8
\tone_generator|Add2~60\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add2~60_combout\ = (\tone_generator|count_ga\(8) $ ((!(!\tone_generator|Add2~47\ & \tone_generator|Add2~42\) # (\tone_generator|Add2~47\ & \tone_generator|Add2~42COUT1_107\))))
-- \tone_generator|Add2~62\ = CARRY(((\tone_generator|count_ga\(8) & !\tone_generator|Add2~42\)))
-- \tone_generator|Add2~62COUT1_108\ = CARRY(((\tone_generator|count_ga\(8) & !\tone_generator|Add2~42COUT1_107\)))

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
	datab => \tone_generator|count_ga\(8),
	cin => \tone_generator|Add2~47\,
	cin0 => \tone_generator|Add2~42\,
	cin1 => \tone_generator|Add2~42COUT1_107\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add2~60_combout\,
	cout0 => \tone_generator|Add2~62\,
	cout1 => \tone_generator|Add2~62COUT1_108\);

-- Location: LC_X3_Y6_N8
\tone_generator|count_ga[8]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ga\(8) = DFFEAS(((\tone_generator|Add2~60_combout\ & ((!\tone_generator|Equal2~0\) # (!\tone_generator|Equal2~5_combout\)))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ga~3_combout\, , , , )

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
	dataa => \tone_generator|Equal2~5_combout\,
	datac => \tone_generator|Equal2~0\,
	datad => \tone_generator|Add2~60_combout\,
	aclr => GND,
	ena => \tone_generator|ga~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ga\(8));

-- Location: LC_X3_Y7_N9
\tone_generator|Add2~70\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add2~70_combout\ = (\tone_generator|count_ga\(9) $ (((!\tone_generator|Add2~47\ & \tone_generator|Add2~62\) # (\tone_generator|Add2~47\ & \tone_generator|Add2~62COUT1_108\))))
-- \tone_generator|Add2~72\ = CARRY(((!\tone_generator|Add2~62COUT1_108\) # (!\tone_generator|count_ga\(9))))

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
	datab => \tone_generator|count_ga\(9),
	cin => \tone_generator|Add2~47\,
	cin0 => \tone_generator|Add2~62\,
	cin1 => \tone_generator|Add2~62COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add2~70_combout\,
	cout => \tone_generator|Add2~72\);

-- Location: LC_X3_Y6_N5
\tone_generator|count_ga[9]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal2~3\ = (!\tone_generator|count_ga\(11) & (\tone_generator|count_ga\(10) & (!B1_count_ga[9] & \tone_generator|count_ga\(8))))
-- \tone_generator|count_ga\(9) = DFFEAS(\tone_generator|Equal2~3\, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ga~3_combout\, \tone_generator|Add2~70_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \tone_generator|count_ga\(11),
	datab => \tone_generator|count_ga\(10),
	datac => \tone_generator|Add2~70_combout\,
	datad => \tone_generator|count_ga\(8),
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|ga~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal2~3\,
	regout => \tone_generator|count_ga\(9));

-- Location: LC_X4_Y7_N2
\tone_generator|Add2~85\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add2~85_combout\ = \tone_generator|count_ga\(12) $ ((((!(!\tone_generator|Add2~72\ & \tone_generator|Add2~77\) # (\tone_generator|Add2~72\ & \tone_generator|Add2~77COUT1_110\)))))
-- \tone_generator|Add2~87\ = CARRY((\tone_generator|count_ga\(12) & ((!\tone_generator|Add2~77\))))
-- \tone_generator|Add2~87COUT1_111\ = CARRY((\tone_generator|count_ga\(12) & ((!\tone_generator|Add2~77COUT1_110\))))

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
	dataa => \tone_generator|count_ga\(12),
	cin => \tone_generator|Add2~72\,
	cin0 => \tone_generator|Add2~77\,
	cin1 => \tone_generator|Add2~77COUT1_110\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add2~85_combout\,
	cout0 => \tone_generator|Add2~87\,
	cout1 => \tone_generator|Add2~87COUT1_111\);

-- Location: LC_X4_Y7_N3
\tone_generator|Add2~90\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add2~90_combout\ = (\tone_generator|count_ga\(13) $ (((!\tone_generator|Add2~72\ & \tone_generator|Add2~87\) # (\tone_generator|Add2~72\ & \tone_generator|Add2~87COUT1_111\))))
-- \tone_generator|Add2~92\ = CARRY(((!\tone_generator|Add2~87\) # (!\tone_generator|count_ga\(13))))
-- \tone_generator|Add2~92COUT1_112\ = CARRY(((!\tone_generator|Add2~87COUT1_111\) # (!\tone_generator|count_ga\(13))))

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
	datab => \tone_generator|count_ga\(13),
	cin => \tone_generator|Add2~72\,
	cin0 => \tone_generator|Add2~87\,
	cin1 => \tone_generator|Add2~87COUT1_111\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add2~90_combout\,
	cout0 => \tone_generator|Add2~92\,
	cout1 => \tone_generator|Add2~92COUT1_112\);

-- Location: LC_X3_Y6_N4
\tone_generator|count_ga[13]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ga\(13) = DFFEAS(GND, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ga~3_combout\, \tone_generator|Add2~90_combout\, , , VCC)

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
	datac => \tone_generator|Add2~90_combout\,
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|ga~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ga\(13));

-- Location: LC_X3_Y6_N9
\tone_generator|count_ga[12]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal2~4\ = (!\tone_generator|count_ga\(15) & (\tone_generator|count_ga\(14) & (!B1_count_ga[12] & !\tone_generator|count_ga\(13))))
-- \tone_generator|count_ga\(12) = DFFEAS(\tone_generator|Equal2~4\, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ga~3_combout\, \tone_generator|Add2~85_combout\, , , VCC)

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
	dataa => \tone_generator|count_ga\(15),
	datab => \tone_generator|count_ga\(14),
	datac => \tone_generator|Add2~85_combout\,
	datad => \tone_generator|count_ga\(13),
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|ga~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal2~4\,
	regout => \tone_generator|count_ga\(12));

-- Location: LC_X4_Y6_N3
\tone_generator|Equal2~5\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal2~5_combout\ = (\tone_generator|Equal2~1\ & (\tone_generator|Equal2~2\ & (\tone_generator|Equal2~4\ & \tone_generator|Equal2~3\)))

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
	dataa => \tone_generator|Equal2~1\,
	datab => \tone_generator|Equal2~2\,
	datac => \tone_generator|Equal2~4\,
	datad => \tone_generator|Equal2~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal2~5_combout\);

-- Location: LC_X4_Y7_N4
\tone_generator|Add2~80\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add2~80_combout\ = (\tone_generator|count_ga\(14) $ ((!(!\tone_generator|Add2~72\ & \tone_generator|Add2~92\) # (\tone_generator|Add2~72\ & \tone_generator|Add2~92COUT1_112\))))
-- \tone_generator|Add2~82\ = CARRY(((\tone_generator|count_ga\(14) & !\tone_generator|Add2~92COUT1_112\)))

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
	datab => \tone_generator|count_ga\(14),
	cin => \tone_generator|Add2~72\,
	cin0 => \tone_generator|Add2~92\,
	cin1 => \tone_generator|Add2~92COUT1_112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add2~80_combout\,
	cout => \tone_generator|Add2~82\);

-- Location: LC_X3_Y6_N7
\tone_generator|count_ga[14]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ga\(14) = DFFEAS(((\tone_generator|Add2~80_combout\ & ((!\tone_generator|Equal2~0\) # (!\tone_generator|Equal2~5_combout\)))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ga~3_combout\, , , , )

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
	dataa => \tone_generator|Equal2~5_combout\,
	datac => \tone_generator|Equal2~0\,
	datad => \tone_generator|Add2~80_combout\,
	aclr => GND,
	ena => \tone_generator|ga~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ga\(14));

-- Location: LC_X4_Y7_N6
\tone_generator|Add2~0\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add2~0_combout\ = \tone_generator|count_ga\(16) $ ((((!(!\tone_generator|Add2~82\ & \tone_generator|Add2~97\) # (\tone_generator|Add2~82\ & \tone_generator|Add2~97COUT1_113\)))))
-- \tone_generator|Add2~2\ = CARRY((\tone_generator|count_ga\(16) & ((!\tone_generator|Add2~97\))))
-- \tone_generator|Add2~2COUT1_114\ = CARRY((\tone_generator|count_ga\(16) & ((!\tone_generator|Add2~97COUT1_113\))))

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
	dataa => \tone_generator|count_ga\(16),
	cin => \tone_generator|Add2~82\,
	cin0 => \tone_generator|Add2~97\,
	cin1 => \tone_generator|Add2~97COUT1_113\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add2~0_combout\,
	cout0 => \tone_generator|Add2~2\,
	cout1 => \tone_generator|Add2~2COUT1_114\);

-- Location: LC_X5_Y7_N3
\tone_generator|count_ga[16]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ga\(16) = DFFEAS(((\tone_generator|Add2~0_combout\ & ((!\tone_generator|Equal2~5_combout\) # (!\tone_generator|Equal2~0\)))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ga~3_combout\, , , , )

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
	datab => \tone_generator|Equal2~0\,
	datac => \tone_generator|Add2~0_combout\,
	datad => \tone_generator|Equal2~5_combout\,
	aclr => GND,
	ena => \tone_generator|ga~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ga\(16));

-- Location: LC_X4_Y7_N7
\tone_generator|Add2~5\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add2~5_combout\ = (\tone_generator|count_ga\(17) $ (((!\tone_generator|Add2~82\ & \tone_generator|Add2~2\) # (\tone_generator|Add2~82\ & \tone_generator|Add2~2COUT1_114\))))
-- \tone_generator|Add2~7\ = CARRY(((!\tone_generator|Add2~2\) # (!\tone_generator|count_ga\(17))))
-- \tone_generator|Add2~7COUT1_115\ = CARRY(((!\tone_generator|Add2~2COUT1_114\) # (!\tone_generator|count_ga\(17))))

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
	datab => \tone_generator|count_ga\(17),
	cin => \tone_generator|Add2~82\,
	cin0 => \tone_generator|Add2~2\,
	cin1 => \tone_generator|Add2~2COUT1_114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add2~5_combout\,
	cout0 => \tone_generator|Add2~7\,
	cout1 => \tone_generator|Add2~7COUT1_115\);

-- Location: LC_X5_Y7_N9
\tone_generator|count_ga[17]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal2~0\ = (!\tone_generator|count_ga\(19) & (!\tone_generator|count_ga\(18) & (!B1_count_ga[17] & \tone_generator|count_ga\(16))))
-- \tone_generator|count_ga\(17) = DFFEAS(\tone_generator|Equal2~0\, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ga~3_combout\, \tone_generator|Add2~5_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \tone_generator|count_ga\(19),
	datab => \tone_generator|count_ga\(18),
	datac => \tone_generator|Add2~5_combout\,
	datad => \tone_generator|count_ga\(16),
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|ga~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal2~0\,
	regout => \tone_generator|count_ga\(17));

-- Location: LC_X4_Y7_N8
\tone_generator|Add2~10\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add2~10_combout\ = (\tone_generator|count_ga\(18) $ ((!(!\tone_generator|Add2~82\ & \tone_generator|Add2~7\) # (\tone_generator|Add2~82\ & \tone_generator|Add2~7COUT1_115\))))
-- \tone_generator|Add2~12\ = CARRY(((\tone_generator|count_ga\(18) & !\tone_generator|Add2~7\)))
-- \tone_generator|Add2~12COUT1_116\ = CARRY(((\tone_generator|count_ga\(18) & !\tone_generator|Add2~7COUT1_115\)))

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
	datab => \tone_generator|count_ga\(18),
	cin => \tone_generator|Add2~82\,
	cin0 => \tone_generator|Add2~7\,
	cin1 => \tone_generator|Add2~7COUT1_115\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add2~10_combout\,
	cout0 => \tone_generator|Add2~12\,
	cout1 => \tone_generator|Add2~12COUT1_116\);

-- Location: LC_X5_Y7_N7
\tone_generator|count_ga[18]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ga\(18) = DFFEAS(GND, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ga~3_combout\, \tone_generator|Add2~10_combout\, , , VCC)

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
	datac => \tone_generator|Add2~10_combout\,
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|ga~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ga\(18));

-- Location: LC_X4_Y7_N9
\tone_generator|Add2~15\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add2~15_combout\ = \tone_generator|count_ga\(19) $ (((((!\tone_generator|Add2~82\ & \tone_generator|Add2~12\) # (\tone_generator|Add2~82\ & \tone_generator|Add2~12COUT1_116\)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tone_generator|count_ga\(19),
	cin => \tone_generator|Add2~82\,
	cin0 => \tone_generator|Add2~12\,
	cin1 => \tone_generator|Add2~12COUT1_116\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add2~15_combout\);

-- Location: LC_X5_Y7_N6
\tone_generator|count_ga[19]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ga\(19) = DFFEAS(GND, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ga~3_combout\, \tone_generator|Add2~15_combout\, , , VCC)

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
	datac => \tone_generator|Add2~15_combout\,
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|ga~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ga\(19));

-- Location: LC_X4_Y6_N9
\tone_generator|ga\ : maxv_lcell
-- Equation(s):
-- \tone_generator|ga~2\ = (B1_ga $ (((\tone_generator|Equal2~0\ & \tone_generator|Equal2~5_combout\))))

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
	datab => \tone_generator|Equal2~0\,
	datad => \tone_generator|Equal2~5_combout\,
	aclr => GND,
	ena => \tone_generator|ga~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|ga~2\,
	regout => \tone_generator|ga~regout\);

-- Location: LC_X10_Y4_N0
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

-- Location: LC_X9_Y8_N9
\tone_generator|ma~5\ : maxv_lcell
-- Equation(s):
-- \tone_generator|ma~5_combout\ = (index_register(3) & (((!index_register(1) & !index_register(0))))) # (!index_register(3) & (((index_register(1) & index_register(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "500a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => index_register(3),
	datac => index_register(1),
	datad => index_register(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|ma~5_combout\);

-- Location: LC_X9_Y8_N7
\tone_generator|ma~9\ : maxv_lcell
-- Equation(s):
-- \tone_generator|ma~9_combout\ = ((!index_register(2) & (\fsm_state~regout\ & \tone_generator|ma~5_combout\)))

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
	datab => index_register(2),
	datac => \fsm_state~regout\,
	datad => \tone_generator|ma~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|ma~9_combout\);

-- Location: LC_X9_Y5_N0
\tone_generator|count_ma[10]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ma\(10) = DFFEAS((((\tone_generator|Add3~70_combout\))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ma~9_combout\, , , , )

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
	ena => \tone_generator|ma~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ma\(10));

-- Location: LC_X10_Y4_N1
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

-- Location: LC_X9_Y5_N4
\tone_generator|count_ma[11]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ma\(11) = DFFEAS(GND, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ma~9_combout\, \tone_generator|Add3~75_combout\, , , VCC)

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
	ena => \tone_generator|ma~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ma\(11));

-- Location: LC_X9_Y4_N5
\tone_generator|Add3~40\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add3~40_combout\ = (\tone_generator|count_ma\(5) $ ((\tone_generator|Add3~47\)))
-- \tone_generator|Add3~42\ = CARRY(((!\tone_generator|Add3~47\) # (!\tone_generator|count_ma\(5))))
-- \tone_generator|Add3~42COUT1_105\ = CARRY(((!\tone_generator|Add3~47\) # (!\tone_generator|count_ma\(5))))

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
	datab => \tone_generator|count_ma\(5),
	cin => \tone_generator|Add3~47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add3~40_combout\,
	cout0 => \tone_generator|Add3~42\,
	cout1 => \tone_generator|Add3~42COUT1_105\);

-- Location: LC_X10_Y5_N6
\tone_generator|count_ma[5]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ma\(5) = DFFEAS(((\tone_generator|Add3~40_combout\ & ((!\tone_generator|Equal3~5_combout\) # (!\tone_generator|Equal3~0\)))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ma~9_combout\, , , , )

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
	datac => \tone_generator|Add3~40_combout\,
	datad => \tone_generator|Equal3~5_combout\,
	aclr => GND,
	ena => \tone_generator|ma~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ma\(5));

-- Location: LC_X9_Y4_N6
\tone_generator|Add3~50\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add3~50_combout\ = (\tone_generator|count_ma\(6) $ ((!(!\tone_generator|Add3~47\ & \tone_generator|Add3~42\) # (\tone_generator|Add3~47\ & \tone_generator|Add3~42COUT1_105\))))
-- \tone_generator|Add3~52\ = CARRY(((\tone_generator|count_ma\(6) & !\tone_generator|Add3~42\)))
-- \tone_generator|Add3~52COUT1_106\ = CARRY(((\tone_generator|count_ma\(6) & !\tone_generator|Add3~42COUT1_105\)))

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
	datab => \tone_generator|count_ma\(6),
	cin => \tone_generator|Add3~47\,
	cin0 => \tone_generator|Add3~42\,
	cin1 => \tone_generator|Add3~42COUT1_105\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add3~50_combout\,
	cout0 => \tone_generator|Add3~52\,
	cout1 => \tone_generator|Add3~52COUT1_106\);

-- Location: LC_X10_Y5_N4
\tone_generator|count_ma[6]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ma\(6) = DFFEAS((((\tone_generator|Add3~50_combout\))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ma~9_combout\, , , , )

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
	datad => \tone_generator|Add3~50_combout\,
	aclr => GND,
	ena => \tone_generator|ma~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ma\(6));

-- Location: LC_X9_Y4_N7
\tone_generator|Add3~55\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add3~55_combout\ = (\tone_generator|count_ma\(7) $ (((!\tone_generator|Add3~47\ & \tone_generator|Add3~52\) # (\tone_generator|Add3~47\ & \tone_generator|Add3~52COUT1_106\))))
-- \tone_generator|Add3~57\ = CARRY(((!\tone_generator|Add3~52\) # (!\tone_generator|count_ma\(7))))
-- \tone_generator|Add3~57COUT1_107\ = CARRY(((!\tone_generator|Add3~52COUT1_106\) # (!\tone_generator|count_ma\(7))))

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
	datab => \tone_generator|count_ma\(7),
	cin => \tone_generator|Add3~47\,
	cin0 => \tone_generator|Add3~52\,
	cin1 => \tone_generator|Add3~52COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add3~55_combout\,
	cout0 => \tone_generator|Add3~57\,
	cout1 => \tone_generator|Add3~57COUT1_107\);

-- Location: LC_X10_Y5_N7
\tone_generator|count_ma[7]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ma\(7) = DFFEAS((((\tone_generator|Add3~55_combout\))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ma~9_combout\, , , , )

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
	ena => \tone_generator|ma~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ma\(7));

-- Location: LC_X9_Y4_N0
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

-- Location: LC_X8_Y5_N6
\tone_generator|count_ma[0]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal3~1\ = (\tone_generator|count_ma\(3) & (\tone_generator|count_ma\(2) & (!B1_count_ma[0] & \tone_generator|count_ma\(1))))
-- \tone_generator|count_ma\(0) = DFFEAS(\tone_generator|Equal3~1\, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ma~9_combout\, \tone_generator|Add3~35_combout\, , , VCC)

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
	dataa => \tone_generator|count_ma\(3),
	datab => \tone_generator|count_ma\(2),
	datac => \tone_generator|Add3~35_combout\,
	datad => \tone_generator|count_ma\(1),
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|ma~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal3~1\,
	regout => \tone_generator|count_ma\(0));

-- Location: LC_X9_Y4_N1
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

-- Location: LC_X8_Y5_N9
\tone_generator|count_ma[1]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ma\(1) = DFFEAS(((\tone_generator|Add3~20_combout\ & ((!\tone_generator|Equal3~5_combout\) # (!\tone_generator|Equal3~0\)))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ma~9_combout\, , , , )

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
	datac => \tone_generator|Add3~20_combout\,
	datad => \tone_generator|Equal3~5_combout\,
	aclr => GND,
	ena => \tone_generator|ma~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ma\(1));

-- Location: LC_X9_Y4_N2
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

-- Location: LC_X8_Y5_N2
\tone_generator|count_ma[2]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ma\(2) = DFFEAS(((\tone_generator|Add3~25_combout\ & ((!\tone_generator|Equal3~5_combout\) # (!\tone_generator|Equal3~0\)))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ma~9_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	datab => \tone_generator|Add3~25_combout\,
	datac => \tone_generator|Equal3~0\,
	datad => \tone_generator|Equal3~5_combout\,
	aclr => GND,
	ena => \tone_generator|ma~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ma\(2));

-- Location: LC_X9_Y4_N3
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

-- Location: LC_X8_Y5_N5
\tone_generator|count_ma[3]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ma\(3) = DFFEAS(((\tone_generator|Add3~30_combout\ & ((!\tone_generator|Equal3~5_combout\) # (!\tone_generator|Equal3~0\)))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ma~9_combout\, , , , )

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
	ena => \tone_generator|ma~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ma\(3));

-- Location: LC_X9_Y4_N4
\tone_generator|Add3~45\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add3~45_combout\ = \tone_generator|count_ma\(4) $ ((((!\tone_generator|Add3~32\))))
-- \tone_generator|Add3~47\ = CARRY((\tone_generator|count_ma\(4) & ((!\tone_generator|Add3~32COUT1_104\))))

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
	dataa => \tone_generator|count_ma\(4),
	cin0 => \tone_generator|Add3~32\,
	cin1 => \tone_generator|Add3~32COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add3~45_combout\,
	cout => \tone_generator|Add3~47\);

-- Location: LC_X10_Y5_N9
\tone_generator|count_ma[4]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal3~2\ = (!\tone_generator|count_ma\(6) & (!\tone_generator|count_ma\(7) & (!B1_count_ma[4] & \tone_generator|count_ma\(5))))
-- \tone_generator|count_ma\(4) = DFFEAS(\tone_generator|Equal3~2\, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ma~9_combout\, \tone_generator|Add3~45_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \tone_generator|count_ma\(6),
	datab => \tone_generator|count_ma\(7),
	datac => \tone_generator|Add3~45_combout\,
	datad => \tone_generator|count_ma\(5),
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|ma~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal3~2\,
	regout => \tone_generator|count_ma\(4));

-- Location: LC_X9_Y4_N8
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

-- Location: LC_X9_Y5_N8
\tone_generator|count_ma[8]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ma\(8) = DFFEAS(((\tone_generator|Add3~60_combout\ & ((!\tone_generator|Equal3~5_combout\) # (!\tone_generator|Equal3~0\)))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ma~9_combout\, , , , )

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
	datab => \tone_generator|Equal3~0\,
	datac => \tone_generator|Equal3~5_combout\,
	datad => \tone_generator|Add3~60_combout\,
	aclr => GND,
	ena => \tone_generator|ma~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ma\(8));

-- Location: LC_X9_Y4_N9
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

-- Location: LC_X9_Y5_N1
\tone_generator|count_ma[9]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal3~3\ = (!\tone_generator|count_ma\(11) & (!\tone_generator|count_ma\(10) & (!B1_count_ma[9] & \tone_generator|count_ma\(8))))
-- \tone_generator|count_ma\(9) = DFFEAS(\tone_generator|Equal3~3\, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ma~9_combout\, \tone_generator|Add3~65_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \tone_generator|count_ma\(11),
	datab => \tone_generator|count_ma\(10),
	datac => \tone_generator|Add3~65_combout\,
	datad => \tone_generator|count_ma\(8),
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|ma~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal3~3\,
	regout => \tone_generator|count_ma\(9));

-- Location: LC_X10_Y4_N2
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

-- Location: LC_X9_Y5_N7
\tone_generator|count_ma[12]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ma\(12) = DFFEAS(((\tone_generator|Add3~80_combout\ & ((!\tone_generator|Equal3~5_combout\) # (!\tone_generator|Equal3~0\)))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ma~9_combout\, , , , )

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
	datab => \tone_generator|Equal3~0\,
	datac => \tone_generator|Equal3~5_combout\,
	datad => \tone_generator|Add3~80_combout\,
	aclr => GND,
	ena => \tone_generator|ma~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ma\(12));

-- Location: LC_X10_Y4_N3
\tone_generator|Add3~85\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add3~85_combout\ = (\tone_generator|count_ma\(13) $ (((!\tone_generator|Add3~67\ & \tone_generator|Add3~82\) # (\tone_generator|Add3~67\ & \tone_generator|Add3~82COUT1_111\))))
-- \tone_generator|Add3~87\ = CARRY(((!\tone_generator|Add3~82\) # (!\tone_generator|count_ma\(13))))
-- \tone_generator|Add3~87COUT1_112\ = CARRY(((!\tone_generator|Add3~82COUT1_111\) # (!\tone_generator|count_ma\(13))))

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
	datab => \tone_generator|count_ma\(13),
	cin => \tone_generator|Add3~67\,
	cin0 => \tone_generator|Add3~82\,
	cin1 => \tone_generator|Add3~82COUT1_111\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add3~85_combout\,
	cout0 => \tone_generator|Add3~87\,
	cout1 => \tone_generator|Add3~87COUT1_112\);

-- Location: LC_X10_Y4_N4
\tone_generator|Add3~90\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add3~90_combout\ = \tone_generator|count_ma\(14) $ ((((!(!\tone_generator|Add3~67\ & \tone_generator|Add3~87\) # (\tone_generator|Add3~67\ & \tone_generator|Add3~87COUT1_112\)))))
-- \tone_generator|Add3~92\ = CARRY((\tone_generator|count_ma\(14) & ((!\tone_generator|Add3~87COUT1_112\))))

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
	dataa => \tone_generator|count_ma\(14),
	cin => \tone_generator|Add3~67\,
	cin0 => \tone_generator|Add3~87\,
	cin1 => \tone_generator|Add3~87COUT1_112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add3~90_combout\,
	cout => \tone_generator|Add3~92\);

-- Location: LC_X10_Y4_N5
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

-- Location: LC_X9_Y5_N9
\tone_generator|count_ma[15]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ma\(15) = DFFEAS(GND, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ma~9_combout\, \tone_generator|Add3~95_combout\, , , VCC)

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
	datac => \tone_generator|Add3~95_combout\,
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|ma~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ma\(15));

-- Location: LC_X9_Y5_N5
\tone_generator|count_ma[14]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal3~4\ = (\tone_generator|count_ma\(13) & (\tone_generator|count_ma\(12) & (!B1_count_ma[14] & !\tone_generator|count_ma\(15))))
-- \tone_generator|count_ma\(14) = DFFEAS(\tone_generator|Equal3~4\, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ma~9_combout\, \tone_generator|Add3~90_combout\, , , VCC)

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
	dataa => \tone_generator|count_ma\(13),
	datab => \tone_generator|count_ma\(12),
	datac => \tone_generator|Add3~90_combout\,
	datad => \tone_generator|count_ma\(15),
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|ma~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal3~4\,
	regout => \tone_generator|count_ma\(14));

-- Location: LC_X9_Y5_N2
\tone_generator|Equal3~5\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal3~5_combout\ = (\tone_generator|Equal3~4\ & (\tone_generator|Equal3~1\ & (\tone_generator|Equal3~2\ & \tone_generator|Equal3~3\)))

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
	dataa => \tone_generator|Equal3~4\,
	datab => \tone_generator|Equal3~1\,
	datac => \tone_generator|Equal3~2\,
	datad => \tone_generator|Equal3~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal3~5_combout\);

-- Location: LC_X9_Y5_N6
\tone_generator|count_ma[13]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ma\(13) = DFFEAS(((\tone_generator|Add3~85_combout\ & ((!\tone_generator|Equal3~5_combout\) # (!\tone_generator|Equal3~0\)))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ma~9_combout\, , , , )

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
	datab => \tone_generator|Equal3~0\,
	datac => \tone_generator|Equal3~5_combout\,
	datad => \tone_generator|Add3~85_combout\,
	aclr => GND,
	ena => \tone_generator|ma~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ma\(13));

-- Location: LC_X10_Y4_N6
\tone_generator|Add3~0\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add3~0_combout\ = (\tone_generator|count_ma\(16) $ ((!(!\tone_generator|Add3~92\ & \tone_generator|Add3~97\) # (\tone_generator|Add3~92\ & \tone_generator|Add3~97COUT1_113\))))
-- \tone_generator|Add3~2\ = CARRY(((\tone_generator|count_ma\(16) & !\tone_generator|Add3~97\)))
-- \tone_generator|Add3~2COUT1_114\ = CARRY(((\tone_generator|count_ma\(16) & !\tone_generator|Add3~97COUT1_113\)))

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
	datab => \tone_generator|count_ma\(16),
	cin => \tone_generator|Add3~92\,
	cin0 => \tone_generator|Add3~97\,
	cin1 => \tone_generator|Add3~97COUT1_113\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add3~0_combout\,
	cout0 => \tone_generator|Add3~2\,
	cout1 => \tone_generator|Add3~2COUT1_114\);

-- Location: LC_X10_Y5_N2
\tone_generator|count_ma[16]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ma\(16) = DFFEAS(((\tone_generator|Add3~0_combout\ & ((!\tone_generator|Equal3~5_combout\) # (!\tone_generator|Equal3~0\)))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ma~9_combout\, , , , )

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
	ena => \tone_generator|ma~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ma\(16));

-- Location: LC_X10_Y4_N7
\tone_generator|Add3~5\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add3~5_combout\ = (\tone_generator|count_ma\(17) $ (((!\tone_generator|Add3~92\ & \tone_generator|Add3~2\) # (\tone_generator|Add3~92\ & \tone_generator|Add3~2COUT1_114\))))
-- \tone_generator|Add3~7\ = CARRY(((!\tone_generator|Add3~2\) # (!\tone_generator|count_ma\(17))))
-- \tone_generator|Add3~7COUT1_115\ = CARRY(((!\tone_generator|Add3~2COUT1_114\) # (!\tone_generator|count_ma\(17))))

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
	datab => \tone_generator|count_ma\(17),
	cin => \tone_generator|Add3~92\,
	cin0 => \tone_generator|Add3~2\,
	cin1 => \tone_generator|Add3~2COUT1_114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add3~5_combout\,
	cout0 => \tone_generator|Add3~7\,
	cout1 => \tone_generator|Add3~7COUT1_115\);

-- Location: LC_X10_Y4_N8
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

-- Location: LC_X10_Y4_N9
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

-- Location: LC_X10_Y5_N1
\tone_generator|count_ma[19]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ma\(19) = DFFEAS(GND, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ma~9_combout\, \tone_generator|Add3~15_combout\, , , VCC)

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
	ena => \tone_generator|ma~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ma\(19));

-- Location: LC_X10_Y5_N8
\tone_generator|count_ma[17]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal3~0\ = (\tone_generator|count_ma\(16) & (!\tone_generator|count_ma\(18) & (!B1_count_ma[17] & !\tone_generator|count_ma\(19))))
-- \tone_generator|count_ma\(17) = DFFEAS(\tone_generator|Equal3~0\, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ma~9_combout\, \tone_generator|Add3~5_combout\, , , VCC)

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
	dataa => \tone_generator|count_ma\(16),
	datab => \tone_generator|count_ma\(18),
	datac => \tone_generator|Add3~5_combout\,
	datad => \tone_generator|count_ma\(19),
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|ma~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal3~0\,
	regout => \tone_generator|count_ma\(17));

-- Location: LC_X10_Y5_N0
\tone_generator|count_ma[18]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_ma\(18) = DFFEAS((((\tone_generator|Add3~10_combout\))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|ma~9_combout\, , , , )

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
	datad => \tone_generator|Add3~10_combout\,
	aclr => GND,
	ena => \tone_generator|ma~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_ma\(18));

-- Location: LC_X9_Y5_N3
\tone_generator|ma\ : maxv_lcell
-- Equation(s):
-- \tone_generator|ma~8\ = (B1_ma $ (((\tone_generator|Equal3~0\ & \tone_generator|Equal3~5_combout\))))

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
	ena => \tone_generator|ma~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|ma~8\,
	regout => \tone_generator|ma~regout\);

-- Location: LC_X8_Y6_N2
\tone_generator|toneOut~2\ : maxv_lcell
-- Equation(s):
-- \tone_generator|toneOut~2_combout\ = (index_register(1) & (index_register(0))) # (!index_register(1) & ((index_register(0) & (\tone_generator|ga~2\)) # (!index_register(0) & ((\tone_generator|ma~8\)))))

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
	dataa => index_register(1),
	datab => index_register(0),
	datac => \tone_generator|ga~2\,
	datad => \tone_generator|ma~8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|toneOut~2_combout\);

-- Location: LC_X8_Y6_N7
\tone_generator|toneOut~3\ : maxv_lcell
-- Equation(s):
-- \tone_generator|toneOut~3_combout\ = (index_register(1) & ((\tone_generator|toneOut~2_combout\ & ((\tone_generator|ni_lower~8\))) # (!\tone_generator|toneOut~2_combout\ & (\tone_generator|re~0\)))) # (!index_register(1) & 
-- (((\tone_generator|toneOut~2_combout\))))

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
	dataa => \tone_generator|re~0\,
	datab => index_register(1),
	datac => \tone_generator|ni_lower~8\,
	datad => \tone_generator|toneOut~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|toneOut~3_combout\);

-- Location: LC_X8_Y6_N3
\tone_generator|toneOut~4\ : maxv_lcell
-- Equation(s):
-- \tone_generator|toneOut~4_combout\ = (index_register(1) & (index_register(0))) # (!index_register(1) & ((index_register(0) & ((\tone_generator|sa1~0\))) # (!index_register(0) & (\tone_generator|ni_lower~8\))))

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
	dataa => index_register(1),
	datab => index_register(0),
	datac => \tone_generator|ni_lower~8\,
	datad => \tone_generator|sa1~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|toneOut~4_combout\);

-- Location: LC_X8_Y6_N4
\tone_generator|toneOut~5\ : maxv_lcell
-- Equation(s):
-- \tone_generator|toneOut~5_combout\ = (index_register(1) & ((\tone_generator|toneOut~4_combout\ & (\tone_generator|ma~8\)) # (!\tone_generator|toneOut~4_combout\ & ((\tone_generator|re~0\))))) # (!index_register(1) & 
-- (((\tone_generator|toneOut~4_combout\))))

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
	dataa => index_register(1),
	datab => \tone_generator|ma~8\,
	datac => \tone_generator|re~0\,
	datad => \tone_generator|toneOut~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|toneOut~5_combout\);

-- Location: LC_X7_Y7_N5
\tone_generator|Add4~95\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add4~95_combout\ = \tone_generator|count_pa\(15) $ ((((\tone_generator|Add4~92\))))
-- \tone_generator|Add4~97\ = CARRY(((!\tone_generator|Add4~92\)) # (!\tone_generator|count_pa\(15)))
-- \tone_generator|Add4~97COUT1_113\ = CARRY(((!\tone_generator|Add4~92\)) # (!\tone_generator|count_pa\(15)))

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
	dataa => \tone_generator|count_pa\(15),
	cin => \tone_generator|Add4~92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add4~95_combout\,
	cout0 => \tone_generator|Add4~97\,
	cout1 => \tone_generator|Add4~97COUT1_113\);

-- Location: LC_X9_Y10_N0
\tone_generator|pa~3\ : maxv_lcell
-- Equation(s):
-- \tone_generator|pa~3_combout\ = (((index_register(1)))) # (!index_register(0))

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
	dataa => index_register(0),
	datad => index_register(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|pa~3_combout\);

-- Location: LC_X8_Y10_N2
\tone_generator|pa~10\ : maxv_lcell
-- Equation(s):
-- \tone_generator|pa~10_combout\ = (\fsm_state~regout\ & (!index_register(3) & (\tone_generator|pa~3_combout\ & index_register(2))))

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
	dataa => \fsm_state~regout\,
	datab => index_register(3),
	datac => \tone_generator|pa~3_combout\,
	datad => index_register(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|pa~10_combout\);

-- Location: LC_X8_Y8_N1
\tone_generator|count_pa[15]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_pa\(15) = DFFEAS(GND, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|pa~10_combout\, \tone_generator|Add4~95_combout\, , , VCC)

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
	datac => \tone_generator|Add4~95_combout\,
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|pa~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_pa\(15));

-- Location: LC_X7_Y7_N0
\tone_generator|Add4~70\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add4~70_combout\ = (\tone_generator|count_pa\(10) $ ((!\tone_generator|Add4~67\)))
-- \tone_generator|Add4~72\ = CARRY(((\tone_generator|count_pa\(10) & !\tone_generator|Add4~67\)))
-- \tone_generator|Add4~72COUT1_109\ = CARRY(((\tone_generator|count_pa\(10) & !\tone_generator|Add4~67\)))

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
	datab => \tone_generator|count_pa\(10),
	cin => \tone_generator|Add4~67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add4~70_combout\,
	cout0 => \tone_generator|Add4~72\,
	cout1 => \tone_generator|Add4~72COUT1_109\);

-- Location: LC_X6_Y8_N7
\tone_generator|count_pa[10]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_pa\(10) = DFFEAS(((\tone_generator|Add4~70_combout\ & ((!\tone_generator|Equal4~0\) # (!\tone_generator|Equal4~5_combout\)))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|pa~10_combout\, , , , )

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
	datab => \tone_generator|Equal4~5_combout\,
	datac => \tone_generator|Equal4~0\,
	datad => \tone_generator|Add4~70_combout\,
	aclr => GND,
	ena => \tone_generator|pa~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_pa\(10));

-- Location: LC_X7_Y7_N1
\tone_generator|Add4~75\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add4~75_combout\ = (\tone_generator|count_pa\(11) $ (((!\tone_generator|Add4~67\ & \tone_generator|Add4~72\) # (\tone_generator|Add4~67\ & \tone_generator|Add4~72COUT1_109\))))
-- \tone_generator|Add4~77\ = CARRY(((!\tone_generator|Add4~72\) # (!\tone_generator|count_pa\(11))))
-- \tone_generator|Add4~77COUT1_110\ = CARRY(((!\tone_generator|Add4~72COUT1_109\) # (!\tone_generator|count_pa\(11))))

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
	datab => \tone_generator|count_pa\(11),
	cin => \tone_generator|Add4~67\,
	cin0 => \tone_generator|Add4~72\,
	cin1 => \tone_generator|Add4~72COUT1_109\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add4~75_combout\,
	cout0 => \tone_generator|Add4~77\,
	cout1 => \tone_generator|Add4~77COUT1_110\);

-- Location: LC_X6_Y8_N9
\tone_generator|count_pa[11]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_pa\(11) = DFFEAS(((\tone_generator|Add4~75_combout\ & ((!\tone_generator|Equal4~5_combout\) # (!\tone_generator|Equal4~0\)))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|pa~10_combout\, , , , )

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
	dataa => \tone_generator|Equal4~0\,
	datac => \tone_generator|Add4~75_combout\,
	datad => \tone_generator|Equal4~5_combout\,
	aclr => GND,
	ena => \tone_generator|pa~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_pa\(11));

-- Location: LC_X7_Y7_N2
\tone_generator|Add4~80\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add4~80_combout\ = (\tone_generator|count_pa\(12) $ ((!(!\tone_generator|Add4~67\ & \tone_generator|Add4~77\) # (\tone_generator|Add4~67\ & \tone_generator|Add4~77COUT1_110\))))
-- \tone_generator|Add4~82\ = CARRY(((\tone_generator|count_pa\(12) & !\tone_generator|Add4~77\)))
-- \tone_generator|Add4~82COUT1_111\ = CARRY(((\tone_generator|count_pa\(12) & !\tone_generator|Add4~77COUT1_110\)))

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
	datab => \tone_generator|count_pa\(12),
	cin => \tone_generator|Add4~67\,
	cin0 => \tone_generator|Add4~77\,
	cin1 => \tone_generator|Add4~77COUT1_110\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add4~80_combout\,
	cout0 => \tone_generator|Add4~82\,
	cout1 => \tone_generator|Add4~82COUT1_111\);

-- Location: LC_X7_Y7_N3
\tone_generator|Add4~85\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add4~85_combout\ = (\tone_generator|count_pa\(13) $ (((!\tone_generator|Add4~67\ & \tone_generator|Add4~82\) # (\tone_generator|Add4~67\ & \tone_generator|Add4~82COUT1_111\))))
-- \tone_generator|Add4~87\ = CARRY(((!\tone_generator|Add4~82\) # (!\tone_generator|count_pa\(13))))
-- \tone_generator|Add4~87COUT1_112\ = CARRY(((!\tone_generator|Add4~82COUT1_111\) # (!\tone_generator|count_pa\(13))))

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
	datab => \tone_generator|count_pa\(13),
	cin => \tone_generator|Add4~67\,
	cin0 => \tone_generator|Add4~82\,
	cin1 => \tone_generator|Add4~82COUT1_111\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add4~85_combout\,
	cout0 => \tone_generator|Add4~87\,
	cout1 => \tone_generator|Add4~87COUT1_112\);

-- Location: LC_X8_Y8_N9
\tone_generator|count_pa[13]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_pa\(13) = DFFEAS(GND, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|pa~10_combout\, \tone_generator|Add4~85_combout\, , , VCC)

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
	datac => \tone_generator|Add4~85_combout\,
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|pa~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_pa\(13));

-- Location: LC_X8_Y8_N0
\tone_generator|count_pa[12]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal4~4\ = (!\tone_generator|count_pa\(14) & (!\tone_generator|count_pa\(15) & (!B1_count_pa[12] & !\tone_generator|count_pa\(13))))
-- \tone_generator|count_pa\(12) = DFFEAS(\tone_generator|Equal4~4\, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|pa~10_combout\, \tone_generator|Add4~80_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \tone_generator|count_pa\(14),
	datab => \tone_generator|count_pa\(15),
	datac => \tone_generator|Add4~80_combout\,
	datad => \tone_generator|count_pa\(13),
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|pa~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal4~4\,
	regout => \tone_generator|count_pa\(12));

-- Location: LC_X6_Y7_N5
\tone_generator|Add4~50\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add4~50_combout\ = (\tone_generator|count_pa\(5) $ ((\tone_generator|Add4~47\)))
-- \tone_generator|Add4~52\ = CARRY(((!\tone_generator|Add4~47\) # (!\tone_generator|count_pa\(5))))
-- \tone_generator|Add4~52COUT1_105\ = CARRY(((!\tone_generator|Add4~47\) # (!\tone_generator|count_pa\(5))))

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
	datab => \tone_generator|count_pa\(5),
	cin => \tone_generator|Add4~47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add4~50_combout\,
	cout0 => \tone_generator|Add4~52\,
	cout1 => \tone_generator|Add4~52COUT1_105\);

-- Location: LC_X7_Y8_N6
\tone_generator|count_pa[5]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_pa\(5) = DFFEAS(GND, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|pa~10_combout\, \tone_generator|Add4~50_combout\, , , VCC)

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
	datac => \tone_generator|Add4~50_combout\,
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|pa~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_pa\(5));

-- Location: LC_X6_Y7_N6
\tone_generator|Add4~40\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add4~40_combout\ = \tone_generator|count_pa\(6) $ ((((!(!\tone_generator|Add4~47\ & \tone_generator|Add4~52\) # (\tone_generator|Add4~47\ & \tone_generator|Add4~52COUT1_105\)))))
-- \tone_generator|Add4~42\ = CARRY((\tone_generator|count_pa\(6) & ((!\tone_generator|Add4~52\))))
-- \tone_generator|Add4~42COUT1_106\ = CARRY((\tone_generator|count_pa\(6) & ((!\tone_generator|Add4~52COUT1_105\))))

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
	dataa => \tone_generator|count_pa\(6),
	cin => \tone_generator|Add4~47\,
	cin0 => \tone_generator|Add4~52\,
	cin1 => \tone_generator|Add4~52COUT1_105\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add4~40_combout\,
	cout0 => \tone_generator|Add4~42\,
	cout1 => \tone_generator|Add4~42COUT1_106\);

-- Location: LC_X7_Y8_N2
\tone_generator|count_pa[6]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_pa\(6) = DFFEAS(((\tone_generator|Add4~40_combout\ & ((!\tone_generator|Equal4~0\) # (!\tone_generator|Equal4~5_combout\)))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|pa~10_combout\, , , , )

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
	dataa => \tone_generator|Equal4~5_combout\,
	datac => \tone_generator|Equal4~0\,
	datad => \tone_generator|Add4~40_combout\,
	aclr => GND,
	ena => \tone_generator|pa~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_pa\(6));

-- Location: LC_X6_Y7_N7
\tone_generator|Add4~55\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add4~55_combout\ = (\tone_generator|count_pa\(7) $ (((!\tone_generator|Add4~47\ & \tone_generator|Add4~42\) # (\tone_generator|Add4~47\ & \tone_generator|Add4~42COUT1_106\))))
-- \tone_generator|Add4~57\ = CARRY(((!\tone_generator|Add4~42\) # (!\tone_generator|count_pa\(7))))
-- \tone_generator|Add4~57COUT1_107\ = CARRY(((!\tone_generator|Add4~42COUT1_106\) # (!\tone_generator|count_pa\(7))))

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
	datab => \tone_generator|count_pa\(7),
	cin => \tone_generator|Add4~47\,
	cin0 => \tone_generator|Add4~42\,
	cin1 => \tone_generator|Add4~42COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add4~55_combout\,
	cout0 => \tone_generator|Add4~57\,
	cout1 => \tone_generator|Add4~57COUT1_107\);

-- Location: LC_X7_Y8_N9
\tone_generator|count_pa[7]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_pa\(7) = DFFEAS((((\tone_generator|Add4~55_combout\))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|pa~10_combout\, , , , )

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
	datad => \tone_generator|Add4~55_combout\,
	aclr => GND,
	ena => \tone_generator|pa~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_pa\(7));

-- Location: LC_X6_Y7_N0
\tone_generator|Add4~20\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add4~20_combout\ = ((!\tone_generator|count_pa\(0)))
-- \tone_generator|Add4~22\ = CARRY(((\tone_generator|count_pa\(0))))
-- \tone_generator|Add4~22COUT1_101\ = CARRY(((\tone_generator|count_pa\(0))))

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
	datab => \tone_generator|count_pa\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add4~20_combout\,
	cout0 => \tone_generator|Add4~22\,
	cout1 => \tone_generator|Add4~22COUT1_101\);

-- Location: LC_X6_Y8_N4
\tone_generator|count_pa[0]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_pa\(0) = DFFEAS((\tone_generator|Add4~20_combout\) # (((\tone_generator|Equal4~0\ & \tone_generator|Equal4~5_combout\))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|pa~10_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \tone_generator|Add4~20_combout\,
	datac => \tone_generator|Equal4~0\,
	datad => \tone_generator|Equal4~5_combout\,
	aclr => GND,
	ena => \tone_generator|pa~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_pa\(0));

-- Location: LC_X6_Y7_N1
\tone_generator|Add4~30\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add4~30_combout\ = \tone_generator|count_pa\(1) $ ((((\tone_generator|Add4~22\))))
-- \tone_generator|Add4~32\ = CARRY(((!\tone_generator|Add4~22\)) # (!\tone_generator|count_pa\(1)))
-- \tone_generator|Add4~32COUT1_102\ = CARRY(((!\tone_generator|Add4~22COUT1_101\)) # (!\tone_generator|count_pa\(1)))

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
	dataa => \tone_generator|count_pa\(1),
	cin0 => \tone_generator|Add4~22\,
	cin1 => \tone_generator|Add4~22COUT1_101\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add4~30_combout\,
	cout0 => \tone_generator|Add4~32\,
	cout1 => \tone_generator|Add4~32COUT1_102\);

-- Location: LC_X6_Y8_N0
\tone_generator|count_pa[1]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_pa\(1) = DFFEAS((\tone_generator|Add4~30_combout\ & (((!\tone_generator|Equal4~5_combout\) # (!\tone_generator|Equal4~0\)))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|pa~10_combout\, , , , )

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
	dataa => \tone_generator|Add4~30_combout\,
	datac => \tone_generator|Equal4~0\,
	datad => \tone_generator|Equal4~5_combout\,
	aclr => GND,
	ena => \tone_generator|pa~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_pa\(1));

-- Location: LC_X6_Y7_N2
\tone_generator|Add4~25\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add4~25_combout\ = (\tone_generator|count_pa\(2) $ ((!\tone_generator|Add4~32\)))
-- \tone_generator|Add4~27\ = CARRY(((\tone_generator|count_pa\(2) & !\tone_generator|Add4~32\)))
-- \tone_generator|Add4~27COUT1_103\ = CARRY(((\tone_generator|count_pa\(2) & !\tone_generator|Add4~32COUT1_102\)))

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
	datab => \tone_generator|count_pa\(2),
	cin0 => \tone_generator|Add4~32\,
	cin1 => \tone_generator|Add4~32COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add4~25_combout\,
	cout0 => \tone_generator|Add4~27\,
	cout1 => \tone_generator|Add4~27COUT1_103\);

-- Location: LC_X6_Y8_N1
\tone_generator|count_pa[2]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_pa\(2) = DFFEAS(((\tone_generator|Add4~25_combout\ & ((!\tone_generator|Equal4~5_combout\) # (!\tone_generator|Equal4~0\)))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|pa~10_combout\, , , , )

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
	dataa => \tone_generator|Equal4~0\,
	datac => \tone_generator|Add4~25_combout\,
	datad => \tone_generator|Equal4~5_combout\,
	aclr => GND,
	ena => \tone_generator|pa~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_pa\(2));

-- Location: LC_X6_Y7_N3
\tone_generator|Add4~35\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add4~35_combout\ = (\tone_generator|count_pa\(3) $ ((\tone_generator|Add4~27\)))
-- \tone_generator|Add4~37\ = CARRY(((!\tone_generator|Add4~27\) # (!\tone_generator|count_pa\(3))))
-- \tone_generator|Add4~37COUT1_104\ = CARRY(((!\tone_generator|Add4~27COUT1_103\) # (!\tone_generator|count_pa\(3))))

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
	datab => \tone_generator|count_pa\(3),
	cin0 => \tone_generator|Add4~27\,
	cin1 => \tone_generator|Add4~27COUT1_103\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add4~35_combout\,
	cout0 => \tone_generator|Add4~37\,
	cout1 => \tone_generator|Add4~37COUT1_104\);

-- Location: LC_X6_Y8_N6
\tone_generator|count_pa[3]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal4~1\ = (\tone_generator|count_pa\(0) & (!\tone_generator|count_pa\(1) & (!B1_count_pa[3] & \tone_generator|count_pa\(2))))
-- \tone_generator|count_pa\(3) = DFFEAS(\tone_generator|Equal4~1\, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|pa~10_combout\, \tone_generator|Add4~35_combout\, , , VCC)

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
	dataa => \tone_generator|count_pa\(0),
	datab => \tone_generator|count_pa\(1),
	datac => \tone_generator|Add4~35_combout\,
	datad => \tone_generator|count_pa\(2),
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|pa~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal4~1\,
	regout => \tone_generator|count_pa\(3));

-- Location: LC_X6_Y7_N4
\tone_generator|Add4~45\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add4~45_combout\ = (\tone_generator|count_pa\(4) $ ((!\tone_generator|Add4~37\)))
-- \tone_generator|Add4~47\ = CARRY(((\tone_generator|count_pa\(4) & !\tone_generator|Add4~37COUT1_104\)))

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
	datab => \tone_generator|count_pa\(4),
	cin0 => \tone_generator|Add4~37\,
	cin1 => \tone_generator|Add4~37COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add4~45_combout\,
	cout => \tone_generator|Add4~47\);

-- Location: LC_X7_Y8_N3
\tone_generator|count_pa[4]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal4~2\ = (!\tone_generator|count_pa\(5) & (!\tone_generator|count_pa\(7) & (!B1_count_pa[4] & \tone_generator|count_pa\(6))))
-- \tone_generator|count_pa\(4) = DFFEAS(\tone_generator|Equal4~2\, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|pa~10_combout\, \tone_generator|Add4~45_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \tone_generator|count_pa\(5),
	datab => \tone_generator|count_pa\(7),
	datac => \tone_generator|Add4~45_combout\,
	datad => \tone_generator|count_pa\(6),
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|pa~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal4~2\,
	regout => \tone_generator|count_pa\(4));

-- Location: LC_X6_Y7_N8
\tone_generator|Add4~60\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add4~60_combout\ = (\tone_generator|count_pa\(8) $ ((!(!\tone_generator|Add4~47\ & \tone_generator|Add4~57\) # (\tone_generator|Add4~47\ & \tone_generator|Add4~57COUT1_107\))))
-- \tone_generator|Add4~62\ = CARRY(((\tone_generator|count_pa\(8) & !\tone_generator|Add4~57\)))
-- \tone_generator|Add4~62COUT1_108\ = CARRY(((\tone_generator|count_pa\(8) & !\tone_generator|Add4~57COUT1_107\)))

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
	datab => \tone_generator|count_pa\(8),
	cin => \tone_generator|Add4~47\,
	cin0 => \tone_generator|Add4~57\,
	cin1 => \tone_generator|Add4~57COUT1_107\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add4~60_combout\,
	cout0 => \tone_generator|Add4~62\,
	cout1 => \tone_generator|Add4~62COUT1_108\);

-- Location: LC_X6_Y8_N8
\tone_generator|count_pa[8]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_pa\(8) = DFFEAS(((\tone_generator|Add4~60_combout\ & ((!\tone_generator|Equal4~0\) # (!\tone_generator|Equal4~5_combout\)))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|pa~10_combout\, , , , )

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
	datab => \tone_generator|Equal4~5_combout\,
	datac => \tone_generator|Equal4~0\,
	datad => \tone_generator|Add4~60_combout\,
	aclr => GND,
	ena => \tone_generator|pa~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_pa\(8));

-- Location: LC_X6_Y8_N2
\tone_generator|Equal4~3\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal4~3_combout\ = (\tone_generator|count_pa\(9) & (\tone_generator|count_pa\(11) & (\tone_generator|count_pa\(10) & \tone_generator|count_pa\(8))))

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
	dataa => \tone_generator|count_pa\(9),
	datab => \tone_generator|count_pa\(11),
	datac => \tone_generator|count_pa\(10),
	datad => \tone_generator|count_pa\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal4~3_combout\);

-- Location: LC_X7_Y8_N4
\tone_generator|Equal4~5\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal4~5_combout\ = (\tone_generator|Equal4~4\ & (\tone_generator|Equal4~3_combout\ & (\tone_generator|Equal4~1\ & \tone_generator|Equal4~2\)))

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
	dataa => \tone_generator|Equal4~4\,
	datab => \tone_generator|Equal4~3_combout\,
	datac => \tone_generator|Equal4~1\,
	datad => \tone_generator|Equal4~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal4~5_combout\);

-- Location: LC_X6_Y7_N9
\tone_generator|Add4~65\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add4~65_combout\ = (\tone_generator|count_pa\(9) $ (((!\tone_generator|Add4~47\ & \tone_generator|Add4~62\) # (\tone_generator|Add4~47\ & \tone_generator|Add4~62COUT1_108\))))
-- \tone_generator|Add4~67\ = CARRY(((!\tone_generator|Add4~62COUT1_108\) # (!\tone_generator|count_pa\(9))))

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
	datab => \tone_generator|count_pa\(9),
	cin => \tone_generator|Add4~47\,
	cin0 => \tone_generator|Add4~62\,
	cin1 => \tone_generator|Add4~62COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add4~65_combout\,
	cout => \tone_generator|Add4~67\);

-- Location: LC_X6_Y8_N3
\tone_generator|count_pa[9]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_pa\(9) = DFFEAS(((\tone_generator|Add4~65_combout\ & ((!\tone_generator|Equal4~0\) # (!\tone_generator|Equal4~5_combout\)))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|pa~10_combout\, , , , )

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
	datab => \tone_generator|Equal4~5_combout\,
	datac => \tone_generator|Equal4~0\,
	datad => \tone_generator|Add4~65_combout\,
	aclr => GND,
	ena => \tone_generator|pa~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_pa\(9));

-- Location: LC_X7_Y7_N4
\tone_generator|Add4~90\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add4~90_combout\ = (\tone_generator|count_pa\(14) $ ((!(!\tone_generator|Add4~67\ & \tone_generator|Add4~87\) # (\tone_generator|Add4~67\ & \tone_generator|Add4~87COUT1_112\))))
-- \tone_generator|Add4~92\ = CARRY(((\tone_generator|count_pa\(14) & !\tone_generator|Add4~87COUT1_112\)))

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
	datab => \tone_generator|count_pa\(14),
	cin => \tone_generator|Add4~67\,
	cin0 => \tone_generator|Add4~87\,
	cin1 => \tone_generator|Add4~87COUT1_112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add4~90_combout\,
	cout => \tone_generator|Add4~92\);

-- Location: LC_X8_Y8_N6
\tone_generator|count_pa[14]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_pa\(14) = DFFEAS(GND, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|pa~10_combout\, \tone_generator|Add4~90_combout\, , , VCC)

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
	datac => \tone_generator|Add4~90_combout\,
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|pa~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_pa\(14));

-- Location: LC_X7_Y7_N6
\tone_generator|Add4~0\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add4~0_combout\ = \tone_generator|count_pa\(16) $ ((((!(!\tone_generator|Add4~92\ & \tone_generator|Add4~97\) # (\tone_generator|Add4~92\ & \tone_generator|Add4~97COUT1_113\)))))
-- \tone_generator|Add4~2\ = CARRY((\tone_generator|count_pa\(16) & ((!\tone_generator|Add4~97\))))
-- \tone_generator|Add4~2COUT1_114\ = CARRY((\tone_generator|count_pa\(16) & ((!\tone_generator|Add4~97COUT1_113\))))

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
	dataa => \tone_generator|count_pa\(16),
	cin => \tone_generator|Add4~92\,
	cin0 => \tone_generator|Add4~97\,
	cin1 => \tone_generator|Add4~97COUT1_113\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add4~0_combout\,
	cout0 => \tone_generator|Add4~2\,
	cout1 => \tone_generator|Add4~2COUT1_114\);

-- Location: LC_X7_Y8_N1
\tone_generator|count_pa[16]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_pa\(16) = DFFEAS(((\tone_generator|Add4~0_combout\ & ((!\tone_generator|Equal4~5_combout\) # (!\tone_generator|Equal4~0\)))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|pa~10_combout\, , , , )

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
	datab => \tone_generator|Equal4~0\,
	datac => \tone_generator|Equal4~5_combout\,
	datad => \tone_generator|Add4~0_combout\,
	aclr => GND,
	ena => \tone_generator|pa~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_pa\(16));

-- Location: LC_X7_Y7_N7
\tone_generator|Add4~5\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add4~5_combout\ = \tone_generator|count_pa\(17) $ (((((!\tone_generator|Add4~92\ & \tone_generator|Add4~2\) # (\tone_generator|Add4~92\ & \tone_generator|Add4~2COUT1_114\)))))
-- \tone_generator|Add4~7\ = CARRY(((!\tone_generator|Add4~2\)) # (!\tone_generator|count_pa\(17)))
-- \tone_generator|Add4~7COUT1_115\ = CARRY(((!\tone_generator|Add4~2COUT1_114\)) # (!\tone_generator|count_pa\(17)))

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
	dataa => \tone_generator|count_pa\(17),
	cin => \tone_generator|Add4~92\,
	cin0 => \tone_generator|Add4~2\,
	cin1 => \tone_generator|Add4~2COUT1_114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add4~5_combout\,
	cout0 => \tone_generator|Add4~7\,
	cout1 => \tone_generator|Add4~7COUT1_115\);

-- Location: LC_X7_Y8_N7
\tone_generator|count_pa[17]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal4~0\ = (!\tone_generator|count_pa\(19) & (!\tone_generator|count_pa\(18) & (!B1_count_pa[17] & \tone_generator|count_pa\(16))))
-- \tone_generator|count_pa\(17) = DFFEAS(\tone_generator|Equal4~0\, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|pa~10_combout\, \tone_generator|Add4~5_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \tone_generator|count_pa\(19),
	datab => \tone_generator|count_pa\(18),
	datac => \tone_generator|Add4~5_combout\,
	datad => \tone_generator|count_pa\(16),
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|pa~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal4~0\,
	regout => \tone_generator|count_pa\(17));

-- Location: LC_X7_Y7_N8
\tone_generator|Add4~10\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add4~10_combout\ = (\tone_generator|count_pa\(18) $ ((!(!\tone_generator|Add4~92\ & \tone_generator|Add4~7\) # (\tone_generator|Add4~92\ & \tone_generator|Add4~7COUT1_115\))))
-- \tone_generator|Add4~12\ = CARRY(((\tone_generator|count_pa\(18) & !\tone_generator|Add4~7\)))
-- \tone_generator|Add4~12COUT1_116\ = CARRY(((\tone_generator|count_pa\(18) & !\tone_generator|Add4~7COUT1_115\)))

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
	datab => \tone_generator|count_pa\(18),
	cin => \tone_generator|Add4~92\,
	cin0 => \tone_generator|Add4~7\,
	cin1 => \tone_generator|Add4~7COUT1_115\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add4~10_combout\,
	cout0 => \tone_generator|Add4~12\,
	cout1 => \tone_generator|Add4~12COUT1_116\);

-- Location: LC_X7_Y8_N0
\tone_generator|count_pa[18]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_pa\(18) = DFFEAS((((\tone_generator|Add4~10_combout\))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|pa~10_combout\, , , , )

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
	datad => \tone_generator|Add4~10_combout\,
	aclr => GND,
	ena => \tone_generator|pa~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_pa\(18));

-- Location: LC_X7_Y7_N9
\tone_generator|Add4~15\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add4~15_combout\ = (((!\tone_generator|Add4~92\ & \tone_generator|Add4~12\) # (\tone_generator|Add4~92\ & \tone_generator|Add4~12COUT1_116\) $ (\tone_generator|count_pa\(19))))

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
	datad => \tone_generator|count_pa\(19),
	cin => \tone_generator|Add4~92\,
	cin0 => \tone_generator|Add4~12\,
	cin1 => \tone_generator|Add4~12COUT1_116\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add4~15_combout\);

-- Location: LC_X7_Y8_N8
\tone_generator|count_pa[19]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_pa\(19) = DFFEAS(GND, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|pa~10_combout\, \tone_generator|Add4~15_combout\, , , VCC)

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
	datac => \tone_generator|Add4~15_combout\,
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|pa~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_pa\(19));

-- Location: LC_X7_Y8_N5
\tone_generator|pa\ : maxv_lcell
-- Equation(s):
-- \tone_generator|pa~9\ = (B1_pa $ (((\tone_generator|Equal4~0\ & \tone_generator|Equal4~5_combout\))))

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
	datab => \tone_generator|Equal4~0\,
	datad => \tone_generator|Equal4~5_combout\,
	aclr => GND,
	ena => \tone_generator|pa~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|pa~9\,
	regout => \tone_generator|pa~regout\);

-- Location: LC_X11_Y7_N5
\tone_generator|Add5~40\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add5~40_combout\ = (\tone_generator|count_dha\(5) $ ((\tone_generator|Add5~47\)))
-- \tone_generator|Add5~42\ = CARRY(((!\tone_generator|Add5~47\) # (!\tone_generator|count_dha\(5))))
-- \tone_generator|Add5~42COUT1_105\ = CARRY(((!\tone_generator|Add5~47\) # (!\tone_generator|count_dha\(5))))

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
	datab => \tone_generator|count_dha\(5),
	cin => \tone_generator|Add5~47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add5~40_combout\,
	cout0 => \tone_generator|Add5~42\,
	cout1 => \tone_generator|Add5~42COUT1_105\);

-- Location: LC_X11_Y7_N6
\tone_generator|Add5~50\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add5~50_combout\ = \tone_generator|count_dha\(6) $ ((((!(!\tone_generator|Add5~47\ & \tone_generator|Add5~42\) # (\tone_generator|Add5~47\ & \tone_generator|Add5~42COUT1_105\)))))
-- \tone_generator|Add5~52\ = CARRY((\tone_generator|count_dha\(6) & ((!\tone_generator|Add5~42\))))
-- \tone_generator|Add5~52COUT1_106\ = CARRY((\tone_generator|count_dha\(6) & ((!\tone_generator|Add5~42COUT1_105\))))

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
	dataa => \tone_generator|count_dha\(6),
	cin => \tone_generator|Add5~47\,
	cin0 => \tone_generator|Add5~42\,
	cin1 => \tone_generator|Add5~42COUT1_105\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add5~50_combout\,
	cout0 => \tone_generator|Add5~52\,
	cout1 => \tone_generator|Add5~52COUT1_106\);

-- Location: LC_X9_Y10_N3
\tone_generator|dha~3\ : maxv_lcell
-- Equation(s):
-- \tone_generator|dha~3_combout\ = ((\fsm_state~regout\ & (!index_register(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \fsm_state~regout\,
	datac => index_register(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|dha~3_combout\);

-- Location: LC_X8_Y6_N0
\tone_generator|LED[5]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|dha~10\ = (!index_register(1) & (index_register(0) & (\tone_generator|dha~3_combout\ & index_register(2))))
-- \tone_generator|LED\(5) = DFFEAS(\tone_generator|dha~10\, GLOBAL(\clk_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => index_register(1),
	datab => index_register(0),
	datac => \tone_generator|dha~3_combout\,
	datad => index_register(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|dha~10\,
	regout => \tone_generator|LED\(5));

-- Location: LC_X12_Y6_N8
\tone_generator|count_dha[6]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_dha\(6) = DFFEAS((((\tone_generator|Add5~50_combout\))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|dha~10\, , , , )

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
	datad => \tone_generator|Add5~50_combout\,
	aclr => GND,
	ena => \tone_generator|dha~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_dha\(6));

-- Location: LC_X11_Y7_N0
\tone_generator|Add5~25\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add5~25_combout\ = ((!\tone_generator|count_dha\(0)))
-- \tone_generator|Add5~27\ = CARRY(((\tone_generator|count_dha\(0))))
-- \tone_generator|Add5~27COUT1_101\ = CARRY(((\tone_generator|count_dha\(0))))

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
	datab => \tone_generator|count_dha\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add5~25_combout\,
	cout0 => \tone_generator|Add5~27\,
	cout1 => \tone_generator|Add5~27COUT1_101\);

-- Location: LC_X11_Y6_N0
\tone_generator|count_dha[0]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal5~1\ = (\tone_generator|count_dha\(2) & (!\tone_generator|count_dha\(3) & (!B1_count_dha[0] & !\tone_generator|count_dha\(1))))
-- \tone_generator|count_dha\(0) = DFFEAS(\tone_generator|Equal5~1\, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|dha~10\, \tone_generator|Add5~25_combout\, , , VCC)

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
	dataa => \tone_generator|count_dha\(2),
	datab => \tone_generator|count_dha\(3),
	datac => \tone_generator|Add5~25_combout\,
	datad => \tone_generator|count_dha\(1),
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|dha~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal5~1\,
	regout => \tone_generator|count_dha\(0));

-- Location: LC_X11_Y7_N1
\tone_generator|Add5~30\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add5~30_combout\ = (\tone_generator|count_dha\(1) $ ((\tone_generator|Add5~27\)))
-- \tone_generator|Add5~32\ = CARRY(((!\tone_generator|Add5~27\) # (!\tone_generator|count_dha\(1))))
-- \tone_generator|Add5~32COUT1_102\ = CARRY(((!\tone_generator|Add5~27COUT1_101\) # (!\tone_generator|count_dha\(1))))

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
	datab => \tone_generator|count_dha\(1),
	cin0 => \tone_generator|Add5~27\,
	cin1 => \tone_generator|Add5~27COUT1_101\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add5~30_combout\,
	cout0 => \tone_generator|Add5~32\,
	cout1 => \tone_generator|Add5~32COUT1_102\);

-- Location: LC_X11_Y6_N8
\tone_generator|count_dha[1]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_dha\(1) = DFFEAS(GND, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|dha~10\, \tone_generator|Add5~30_combout\, , , VCC)

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
	datac => \tone_generator|Add5~30_combout\,
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|dha~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_dha\(1));

-- Location: LC_X11_Y7_N2
\tone_generator|Add5~20\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add5~20_combout\ = (\tone_generator|count_dha\(2) $ ((!\tone_generator|Add5~32\)))
-- \tone_generator|Add5~22\ = CARRY(((\tone_generator|count_dha\(2) & !\tone_generator|Add5~32\)))
-- \tone_generator|Add5~22COUT1_103\ = CARRY(((\tone_generator|count_dha\(2) & !\tone_generator|Add5~32COUT1_102\)))

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
	datab => \tone_generator|count_dha\(2),
	cin0 => \tone_generator|Add5~32\,
	cin1 => \tone_generator|Add5~32COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add5~20_combout\,
	cout0 => \tone_generator|Add5~22\,
	cout1 => \tone_generator|Add5~22COUT1_103\);

-- Location: LC_X11_Y6_N5
\tone_generator|count_dha[2]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_dha\(2) = DFFEAS(((\tone_generator|Add5~20_combout\ & ((!\tone_generator|Equal5~0\) # (!\tone_generator|Equal5~5_combout\)))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|dha~10\, , , , )

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
	dataa => \tone_generator|Equal5~5_combout\,
	datac => \tone_generator|Add5~20_combout\,
	datad => \tone_generator|Equal5~0\,
	aclr => GND,
	ena => \tone_generator|dha~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_dha\(2));

-- Location: LC_X11_Y7_N3
\tone_generator|Add5~35\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add5~35_combout\ = (\tone_generator|count_dha\(3) $ ((\tone_generator|Add5~22\)))
-- \tone_generator|Add5~37\ = CARRY(((!\tone_generator|Add5~22\) # (!\tone_generator|count_dha\(3))))
-- \tone_generator|Add5~37COUT1_104\ = CARRY(((!\tone_generator|Add5~22COUT1_103\) # (!\tone_generator|count_dha\(3))))

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
	datab => \tone_generator|count_dha\(3),
	cin0 => \tone_generator|Add5~22\,
	cin1 => \tone_generator|Add5~22COUT1_103\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add5~35_combout\,
	cout0 => \tone_generator|Add5~37\,
	cout1 => \tone_generator|Add5~37COUT1_104\);

-- Location: LC_X11_Y6_N2
\tone_generator|count_dha[3]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_dha\(3) = DFFEAS((((\tone_generator|Add5~35_combout\))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|dha~10\, , , , )

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
	datad => \tone_generator|Add5~35_combout\,
	aclr => GND,
	ena => \tone_generator|dha~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_dha\(3));

-- Location: LC_X11_Y7_N4
\tone_generator|Add5~45\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add5~45_combout\ = (\tone_generator|count_dha\(4) $ ((!\tone_generator|Add5~37\)))
-- \tone_generator|Add5~47\ = CARRY(((\tone_generator|count_dha\(4) & !\tone_generator|Add5~37COUT1_104\)))

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
	datab => \tone_generator|count_dha\(4),
	cin0 => \tone_generator|Add5~37\,
	cin1 => \tone_generator|Add5~37COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add5~45_combout\,
	cout => \tone_generator|Add5~47\);

-- Location: LC_X11_Y7_N7
\tone_generator|Add5~55\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add5~55_combout\ = (\tone_generator|count_dha\(7) $ (((!\tone_generator|Add5~47\ & \tone_generator|Add5~52\) # (\tone_generator|Add5~47\ & \tone_generator|Add5~52COUT1_106\))))
-- \tone_generator|Add5~57\ = CARRY(((!\tone_generator|Add5~52\) # (!\tone_generator|count_dha\(7))))
-- \tone_generator|Add5~57COUT1_107\ = CARRY(((!\tone_generator|Add5~52COUT1_106\) # (!\tone_generator|count_dha\(7))))

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
	datab => \tone_generator|count_dha\(7),
	cin => \tone_generator|Add5~47\,
	cin0 => \tone_generator|Add5~52\,
	cin1 => \tone_generator|Add5~52COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add5~55_combout\,
	cout0 => \tone_generator|Add5~57\,
	cout1 => \tone_generator|Add5~57COUT1_107\);

-- Location: LC_X12_Y6_N4
\tone_generator|count_dha[7]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_dha\(7) = DFFEAS((((\tone_generator|Add5~55_combout\))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|dha~10\, , , , )

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
	datad => \tone_generator|Add5~55_combout\,
	aclr => GND,
	ena => \tone_generator|dha~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_dha\(7));

-- Location: LC_X12_Y6_N6
\tone_generator|count_dha[4]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal5~2\ = (\tone_generator|count_dha\(5) & (!\tone_generator|count_dha\(6) & (!B1_count_dha[4] & !\tone_generator|count_dha\(7))))
-- \tone_generator|count_dha\(4) = DFFEAS(\tone_generator|Equal5~2\, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|dha~10\, \tone_generator|Add5~45_combout\, , , VCC)

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
	dataa => \tone_generator|count_dha\(5),
	datab => \tone_generator|count_dha\(6),
	datac => \tone_generator|Add5~45_combout\,
	datad => \tone_generator|count_dha\(7),
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|dha~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal5~2\,
	regout => \tone_generator|count_dha\(4));

-- Location: LC_X12_Y6_N5
\tone_generator|count_dha[5]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_dha\(5) = DFFEAS(((\tone_generator|Add5~40_combout\ & ((!\tone_generator|Equal5~5_combout\) # (!\tone_generator|Equal5~0\)))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|dha~10\, , , , )

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
	dataa => \tone_generator|Equal5~0\,
	datac => \tone_generator|Add5~40_combout\,
	datad => \tone_generator|Equal5~5_combout\,
	aclr => GND,
	ena => \tone_generator|dha~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_dha\(5));

-- Location: LC_X12_Y7_N0
\tone_generator|Add5~60\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add5~60_combout\ = (\tone_generator|count_dha\(10) $ ((!\tone_generator|Add5~72\)))
-- \tone_generator|Add5~62\ = CARRY(((\tone_generator|count_dha\(10) & !\tone_generator|Add5~72\)))
-- \tone_generator|Add5~62COUT1_109\ = CARRY(((\tone_generator|count_dha\(10) & !\tone_generator|Add5~72\)))

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
	datab => \tone_generator|count_dha\(10),
	cin => \tone_generator|Add5~72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add5~60_combout\,
	cout0 => \tone_generator|Add5~62\,
	cout1 => \tone_generator|Add5~62COUT1_109\);

-- Location: LC_X11_Y6_N1
\tone_generator|count_dha[10]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_dha\(10) = DFFEAS(((\tone_generator|Add5~60_combout\ & ((!\tone_generator|Equal5~5_combout\) # (!\tone_generator|Equal5~0\)))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|dha~10\, , , , )

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
	datab => \tone_generator|Equal5~0\,
	datac => \tone_generator|Equal5~5_combout\,
	datad => \tone_generator|Add5~60_combout\,
	aclr => GND,
	ena => \tone_generator|dha~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_dha\(10));

-- Location: LC_X12_Y7_N1
\tone_generator|Add5~75\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add5~75_combout\ = (\tone_generator|count_dha\(11) $ (((!\tone_generator|Add5~72\ & \tone_generator|Add5~62\) # (\tone_generator|Add5~72\ & \tone_generator|Add5~62COUT1_109\))))
-- \tone_generator|Add5~77\ = CARRY(((!\tone_generator|Add5~62\) # (!\tone_generator|count_dha\(11))))
-- \tone_generator|Add5~77COUT1_110\ = CARRY(((!\tone_generator|Add5~62COUT1_109\) # (!\tone_generator|count_dha\(11))))

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
	datab => \tone_generator|count_dha\(11),
	cin => \tone_generator|Add5~72\,
	cin0 => \tone_generator|Add5~62\,
	cin1 => \tone_generator|Add5~62COUT1_109\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add5~75_combout\,
	cout0 => \tone_generator|Add5~77\,
	cout1 => \tone_generator|Add5~77COUT1_110\);

-- Location: LC_X11_Y6_N6
\tone_generator|count_dha[11]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_dha\(11) = DFFEAS(GND, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|dha~10\, \tone_generator|Add5~75_combout\, , , VCC)

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
	datac => \tone_generator|Add5~75_combout\,
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|dha~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_dha\(11));

-- Location: LC_X11_Y7_N8
\tone_generator|Add5~65\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add5~65_combout\ = (\tone_generator|count_dha\(8) $ ((!(!\tone_generator|Add5~47\ & \tone_generator|Add5~57\) # (\tone_generator|Add5~47\ & \tone_generator|Add5~57COUT1_107\))))
-- \tone_generator|Add5~67\ = CARRY(((\tone_generator|count_dha\(8) & !\tone_generator|Add5~57\)))
-- \tone_generator|Add5~67COUT1_108\ = CARRY(((\tone_generator|count_dha\(8) & !\tone_generator|Add5~57COUT1_107\)))

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
	datab => \tone_generator|count_dha\(8),
	cin => \tone_generator|Add5~47\,
	cin0 => \tone_generator|Add5~57\,
	cin1 => \tone_generator|Add5~57COUT1_107\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add5~65_combout\,
	cout0 => \tone_generator|Add5~67\,
	cout1 => \tone_generator|Add5~67COUT1_108\);

-- Location: LC_X11_Y6_N7
\tone_generator|count_dha[8]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal5~3\ = (!\tone_generator|count_dha\(11) & (\tone_generator|count_dha\(10) & (!B1_count_dha[8] & !\tone_generator|count_dha\(9))))
-- \tone_generator|count_dha\(8) = DFFEAS(\tone_generator|Equal5~3\, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|dha~10\, \tone_generator|Add5~65_combout\, , , VCC)

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
	dataa => \tone_generator|count_dha\(11),
	datab => \tone_generator|count_dha\(10),
	datac => \tone_generator|Add5~65_combout\,
	datad => \tone_generator|count_dha\(9),
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|dha~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal5~3\,
	regout => \tone_generator|count_dha\(8));

-- Location: LC_X11_Y7_N9
\tone_generator|Add5~70\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add5~70_combout\ = (\tone_generator|count_dha\(9) $ (((!\tone_generator|Add5~47\ & \tone_generator|Add5~67\) # (\tone_generator|Add5~47\ & \tone_generator|Add5~67COUT1_108\))))
-- \tone_generator|Add5~72\ = CARRY(((!\tone_generator|Add5~67COUT1_108\) # (!\tone_generator|count_dha\(9))))

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
	datab => \tone_generator|count_dha\(9),
	cin => \tone_generator|Add5~47\,
	cin0 => \tone_generator|Add5~67\,
	cin1 => \tone_generator|Add5~67COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add5~70_combout\,
	cout => \tone_generator|Add5~72\);

-- Location: LC_X11_Y6_N3
\tone_generator|count_dha[9]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_dha\(9) = DFFEAS(GND, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|dha~10\, \tone_generator|Add5~70_combout\, , , VCC)

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
	datac => \tone_generator|Add5~70_combout\,
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|dha~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_dha\(9));

-- Location: LC_X12_Y7_N2
\tone_generator|Add5~80\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add5~80_combout\ = (\tone_generator|count_dha\(12) $ ((!(!\tone_generator|Add5~72\ & \tone_generator|Add5~77\) # (\tone_generator|Add5~72\ & \tone_generator|Add5~77COUT1_110\))))
-- \tone_generator|Add5~82\ = CARRY(((\tone_generator|count_dha\(12) & !\tone_generator|Add5~77\)))
-- \tone_generator|Add5~82COUT1_111\ = CARRY(((\tone_generator|count_dha\(12) & !\tone_generator|Add5~77COUT1_110\)))

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
	datab => \tone_generator|count_dha\(12),
	cin => \tone_generator|Add5~72\,
	cin0 => \tone_generator|Add5~77\,
	cin1 => \tone_generator|Add5~77COUT1_110\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add5~80_combout\,
	cout0 => \tone_generator|Add5~82\,
	cout1 => \tone_generator|Add5~82COUT1_111\);

-- Location: LC_X12_Y6_N0
\tone_generator|count_dha[12]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_dha\(12) = DFFEAS(((\tone_generator|Add5~80_combout\ & ((!\tone_generator|Equal5~0\) # (!\tone_generator|Equal5~5_combout\)))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|dha~10\, , , , )

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
	datab => \tone_generator|Equal5~5_combout\,
	datac => \tone_generator|Add5~80_combout\,
	datad => \tone_generator|Equal5~0\,
	aclr => GND,
	ena => \tone_generator|dha~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_dha\(12));

-- Location: LC_X12_Y7_N3
\tone_generator|Add5~85\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add5~85_combout\ = (\tone_generator|count_dha\(13) $ (((!\tone_generator|Add5~72\ & \tone_generator|Add5~82\) # (\tone_generator|Add5~72\ & \tone_generator|Add5~82COUT1_111\))))
-- \tone_generator|Add5~87\ = CARRY(((!\tone_generator|Add5~82\) # (!\tone_generator|count_dha\(13))))
-- \tone_generator|Add5~87COUT1_112\ = CARRY(((!\tone_generator|Add5~82COUT1_111\) # (!\tone_generator|count_dha\(13))))

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
	datab => \tone_generator|count_dha\(13),
	cin => \tone_generator|Add5~72\,
	cin0 => \tone_generator|Add5~82\,
	cin1 => \tone_generator|Add5~82COUT1_111\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add5~85_combout\,
	cout0 => \tone_generator|Add5~87\,
	cout1 => \tone_generator|Add5~87COUT1_112\);

-- Location: LC_X12_Y6_N3
\tone_generator|count_dha[13]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_dha\(13) = DFFEAS(((\tone_generator|Add5~85_combout\ & ((!\tone_generator|Equal5~0\) # (!\tone_generator|Equal5~5_combout\)))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|dha~10\, , , , )

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
	datab => \tone_generator|Equal5~5_combout\,
	datac => \tone_generator|Add5~85_combout\,
	datad => \tone_generator|Equal5~0\,
	aclr => GND,
	ena => \tone_generator|dha~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_dha\(13));

-- Location: LC_X12_Y7_N5
\tone_generator|Add5~95\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add5~95_combout\ = \tone_generator|count_dha\(15) $ ((((\tone_generator|Add5~92\))))
-- \tone_generator|Add5~97\ = CARRY(((!\tone_generator|Add5~92\)) # (!\tone_generator|count_dha\(15)))
-- \tone_generator|Add5~97COUT1_113\ = CARRY(((!\tone_generator|Add5~92\)) # (!\tone_generator|count_dha\(15)))

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
	dataa => \tone_generator|count_dha\(15),
	cin => \tone_generator|Add5~92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add5~95_combout\,
	cout0 => \tone_generator|Add5~97\,
	cout1 => \tone_generator|Add5~97COUT1_113\);

-- Location: LC_X12_Y6_N1
\tone_generator|count_dha[15]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_dha\(15) = DFFEAS(((\tone_generator|Add5~95_combout\ & ((!\tone_generator|Equal5~5_combout\) # (!\tone_generator|Equal5~0\)))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|dha~10\, , , , )

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
	dataa => \tone_generator|Equal5~0\,
	datab => \tone_generator|Equal5~5_combout\,
	datad => \tone_generator|Add5~95_combout\,
	aclr => GND,
	ena => \tone_generator|dha~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_dha\(15));

-- Location: LC_X12_Y6_N7
\tone_generator|Equal5~4\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal5~4_combout\ = (\tone_generator|count_dha\(13) & (\tone_generator|count_dha\(14) & (\tone_generator|count_dha\(12) & \tone_generator|count_dha\(15))))

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
	dataa => \tone_generator|count_dha\(13),
	datab => \tone_generator|count_dha\(14),
	datac => \tone_generator|count_dha\(12),
	datad => \tone_generator|count_dha\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal5~4_combout\);

-- Location: LC_X8_Y6_N1
\tone_generator|Equal5~5\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal5~5_combout\ = (\tone_generator|Equal5~2\ & (\tone_generator|Equal5~4_combout\ & (\tone_generator|Equal5~1\ & \tone_generator|Equal5~3\)))

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
	dataa => \tone_generator|Equal5~2\,
	datab => \tone_generator|Equal5~4_combout\,
	datac => \tone_generator|Equal5~1\,
	datad => \tone_generator|Equal5~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal5~5_combout\);

-- Location: LC_X12_Y7_N4
\tone_generator|Add5~90\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add5~90_combout\ = (\tone_generator|count_dha\(14) $ ((!(!\tone_generator|Add5~72\ & \tone_generator|Add5~87\) # (\tone_generator|Add5~72\ & \tone_generator|Add5~87COUT1_112\))))
-- \tone_generator|Add5~92\ = CARRY(((\tone_generator|count_dha\(14) & !\tone_generator|Add5~87COUT1_112\)))

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
	datab => \tone_generator|count_dha\(14),
	cin => \tone_generator|Add5~72\,
	cin0 => \tone_generator|Add5~87\,
	cin1 => \tone_generator|Add5~87COUT1_112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add5~90_combout\,
	cout => \tone_generator|Add5~92\);

-- Location: LC_X12_Y6_N2
\tone_generator|count_dha[14]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_dha\(14) = DFFEAS(((\tone_generator|Add5~90_combout\ & ((!\tone_generator|Equal5~5_combout\) # (!\tone_generator|Equal5~0\)))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|dha~10\, , , , )

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
	dataa => \tone_generator|Equal5~0\,
	datab => \tone_generator|Equal5~5_combout\,
	datad => \tone_generator|Add5~90_combout\,
	aclr => GND,
	ena => \tone_generator|dha~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_dha\(14));

-- Location: LC_X12_Y7_N6
\tone_generator|Add5~0\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add5~0_combout\ = (\tone_generator|count_dha\(16) $ ((!(!\tone_generator|Add5~92\ & \tone_generator|Add5~97\) # (\tone_generator|Add5~92\ & \tone_generator|Add5~97COUT1_113\))))
-- \tone_generator|Add5~2\ = CARRY(((\tone_generator|count_dha\(16) & !\tone_generator|Add5~97\)))
-- \tone_generator|Add5~2COUT1_114\ = CARRY(((\tone_generator|count_dha\(16) & !\tone_generator|Add5~97COUT1_113\)))

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
	datab => \tone_generator|count_dha\(16),
	cin => \tone_generator|Add5~92\,
	cin0 => \tone_generator|Add5~97\,
	cin1 => \tone_generator|Add5~97COUT1_113\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add5~0_combout\,
	cout0 => \tone_generator|Add5~2\,
	cout1 => \tone_generator|Add5~2COUT1_114\);

-- Location: LC_X12_Y7_N7
\tone_generator|Add5~5\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add5~5_combout\ = \tone_generator|count_dha\(17) $ (((((!\tone_generator|Add5~92\ & \tone_generator|Add5~2\) # (\tone_generator|Add5~92\ & \tone_generator|Add5~2COUT1_114\)))))
-- \tone_generator|Add5~7\ = CARRY(((!\tone_generator|Add5~2\)) # (!\tone_generator|count_dha\(17)))
-- \tone_generator|Add5~7COUT1_115\ = CARRY(((!\tone_generator|Add5~2COUT1_114\)) # (!\tone_generator|count_dha\(17)))

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
	dataa => \tone_generator|count_dha\(17),
	cin => \tone_generator|Add5~92\,
	cin0 => \tone_generator|Add5~2\,
	cin1 => \tone_generator|Add5~2COUT1_114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add5~5_combout\,
	cout0 => \tone_generator|Add5~7\,
	cout1 => \tone_generator|Add5~7COUT1_115\);

-- Location: LC_X12_Y7_N8
\tone_generator|Add5~10\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add5~10_combout\ = (\tone_generator|count_dha\(18) $ ((!(!\tone_generator|Add5~92\ & \tone_generator|Add5~7\) # (\tone_generator|Add5~92\ & \tone_generator|Add5~7COUT1_115\))))
-- \tone_generator|Add5~12\ = CARRY(((\tone_generator|count_dha\(18) & !\tone_generator|Add5~7\)))
-- \tone_generator|Add5~12COUT1_116\ = CARRY(((\tone_generator|count_dha\(18) & !\tone_generator|Add5~7COUT1_115\)))

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
	datab => \tone_generator|count_dha\(18),
	cin => \tone_generator|Add5~92\,
	cin0 => \tone_generator|Add5~7\,
	cin1 => \tone_generator|Add5~7COUT1_115\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add5~10_combout\,
	cout0 => \tone_generator|Add5~12\,
	cout1 => \tone_generator|Add5~12COUT1_116\);

-- Location: LC_X13_Y7_N8
\tone_generator|count_dha[18]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_dha\(18) = DFFEAS(GND, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|dha~10\, \tone_generator|Add5~10_combout\, , , VCC)

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
	datac => \tone_generator|Add5~10_combout\,
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|dha~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_dha\(18));

-- Location: LC_X12_Y7_N9
\tone_generator|Add5~15\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Add5~15_combout\ = (\tone_generator|count_dha\(19) $ (((!\tone_generator|Add5~92\ & \tone_generator|Add5~12\) # (\tone_generator|Add5~92\ & \tone_generator|Add5~12COUT1_116\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \tone_generator|count_dha\(19),
	cin => \tone_generator|Add5~92\,
	cin0 => \tone_generator|Add5~12\,
	cin1 => \tone_generator|Add5~12COUT1_116\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Add5~15_combout\);

-- Location: LC_X13_Y7_N9
\tone_generator|count_dha[19]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_dha\(19) = DFFEAS(GND, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|dha~10\, \tone_generator|Add5~15_combout\, , , VCC)

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
	datac => \tone_generator|Add5~15_combout\,
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|dha~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_dha\(19));

-- Location: LC_X13_Y7_N7
\tone_generator|count_dha[16]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|Equal5~0\ = (!\tone_generator|count_dha\(17) & (!\tone_generator|count_dha\(19) & (!B1_count_dha[16] & !\tone_generator|count_dha\(18))))
-- \tone_generator|count_dha\(16) = DFFEAS(\tone_generator|Equal5~0\, GLOBAL(\clk_50~combout\), VCC, , \tone_generator|dha~10\, \tone_generator|Add5~0_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \tone_generator|count_dha\(17),
	datab => \tone_generator|count_dha\(19),
	datac => \tone_generator|Add5~0_combout\,
	datad => \tone_generator|count_dha\(18),
	aclr => GND,
	sload => VCC,
	ena => \tone_generator|dha~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|Equal5~0\,
	regout => \tone_generator|count_dha\(16));

-- Location: LC_X13_Y7_N6
\tone_generator|count_dha[17]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|count_dha\(17) = DFFEAS((((\tone_generator|Add5~5_combout\))), GLOBAL(\clk_50~combout\), VCC, , \tone_generator|dha~10\, , , , )

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
	datad => \tone_generator|Add5~5_combout\,
	aclr => GND,
	ena => \tone_generator|dha~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|count_dha\(17));

-- Location: LC_X8_Y6_N8
\tone_generator|dha\ : maxv_lcell
-- Equation(s):
-- \tone_generator|dha~9\ = (B1_dha $ (((\tone_generator|Equal5~0\ & \tone_generator|Equal5~5_combout\))))

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
	datab => \tone_generator|Equal5~0\,
	datad => \tone_generator|Equal5~5_combout\,
	aclr => GND,
	ena => \tone_generator|dha~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|dha~9\,
	regout => \tone_generator|dha~regout\);

-- Location: LC_X8_Y6_N9
\tone_generator|toneOut~7\ : maxv_lcell
-- Equation(s):
-- \tone_generator|toneOut~7_combout\ = (index_register(1) & (((\tone_generator|pa~9\)))) # (!index_register(1) & ((index_register(0) & ((\tone_generator|dha~9\))) # (!index_register(0) & (\tone_generator|pa~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4b0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => index_register(1),
	datab => index_register(0),
	datac => \tone_generator|pa~9\,
	datad => \tone_generator|dha~9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|toneOut~7_combout\);

-- Location: LC_X8_Y6_N5
\tone_generator|toneOut~6\ : maxv_lcell
-- Equation(s):
-- \tone_generator|toneOut~6_combout\ = (index_register(3) & (index_register(2))) # (!index_register(3) & ((index_register(2) & ((\tone_generator|toneOut~7_combout\))) # (!index_register(2) & (\tone_generator|toneOut~5_combout\))))

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
	dataa => index_register(3),
	datab => index_register(2),
	datac => \tone_generator|toneOut~5_combout\,
	datad => \tone_generator|toneOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tone_generator|toneOut~6_combout\);

-- Location: LC_X8_Y6_N6
\tone_generator|toneOut\ : maxv_lcell
-- Equation(s):
-- \tone_generator|toneOut~regout\ = DFFEAS((index_register(3) & ((\tone_generator|toneOut~6_combout\ & (\tone_generator|sa1~0\)) # (!\tone_generator|toneOut~6_combout\ & ((\tone_generator|toneOut~3_combout\))))) # (!index_register(3) & 
-- (((\tone_generator|toneOut~6_combout\)))), GLOBAL(\clk_50~combout\), VCC, , , , , !\fsm_state~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => index_register(3),
	datab => \tone_generator|sa1~0\,
	datac => \tone_generator|toneOut~3_combout\,
	datad => \tone_generator|toneOut~6_combout\,
	aclr => GND,
	sclr => \ALT_INV_fsm_state~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|toneOut~regout\);

-- Location: LC_X9_Y8_N5
\tone_generator|LED[2]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|LED\(2) = DFFEAS((((\tone_generator|LED~29_combout\ & !\Mux12~0_combout\))), GLOBAL(\clk_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	datac => \tone_generator|LED~29_combout\,
	datad => \Mux12~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|LED\(2));

-- Location: LC_X9_Y8_N6
\tone_generator|LED[3]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|LED\(3) = DFFEAS(((\tone_generator|ma~5_combout\ & (\fsm_state~regout\ & !index_register(2)))), GLOBAL(\clk_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	datab => \tone_generator|ma~5_combout\,
	datac => \fsm_state~regout\,
	datad => index_register(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|LED\(3));

-- Location: LC_X9_Y8_N8
\tone_generator|LED[4]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|LED\(4) = DFFEAS((!index_register(3) & (index_register(2) & (\fsm_state~regout\ & \tone_generator|pa~3_combout\))), GLOBAL(\clk_50~combout\), VCC, , , , , , )

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
	clk => \clk_50~combout\,
	dataa => index_register(3),
	datab => index_register(2),
	datac => \fsm_state~regout\,
	datad => \tone_generator|pa~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|LED\(4));

-- Location: LC_X9_Y10_N2
\tone_generator|LED[7]\ : maxv_lcell
-- Equation(s):
-- \tone_generator|LED\(7) = DFFEAS((!\Mux11~0_combout\ & (\tone_generator|ni_lower~10_combout\ & ((!\fsm_state~regout\) # (!\Mux12~0_combout\)))), GLOBAL(\clk_50~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0700",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~combout\,
	dataa => \Mux12~0_combout\,
	datab => \fsm_state~regout\,
	datac => \Mux11~0_combout\,
	datad => \tone_generator|ni_lower~10_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tone_generator|LED\(7));

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\toneOut~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \tone_generator|toneOut~regout\,
	oe => VCC,
	padio => ww_toneOut);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LED[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \tone_generator|LED\(0),
	oe => VCC,
	padio => ww_LED(0));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LED[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \tone_generator|LED\(1),
	oe => VCC,
	padio => ww_LED(1));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LED[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \tone_generator|LED\(2),
	oe => VCC,
	padio => ww_LED(2));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LED[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \tone_generator|LED\(3),
	oe => VCC,
	padio => ww_LED(3));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LED[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \tone_generator|LED\(4),
	oe => VCC,
	padio => ww_LED(4));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LED[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \tone_generator|LED\(5),
	oe => VCC,
	padio => ww_LED(5));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
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
	datain => \tone_generator|LED\(7),
	oe => VCC,
	padio => ww_LED(7));
END structure;


