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

-- DATE "03/24/2021 16:28:53"

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

ENTITY 	toneGenerator2 IS
    PORT (
	toneOut : BUFFER std_logic;
	clk : IN std_logic;
	LED : BUFFER std_logic_vector(7 DOWNTO 0);
	switch : IN std_logic_vector(7 DOWNTO 0)
	);
END toneGenerator2;

-- Design Ports Information


ARCHITECTURE structure OF toneGenerator2 IS
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
SIGNAL ww_clk : std_logic;
SIGNAL ww_LED : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_switch : std_logic_vector(7 DOWNTO 0);
SIGNAL \sa1~regout\ : std_logic;
SIGNAL \re~regout\ : std_logic;
SIGNAL \ga~regout\ : std_logic;
SIGNAL \ma~regout\ : std_logic;
SIGNAL \sa2~regout\ : std_logic;
SIGNAL \dha~regout\ : std_logic;
SIGNAL \ni~regout\ : std_logic;
SIGNAL \pa~regout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \count_pa[9]~0_combout\ : std_logic;
SIGNAL \count_ma[9]~0_combout\ : std_logic;
SIGNAL \count_ga[9]~0_combout\ : std_logic;
SIGNAL \Add3~70_combout\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \Add3~42\ : std_logic;
SIGNAL \Add3~42COUT1_105\ : std_logic;
SIGNAL \Add3~50_combout\ : std_logic;
SIGNAL \Add3~52\ : std_logic;
SIGNAL \Add3~52COUT1_106\ : std_logic;
SIGNAL \Add3~55_combout\ : std_logic;
SIGNAL \Add3~35_combout\ : std_logic;
SIGNAL \Add3~37\ : std_logic;
SIGNAL \Add3~37COUT1_101\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Add3~22\ : std_logic;
SIGNAL \Add3~22COUT1_102\ : std_logic;
SIGNAL \Add3~25_combout\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~27COUT1_103\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \Add3~32\ : std_logic;
SIGNAL \Add3~32COUT1_104\ : std_logic;
SIGNAL \Add3~45_combout\ : std_logic;
SIGNAL \Add3~47\ : std_logic;
SIGNAL \Add3~57\ : std_logic;
SIGNAL \Add3~57COUT1_107\ : std_logic;
SIGNAL \Add3~60_combout\ : std_logic;
SIGNAL \Add3~62\ : std_logic;
SIGNAL \Add3~62COUT1_108\ : std_logic;
SIGNAL \Add3~65_combout\ : std_logic;
SIGNAL \Add3~67\ : std_logic;
SIGNAL \Add3~72\ : std_logic;
SIGNAL \Add3~72COUT1_109\ : std_logic;
SIGNAL \Add3~75_combout\ : std_logic;
SIGNAL \Equal3~3\ : std_logic;
SIGNAL \Add3~95_combout\ : std_logic;
SIGNAL \Add3~77\ : std_logic;
SIGNAL \Add3~77COUT1_110\ : std_logic;
SIGNAL \Add3~80_combout\ : std_logic;
SIGNAL \Add3~82\ : std_logic;
SIGNAL \Add3~82COUT1_111\ : std_logic;
SIGNAL \Add3~87\ : std_logic;
SIGNAL \Add3~87COUT1_112\ : std_logic;
SIGNAL \Add3~90_combout\ : std_logic;
SIGNAL \Equal3~4\ : std_logic;
SIGNAL \Equal3~1\ : std_logic;
SIGNAL \Equal3~2\ : std_logic;
SIGNAL \Equal3~5_combout\ : std_logic;
SIGNAL \Add3~85_combout\ : std_logic;
SIGNAL \Add3~92\ : std_logic;
SIGNAL \Add3~97\ : std_logic;
SIGNAL \Add3~97COUT1_113\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add3~2\ : std_logic;
SIGNAL \Add3~2COUT1_114\ : std_logic;
SIGNAL \Add3~5_combout\ : std_logic;
SIGNAL \Add3~7COUT1_115\ : std_logic;
SIGNAL \Add3~12\ : std_logic;
SIGNAL \Add3~12COUT1_116\ : std_logic;
SIGNAL \Add3~15_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Equal3~0\ : std_logic;
SIGNAL \ma~0\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Add2~32\ : std_logic;
SIGNAL \Add2~32COUT1_101\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~22COUT1_102\ : std_logic;
SIGNAL \Add2~25_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~27COUT1_103\ : std_logic;
SIGNAL \Add2~35_combout\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~37COUT1_104\ : std_logic;
SIGNAL \Add2~45_combout\ : std_logic;
SIGNAL \Add2~52\ : std_logic;
SIGNAL \Add2~52COUT1_105\ : std_logic;
SIGNAL \Add2~55_combout\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~57COUT1_106\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \Equal2~2\ : std_logic;
SIGNAL \Add2~65_combout\ : std_logic;
SIGNAL \Add2~42\ : std_logic;
SIGNAL \Add2~42COUT1_107\ : std_logic;
SIGNAL \Add2~60_combout\ : std_logic;
SIGNAL \Add2~62\ : std_logic;
SIGNAL \Add2~62COUT1_108\ : std_logic;
SIGNAL \Add2~70_combout\ : std_logic;
SIGNAL \Add2~67\ : std_logic;
SIGNAL \Add2~67COUT1_109\ : std_logic;
SIGNAL \Add2~75_combout\ : std_logic;
SIGNAL \Add2~72\ : std_logic;
SIGNAL \Add2~77\ : std_logic;
SIGNAL \Add2~77COUT1_110\ : std_logic;
SIGNAL \Add2~85_combout\ : std_logic;
SIGNAL \Add2~95_combout\ : std_logic;
SIGNAL \Add2~87\ : std_logic;
SIGNAL \Add2~87COUT1_111\ : std_logic;
SIGNAL \Add2~90_combout\ : std_logic;
SIGNAL \Equal2~4\ : std_logic;
SIGNAL \Equal2~1\ : std_logic;
SIGNAL \Equal2~3\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \Add2~92\ : std_logic;
SIGNAL \Add2~92COUT1_112\ : std_logic;
SIGNAL \Add2~80_combout\ : std_logic;
SIGNAL \Add2~82\ : std_logic;
SIGNAL \Add2~97\ : std_logic;
SIGNAL \Add2~97COUT1_113\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~2COUT1_114\ : std_logic;
SIGNAL \Add2~5_combout\ : std_logic;
SIGNAL \Add2~7COUT1_115\ : std_logic;
SIGNAL \Add2~12\ : std_logic;
SIGNAL \Add2~12COUT1_116\ : std_logic;
SIGNAL \Add2~15_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Equal2~0\ : std_logic;
SIGNAL \ga~0\ : std_logic;
SIGNAL \toneOut~1_combout\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~27COUT1_101\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~32COUT1_102\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~37COUT1_103\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~22COUT1_104\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~42COUT1_105\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~47COUT1_106\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Equal0~2\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~67COUT1_109\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~52COUT1_107\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Equal0~3\ : std_logic;
SIGNAL \Add0~77\ : std_logic;
SIGNAL \Add0~77COUT1_110\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Add0~85_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~82COUT1_111\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Equal0~4\ : std_logic;
SIGNAL \Equal0~1\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Add0~72\ : std_logic;
SIGNAL \Add0~72COUT1_108\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~92\ : std_logic;
SIGNAL \Add0~92COUT1_112\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \Add0~97\ : std_logic;
SIGNAL \Add0~87\ : std_logic;
SIGNAL \Add0~87COUT1_113\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~2COUT1_114\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~7COUT1_115\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~12COUT1_116\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Equal0~0\ : std_logic;
SIGNAL \sa1~0\ : std_logic;
SIGNAL \Add1~75_combout\ : std_logic;
SIGNAL \sa2~0_combout\ : std_logic;
SIGNAL \LED[0]~0_combout\ : std_logic;
SIGNAL \LED~1\ : std_logic;
SIGNAL \Add1~25_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~27COUT1_101\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~22COUT1_102\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add1~32\ : std_logic;
SIGNAL \Add1~32COUT1_103\ : std_logic;
SIGNAL \Add1~35_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~37COUT1_104\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~45_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~47COUT1_105\ : std_logic;
SIGNAL \Add1~55_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~57COUT1_106\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Add1~52\ : std_logic;
SIGNAL \Add1~52COUT1_107\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~62COUT1_108\ : std_logic;
SIGNAL \Add1~70_combout\ : std_logic;
SIGNAL \Add1~72\ : std_logic;
SIGNAL \Add1~77\ : std_logic;
SIGNAL \Add1~77COUT1_109\ : std_logic;
SIGNAL \Add1~65_combout\ : std_logic;
SIGNAL \Equal1~3\ : std_logic;
SIGNAL \Add1~95_combout\ : std_logic;
SIGNAL \Add1~67\ : std_logic;
SIGNAL \Add1~67COUT1_110\ : std_logic;
SIGNAL \Add1~92\ : std_logic;
SIGNAL \Add1~92COUT1_111\ : std_logic;
SIGNAL \Add1~80_combout\ : std_logic;
SIGNAL \Add1~90_combout\ : std_logic;
SIGNAL \Equal1~4\ : std_logic;
SIGNAL \Equal1~2\ : std_logic;
SIGNAL \Equal1~1\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Add1~82\ : std_logic;
SIGNAL \Add1~82COUT1_112\ : std_logic;
SIGNAL \Add1~85_combout\ : std_logic;
SIGNAL \Add1~87\ : std_logic;
SIGNAL \Add1~97\ : std_logic;
SIGNAL \Add1~97COUT1_113\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~2COUT1_114\ : std_logic;
SIGNAL \Add1~7COUT1_115\ : std_logic;
SIGNAL \Add1~12\ : std_logic;
SIGNAL \Add1~12COUT1_116\ : std_logic;
SIGNAL \Add1~15_combout\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Equal1~0\ : std_logic;
SIGNAL \re~0\ : std_logic;
SIGNAL \toneOut~0_combout\ : std_logic;
SIGNAL \Add4~95_combout\ : std_logic;
SIGNAL \count_pa[9]~1_combout\ : std_logic;
SIGNAL \Add4~70_combout\ : std_logic;
SIGNAL \Add4~72\ : std_logic;
SIGNAL \Add4~72COUT1_109\ : std_logic;
SIGNAL \Add4~75_combout\ : std_logic;
SIGNAL \Add4~77\ : std_logic;
SIGNAL \Add4~77COUT1_110\ : std_logic;
SIGNAL \Add4~80_combout\ : std_logic;
SIGNAL \Add4~82\ : std_logic;
SIGNAL \Add4~82COUT1_111\ : std_logic;
SIGNAL \Add4~85_combout\ : std_logic;
SIGNAL \Equal4~4\ : std_logic;
SIGNAL \Add4~50_combout\ : std_logic;
SIGNAL \Add4~52\ : std_logic;
SIGNAL \Add4~52COUT1_105\ : std_logic;
SIGNAL \Add4~40_combout\ : std_logic;
SIGNAL \Add4~20_combout\ : std_logic;
SIGNAL \Add4~22\ : std_logic;
SIGNAL \Add4~22COUT1_101\ : std_logic;
SIGNAL \Add4~30_combout\ : std_logic;
SIGNAL \Add4~32\ : std_logic;
SIGNAL \Add4~32COUT1_102\ : std_logic;
SIGNAL \Add4~25_combout\ : std_logic;
SIGNAL \Add4~27\ : std_logic;
SIGNAL \Add4~27COUT1_103\ : std_logic;
SIGNAL \Add4~35_combout\ : std_logic;
SIGNAL \Add4~37\ : std_logic;
SIGNAL \Add4~37COUT1_104\ : std_logic;
SIGNAL \Add4~45_combout\ : std_logic;
SIGNAL \Add4~47\ : std_logic;
SIGNAL \Add4~42\ : std_logic;
SIGNAL \Add4~42COUT1_106\ : std_logic;
SIGNAL \Add4~55_combout\ : std_logic;
SIGNAL \Equal4~2\ : std_logic;
SIGNAL \Add4~57\ : std_logic;
SIGNAL \Add4~57COUT1_107\ : std_logic;
SIGNAL \Add4~60_combout\ : std_logic;
SIGNAL \Equal4~3_combout\ : std_logic;
SIGNAL \Equal4~1\ : std_logic;
SIGNAL \Equal4~5_combout\ : std_logic;
SIGNAL \Add4~62\ : std_logic;
SIGNAL \Add4~62COUT1_108\ : std_logic;
SIGNAL \Add4~65_combout\ : std_logic;
SIGNAL \Add4~67\ : std_logic;
SIGNAL \Add4~87\ : std_logic;
SIGNAL \Add4~87COUT1_112\ : std_logic;
SIGNAL \Add4~90_combout\ : std_logic;
SIGNAL \Add4~92\ : std_logic;
SIGNAL \Add4~97\ : std_logic;
SIGNAL \Add4~97COUT1_113\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add4~2\ : std_logic;
SIGNAL \Add4~2COUT1_114\ : std_logic;
SIGNAL \Add4~7COUT1_115\ : std_logic;
SIGNAL \Add4~12\ : std_logic;
SIGNAL \Add4~12COUT1_116\ : std_logic;
SIGNAL \Add4~15_combout\ : std_logic;
SIGNAL \Add4~5_combout\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Equal4~0\ : std_logic;
SIGNAL \pa~0\ : std_logic;
SIGNAL \Add7~25_combout\ : std_logic;
SIGNAL \sa2~2_combout\ : std_logic;
SIGNAL \Add7~27\ : std_logic;
SIGNAL \Add7~27COUT1_101\ : std_logic;
SIGNAL \Add7~30_combout\ : std_logic;
SIGNAL \Add7~32\ : std_logic;
SIGNAL \Add7~32COUT1_102\ : std_logic;
SIGNAL \Add7~20_combout\ : std_logic;
SIGNAL \Add7~22\ : std_logic;
SIGNAL \Add7~22COUT1_103\ : std_logic;
SIGNAL \Add7~35_combout\ : std_logic;
SIGNAL \Add7~37\ : std_logic;
SIGNAL \Add7~37COUT1_104\ : std_logic;
SIGNAL \Add7~40_combout\ : std_logic;
SIGNAL \Add7~42\ : std_logic;
SIGNAL \Add7~45_combout\ : std_logic;
SIGNAL \Add7~47\ : std_logic;
SIGNAL \Add7~47COUT1_105\ : std_logic;
SIGNAL \Add7~50_combout\ : std_logic;
SIGNAL \Add7~52\ : std_logic;
SIGNAL \Add7~52COUT1_106\ : std_logic;
SIGNAL \Add7~55_combout\ : std_logic;
SIGNAL \Equal7~2\ : std_logic;
SIGNAL \Add7~57\ : std_logic;
SIGNAL \Add7~57COUT1_107\ : std_logic;
SIGNAL \Add7~60_combout\ : std_logic;
SIGNAL \Add7~62\ : std_logic;
SIGNAL \Add7~62COUT1_108\ : std_logic;
SIGNAL \Add7~65_combout\ : std_logic;
SIGNAL \Add7~67\ : std_logic;
SIGNAL \Add7~77\ : std_logic;
SIGNAL \Add7~77COUT1_109\ : std_logic;
SIGNAL \Add7~70_combout\ : std_logic;
SIGNAL \Add7~75_combout\ : std_logic;
SIGNAL \Equal7~3\ : std_logic;
SIGNAL \Equal7~1\ : std_logic;
SIGNAL \Add7~72\ : std_logic;
SIGNAL \Add7~72COUT1_110\ : std_logic;
SIGNAL \Add7~90_combout\ : std_logic;
SIGNAL \Add7~85_combout\ : std_logic;
SIGNAL \Add7~92\ : std_logic;
SIGNAL \Add7~92COUT1_111\ : std_logic;
SIGNAL \Add7~95_combout\ : std_logic;
SIGNAL \Equal7~4\ : std_logic;
SIGNAL \Equal7~5_combout\ : std_logic;
SIGNAL \Add7~97\ : std_logic;
SIGNAL \Add7~97COUT1_112\ : std_logic;
SIGNAL \Add7~80_combout\ : std_logic;
SIGNAL \Add7~82\ : std_logic;
SIGNAL \Add7~87\ : std_logic;
SIGNAL \Add7~87COUT1_113\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \Add7~2COUT1_114\ : std_logic;
SIGNAL \Add7~7COUT1_115\ : std_logic;
SIGNAL \Add7~12\ : std_logic;
SIGNAL \Add7~12COUT1_116\ : std_logic;
SIGNAL \Add7~15_combout\ : std_logic;
SIGNAL \Add7~2\ : std_logic;
SIGNAL \Add7~5_combout\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \Equal7~0\ : std_logic;
SIGNAL \sa2~1\ : std_logic;
SIGNAL \toneOut~2_combout\ : std_logic;
SIGNAL \count_ni[9]~2_combout\ : std_logic;
SIGNAL \count_dha[9]~2_combout\ : std_logic;
SIGNAL \Add5~40_combout\ : std_logic;
SIGNAL \count_dha[9]~10_combout\ : std_logic;
SIGNAL \Add5~42\ : std_logic;
SIGNAL \Add5~42COUT1_105\ : std_logic;
SIGNAL \Add5~50_combout\ : std_logic;
SIGNAL \Add5~52\ : std_logic;
SIGNAL \Add5~52COUT1_106\ : std_logic;
SIGNAL \Add5~55_combout\ : std_logic;
SIGNAL \Add5~25_combout\ : std_logic;
SIGNAL \Add5~27\ : std_logic;
SIGNAL \Add5~27COUT1_101\ : std_logic;
SIGNAL \Add5~30_combout\ : std_logic;
SIGNAL \Add5~32\ : std_logic;
SIGNAL \Add5~32COUT1_102\ : std_logic;
SIGNAL \Add5~20_combout\ : std_logic;
SIGNAL \Add5~22\ : std_logic;
SIGNAL \Add5~22COUT1_103\ : std_logic;
SIGNAL \Add5~35_combout\ : std_logic;
SIGNAL \Add5~37\ : std_logic;
SIGNAL \Add5~37COUT1_104\ : std_logic;
SIGNAL \Add5~45_combout\ : std_logic;
SIGNAL \Add5~47\ : std_logic;
SIGNAL \Add5~57\ : std_logic;
SIGNAL \Add5~57COUT1_107\ : std_logic;
SIGNAL \Add5~65_combout\ : std_logic;
SIGNAL \Add5~62\ : std_logic;
SIGNAL \Add5~62COUT1_109\ : std_logic;
SIGNAL \Add5~75_combout\ : std_logic;
SIGNAL \Add5~67\ : std_logic;
SIGNAL \Add5~67COUT1_108\ : std_logic;
SIGNAL \Add5~70_combout\ : std_logic;
SIGNAL \Add5~72\ : std_logic;
SIGNAL \Add5~60_combout\ : std_logic;
SIGNAL \Equal5~3\ : std_logic;
SIGNAL \Equal5~2\ : std_logic;
SIGNAL \Add5~95_combout\ : std_logic;
SIGNAL \Add5~77\ : std_logic;
SIGNAL \Add5~77COUT1_110\ : std_logic;
SIGNAL \Add5~80_combout\ : std_logic;
SIGNAL \Add5~82\ : std_logic;
SIGNAL \Add5~82COUT1_111\ : std_logic;
SIGNAL \Add5~85_combout\ : std_logic;
SIGNAL \Equal5~4_combout\ : std_logic;
SIGNAL \Equal5~1\ : std_logic;
SIGNAL \Equal5~5_combout\ : std_logic;
SIGNAL \Add5~87\ : std_logic;
SIGNAL \Add5~87COUT1_112\ : std_logic;
SIGNAL \Add5~90_combout\ : std_logic;
SIGNAL \Add5~92\ : std_logic;
SIGNAL \Add5~97\ : std_logic;
SIGNAL \Add5~97COUT1_113\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Add5~2\ : std_logic;
SIGNAL \Add5~2COUT1_114\ : std_logic;
SIGNAL \Add5~5_combout\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~7COUT1_115\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \Add5~12\ : std_logic;
SIGNAL \Add5~12COUT1_116\ : std_logic;
SIGNAL \Add5~15_combout\ : std_logic;
SIGNAL \Equal5~0\ : std_logic;
SIGNAL \dha~0\ : std_logic;
SIGNAL \Add6~25_combout\ : std_logic;
SIGNAL \count_ni[9]~9_combout\ : std_logic;
SIGNAL \Add6~27\ : std_logic;
SIGNAL \Add6~27COUT1_101\ : std_logic;
SIGNAL \Add6~30_combout\ : std_logic;
SIGNAL \Add6~32\ : std_logic;
SIGNAL \Add6~32COUT1_102\ : std_logic;
SIGNAL \Add6~20_combout\ : std_logic;
SIGNAL \Add6~22\ : std_logic;
SIGNAL \Add6~22COUT1_103\ : std_logic;
SIGNAL \Add6~35_combout\ : std_logic;
SIGNAL \Equal6~1\ : std_logic;
SIGNAL \Add6~45_combout\ : std_logic;
SIGNAL \Add6~47\ : std_logic;
SIGNAL \Add6~47COUT1_105\ : std_logic;
SIGNAL \Add6~50_combout\ : std_logic;
SIGNAL \Add6~37\ : std_logic;
SIGNAL \Add6~37COUT1_104\ : std_logic;
SIGNAL \Add6~40_combout\ : std_logic;
SIGNAL \Add6~52\ : std_logic;
SIGNAL \Add6~52COUT1_106\ : std_logic;
SIGNAL \Add6~55_combout\ : std_logic;
SIGNAL \Add6~42\ : std_logic;
SIGNAL \Add6~57\ : std_logic;
SIGNAL \Add6~57COUT1_107\ : std_logic;
SIGNAL \Add6~60_combout\ : std_logic;
SIGNAL \Add6~62\ : std_logic;
SIGNAL \Add6~62COUT1_108\ : std_logic;
SIGNAL \Add6~70_combout\ : std_logic;
SIGNAL \Add6~77\ : std_logic;
SIGNAL \Add6~77COUT1_109\ : std_logic;
SIGNAL \Add6~65_combout\ : std_logic;
SIGNAL \Add6~72\ : std_logic;
SIGNAL \Add6~75_combout\ : std_logic;
SIGNAL \Equal6~3\ : std_logic;
SIGNAL \Add6~67\ : std_logic;
SIGNAL \Add6~67COUT1_110\ : std_logic;
SIGNAL \Add6~80_combout\ : std_logic;
SIGNAL \Add6~90_combout\ : std_logic;
SIGNAL \Add6~82\ : std_logic;
SIGNAL \Add6~82COUT1_111\ : std_logic;
SIGNAL \Add6~95_combout\ : std_logic;
SIGNAL \Equal6~4\ : std_logic;
SIGNAL \Equal6~2\ : std_logic;
SIGNAL \Equal6~5_combout\ : std_logic;
SIGNAL \Add6~97\ : std_logic;
SIGNAL \Add6~97COUT1_112\ : std_logic;
SIGNAL \Add6~85_combout\ : std_logic;
SIGNAL \Add6~87\ : std_logic;
SIGNAL \Add6~92\ : std_logic;
SIGNAL \Add6~92COUT1_113\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \Add6~2\ : std_logic;
SIGNAL \Add6~2COUT1_114\ : std_logic;
SIGNAL \Add6~5_combout\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~7COUT1_115\ : std_logic;
SIGNAL \Add6~10_combout\ : std_logic;
SIGNAL \Add6~12\ : std_logic;
SIGNAL \Add6~12COUT1_116\ : std_logic;
SIGNAL \Add6~15_combout\ : std_logic;
SIGNAL \Equal6~0\ : std_logic;
SIGNAL \ni~0\ : std_logic;
SIGNAL \toneOut~3_combout\ : std_logic;
SIGNAL \toneOut~4_combout\ : std_logic;
SIGNAL \toneOut~reg0_regout\ : std_logic;
SIGNAL \LED[0]~reg0_regout\ : std_logic;
SIGNAL \LED[1]~reg0_regout\ : std_logic;
SIGNAL \LED[2]~reg0_regout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \LED[3]~reg0_regout\ : std_logic;
SIGNAL \LED[4]~reg0_regout\ : std_logic;
SIGNAL \LED[5]~reg0_regout\ : std_logic;
SIGNAL \LED[6]~reg0_regout\ : std_logic;
SIGNAL \LED[7]~reg0_regout\ : std_logic;
SIGNAL count_pa : std_logic_vector(19 DOWNTO 0);
SIGNAL count_ni : std_logic_vector(19 DOWNTO 0);
SIGNAL count_dha : std_logic_vector(19 DOWNTO 0);
SIGNAL count_sa2 : std_logic_vector(19 DOWNTO 0);
SIGNAL count_ma : std_logic_vector(19 DOWNTO 0);
SIGNAL count_ga : std_logic_vector(19 DOWNTO 0);
SIGNAL count_re : std_logic_vector(19 DOWNTO 0);
SIGNAL \switch~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL count_sa1 : std_logic_vector(19 DOWNTO 0);

BEGIN

toneOut <= ww_toneOut;
ww_clk <= clk;
LED <= ww_LED;
ww_switch <= switch;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switch[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_switch(3),
	combout => \switch~combout\(3));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switch[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_switch(2),
	combout => \switch~combout\(2));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switch[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_switch(0),
	combout => \switch~combout\(0));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switch[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_switch(1),
	combout => \switch~combout\(1));

-- Location: LC_X9_Y7_N2
\count_pa[9]~0\ : maxv_lcell
-- Equation(s):
-- \count_pa[9]~0_combout\ = (!\switch~combout\(3) & (!\switch~combout\(2) & (!\switch~combout\(0) & !\switch~combout\(1))))

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
	dataa => \switch~combout\(3),
	datab => \switch~combout\(2),
	datac => \switch~combout\(0),
	datad => \switch~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \count_pa[9]~0_combout\);

-- Location: LC_X10_Y7_N5
\count_ma[9]~0\ : maxv_lcell
-- Equation(s):
-- \count_ma[9]~0_combout\ = (!\switch~combout\(2) & (!\switch~combout\(1) & (!\switch~combout\(0) & \switch~combout\(3))))

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
	dataa => \switch~combout\(2),
	datab => \switch~combout\(1),
	datac => \switch~combout\(0),
	datad => \switch~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \count_ma[9]~0_combout\);

-- Location: LC_X10_Y7_N0
\count_ga[9]~0\ : maxv_lcell
-- Equation(s):
-- \count_ga[9]~0_combout\ = (\switch~combout\(2) & (!\switch~combout\(1) & (!\switch~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0202",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(2),
	datab => \switch~combout\(1),
	datac => \switch~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \count_ga[9]~0_combout\);

-- Location: LC_X11_Y5_N0
\Add3~70\ : maxv_lcell
-- Equation(s):
-- \Add3~70_combout\ = count_ma(10) $ ((((!\Add3~67\))))
-- \Add3~72\ = CARRY((count_ma(10) & ((!\Add3~67\))))
-- \Add3~72COUT1_109\ = CARRY((count_ma(10) & ((!\Add3~67\))))

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
	dataa => count_ma(10),
	cin => \Add3~67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~70_combout\,
	cout0 => \Add3~72\,
	cout1 => \Add3~72COUT1_109\);

-- Location: LC_X11_Y6_N1
\count_ma[10]\ : maxv_lcell
-- Equation(s):
-- count_ma(10) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \count_ma[9]~0_combout\, \Add3~70_combout\, , , VCC)

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
	datac => \Add3~70_combout\,
	aclr => GND,
	sload => VCC,
	ena => \count_ma[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_ma(10));

-- Location: LC_X10_Y5_N5
\Add3~40\ : maxv_lcell
-- Equation(s):
-- \Add3~40_combout\ = count_ma(5) $ ((((\Add3~47\))))
-- \Add3~42\ = CARRY(((!\Add3~47\)) # (!count_ma(5)))
-- \Add3~42COUT1_105\ = CARRY(((!\Add3~47\)) # (!count_ma(5)))

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
	dataa => count_ma(5),
	cin => \Add3~47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~40_combout\,
	cout0 => \Add3~42\,
	cout1 => \Add3~42COUT1_105\);

-- Location: LC_X11_Y6_N7
\count_ma[5]\ : maxv_lcell
-- Equation(s):
-- count_ma(5) = DFFEAS(((\Add3~40_combout\ & ((!\Equal3~0\) # (!\Equal3~5_combout\)))), GLOBAL(\clk~combout\), VCC, , \count_ma[9]~0_combout\, , , , )

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
	clk => \clk~combout\,
	dataa => \Equal3~5_combout\,
	datac => \Equal3~0\,
	datad => \Add3~40_combout\,
	aclr => GND,
	ena => \count_ma[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_ma(5));

-- Location: LC_X10_Y5_N6
\Add3~50\ : maxv_lcell
-- Equation(s):
-- \Add3~50_combout\ = (count_ma(6) $ ((!(!\Add3~47\ & \Add3~42\) # (\Add3~47\ & \Add3~42COUT1_105\))))
-- \Add3~52\ = CARRY(((count_ma(6) & !\Add3~42\)))
-- \Add3~52COUT1_106\ = CARRY(((count_ma(6) & !\Add3~42COUT1_105\)))

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
	datab => count_ma(6),
	cin => \Add3~47\,
	cin0 => \Add3~42\,
	cin1 => \Add3~42COUT1_105\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~50_combout\,
	cout0 => \Add3~52\,
	cout1 => \Add3~52COUT1_106\);

-- Location: LC_X12_Y6_N2
\count_ma[6]\ : maxv_lcell
-- Equation(s):
-- count_ma(6) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \count_ma[9]~0_combout\, \Add3~50_combout\, , , VCC)

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
	datac => \Add3~50_combout\,
	aclr => GND,
	sload => VCC,
	ena => \count_ma[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_ma(6));

-- Location: LC_X10_Y5_N7
\Add3~55\ : maxv_lcell
-- Equation(s):
-- \Add3~55_combout\ = (count_ma(7) $ (((!\Add3~47\ & \Add3~52\) # (\Add3~47\ & \Add3~52COUT1_106\))))
-- \Add3~57\ = CARRY(((!\Add3~52\) # (!count_ma(7))))
-- \Add3~57COUT1_107\ = CARRY(((!\Add3~52COUT1_106\) # (!count_ma(7))))

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
	datab => count_ma(7),
	cin => \Add3~47\,
	cin0 => \Add3~52\,
	cin1 => \Add3~52COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~55_combout\,
	cout0 => \Add3~57\,
	cout1 => \Add3~57COUT1_107\);

-- Location: LC_X11_Y6_N3
\count_ma[7]\ : maxv_lcell
-- Equation(s):
-- count_ma(7) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \count_ma[9]~0_combout\, \Add3~55_combout\, , , VCC)

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
	datac => \Add3~55_combout\,
	aclr => GND,
	sload => VCC,
	ena => \count_ma[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_ma(7));

-- Location: LC_X10_Y5_N0
\Add3~35\ : maxv_lcell
-- Equation(s):
-- \Add3~35_combout\ = ((!count_ma(0)))
-- \Add3~37\ = CARRY(((count_ma(0))))
-- \Add3~37COUT1_101\ = CARRY(((count_ma(0))))

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
	datab => count_ma(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~35_combout\,
	cout0 => \Add3~37\,
	cout1 => \Add3~37COUT1_101\);

-- Location: LC_X11_Y6_N9
\count_ma[0]\ : maxv_lcell
-- Equation(s):
-- \Equal3~1\ = (count_ma(3) & (count_ma(2) & (!count_ma[0] & count_ma(1))))
-- count_ma(0) = DFFEAS(\Equal3~1\, GLOBAL(\clk~combout\), VCC, , \count_ma[9]~0_combout\, \Add3~35_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => count_ma(3),
	datab => count_ma(2),
	datac => \Add3~35_combout\,
	datad => count_ma(1),
	aclr => GND,
	sload => VCC,
	ena => \count_ma[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal3~1\,
	regout => count_ma(0));

-- Location: LC_X10_Y5_N1
\Add3~20\ : maxv_lcell
-- Equation(s):
-- \Add3~20_combout\ = (count_ma(1) $ ((\Add3~37\)))
-- \Add3~22\ = CARRY(((!\Add3~37\) # (!count_ma(1))))
-- \Add3~22COUT1_102\ = CARRY(((!\Add3~37COUT1_101\) # (!count_ma(1))))

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
	datab => count_ma(1),
	cin0 => \Add3~37\,
	cin1 => \Add3~37COUT1_101\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~20_combout\,
	cout0 => \Add3~22\,
	cout1 => \Add3~22COUT1_102\);

-- Location: LC_X11_Y6_N6
\count_ma[1]\ : maxv_lcell
-- Equation(s):
-- count_ma(1) = DFFEAS((\Add3~20_combout\ & (((!\Equal3~0\)) # (!\Equal3~5_combout\))), GLOBAL(\clk~combout\), VCC, , \count_ma[9]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7070",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal3~5_combout\,
	datab => \Equal3~0\,
	datac => \Add3~20_combout\,
	aclr => GND,
	ena => \count_ma[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_ma(1));

-- Location: LC_X10_Y5_N2
\Add3~25\ : maxv_lcell
-- Equation(s):
-- \Add3~25_combout\ = count_ma(2) $ ((((!\Add3~22\))))
-- \Add3~27\ = CARRY((count_ma(2) & ((!\Add3~22\))))
-- \Add3~27COUT1_103\ = CARRY((count_ma(2) & ((!\Add3~22COUT1_102\))))

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
	dataa => count_ma(2),
	cin0 => \Add3~22\,
	cin1 => \Add3~22COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~25_combout\,
	cout0 => \Add3~27\,
	cout1 => \Add3~27COUT1_103\);

-- Location: LC_X11_Y6_N2
\count_ma[2]\ : maxv_lcell
-- Equation(s):
-- count_ma(2) = DFFEAS((\Add3~25_combout\ & (((!\Equal3~0\)) # (!\Equal3~5_combout\))), GLOBAL(\clk~combout\), VCC, , \count_ma[9]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7070",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal3~5_combout\,
	datab => \Equal3~0\,
	datac => \Add3~25_combout\,
	aclr => GND,
	ena => \count_ma[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_ma(2));

-- Location: LC_X10_Y5_N3
\Add3~30\ : maxv_lcell
-- Equation(s):
-- \Add3~30_combout\ = (count_ma(3) $ ((\Add3~27\)))
-- \Add3~32\ = CARRY(((!\Add3~27\) # (!count_ma(3))))
-- \Add3~32COUT1_104\ = CARRY(((!\Add3~27COUT1_103\) # (!count_ma(3))))

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
	datab => count_ma(3),
	cin0 => \Add3~27\,
	cin1 => \Add3~27COUT1_103\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~30_combout\,
	cout0 => \Add3~32\,
	cout1 => \Add3~32COUT1_104\);

-- Location: LC_X11_Y6_N8
\count_ma[3]\ : maxv_lcell
-- Equation(s):
-- count_ma(3) = DFFEAS(((\Add3~30_combout\ & ((!\Equal3~0\) # (!\Equal3~5_combout\)))), GLOBAL(\clk~combout\), VCC, , \count_ma[9]~0_combout\, , , , )

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
	clk => \clk~combout\,
	dataa => \Equal3~5_combout\,
	datac => \Equal3~0\,
	datad => \Add3~30_combout\,
	aclr => GND,
	ena => \count_ma[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_ma(3));

-- Location: LC_X10_Y5_N4
\Add3~45\ : maxv_lcell
-- Equation(s):
-- \Add3~45_combout\ = (count_ma(4) $ ((!\Add3~32\)))
-- \Add3~47\ = CARRY(((count_ma(4) & !\Add3~32COUT1_104\)))

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
	datab => count_ma(4),
	cin0 => \Add3~32\,
	cin1 => \Add3~32COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~45_combout\,
	cout => \Add3~47\);

-- Location: LC_X12_Y6_N8
\count_ma[4]\ : maxv_lcell
-- Equation(s):
-- \Equal3~2\ = (!count_ma(6) & (!count_ma(7) & (!count_ma[4] & count_ma(5))))
-- count_ma(4) = DFFEAS(\Equal3~2\, GLOBAL(\clk~combout\), VCC, , \count_ma[9]~0_combout\, \Add3~45_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => count_ma(6),
	datab => count_ma(7),
	datac => \Add3~45_combout\,
	datad => count_ma(5),
	aclr => GND,
	sload => VCC,
	ena => \count_ma[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal3~2\,
	regout => count_ma(4));

-- Location: LC_X10_Y5_N8
\Add3~60\ : maxv_lcell
-- Equation(s):
-- \Add3~60_combout\ = (count_ma(8) $ ((!(!\Add3~47\ & \Add3~57\) # (\Add3~47\ & \Add3~57COUT1_107\))))
-- \Add3~62\ = CARRY(((count_ma(8) & !\Add3~57\)))
-- \Add3~62COUT1_108\ = CARRY(((count_ma(8) & !\Add3~57COUT1_107\)))

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
	datab => count_ma(8),
	cin => \Add3~47\,
	cin0 => \Add3~57\,
	cin1 => \Add3~57COUT1_107\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~60_combout\,
	cout0 => \Add3~62\,
	cout1 => \Add3~62COUT1_108\);

-- Location: LC_X11_Y6_N4
\count_ma[8]\ : maxv_lcell
-- Equation(s):
-- count_ma(8) = DFFEAS(((\Add3~60_combout\ & ((!\Equal3~0\) # (!\Equal3~5_combout\)))), GLOBAL(\clk~combout\), VCC, , \count_ma[9]~0_combout\, , , , )

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
	clk => \clk~combout\,
	dataa => \Equal3~5_combout\,
	datac => \Equal3~0\,
	datad => \Add3~60_combout\,
	aclr => GND,
	ena => \count_ma[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_ma(8));

-- Location: LC_X10_Y5_N9
\Add3~65\ : maxv_lcell
-- Equation(s):
-- \Add3~65_combout\ = count_ma(9) $ (((((!\Add3~47\ & \Add3~62\) # (\Add3~47\ & \Add3~62COUT1_108\)))))
-- \Add3~67\ = CARRY(((!\Add3~62COUT1_108\)) # (!count_ma(9)))

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
	dataa => count_ma(9),
	cin => \Add3~47\,
	cin0 => \Add3~62\,
	cin1 => \Add3~62COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~65_combout\,
	cout => \Add3~67\);

-- Location: LC_X11_Y6_N0
\count_ma[9]\ : maxv_lcell
-- Equation(s):
-- \Equal3~3\ = (!count_ma(11) & (!count_ma(10) & (!count_ma[9] & count_ma(8))))
-- count_ma(9) = DFFEAS(\Equal3~3\, GLOBAL(\clk~combout\), VCC, , \count_ma[9]~0_combout\, \Add3~65_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => count_ma(11),
	datab => count_ma(10),
	datac => \Add3~65_combout\,
	datad => count_ma(8),
	aclr => GND,
	sload => VCC,
	ena => \count_ma[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal3~3\,
	regout => count_ma(9));

-- Location: LC_X11_Y5_N1
\Add3~75\ : maxv_lcell
-- Equation(s):
-- \Add3~75_combout\ = (count_ma(11) $ (((!\Add3~67\ & \Add3~72\) # (\Add3~67\ & \Add3~72COUT1_109\))))
-- \Add3~77\ = CARRY(((!\Add3~72\) # (!count_ma(11))))
-- \Add3~77COUT1_110\ = CARRY(((!\Add3~72COUT1_109\) # (!count_ma(11))))

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
	datab => count_ma(11),
	cin => \Add3~67\,
	cin0 => \Add3~72\,
	cin1 => \Add3~72COUT1_109\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~75_combout\,
	cout0 => \Add3~77\,
	cout1 => \Add3~77COUT1_110\);

-- Location: LC_X11_Y6_N5
\count_ma[11]\ : maxv_lcell
-- Equation(s):
-- count_ma(11) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \count_ma[9]~0_combout\, \Add3~75_combout\, , , VCC)

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
	datac => \Add3~75_combout\,
	aclr => GND,
	sload => VCC,
	ena => \count_ma[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_ma(11));

-- Location: LC_X11_Y5_N5
\Add3~95\ : maxv_lcell
-- Equation(s):
-- \Add3~95_combout\ = count_ma(15) $ ((((\Add3~92\))))
-- \Add3~97\ = CARRY(((!\Add3~92\)) # (!count_ma(15)))
-- \Add3~97COUT1_113\ = CARRY(((!\Add3~92\)) # (!count_ma(15)))

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
	dataa => count_ma(15),
	cin => \Add3~92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~95_combout\,
	cout0 => \Add3~97\,
	cout1 => \Add3~97COUT1_113\);

-- Location: LC_X12_Y6_N7
\count_ma[15]\ : maxv_lcell
-- Equation(s):
-- count_ma(15) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \count_ma[9]~0_combout\, \Add3~95_combout\, , , VCC)

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
	datac => \Add3~95_combout\,
	aclr => GND,
	sload => VCC,
	ena => \count_ma[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_ma(15));

-- Location: LC_X11_Y5_N2
\Add3~80\ : maxv_lcell
-- Equation(s):
-- \Add3~80_combout\ = (count_ma(12) $ ((!(!\Add3~67\ & \Add3~77\) # (\Add3~67\ & \Add3~77COUT1_110\))))
-- \Add3~82\ = CARRY(((count_ma(12) & !\Add3~77\)))
-- \Add3~82COUT1_111\ = CARRY(((count_ma(12) & !\Add3~77COUT1_110\)))

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
	datab => count_ma(12),
	cin => \Add3~67\,
	cin0 => \Add3~77\,
	cin1 => \Add3~77COUT1_110\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~80_combout\,
	cout0 => \Add3~82\,
	cout1 => \Add3~82COUT1_111\);

-- Location: LC_X12_Y6_N3
\count_ma[12]\ : maxv_lcell
-- Equation(s):
-- count_ma(12) = DFFEAS(((\Add3~80_combout\ & ((!\Equal3~5_combout\) # (!\Equal3~0\)))), GLOBAL(\clk~combout\), VCC, , \count_ma[9]~0_combout\, , , , )

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
	clk => \clk~combout\,
	dataa => \Equal3~0\,
	datac => \Equal3~5_combout\,
	datad => \Add3~80_combout\,
	aclr => GND,
	ena => \count_ma[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_ma(12));

-- Location: LC_X11_Y5_N3
\Add3~85\ : maxv_lcell
-- Equation(s):
-- \Add3~85_combout\ = (count_ma(13) $ (((!\Add3~67\ & \Add3~82\) # (\Add3~67\ & \Add3~82COUT1_111\))))
-- \Add3~87\ = CARRY(((!\Add3~82\) # (!count_ma(13))))
-- \Add3~87COUT1_112\ = CARRY(((!\Add3~82COUT1_111\) # (!count_ma(13))))

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
	datab => count_ma(13),
	cin => \Add3~67\,
	cin0 => \Add3~82\,
	cin1 => \Add3~82COUT1_111\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~85_combout\,
	cout0 => \Add3~87\,
	cout1 => \Add3~87COUT1_112\);

-- Location: LC_X11_Y5_N4
\Add3~90\ : maxv_lcell
-- Equation(s):
-- \Add3~90_combout\ = (count_ma(14) $ ((!(!\Add3~67\ & \Add3~87\) # (\Add3~67\ & \Add3~87COUT1_112\))))
-- \Add3~92\ = CARRY(((count_ma(14) & !\Add3~87COUT1_112\)))

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
	datab => count_ma(14),
	cin => \Add3~67\,
	cin0 => \Add3~87\,
	cin1 => \Add3~87COUT1_112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~90_combout\,
	cout => \Add3~92\);

-- Location: LC_X12_Y6_N9
\count_ma[14]\ : maxv_lcell
-- Equation(s):
-- \Equal3~4\ = (count_ma(13) & (!count_ma(15) & (!count_ma[14] & count_ma(12))))
-- count_ma(14) = DFFEAS(\Equal3~4\, GLOBAL(\clk~combout\), VCC, , \count_ma[9]~0_combout\, \Add3~90_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => count_ma(13),
	datab => count_ma(15),
	datac => \Add3~90_combout\,
	datad => count_ma(12),
	aclr => GND,
	sload => VCC,
	ena => \count_ma[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal3~4\,
	regout => count_ma(14));

-- Location: LC_X12_Y6_N4
\Equal3~5\ : maxv_lcell
-- Equation(s):
-- \Equal3~5_combout\ = (\Equal3~3\ & (\Equal3~4\ & (\Equal3~1\ & \Equal3~2\)))

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
	dataa => \Equal3~3\,
	datab => \Equal3~4\,
	datac => \Equal3~1\,
	datad => \Equal3~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal3~5_combout\);

-- Location: LC_X12_Y6_N5
\count_ma[13]\ : maxv_lcell
-- Equation(s):
-- count_ma(13) = DFFEAS(((\Add3~85_combout\ & ((!\Equal3~5_combout\) # (!\Equal3~0\)))), GLOBAL(\clk~combout\), VCC, , \count_ma[9]~0_combout\, , , , )

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
	clk => \clk~combout\,
	dataa => \Equal3~0\,
	datac => \Equal3~5_combout\,
	datad => \Add3~85_combout\,
	aclr => GND,
	ena => \count_ma[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_ma(13));

-- Location: LC_X11_Y5_N6
\Add3~0\ : maxv_lcell
-- Equation(s):
-- \Add3~0_combout\ = count_ma(16) $ ((((!(!\Add3~92\ & \Add3~97\) # (\Add3~92\ & \Add3~97COUT1_113\)))))
-- \Add3~2\ = CARRY((count_ma(16) & ((!\Add3~97\))))
-- \Add3~2COUT1_114\ = CARRY((count_ma(16) & ((!\Add3~97COUT1_113\))))

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
	dataa => count_ma(16),
	cin => \Add3~92\,
	cin0 => \Add3~97\,
	cin1 => \Add3~97COUT1_113\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~0_combout\,
	cout0 => \Add3~2\,
	cout1 => \Add3~2COUT1_114\);

-- Location: LC_X12_Y6_N1
\count_ma[16]\ : maxv_lcell
-- Equation(s):
-- count_ma(16) = DFFEAS(((\Add3~0_combout\ & ((!\Equal3~0\) # (!\Equal3~5_combout\)))), GLOBAL(\clk~combout\), VCC, , \count_ma[9]~0_combout\, , , , )

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
	clk => \clk~combout\,
	dataa => \Equal3~5_combout\,
	datac => \Equal3~0\,
	datad => \Add3~0_combout\,
	aclr => GND,
	ena => \count_ma[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_ma(16));

-- Location: LC_X11_Y5_N7
\Add3~5\ : maxv_lcell
-- Equation(s):
-- \Add3~5_combout\ = count_ma(17) $ (((((!\Add3~92\ & \Add3~2\) # (\Add3~92\ & \Add3~2COUT1_114\)))))
-- \Add3~7\ = CARRY(((!\Add3~2\)) # (!count_ma(17)))
-- \Add3~7COUT1_115\ = CARRY(((!\Add3~2COUT1_114\)) # (!count_ma(17)))

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
	dataa => count_ma(17),
	cin => \Add3~92\,
	cin0 => \Add3~2\,
	cin1 => \Add3~2COUT1_114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~5_combout\,
	cout0 => \Add3~7\,
	cout1 => \Add3~7COUT1_115\);

-- Location: LC_X11_Y5_N8
\Add3~10\ : maxv_lcell
-- Equation(s):
-- \Add3~10_combout\ = count_ma(18) $ ((((!(!\Add3~92\ & \Add3~7\) # (\Add3~92\ & \Add3~7COUT1_115\)))))
-- \Add3~12\ = CARRY((count_ma(18) & ((!\Add3~7\))))
-- \Add3~12COUT1_116\ = CARRY((count_ma(18) & ((!\Add3~7COUT1_115\))))

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
	dataa => count_ma(18),
	cin => \Add3~92\,
	cin0 => \Add3~7\,
	cin1 => \Add3~7COUT1_115\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~10_combout\,
	cout0 => \Add3~12\,
	cout1 => \Add3~12COUT1_116\);

-- Location: LC_X11_Y5_N9
\Add3~15\ : maxv_lcell
-- Equation(s):
-- \Add3~15_combout\ = (((!\Add3~92\ & \Add3~12\) # (\Add3~92\ & \Add3~12COUT1_116\) $ (count_ma(19))))

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
	datad => count_ma(19),
	cin => \Add3~92\,
	cin0 => \Add3~12\,
	cin1 => \Add3~12COUT1_116\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~15_combout\);

-- Location: LC_X12_Y5_N5
\count_ma[19]\ : maxv_lcell
-- Equation(s):
-- count_ma(19) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \count_ma[9]~0_combout\, \Add3~15_combout\, , , VCC)

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
	datac => \Add3~15_combout\,
	aclr => GND,
	sload => VCC,
	ena => \count_ma[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_ma(19));

-- Location: LC_X12_Y6_N6
\count_ma[17]\ : maxv_lcell
-- Equation(s):
-- \Equal3~0\ = (!count_ma(18) & (count_ma(16) & (!count_ma[17] & !count_ma(19))))
-- count_ma(17) = DFFEAS(\Equal3~0\, GLOBAL(\clk~combout\), VCC, , \count_ma[9]~0_combout\, \Add3~5_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => count_ma(18),
	datab => count_ma(16),
	datac => \Add3~5_combout\,
	datad => count_ma(19),
	aclr => GND,
	sload => VCC,
	ena => \count_ma[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal3~0\,
	regout => count_ma(17));

-- Location: LC_X12_Y5_N3
\count_ma[18]\ : maxv_lcell
-- Equation(s):
-- count_ma(18) = DFFEAS((((\Add3~10_combout\))), GLOBAL(\clk~combout\), VCC, , \count_ma[9]~0_combout\, , , , )

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
	datad => \Add3~10_combout\,
	aclr => GND,
	ena => \count_ma[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_ma(18));

-- Location: LC_X13_Y6_N6
ma : maxv_lcell
-- Equation(s):
-- \ma~0\ = (ma $ (((\Equal3~0\ & \Equal3~5_combout\))))

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
	clk => \clk~combout\,
	datab => \Equal3~0\,
	datad => \Equal3~5_combout\,
	aclr => GND,
	ena => \count_ma[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ma~0\,
	regout => \ma~regout\);

-- Location: LC_X13_Y5_N5
\Add2~50\ : maxv_lcell
-- Equation(s):
-- \Add2~50_combout\ = (count_ga(5) $ ((\Add2~47\)))
-- \Add2~52\ = CARRY(((!\Add2~47\) # (!count_ga(5))))
-- \Add2~52COUT1_105\ = CARRY(((!\Add2~47\) # (!count_ga(5))))

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
	datab => count_ga(5),
	cin => \Add2~47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~50_combout\,
	cout0 => \Add2~52\,
	cout1 => \Add2~52COUT1_105\);

-- Location: LC_X14_Y6_N9
\count_ga[5]\ : maxv_lcell
-- Equation(s):
-- count_ga(5) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \count_ga[9]~0_combout\, \Add2~50_combout\, , , VCC)

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
	datac => \Add2~50_combout\,
	aclr => GND,
	sload => VCC,
	ena => \count_ga[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_ga(5));

-- Location: LC_X13_Y5_N0
\Add2~30\ : maxv_lcell
-- Equation(s):
-- \Add2~30_combout\ = (!count_ga(0))
-- \Add2~32\ = CARRY((count_ga(0)))
-- \Add2~32COUT1_101\ = CARRY((count_ga(0)))

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
	dataa => count_ga(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~30_combout\,
	cout0 => \Add2~32\,
	cout1 => \Add2~32COUT1_101\);

-- Location: LC_X12_Y5_N0
\count_ga[0]\ : maxv_lcell
-- Equation(s):
-- \Equal2~1\ = (!count_ga(3) & (count_ga(1) & (!count_ga[0] & count_ga(2))))
-- count_ga(0) = DFFEAS(\Equal2~1\, GLOBAL(\clk~combout\), VCC, , \count_ga[9]~0_combout\, \Add2~30_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => count_ga(3),
	datab => count_ga(1),
	datac => \Add2~30_combout\,
	datad => count_ga(2),
	aclr => GND,
	sload => VCC,
	ena => \count_ga[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal2~1\,
	regout => count_ga(0));

-- Location: LC_X13_Y5_N1
\Add2~20\ : maxv_lcell
-- Equation(s):
-- \Add2~20_combout\ = count_ga(1) $ ((((\Add2~32\))))
-- \Add2~22\ = CARRY(((!\Add2~32\)) # (!count_ga(1)))
-- \Add2~22COUT1_102\ = CARRY(((!\Add2~32COUT1_101\)) # (!count_ga(1)))

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
	dataa => count_ga(1),
	cin0 => \Add2~32\,
	cin1 => \Add2~32COUT1_101\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~20_combout\,
	cout0 => \Add2~22\,
	cout1 => \Add2~22COUT1_102\);

-- Location: LC_X12_Y5_N1
\count_ga[1]\ : maxv_lcell
-- Equation(s):
-- count_ga(1) = DFFEAS(((\Add2~20_combout\ & ((!\Equal2~5_combout\) # (!\Equal2~0\)))), GLOBAL(\clk~combout\), VCC, , \count_ga[9]~0_combout\, , , , )

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
	clk => \clk~combout\,
	datab => \Add2~20_combout\,
	datac => \Equal2~0\,
	datad => \Equal2~5_combout\,
	aclr => GND,
	ena => \count_ga[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_ga(1));

-- Location: LC_X13_Y5_N2
\Add2~25\ : maxv_lcell
-- Equation(s):
-- \Add2~25_combout\ = count_ga(2) $ ((((!\Add2~22\))))
-- \Add2~27\ = CARRY((count_ga(2) & ((!\Add2~22\))))
-- \Add2~27COUT1_103\ = CARRY((count_ga(2) & ((!\Add2~22COUT1_102\))))

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
	dataa => count_ga(2),
	cin0 => \Add2~22\,
	cin1 => \Add2~22COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~25_combout\,
	cout0 => \Add2~27\,
	cout1 => \Add2~27COUT1_103\);

-- Location: LC_X12_Y5_N9
\count_ga[2]\ : maxv_lcell
-- Equation(s):
-- count_ga(2) = DFFEAS(((\Add2~25_combout\ & ((!\Equal2~5_combout\) # (!\Equal2~0\)))), GLOBAL(\clk~combout\), VCC, , \count_ga[9]~0_combout\, , , , )

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
	clk => \clk~combout\,
	datab => \Add2~25_combout\,
	datac => \Equal2~0\,
	datad => \Equal2~5_combout\,
	aclr => GND,
	ena => \count_ga[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_ga(2));

-- Location: LC_X13_Y5_N3
\Add2~35\ : maxv_lcell
-- Equation(s):
-- \Add2~35_combout\ = (count_ga(3) $ ((\Add2~27\)))
-- \Add2~37\ = CARRY(((!\Add2~27\) # (!count_ga(3))))
-- \Add2~37COUT1_104\ = CARRY(((!\Add2~27COUT1_103\) # (!count_ga(3))))

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
	datab => count_ga(3),
	cin0 => \Add2~27\,
	cin1 => \Add2~27COUT1_103\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~35_combout\,
	cout0 => \Add2~37\,
	cout1 => \Add2~37COUT1_104\);

-- Location: LC_X12_Y5_N6
\count_ga[3]\ : maxv_lcell
-- Equation(s):
-- count_ga(3) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \count_ga[9]~0_combout\, \Add2~35_combout\, , , VCC)

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
	datac => \Add2~35_combout\,
	aclr => GND,
	sload => VCC,
	ena => \count_ga[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_ga(3));

-- Location: LC_X13_Y5_N4
\Add2~45\ : maxv_lcell
-- Equation(s):
-- \Add2~45_combout\ = (count_ga(4) $ ((!\Add2~37\)))
-- \Add2~47\ = CARRY(((count_ga(4) & !\Add2~37COUT1_104\)))

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
	datab => count_ga(4),
	cin0 => \Add2~37\,
	cin1 => \Add2~37COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~45_combout\,
	cout => \Add2~47\);

-- Location: LC_X13_Y5_N6
\Add2~55\ : maxv_lcell
-- Equation(s):
-- \Add2~55_combout\ = count_ga(6) $ ((((!(!\Add2~47\ & \Add2~52\) # (\Add2~47\ & \Add2~52COUT1_105\)))))
-- \Add2~57\ = CARRY((count_ga(6) & ((!\Add2~52\))))
-- \Add2~57COUT1_106\ = CARRY((count_ga(6) & ((!\Add2~52COUT1_105\))))

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
	dataa => count_ga(6),
	cin => \Add2~47\,
	cin0 => \Add2~52\,
	cin1 => \Add2~52COUT1_105\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~55_combout\,
	cout0 => \Add2~57\,
	cout1 => \Add2~57COUT1_106\);

-- Location: LC_X13_Y6_N1
\count_ga[6]\ : maxv_lcell
-- Equation(s):
-- count_ga(6) = DFFEAS((((\Add2~55_combout\))), GLOBAL(\clk~combout\), VCC, , \count_ga[9]~0_combout\, , , , )

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
	datad => \Add2~55_combout\,
	aclr => GND,
	ena => \count_ga[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_ga(6));

-- Location: LC_X13_Y6_N5
\count_ga[4]\ : maxv_lcell
-- Equation(s):
-- \Equal2~2\ = (count_ga(7) & (!count_ga(5) & (!count_ga[4] & !count_ga(6))))
-- count_ga(4) = DFFEAS(\Equal2~2\, GLOBAL(\clk~combout\), VCC, , \count_ga[9]~0_combout\, \Add2~45_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => count_ga(7),
	datab => count_ga(5),
	datac => \Add2~45_combout\,
	datad => count_ga(6),
	aclr => GND,
	sload => VCC,
	ena => \count_ga[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal2~2\,
	regout => count_ga(4));

-- Location: LC_X13_Y5_N7
\Add2~40\ : maxv_lcell
-- Equation(s):
-- \Add2~40_combout\ = count_ga(7) $ (((((!\Add2~47\ & \Add2~57\) # (\Add2~47\ & \Add2~57COUT1_106\)))))
-- \Add2~42\ = CARRY(((!\Add2~57\)) # (!count_ga(7)))
-- \Add2~42COUT1_107\ = CARRY(((!\Add2~57COUT1_106\)) # (!count_ga(7)))

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
	dataa => count_ga(7),
	cin => \Add2~47\,
	cin0 => \Add2~57\,
	cin1 => \Add2~57COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~40_combout\,
	cout0 => \Add2~42\,
	cout1 => \Add2~42COUT1_107\);

-- Location: LC_X13_Y6_N3
\count_ga[7]\ : maxv_lcell
-- Equation(s):
-- count_ga(7) = DFFEAS(((\Add2~40_combout\ & ((!\Equal2~5_combout\) # (!\Equal2~0\)))), GLOBAL(\clk~combout\), VCC, , \count_ga[9]~0_combout\, , , , )

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
	clk => \clk~combout\,
	dataa => \Equal2~0\,
	datac => \Equal2~5_combout\,
	datad => \Add2~40_combout\,
	aclr => GND,
	ena => \count_ga[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_ga(7));

-- Location: LC_X14_Y5_N0
\Add2~65\ : maxv_lcell
-- Equation(s):
-- \Add2~65_combout\ = (count_ga(10) $ ((!\Add2~72\)))
-- \Add2~67\ = CARRY(((count_ga(10) & !\Add2~72\)))
-- \Add2~67COUT1_109\ = CARRY(((count_ga(10) & !\Add2~72\)))

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
	datab => count_ga(10),
	cin => \Add2~72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~65_combout\,
	cout0 => \Add2~67\,
	cout1 => \Add2~67COUT1_109\);

-- Location: LC_X12_Y5_N4
\count_ga[10]\ : maxv_lcell
-- Equation(s):
-- count_ga(10) = DFFEAS(((\Add2~65_combout\ & ((!\Equal2~0\) # (!\Equal2~5_combout\)))), GLOBAL(\clk~combout\), VCC, , \count_ga[9]~0_combout\, , , , )

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
	clk => \clk~combout\,
	datab => \Equal2~5_combout\,
	datac => \Equal2~0\,
	datad => \Add2~65_combout\,
	aclr => GND,
	ena => \count_ga[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_ga(10));

-- Location: LC_X13_Y5_N8
\Add2~60\ : maxv_lcell
-- Equation(s):
-- \Add2~60_combout\ = (count_ga(8) $ ((!(!\Add2~47\ & \Add2~42\) # (\Add2~47\ & \Add2~42COUT1_107\))))
-- \Add2~62\ = CARRY(((count_ga(8) & !\Add2~42\)))
-- \Add2~62COUT1_108\ = CARRY(((count_ga(8) & !\Add2~42COUT1_107\)))

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
	datab => count_ga(8),
	cin => \Add2~47\,
	cin0 => \Add2~42\,
	cin1 => \Add2~42COUT1_107\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~60_combout\,
	cout0 => \Add2~62\,
	cout1 => \Add2~62COUT1_108\);

-- Location: LC_X12_Y5_N7
\count_ga[8]\ : maxv_lcell
-- Equation(s):
-- count_ga(8) = DFFEAS(((\Add2~60_combout\ & ((!\Equal2~5_combout\) # (!\Equal2~0\)))), GLOBAL(\clk~combout\), VCC, , \count_ga[9]~0_combout\, , , , )

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
	clk => \clk~combout\,
	datab => \Add2~60_combout\,
	datac => \Equal2~0\,
	datad => \Equal2~5_combout\,
	aclr => GND,
	ena => \count_ga[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_ga(8));

-- Location: LC_X13_Y5_N9
\Add2~70\ : maxv_lcell
-- Equation(s):
-- \Add2~70_combout\ = (count_ga(9) $ (((!\Add2~47\ & \Add2~62\) # (\Add2~47\ & \Add2~62COUT1_108\))))
-- \Add2~72\ = CARRY(((!\Add2~62COUT1_108\) # (!count_ga(9))))

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
	datab => count_ga(9),
	cin => \Add2~47\,
	cin0 => \Add2~62\,
	cin1 => \Add2~62COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~70_combout\,
	cout => \Add2~72\);

-- Location: LC_X14_Y5_N1
\Add2~75\ : maxv_lcell
-- Equation(s):
-- \Add2~75_combout\ = (count_ga(11) $ (((!\Add2~72\ & \Add2~67\) # (\Add2~72\ & \Add2~67COUT1_109\))))
-- \Add2~77\ = CARRY(((!\Add2~67\) # (!count_ga(11))))
-- \Add2~77COUT1_110\ = CARRY(((!\Add2~67COUT1_109\) # (!count_ga(11))))

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
	datab => count_ga(11),
	cin => \Add2~72\,
	cin0 => \Add2~67\,
	cin1 => \Add2~67COUT1_109\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~75_combout\,
	cout0 => \Add2~77\,
	cout1 => \Add2~77COUT1_110\);

-- Location: LC_X12_Y5_N8
\count_ga[11]\ : maxv_lcell
-- Equation(s):
-- count_ga(11) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \count_ga[9]~0_combout\, \Add2~75_combout\, , , VCC)

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
	datac => \Add2~75_combout\,
	aclr => GND,
	sload => VCC,
	ena => \count_ga[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_ga(11));

-- Location: LC_X12_Y5_N2
\count_ga[9]\ : maxv_lcell
-- Equation(s):
-- \Equal2~3\ = (count_ga(10) & (count_ga(8) & (!count_ga[9] & !count_ga(11))))
-- count_ga(9) = DFFEAS(\Equal2~3\, GLOBAL(\clk~combout\), VCC, , \count_ga[9]~0_combout\, \Add2~70_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => count_ga(10),
	datab => count_ga(8),
	datac => \Add2~70_combout\,
	datad => count_ga(11),
	aclr => GND,
	sload => VCC,
	ena => \count_ga[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal2~3\,
	regout => count_ga(9));

-- Location: LC_X14_Y5_N2
\Add2~85\ : maxv_lcell
-- Equation(s):
-- \Add2~85_combout\ = (count_ga(12) $ ((!(!\Add2~72\ & \Add2~77\) # (\Add2~72\ & \Add2~77COUT1_110\))))
-- \Add2~87\ = CARRY(((count_ga(12) & !\Add2~77\)))
-- \Add2~87COUT1_111\ = CARRY(((count_ga(12) & !\Add2~77COUT1_110\)))

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
	datab => count_ga(12),
	cin => \Add2~72\,
	cin0 => \Add2~77\,
	cin1 => \Add2~77COUT1_110\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~85_combout\,
	cout0 => \Add2~87\,
	cout1 => \Add2~87COUT1_111\);

-- Location: LC_X14_Y5_N5
\Add2~95\ : maxv_lcell
-- Equation(s):
-- \Add2~95_combout\ = count_ga(15) $ ((((\Add2~82\))))
-- \Add2~97\ = CARRY(((!\Add2~82\)) # (!count_ga(15)))
-- \Add2~97COUT1_113\ = CARRY(((!\Add2~82\)) # (!count_ga(15)))

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
	dataa => count_ga(15),
	cin => \Add2~82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~95_combout\,
	cout0 => \Add2~97\,
	cout1 => \Add2~97COUT1_113\);

-- Location: LC_X14_Y6_N5
\count_ga[15]\ : maxv_lcell
-- Equation(s):
-- count_ga(15) = DFFEAS((((\Add2~95_combout\))), GLOBAL(\clk~combout\), VCC, , \count_ga[9]~0_combout\, , , , )

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
	datad => \Add2~95_combout\,
	aclr => GND,
	ena => \count_ga[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_ga(15));

-- Location: LC_X13_Y6_N0
\count_ga[12]\ : maxv_lcell
-- Equation(s):
-- \Equal2~4\ = (count_ga(14) & (!count_ga(13) & (!count_ga[12] & !count_ga(15))))
-- count_ga(12) = DFFEAS(\Equal2~4\, GLOBAL(\clk~combout\), VCC, , \count_ga[9]~0_combout\, \Add2~85_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => count_ga(14),
	datab => count_ga(13),
	datac => \Add2~85_combout\,
	datad => count_ga(15),
	aclr => GND,
	sload => VCC,
	ena => \count_ga[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal2~4\,
	regout => count_ga(12));

-- Location: LC_X14_Y5_N3
\Add2~90\ : maxv_lcell
-- Equation(s):
-- \Add2~90_combout\ = (count_ga(13) $ (((!\Add2~72\ & \Add2~87\) # (\Add2~72\ & \Add2~87COUT1_111\))))
-- \Add2~92\ = CARRY(((!\Add2~87\) # (!count_ga(13))))
-- \Add2~92COUT1_112\ = CARRY(((!\Add2~87COUT1_111\) # (!count_ga(13))))

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
	datab => count_ga(13),
	cin => \Add2~72\,
	cin0 => \Add2~87\,
	cin1 => \Add2~87COUT1_111\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~90_combout\,
	cout0 => \Add2~92\,
	cout1 => \Add2~92COUT1_112\);

-- Location: LC_X13_Y6_N2
\count_ga[13]\ : maxv_lcell
-- Equation(s):
-- count_ga(13) = DFFEAS((((\Add2~90_combout\))), GLOBAL(\clk~combout\), VCC, , \count_ga[9]~0_combout\, , , , )

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
	datad => \Add2~90_combout\,
	aclr => GND,
	ena => \count_ga[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_ga(13));

-- Location: LC_X13_Y6_N7
\Equal2~5\ : maxv_lcell
-- Equation(s):
-- \Equal2~5_combout\ = (\Equal2~2\ & (\Equal2~4\ & (\Equal2~1\ & \Equal2~3\)))

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
	dataa => \Equal2~2\,
	datab => \Equal2~4\,
	datac => \Equal2~1\,
	datad => \Equal2~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal2~5_combout\);

-- Location: LC_X14_Y5_N4
\Add2~80\ : maxv_lcell
-- Equation(s):
-- \Add2~80_combout\ = count_ga(14) $ ((((!(!\Add2~72\ & \Add2~92\) # (\Add2~72\ & \Add2~92COUT1_112\)))))
-- \Add2~82\ = CARRY((count_ga(14) & ((!\Add2~92COUT1_112\))))

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
	dataa => count_ga(14),
	cin => \Add2~72\,
	cin0 => \Add2~92\,
	cin1 => \Add2~92COUT1_112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~80_combout\,
	cout => \Add2~82\);

-- Location: LC_X13_Y6_N4
\count_ga[14]\ : maxv_lcell
-- Equation(s):
-- count_ga(14) = DFFEAS(((\Add2~80_combout\ & ((!\Equal2~0\) # (!\Equal2~5_combout\)))), GLOBAL(\clk~combout\), VCC, , \count_ga[9]~0_combout\, , , , )

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
	clk => \clk~combout\,
	datab => \Equal2~5_combout\,
	datac => \Equal2~0\,
	datad => \Add2~80_combout\,
	aclr => GND,
	ena => \count_ga[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_ga(14));

-- Location: LC_X14_Y5_N6
\Add2~0\ : maxv_lcell
-- Equation(s):
-- \Add2~0_combout\ = count_ga(16) $ ((((!(!\Add2~82\ & \Add2~97\) # (\Add2~82\ & \Add2~97COUT1_113\)))))
-- \Add2~2\ = CARRY((count_ga(16) & ((!\Add2~97\))))
-- \Add2~2COUT1_114\ = CARRY((count_ga(16) & ((!\Add2~97COUT1_113\))))

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
	dataa => count_ga(16),
	cin => \Add2~82\,
	cin0 => \Add2~97\,
	cin1 => \Add2~97COUT1_113\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~0_combout\,
	cout0 => \Add2~2\,
	cout1 => \Add2~2COUT1_114\);

-- Location: LC_X14_Y6_N7
\count_ga[16]\ : maxv_lcell
-- Equation(s):
-- count_ga(16) = DFFEAS(((\Add2~0_combout\ & ((!\Equal2~5_combout\) # (!\Equal2~0\)))), GLOBAL(\clk~combout\), VCC, , \count_ga[9]~0_combout\, , , , )

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
	clk => \clk~combout\,
	dataa => \Equal2~0\,
	datac => \Add2~0_combout\,
	datad => \Equal2~5_combout\,
	aclr => GND,
	ena => \count_ga[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_ga(16));

-- Location: LC_X14_Y5_N7
\Add2~5\ : maxv_lcell
-- Equation(s):
-- \Add2~5_combout\ = (count_ga(17) $ (((!\Add2~82\ & \Add2~2\) # (\Add2~82\ & \Add2~2COUT1_114\))))
-- \Add2~7\ = CARRY(((!\Add2~2\) # (!count_ga(17))))
-- \Add2~7COUT1_115\ = CARRY(((!\Add2~2COUT1_114\) # (!count_ga(17))))

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
	datab => count_ga(17),
	cin => \Add2~82\,
	cin0 => \Add2~2\,
	cin1 => \Add2~2COUT1_114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~5_combout\,
	cout0 => \Add2~7\,
	cout1 => \Add2~7COUT1_115\);

-- Location: LC_X14_Y5_N8
\Add2~10\ : maxv_lcell
-- Equation(s):
-- \Add2~10_combout\ = (count_ga(18) $ ((!(!\Add2~82\ & \Add2~7\) # (\Add2~82\ & \Add2~7COUT1_115\))))
-- \Add2~12\ = CARRY(((count_ga(18) & !\Add2~7\)))
-- \Add2~12COUT1_116\ = CARRY(((count_ga(18) & !\Add2~7COUT1_115\)))

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
	datab => count_ga(18),
	cin => \Add2~82\,
	cin0 => \Add2~7\,
	cin1 => \Add2~7COUT1_115\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~10_combout\,
	cout0 => \Add2~12\,
	cout1 => \Add2~12COUT1_116\);

-- Location: LC_X14_Y5_N9
\Add2~15\ : maxv_lcell
-- Equation(s):
-- \Add2~15_combout\ = (((!\Add2~82\ & \Add2~12\) # (\Add2~82\ & \Add2~12COUT1_116\) $ (count_ga(19))))

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
	datad => count_ga(19),
	cin => \Add2~82\,
	cin0 => \Add2~12\,
	cin1 => \Add2~12COUT1_116\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~15_combout\);

-- Location: LC_X15_Y5_N8
\count_ga[19]\ : maxv_lcell
-- Equation(s):
-- count_ga(19) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \count_ga[9]~0_combout\, \Add2~15_combout\, , , VCC)

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
	datac => \Add2~15_combout\,
	aclr => GND,
	sload => VCC,
	ena => \count_ga[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_ga(19));

-- Location: LC_X14_Y6_N6
\count_ga[17]\ : maxv_lcell
-- Equation(s):
-- \Equal2~0\ = (!count_ga(18) & (count_ga(16) & (!count_ga[17] & !count_ga(19))))
-- count_ga(17) = DFFEAS(\Equal2~0\, GLOBAL(\clk~combout\), VCC, , \count_ga[9]~0_combout\, \Add2~5_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => count_ga(18),
	datab => count_ga(16),
	datac => \Add2~5_combout\,
	datad => count_ga(19),
	aclr => GND,
	sload => VCC,
	ena => \count_ga[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal2~0\,
	regout => count_ga(17));

-- Location: LC_X14_Y6_N8
\count_ga[18]\ : maxv_lcell
-- Equation(s):
-- count_ga(18) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \count_ga[9]~0_combout\, \Add2~10_combout\, , , VCC)

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
	datac => \Add2~10_combout\,
	aclr => GND,
	sload => VCC,
	ena => \count_ga[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_ga(18));

-- Location: LC_X13_Y6_N8
ga : maxv_lcell
-- Equation(s):
-- \ga~0\ = (ga $ (((\Equal2~0\ & \Equal2~5_combout\))))

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
	clk => \clk~combout\,
	dataa => \Equal2~0\,
	datad => \Equal2~5_combout\,
	aclr => GND,
	ena => \count_ga[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ga~0\,
	regout => \ga~regout\);

-- Location: LC_X13_Y6_N9
\toneOut~1\ : maxv_lcell
-- Equation(s):
-- \toneOut~1_combout\ = (\count_ma[9]~0_combout\ & ((\ma~0\) # ((\count_ga[9]~0_combout\ & \ga~0\)))) # (!\count_ma[9]~0_combout\ & (\count_ga[9]~0_combout\ & ((\ga~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count_ma[9]~0_combout\,
	datab => \count_ga[9]~0_combout\,
	datac => \ma~0\,
	datad => \ga~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \toneOut~1_combout\);

-- Location: LC_X2_Y7_N5
\Add0~40\ : maxv_lcell
-- Equation(s):
-- \Add0~40_combout\ = (count_sa1(5) $ ((\Add0~57\)))
-- \Add0~42\ = CARRY(((!\Add0~57\) # (!count_sa1(5))))
-- \Add0~42COUT1_105\ = CARRY(((!\Add0~57\) # (!count_sa1(5))))

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
	datab => count_sa1(5),
	cin => \Add0~57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~40_combout\,
	cout0 => \Add0~42\,
	cout1 => \Add0~42COUT1_105\);

-- Location: LC_X2_Y6_N2
\count_sa1[5]\ : maxv_lcell
-- Equation(s):
-- count_sa1(5) = DFFEAS(((\Add0~40_combout\ & ((!\Equal0~0\) # (!\Equal0~5_combout\)))), GLOBAL(\clk~combout\), VCC, , \switch~combout\(0), , , , )

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
	clk => \clk~combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~0\,
	datad => \Add0~40_combout\,
	aclr => GND,
	ena => \switch~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_sa1(5));

-- Location: LC_X2_Y7_N0
\Add0~25\ : maxv_lcell
-- Equation(s):
-- \Add0~25_combout\ = (!count_sa1(0))
-- \Add0~27\ = CARRY((count_sa1(0)))
-- \Add0~27COUT1_101\ = CARRY((count_sa1(0)))

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
	dataa => count_sa1(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~25_combout\,
	cout0 => \Add0~27\,
	cout1 => \Add0~27COUT1_101\);

-- Location: LC_X3_Y6_N7
\count_sa1[0]\ : maxv_lcell
-- Equation(s):
-- \Equal0~1\ = (!count_sa1(2) & (count_sa1(3) & (!count_sa1[0] & !count_sa1(1))))
-- count_sa1(0) = DFFEAS(\Equal0~1\, GLOBAL(\clk~combout\), VCC, , \switch~combout\(0), \Add0~25_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => count_sa1(2),
	datab => count_sa1(3),
	datac => \Add0~25_combout\,
	datad => count_sa1(1),
	aclr => GND,
	sload => VCC,
	ena => \switch~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1\,
	regout => count_sa1(0));

-- Location: LC_X2_Y7_N1
\Add0~30\ : maxv_lcell
-- Equation(s):
-- \Add0~30_combout\ = (count_sa1(1) $ ((\Add0~27\)))
-- \Add0~32\ = CARRY(((!\Add0~27\) # (!count_sa1(1))))
-- \Add0~32COUT1_102\ = CARRY(((!\Add0~27COUT1_101\) # (!count_sa1(1))))

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
	datab => count_sa1(1),
	cin0 => \Add0~27\,
	cin1 => \Add0~27COUT1_101\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~30_combout\,
	cout0 => \Add0~32\,
	cout1 => \Add0~32COUT1_102\);

-- Location: LC_X3_Y6_N3
\count_sa1[1]\ : maxv_lcell
-- Equation(s):
-- count_sa1(1) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \switch~combout\(0), \Add0~30_combout\, , , VCC)

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
	datac => \Add0~30_combout\,
	aclr => GND,
	sload => VCC,
	ena => \switch~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_sa1(1));

-- Location: LC_X2_Y7_N2
\Add0~35\ : maxv_lcell
-- Equation(s):
-- \Add0~35_combout\ = (count_sa1(2) $ ((!\Add0~32\)))
-- \Add0~37\ = CARRY(((count_sa1(2) & !\Add0~32\)))
-- \Add0~37COUT1_103\ = CARRY(((count_sa1(2) & !\Add0~32COUT1_102\)))

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
	datab => count_sa1(2),
	cin0 => \Add0~32\,
	cin1 => \Add0~32COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~35_combout\,
	cout0 => \Add0~37\,
	cout1 => \Add0~37COUT1_103\);

-- Location: LC_X2_Y6_N8
\count_sa1[2]\ : maxv_lcell
-- Equation(s):
-- count_sa1(2) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \switch~combout\(0), \Add0~35_combout\, , , VCC)

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
	datac => \Add0~35_combout\,
	aclr => GND,
	sload => VCC,
	ena => \switch~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_sa1(2));

-- Location: LC_X2_Y7_N3
\Add0~20\ : maxv_lcell
-- Equation(s):
-- \Add0~20_combout\ = (count_sa1(3) $ ((\Add0~37\)))
-- \Add0~22\ = CARRY(((!\Add0~37\) # (!count_sa1(3))))
-- \Add0~22COUT1_104\ = CARRY(((!\Add0~37COUT1_103\) # (!count_sa1(3))))

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
	datab => count_sa1(3),
	cin0 => \Add0~37\,
	cin1 => \Add0~37COUT1_103\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~20_combout\,
	cout0 => \Add0~22\,
	cout1 => \Add0~22COUT1_104\);

-- Location: LC_X2_Y6_N7
\count_sa1[3]\ : maxv_lcell
-- Equation(s):
-- count_sa1(3) = DFFEAS(((\Add0~20_combout\ & ((!\Equal0~0\) # (!\Equal0~5_combout\)))), GLOBAL(\clk~combout\), VCC, , \switch~combout\(0), , , , )

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
	clk => \clk~combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~0\,
	datad => \Add0~20_combout\,
	aclr => GND,
	ena => \switch~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_sa1(3));

-- Location: LC_X2_Y7_N4
\Add0~55\ : maxv_lcell
-- Equation(s):
-- \Add0~55_combout\ = (count_sa1(4) $ ((!\Add0~22\)))
-- \Add0~57\ = CARRY(((count_sa1(4) & !\Add0~22COUT1_104\)))

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
	datab => count_sa1(4),
	cin0 => \Add0~22\,
	cin1 => \Add0~22COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~55_combout\,
	cout => \Add0~57\);

-- Location: LC_X2_Y7_N6
\Add0~45\ : maxv_lcell
-- Equation(s):
-- \Add0~45_combout\ = (count_sa1(6) $ ((!(!\Add0~57\ & \Add0~42\) # (\Add0~57\ & \Add0~42COUT1_105\))))
-- \Add0~47\ = CARRY(((count_sa1(6) & !\Add0~42\)))
-- \Add0~47COUT1_106\ = CARRY(((count_sa1(6) & !\Add0~42COUT1_105\)))

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
	datab => count_sa1(6),
	cin => \Add0~57\,
	cin0 => \Add0~42\,
	cin1 => \Add0~42COUT1_105\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~45_combout\,
	cout0 => \Add0~47\,
	cout1 => \Add0~47COUT1_106\);

-- Location: LC_X2_Y6_N1
\count_sa1[6]\ : maxv_lcell
-- Equation(s):
-- count_sa1(6) = DFFEAS(((\Add0~45_combout\ & ((!\Equal0~0\) # (!\Equal0~5_combout\)))), GLOBAL(\clk~combout\), VCC, , \switch~combout\(0), , , , )

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
	clk => \clk~combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~0\,
	datad => \Add0~45_combout\,
	aclr => GND,
	ena => \switch~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_sa1(6));

-- Location: LC_X2_Y6_N5
\count_sa1[4]\ : maxv_lcell
-- Equation(s):
-- \Equal0~2\ = (count_sa1(7) & (count_sa1(5) & (!count_sa1[4] & count_sa1(6))))
-- count_sa1(4) = DFFEAS(\Equal0~2\, GLOBAL(\clk~combout\), VCC, , \switch~combout\(0), \Add0~55_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => count_sa1(7),
	datab => count_sa1(5),
	datac => \Add0~55_combout\,
	datad => count_sa1(6),
	aclr => GND,
	sload => VCC,
	ena => \switch~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~2\,
	regout => count_sa1(4));

-- Location: LC_X2_Y7_N7
\Add0~50\ : maxv_lcell
-- Equation(s):
-- \Add0~50_combout\ = count_sa1(7) $ (((((!\Add0~57\ & \Add0~47\) # (\Add0~57\ & \Add0~47COUT1_106\)))))
-- \Add0~52\ = CARRY(((!\Add0~47\)) # (!count_sa1(7)))
-- \Add0~52COUT1_107\ = CARRY(((!\Add0~47COUT1_106\)) # (!count_sa1(7)))

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
	dataa => count_sa1(7),
	cin => \Add0~57\,
	cin0 => \Add0~47\,
	cin1 => \Add0~47COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~50_combout\,
	cout0 => \Add0~52\,
	cout1 => \Add0~52COUT1_107\);

-- Location: LC_X2_Y6_N6
\count_sa1[7]\ : maxv_lcell
-- Equation(s):
-- count_sa1(7) = DFFEAS(((\Add0~50_combout\ & ((!\Equal0~0\) # (!\Equal0~5_combout\)))), GLOBAL(\clk~combout\), VCC, , \switch~combout\(0), , , , )

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
	clk => \clk~combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~0\,
	datad => \Add0~50_combout\,
	aclr => GND,
	ena => \switch~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_sa1(7));

-- Location: LC_X3_Y7_N0
\Add0~65\ : maxv_lcell
-- Equation(s):
-- \Add0~65_combout\ = (count_sa1(10) $ ((!\Add0~62\)))
-- \Add0~67\ = CARRY(((count_sa1(10) & !\Add0~62\)))
-- \Add0~67COUT1_109\ = CARRY(((count_sa1(10) & !\Add0~62\)))

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
	datab => count_sa1(10),
	cin => \Add0~62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~65_combout\,
	cout0 => \Add0~67\,
	cout1 => \Add0~67COUT1_109\);

-- Location: LC_X3_Y6_N0
\count_sa1[10]\ : maxv_lcell
-- Equation(s):
-- count_sa1(10) = DFFEAS(((\Add0~65_combout\ & ((!\Equal0~0\) # (!\Equal0~5_combout\)))), GLOBAL(\clk~combout\), VCC, , \switch~combout\(0), , , , )

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
	clk => \clk~combout\,
	dataa => \Equal0~5_combout\,
	datab => \Equal0~0\,
	datad => \Add0~65_combout\,
	aclr => GND,
	ena => \switch~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_sa1(10));

-- Location: LC_X3_Y7_N1
\Add0~75\ : maxv_lcell
-- Equation(s):
-- \Add0~75_combout\ = count_sa1(11) $ (((((!\Add0~62\ & \Add0~67\) # (\Add0~62\ & \Add0~67COUT1_109\)))))
-- \Add0~77\ = CARRY(((!\Add0~67\)) # (!count_sa1(11)))
-- \Add0~77COUT1_110\ = CARRY(((!\Add0~67COUT1_109\)) # (!count_sa1(11)))

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
	dataa => count_sa1(11),
	cin => \Add0~62\,
	cin0 => \Add0~67\,
	cin1 => \Add0~67COUT1_109\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~75_combout\,
	cout0 => \Add0~77\,
	cout1 => \Add0~77COUT1_110\);

-- Location: LC_X4_Y6_N7
\count_sa1[11]\ : maxv_lcell
-- Equation(s):
-- count_sa1(11) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \switch~combout\(0), \Add0~75_combout\, , , VCC)

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
	datac => \Add0~75_combout\,
	aclr => GND,
	sload => VCC,
	ena => \switch~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_sa1(11));

-- Location: LC_X3_Y6_N1
\count_sa1[8]\ : maxv_lcell
-- Equation(s):
-- \Equal0~3\ = (count_sa1(9) & (count_sa1(10) & (!count_sa1[8] & !count_sa1(11))))
-- count_sa1(8) = DFFEAS(\Equal0~3\, GLOBAL(\clk~combout\), VCC, , \switch~combout\(0), \Add0~70_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => count_sa1(9),
	datab => count_sa1(10),
	datac => \Add0~70_combout\,
	datad => count_sa1(11),
	aclr => GND,
	sload => VCC,
	ena => \switch~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~3\,
	regout => count_sa1(8));

-- Location: LC_X2_Y7_N8
\Add0~70\ : maxv_lcell
-- Equation(s):
-- \Add0~70_combout\ = count_sa1(8) $ ((((!(!\Add0~57\ & \Add0~52\) # (\Add0~57\ & \Add0~52COUT1_107\)))))
-- \Add0~72\ = CARRY((count_sa1(8) & ((!\Add0~52\))))
-- \Add0~72COUT1_108\ = CARRY((count_sa1(8) & ((!\Add0~52COUT1_107\))))

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
	dataa => count_sa1(8),
	cin => \Add0~57\,
	cin0 => \Add0~52\,
	cin1 => \Add0~52COUT1_107\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~70_combout\,
	cout0 => \Add0~72\,
	cout1 => \Add0~72COUT1_108\);

-- Location: LC_X3_Y7_N2
\Add0~80\ : maxv_lcell
-- Equation(s):
-- \Add0~80_combout\ = (count_sa1(12) $ ((!(!\Add0~62\ & \Add0~77\) # (\Add0~62\ & \Add0~77COUT1_110\))))
-- \Add0~82\ = CARRY(((count_sa1(12) & !\Add0~77\)))
-- \Add0~82COUT1_111\ = CARRY(((count_sa1(12) & !\Add0~77COUT1_110\)))

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
	datab => count_sa1(12),
	cin => \Add0~62\,
	cin0 => \Add0~77\,
	cin1 => \Add0~77COUT1_110\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~80_combout\,
	cout0 => \Add0~82\,
	cout1 => \Add0~82COUT1_111\);

-- Location: LC_X3_Y6_N5
\count_sa1[12]\ : maxv_lcell
-- Equation(s):
-- count_sa1(12) = DFFEAS(((\Add0~80_combout\ & ((!\Equal0~0\) # (!\Equal0~5_combout\)))), GLOBAL(\clk~combout\), VCC, , \switch~combout\(0), , , , )

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
	clk => \clk~combout\,
	dataa => \Equal0~5_combout\,
	datac => \Add0~80_combout\,
	datad => \Equal0~0\,
	aclr => GND,
	ena => \switch~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_sa1(12));

-- Location: LC_X3_Y7_N5
\Add0~85\ : maxv_lcell
-- Equation(s):
-- \Add0~85_combout\ = (count_sa1(15) $ ((\Add0~97\)))
-- \Add0~87\ = CARRY(((!\Add0~97\) # (!count_sa1(15))))
-- \Add0~87COUT1_113\ = CARRY(((!\Add0~97\) # (!count_sa1(15))))

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
	datab => count_sa1(15),
	cin => \Add0~97\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~85_combout\,
	cout0 => \Add0~87\,
	cout1 => \Add0~87COUT1_113\);

-- Location: LC_X4_Y6_N4
\count_sa1[15]\ : maxv_lcell
-- Equation(s):
-- count_sa1(15) = DFFEAS(((\Add0~85_combout\ & ((!\Equal0~5_combout\) # (!\Equal0~0\)))), GLOBAL(\clk~combout\), VCC, , \switch~combout\(0), , , , )

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
	clk => \clk~combout\,
	datab => \Equal0~0\,
	datac => \Equal0~5_combout\,
	datad => \Add0~85_combout\,
	aclr => GND,
	ena => \switch~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_sa1(15));

-- Location: LC_X3_Y6_N6
\count_sa1[13]\ : maxv_lcell
-- Equation(s):
-- \Equal0~4\ = (count_sa1(12) & (!count_sa1(14) & (!count_sa1[13] & count_sa1(15))))
-- count_sa1(13) = DFFEAS(\Equal0~4\, GLOBAL(\clk~combout\), VCC, , \switch~combout\(0), \Add0~90_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => count_sa1(12),
	datab => count_sa1(14),
	datac => \Add0~90_combout\,
	datad => count_sa1(15),
	aclr => GND,
	sload => VCC,
	ena => \switch~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~4\,
	regout => count_sa1(13));

-- Location: LC_X3_Y7_N3
\Add0~90\ : maxv_lcell
-- Equation(s):
-- \Add0~90_combout\ = count_sa1(13) $ (((((!\Add0~62\ & \Add0~82\) # (\Add0~62\ & \Add0~82COUT1_111\)))))
-- \Add0~92\ = CARRY(((!\Add0~82\)) # (!count_sa1(13)))
-- \Add0~92COUT1_112\ = CARRY(((!\Add0~82COUT1_111\)) # (!count_sa1(13)))

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
	dataa => count_sa1(13),
	cin => \Add0~62\,
	cin0 => \Add0~82\,
	cin1 => \Add0~82COUT1_111\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~90_combout\,
	cout0 => \Add0~92\,
	cout1 => \Add0~92COUT1_112\);

-- Location: LC_X3_Y6_N8
\Equal0~5\ : maxv_lcell
-- Equation(s):
-- \Equal0~5_combout\ = (\Equal0~2\ & (\Equal0~3\ & (\Equal0~4\ & \Equal0~1\)))

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
	dataa => \Equal0~2\,
	datab => \Equal0~3\,
	datac => \Equal0~4\,
	datad => \Equal0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~5_combout\);

-- Location: LC_X2_Y7_N9
\Add0~60\ : maxv_lcell
-- Equation(s):
-- \Add0~60_combout\ = (count_sa1(9) $ (((!\Add0~57\ & \Add0~72\) # (\Add0~57\ & \Add0~72COUT1_108\))))
-- \Add0~62\ = CARRY(((!\Add0~72COUT1_108\) # (!count_sa1(9))))

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
	datab => count_sa1(9),
	cin => \Add0~57\,
	cin0 => \Add0~72\,
	cin1 => \Add0~72COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~60_combout\,
	cout => \Add0~62\);

-- Location: LC_X3_Y6_N4
\count_sa1[9]\ : maxv_lcell
-- Equation(s):
-- count_sa1(9) = DFFEAS(((\Add0~60_combout\ & ((!\Equal0~0\) # (!\Equal0~5_combout\)))), GLOBAL(\clk~combout\), VCC, , \switch~combout\(0), , , , )

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
	clk => \clk~combout\,
	dataa => \Equal0~5_combout\,
	datab => \Equal0~0\,
	datad => \Add0~60_combout\,
	aclr => GND,
	ena => \switch~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_sa1(9));

-- Location: LC_X3_Y7_N4
\Add0~95\ : maxv_lcell
-- Equation(s):
-- \Add0~95_combout\ = (count_sa1(14) $ ((!(!\Add0~62\ & \Add0~92\) # (\Add0~62\ & \Add0~92COUT1_112\))))
-- \Add0~97\ = CARRY(((count_sa1(14) & !\Add0~92COUT1_112\)))

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
	datab => count_sa1(14),
	cin => \Add0~62\,
	cin0 => \Add0~92\,
	cin1 => \Add0~92COUT1_112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~95_combout\,
	cout => \Add0~97\);

-- Location: LC_X3_Y6_N2
\count_sa1[14]\ : maxv_lcell
-- Equation(s):
-- count_sa1(14) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \switch~combout\(0), \Add0~95_combout\, , , VCC)

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
	datac => \Add0~95_combout\,
	aclr => GND,
	sload => VCC,
	ena => \switch~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_sa1(14));

-- Location: LC_X3_Y7_N6
\Add0~0\ : maxv_lcell
-- Equation(s):
-- \Add0~0_combout\ = count_sa1(16) $ ((((!(!\Add0~97\ & \Add0~87\) # (\Add0~97\ & \Add0~87COUT1_113\)))))
-- \Add0~2\ = CARRY((count_sa1(16) & ((!\Add0~87\))))
-- \Add0~2COUT1_114\ = CARRY((count_sa1(16) & ((!\Add0~87COUT1_113\))))

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
	dataa => count_sa1(16),
	cin => \Add0~97\,
	cin0 => \Add0~87\,
	cin1 => \Add0~87COUT1_113\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\,
	cout0 => \Add0~2\,
	cout1 => \Add0~2COUT1_114\);

-- Location: LC_X2_Y6_N9
\count_sa1[16]\ : maxv_lcell
-- Equation(s):
-- count_sa1(16) = DFFEAS(((\Add0~0_combout\ & ((!\Equal0~0\) # (!\Equal0~5_combout\)))), GLOBAL(\clk~combout\), VCC, , \switch~combout\(0), , , , )

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
	clk => \clk~combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~0\,
	datad => \Add0~0_combout\,
	aclr => GND,
	ena => \switch~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_sa1(16));

-- Location: LC_X3_Y7_N7
\Add0~5\ : maxv_lcell
-- Equation(s):
-- \Add0~5_combout\ = count_sa1(17) $ (((((!\Add0~97\ & \Add0~2\) # (\Add0~97\ & \Add0~2COUT1_114\)))))
-- \Add0~7\ = CARRY(((!\Add0~2\)) # (!count_sa1(17)))
-- \Add0~7COUT1_115\ = CARRY(((!\Add0~2COUT1_114\)) # (!count_sa1(17)))

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
	dataa => count_sa1(17),
	cin => \Add0~97\,
	cin0 => \Add0~2\,
	cin1 => \Add0~2COUT1_114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~5_combout\,
	cout0 => \Add0~7\,
	cout1 => \Add0~7COUT1_115\);

-- Location: LC_X2_Y6_N4
\count_sa1[17]\ : maxv_lcell
-- Equation(s):
-- \Equal0~0\ = (!count_sa1(19) & (!count_sa1(18) & (!count_sa1[17] & count_sa1(16))))
-- count_sa1(17) = DFFEAS(\Equal0~0\, GLOBAL(\clk~combout\), VCC, , \switch~combout\(0), \Add0~5_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => count_sa1(19),
	datab => count_sa1(18),
	datac => \Add0~5_combout\,
	datad => count_sa1(16),
	aclr => GND,
	sload => VCC,
	ena => \switch~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0\,
	regout => count_sa1(17));

-- Location: LC_X3_Y7_N8
\Add0~10\ : maxv_lcell
-- Equation(s):
-- \Add0~10_combout\ = (count_sa1(18) $ ((!(!\Add0~97\ & \Add0~7\) # (\Add0~97\ & \Add0~7COUT1_115\))))
-- \Add0~12\ = CARRY(((count_sa1(18) & !\Add0~7\)))
-- \Add0~12COUT1_116\ = CARRY(((count_sa1(18) & !\Add0~7COUT1_115\)))

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
	datab => count_sa1(18),
	cin => \Add0~97\,
	cin0 => \Add0~7\,
	cin1 => \Add0~7COUT1_115\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~10_combout\,
	cout0 => \Add0~12\,
	cout1 => \Add0~12COUT1_116\);

-- Location: LC_X2_Y6_N0
\count_sa1[18]\ : maxv_lcell
-- Equation(s):
-- count_sa1(18) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \switch~combout\(0), \Add0~10_combout\, , , VCC)

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
	datac => \Add0~10_combout\,
	aclr => GND,
	sload => VCC,
	ena => \switch~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_sa1(18));

-- Location: LC_X3_Y7_N9
\Add0~15\ : maxv_lcell
-- Equation(s):
-- \Add0~15_combout\ = (((!\Add0~97\ & \Add0~12\) # (\Add0~97\ & \Add0~12COUT1_116\) $ (count_sa1(19))))

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
	datad => count_sa1(19),
	cin => \Add0~97\,
	cin0 => \Add0~12\,
	cin1 => \Add0~12COUT1_116\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~15_combout\);

-- Location: LC_X2_Y6_N3
\count_sa1[19]\ : maxv_lcell
-- Equation(s):
-- count_sa1(19) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \switch~combout\(0), \Add0~15_combout\, , , VCC)

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
	datac => \Add0~15_combout\,
	aclr => GND,
	sload => VCC,
	ena => \switch~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_sa1(19));

-- Location: LC_X3_Y6_N9
sa1 : maxv_lcell
-- Equation(s):
-- \sa1~0\ = (sa1 $ (((\Equal0~0\ & \Equal0~5_combout\))))

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
	clk => \clk~combout\,
	datab => \Equal0~0\,
	datad => \Equal0~5_combout\,
	aclr => GND,
	ena => \switch~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sa1~0\,
	regout => \sa1~regout\);

-- Location: LC_X7_Y7_N0
\Add1~75\ : maxv_lcell
-- Equation(s):
-- \Add1~75_combout\ = count_re(10) $ ((((!\Add1~72\))))
-- \Add1~77\ = CARRY((count_re(10) & ((!\Add1~72\))))
-- \Add1~77COUT1_109\ = CARRY((count_re(10) & ((!\Add1~72\))))

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
	dataa => count_re(10),
	cin => \Add1~72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~75_combout\,
	cout0 => \Add1~77\,
	cout1 => \Add1~77COUT1_109\);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switch[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_switch(6),
	combout => \switch~combout\(6));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switch[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_switch(5),
	combout => \switch~combout\(5));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switch[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_switch(4),
	combout => \switch~combout\(4));

-- Location: LC_X9_Y6_N0
\sa2~0\ : maxv_lcell
-- Equation(s):
-- \sa2~0_combout\ = (!\switch~combout\(6) & (!\switch~combout\(5) & ((!\switch~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(6),
	datab => \switch~combout\(5),
	datad => \switch~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sa2~0_combout\);

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switch[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_switch(7),
	combout => \switch~combout\(7));

-- Location: LC_X10_Y7_N6
\LED[0]~0\ : maxv_lcell
-- Equation(s):
-- \LED[0]~0_combout\ = (((\switch~combout\(7)) # (!\count_pa[9]~0_combout\)) # (!\sa2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \sa2~0_combout\,
	datac => \switch~combout\(7),
	datad => \count_pa[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LED[0]~0_combout\);

-- Location: LC_X9_Y7_N3
\LED[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \LED~1\ = (((!\switch~combout\(0) & \switch~combout\(1))))
-- \LED[1]~reg0_regout\ = DFFEAS(\LED~1\, GLOBAL(\clk~combout\), VCC, , \LED[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \switch~combout\(0),
	datad => \switch~combout\(1),
	aclr => GND,
	ena => \LED[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LED~1\,
	regout => \LED[1]~reg0_regout\);

-- Location: LC_X6_Y6_N6
\count_re[10]\ : maxv_lcell
-- Equation(s):
-- count_re(10) = DFFEAS((((\Add1~75_combout\))), GLOBAL(\clk~combout\), VCC, , \LED~1\, , , , )

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
	datad => \Add1~75_combout\,
	aclr => GND,
	ena => \LED~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_re(10));

-- Location: LC_X6_Y7_N0
\Add1~25\ : maxv_lcell
-- Equation(s):
-- \Add1~25_combout\ = (!count_re(0))
-- \Add1~27\ = CARRY((count_re(0)))
-- \Add1~27COUT1_101\ = CARRY((count_re(0)))

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
	dataa => count_re(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~25_combout\,
	cout0 => \Add1~27\,
	cout1 => \Add1~27COUT1_101\);

-- Location: LC_X6_Y6_N7
\count_re[0]\ : maxv_lcell
-- Equation(s):
-- \Equal1~1\ = (!count_re(3) & (!count_re(2) & (!count_re[0] & count_re(1))))
-- count_re(0) = DFFEAS(\Equal1~1\, GLOBAL(\clk~combout\), VCC, , \LED~1\, \Add1~25_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => count_re(3),
	datab => count_re(2),
	datac => \Add1~25_combout\,
	datad => count_re(1),
	aclr => GND,
	sload => VCC,
	ena => \LED~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~1\,
	regout => count_re(0));

-- Location: LC_X6_Y7_N1
\Add1~20\ : maxv_lcell
-- Equation(s):
-- \Add1~20_combout\ = (count_re(1) $ ((\Add1~27\)))
-- \Add1~22\ = CARRY(((!\Add1~27\) # (!count_re(1))))
-- \Add1~22COUT1_102\ = CARRY(((!\Add1~27COUT1_101\) # (!count_re(1))))

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
	datab => count_re(1),
	cin0 => \Add1~27\,
	cin1 => \Add1~27COUT1_101\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~20_combout\,
	cout0 => \Add1~22\,
	cout1 => \Add1~22COUT1_102\);

-- Location: LC_X5_Y7_N6
\count_re[1]\ : maxv_lcell
-- Equation(s):
-- count_re(1) = DFFEAS(((\Add1~20_combout\ & ((!\Equal1~5_combout\) # (!\Equal1~0\)))), GLOBAL(\clk~combout\), VCC, , \LED~1\, , , , )

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
	clk => \clk~combout\,
	datab => \Equal1~0\,
	datac => \Equal1~5_combout\,
	datad => \Add1~20_combout\,
	aclr => GND,
	ena => \LED~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_re(1));

-- Location: LC_X6_Y7_N2
\Add1~30\ : maxv_lcell
-- Equation(s):
-- \Add1~30_combout\ = (count_re(2) $ ((!\Add1~22\)))
-- \Add1~32\ = CARRY(((count_re(2) & !\Add1~22\)))
-- \Add1~32COUT1_103\ = CARRY(((count_re(2) & !\Add1~22COUT1_102\)))

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
	datab => count_re(2),
	cin0 => \Add1~22\,
	cin1 => \Add1~22COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~30_combout\,
	cout0 => \Add1~32\,
	cout1 => \Add1~32COUT1_103\);

-- Location: LC_X6_Y6_N1
\count_re[2]\ : maxv_lcell
-- Equation(s):
-- count_re(2) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \LED~1\, \Add1~30_combout\, , , VCC)

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
	datac => \Add1~30_combout\,
	aclr => GND,
	sload => VCC,
	ena => \LED~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_re(2));

-- Location: LC_X6_Y7_N3
\Add1~35\ : maxv_lcell
-- Equation(s):
-- \Add1~35_combout\ = (count_re(3) $ ((\Add1~32\)))
-- \Add1~37\ = CARRY(((!\Add1~32\) # (!count_re(3))))
-- \Add1~37COUT1_104\ = CARRY(((!\Add1~32COUT1_103\) # (!count_re(3))))

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
	datab => count_re(3),
	cin0 => \Add1~32\,
	cin1 => \Add1~32COUT1_103\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~35_combout\,
	cout0 => \Add1~37\,
	cout1 => \Add1~37COUT1_104\);

-- Location: LC_X6_Y6_N3
\count_re[3]\ : maxv_lcell
-- Equation(s):
-- count_re(3) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \LED~1\, \Add1~35_combout\, , , VCC)

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
	datac => \Add1~35_combout\,
	aclr => GND,
	sload => VCC,
	ena => \LED~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_re(3));

-- Location: LC_X6_Y7_N4
\Add1~40\ : maxv_lcell
-- Equation(s):
-- \Add1~40_combout\ = count_re(4) $ ((((!\Add1~37\))))
-- \Add1~42\ = CARRY((count_re(4) & ((!\Add1~37COUT1_104\))))

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
	dataa => count_re(4),
	cin0 => \Add1~37\,
	cin1 => \Add1~37COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~40_combout\,
	cout => \Add1~42\);

-- Location: LC_X5_Y7_N9
\count_re[4]\ : maxv_lcell
-- Equation(s):
-- count_re(4) = DFFEAS(((\Add1~40_combout\ & ((!\Equal1~5_combout\) # (!\Equal1~0\)))), GLOBAL(\clk~combout\), VCC, , \LED~1\, , , , )

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
	clk => \clk~combout\,
	datab => \Equal1~0\,
	datac => \Equal1~5_combout\,
	datad => \Add1~40_combout\,
	aclr => GND,
	ena => \LED~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_re(4));

-- Location: LC_X6_Y7_N5
\Add1~45\ : maxv_lcell
-- Equation(s):
-- \Add1~45_combout\ = (count_re(5) $ ((\Add1~42\)))
-- \Add1~47\ = CARRY(((!\Add1~42\) # (!count_re(5))))
-- \Add1~47COUT1_105\ = CARRY(((!\Add1~42\) # (!count_re(5))))

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
	datab => count_re(5),
	cin => \Add1~42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~45_combout\,
	cout0 => \Add1~47\,
	cout1 => \Add1~47COUT1_105\);

-- Location: LC_X5_Y7_N7
\count_re[5]\ : maxv_lcell
-- Equation(s):
-- count_re(5) = DFFEAS(((\Add1~45_combout\ & ((!\Equal1~5_combout\) # (!\Equal1~0\)))), GLOBAL(\clk~combout\), VCC, , \LED~1\, , , , )

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
	clk => \clk~combout\,
	datab => \Equal1~0\,
	datac => \Equal1~5_combout\,
	datad => \Add1~45_combout\,
	aclr => GND,
	ena => \LED~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_re(5));

-- Location: LC_X6_Y7_N6
\Add1~55\ : maxv_lcell
-- Equation(s):
-- \Add1~55_combout\ = count_re(6) $ ((((!(!\Add1~42\ & \Add1~47\) # (\Add1~42\ & \Add1~47COUT1_105\)))))
-- \Add1~57\ = CARRY((count_re(6) & ((!\Add1~47\))))
-- \Add1~57COUT1_106\ = CARRY((count_re(6) & ((!\Add1~47COUT1_105\))))

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
	dataa => count_re(6),
	cin => \Add1~42\,
	cin0 => \Add1~47\,
	cin1 => \Add1~47COUT1_105\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~55_combout\,
	cout0 => \Add1~57\,
	cout1 => \Add1~57COUT1_106\);

-- Location: LC_X5_Y7_N5
\count_re[6]\ : maxv_lcell
-- Equation(s):
-- \Equal1~2\ = (count_re(7) & (count_re(5) & (!count_re[6] & count_re(4))))
-- count_re(6) = DFFEAS(\Equal1~2\, GLOBAL(\clk~combout\), VCC, , \LED~1\, \Add1~55_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => count_re(7),
	datab => count_re(5),
	datac => \Add1~55_combout\,
	datad => count_re(4),
	aclr => GND,
	sload => VCC,
	ena => \LED~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~2\,
	regout => count_re(6));

-- Location: LC_X6_Y7_N7
\Add1~50\ : maxv_lcell
-- Equation(s):
-- \Add1~50_combout\ = (count_re(7) $ (((!\Add1~42\ & \Add1~57\) # (\Add1~42\ & \Add1~57COUT1_106\))))
-- \Add1~52\ = CARRY(((!\Add1~57\) # (!count_re(7))))
-- \Add1~52COUT1_107\ = CARRY(((!\Add1~57COUT1_106\) # (!count_re(7))))

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
	datab => count_re(7),
	cin => \Add1~42\,
	cin0 => \Add1~57\,
	cin1 => \Add1~57COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~50_combout\,
	cout0 => \Add1~52\,
	cout1 => \Add1~52COUT1_107\);

-- Location: LC_X5_Y7_N4
\count_re[7]\ : maxv_lcell
-- Equation(s):
-- count_re(7) = DFFEAS(((\Add1~50_combout\ & ((!\Equal1~5_combout\) # (!\Equal1~0\)))), GLOBAL(\clk~combout\), VCC, , \LED~1\, , , , )

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
	clk => \clk~combout\,
	datab => \Equal1~0\,
	datac => \Equal1~5_combout\,
	datad => \Add1~50_combout\,
	aclr => GND,
	ena => \LED~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_re(7));

-- Location: LC_X6_Y7_N8
\Add1~60\ : maxv_lcell
-- Equation(s):
-- \Add1~60_combout\ = (count_re(8) $ ((!(!\Add1~42\ & \Add1~52\) # (\Add1~42\ & \Add1~52COUT1_107\))))
-- \Add1~62\ = CARRY(((count_re(8) & !\Add1~52\)))
-- \Add1~62COUT1_108\ = CARRY(((count_re(8) & !\Add1~52COUT1_107\)))

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
	datab => count_re(8),
	cin => \Add1~42\,
	cin0 => \Add1~52\,
	cin1 => \Add1~52COUT1_107\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~60_combout\,
	cout0 => \Add1~62\,
	cout1 => \Add1~62COUT1_108\);

-- Location: LC_X5_Y6_N5
\count_re[8]\ : maxv_lcell
-- Equation(s):
-- count_re(8) = DFFEAS(((\Add1~60_combout\ & ((!\Equal1~5_combout\) # (!\Equal1~0\)))), GLOBAL(\clk~combout\), VCC, , \LED~1\, , , , )

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
	clk => \clk~combout\,
	datab => \Equal1~0\,
	datac => \Equal1~5_combout\,
	datad => \Add1~60_combout\,
	aclr => GND,
	ena => \LED~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_re(8));

-- Location: LC_X6_Y7_N9
\Add1~70\ : maxv_lcell
-- Equation(s):
-- \Add1~70_combout\ = (count_re(9) $ (((!\Add1~42\ & \Add1~62\) # (\Add1~42\ & \Add1~62COUT1_108\))))
-- \Add1~72\ = CARRY(((!\Add1~62COUT1_108\) # (!count_re(9))))

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
	datab => count_re(9),
	cin => \Add1~42\,
	cin0 => \Add1~62\,
	cin1 => \Add1~62COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~70_combout\,
	cout => \Add1~72\);

-- Location: LC_X6_Y6_N5
\count_re[9]\ : maxv_lcell
-- Equation(s):
-- \Equal1~3\ = (count_re(11) & (!count_re(10) & (!count_re[9] & count_re(8))))
-- count_re(9) = DFFEAS(\Equal1~3\, GLOBAL(\clk~combout\), VCC, , \LED~1\, \Add1~70_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => count_re(11),
	datab => count_re(10),
	datac => \Add1~70_combout\,
	datad => count_re(8),
	aclr => GND,
	sload => VCC,
	ena => \LED~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~3\,
	regout => count_re(9));

-- Location: LC_X7_Y7_N1
\Add1~65\ : maxv_lcell
-- Equation(s):
-- \Add1~65_combout\ = (count_re(11) $ (((!\Add1~72\ & \Add1~77\) # (\Add1~72\ & \Add1~77COUT1_109\))))
-- \Add1~67\ = CARRY(((!\Add1~77\) # (!count_re(11))))
-- \Add1~67COUT1_110\ = CARRY(((!\Add1~77COUT1_109\) # (!count_re(11))))

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
	datab => count_re(11),
	cin => \Add1~72\,
	cin0 => \Add1~77\,
	cin1 => \Add1~77COUT1_109\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~65_combout\,
	cout0 => \Add1~67\,
	cout1 => \Add1~67COUT1_110\);

-- Location: LC_X7_Y6_N6
\count_re[11]\ : maxv_lcell
-- Equation(s):
-- count_re(11) = DFFEAS(((\Add1~65_combout\ & ((!\Equal1~5_combout\) # (!\Equal1~0\)))), GLOBAL(\clk~combout\), VCC, , \LED~1\, , , , )

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
	clk => \clk~combout\,
	datab => \Equal1~0\,
	datac => \Equal1~5_combout\,
	datad => \Add1~65_combout\,
	aclr => GND,
	ena => \LED~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_re(11));

-- Location: LC_X7_Y7_N5
\Add1~95\ : maxv_lcell
-- Equation(s):
-- \Add1~95_combout\ = (count_re(15) $ ((\Add1~87\)))
-- \Add1~97\ = CARRY(((!\Add1~87\) # (!count_re(15))))
-- \Add1~97COUT1_113\ = CARRY(((!\Add1~87\) # (!count_re(15))))

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
	datab => count_re(15),
	cin => \Add1~87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~95_combout\,
	cout0 => \Add1~97\,
	cout1 => \Add1~97COUT1_113\);

-- Location: LC_X6_Y6_N4
\count_re[15]\ : maxv_lcell
-- Equation(s):
-- count_re(15) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \LED~1\, \Add1~95_combout\, , , VCC)

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
	datac => \Add1~95_combout\,
	aclr => GND,
	sload => VCC,
	ena => \LED~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_re(15));

-- Location: LC_X7_Y7_N2
\Add1~90\ : maxv_lcell
-- Equation(s):
-- \Add1~90_combout\ = (count_re(12) $ ((!(!\Add1~72\ & \Add1~67\) # (\Add1~72\ & \Add1~67COUT1_110\))))
-- \Add1~92\ = CARRY(((count_re(12) & !\Add1~67\)))
-- \Add1~92COUT1_111\ = CARRY(((count_re(12) & !\Add1~67COUT1_110\)))

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
	datab => count_re(12),
	cin => \Add1~72\,
	cin0 => \Add1~67\,
	cin1 => \Add1~67COUT1_110\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~90_combout\,
	cout0 => \Add1~92\,
	cout1 => \Add1~92COUT1_111\);

-- Location: LC_X7_Y7_N3
\Add1~80\ : maxv_lcell
-- Equation(s):
-- \Add1~80_combout\ = count_re(13) $ (((((!\Add1~72\ & \Add1~92\) # (\Add1~72\ & \Add1~92COUT1_111\)))))
-- \Add1~82\ = CARRY(((!\Add1~92\)) # (!count_re(13)))
-- \Add1~82COUT1_112\ = CARRY(((!\Add1~92COUT1_111\)) # (!count_re(13)))

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
	dataa => count_re(13),
	cin => \Add1~72\,
	cin0 => \Add1~92\,
	cin1 => \Add1~92COUT1_111\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~80_combout\,
	cout0 => \Add1~82\,
	cout1 => \Add1~82COUT1_112\);

-- Location: LC_X7_Y6_N1
\count_re[13]\ : maxv_lcell
-- Equation(s):
-- count_re(13) = DFFEAS((\Add1~80_combout\ & (((!\Equal1~0\)) # (!\Equal1~5_combout\))), GLOBAL(\clk~combout\), VCC, , \LED~1\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7070",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal1~5_combout\,
	datab => \Equal1~0\,
	datac => \Add1~80_combout\,
	aclr => GND,
	ena => \LED~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_re(13));

-- Location: LC_X6_Y6_N0
\count_re[12]\ : maxv_lcell
-- Equation(s):
-- \Equal1~4\ = (!count_re(15) & (count_re(14) & (!count_re[12] & count_re(13))))
-- count_re(12) = DFFEAS(\Equal1~4\, GLOBAL(\clk~combout\), VCC, , \LED~1\, \Add1~90_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => count_re(15),
	datab => count_re(14),
	datac => \Add1~90_combout\,
	datad => count_re(13),
	aclr => GND,
	sload => VCC,
	ena => \LED~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~4\,
	regout => count_re(12));

-- Location: LC_X6_Y6_N8
\Equal1~5\ : maxv_lcell
-- Equation(s):
-- \Equal1~5_combout\ = (\Equal1~3\ & (\Equal1~4\ & (\Equal1~2\ & \Equal1~1\)))

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
	dataa => \Equal1~3\,
	datab => \Equal1~4\,
	datac => \Equal1~2\,
	datad => \Equal1~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~5_combout\);

-- Location: LC_X7_Y7_N4
\Add1~85\ : maxv_lcell
-- Equation(s):
-- \Add1~85_combout\ = (count_re(14) $ ((!(!\Add1~72\ & \Add1~82\) # (\Add1~72\ & \Add1~82COUT1_112\))))
-- \Add1~87\ = CARRY(((count_re(14) & !\Add1~82COUT1_112\)))

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
	datab => count_re(14),
	cin => \Add1~72\,
	cin0 => \Add1~82\,
	cin1 => \Add1~82COUT1_112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~85_combout\,
	cout => \Add1~87\);

-- Location: LC_X6_Y6_N2
\count_re[14]\ : maxv_lcell
-- Equation(s):
-- count_re(14) = DFFEAS(((\Add1~85_combout\ & ((!\Equal1~0\) # (!\Equal1~5_combout\)))), GLOBAL(\clk~combout\), VCC, , \LED~1\, , , , )

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
	clk => \clk~combout\,
	dataa => \Equal1~5_combout\,
	datac => \Equal1~0\,
	datad => \Add1~85_combout\,
	aclr => GND,
	ena => \LED~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_re(14));

-- Location: LC_X7_Y7_N6
\Add1~0\ : maxv_lcell
-- Equation(s):
-- \Add1~0_combout\ = (count_re(16) $ ((!(!\Add1~87\ & \Add1~97\) # (\Add1~87\ & \Add1~97COUT1_113\))))
-- \Add1~2\ = CARRY(((count_re(16) & !\Add1~97\)))
-- \Add1~2COUT1_114\ = CARRY(((count_re(16) & !\Add1~97COUT1_113\)))

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
	datab => count_re(16),
	cin => \Add1~87\,
	cin0 => \Add1~97\,
	cin1 => \Add1~97COUT1_113\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~0_combout\,
	cout0 => \Add1~2\,
	cout1 => \Add1~2COUT1_114\);

-- Location: LC_X8_Y7_N9
\count_re[16]\ : maxv_lcell
-- Equation(s):
-- count_re(16) = DFFEAS(((\Add1~0_combout\ & ((!\Equal1~5_combout\) # (!\Equal1~0\)))), GLOBAL(\clk~combout\), VCC, , \LED~1\, , , , )

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
	clk => \clk~combout\,
	dataa => \Equal1~0\,
	datac => \Add1~0_combout\,
	datad => \Equal1~5_combout\,
	aclr => GND,
	ena => \LED~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_re(16));

-- Location: LC_X7_Y7_N7
\Add1~5\ : maxv_lcell
-- Equation(s):
-- \Add1~5_combout\ = count_re(17) $ (((((!\Add1~87\ & \Add1~2\) # (\Add1~87\ & \Add1~2COUT1_114\)))))
-- \Add1~7\ = CARRY(((!\Add1~2\)) # (!count_re(17)))
-- \Add1~7COUT1_115\ = CARRY(((!\Add1~2COUT1_114\)) # (!count_re(17)))

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
	dataa => count_re(17),
	cin => \Add1~87\,
	cin0 => \Add1~2\,
	cin1 => \Add1~2COUT1_114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~5_combout\,
	cout0 => \Add1~7\,
	cout1 => \Add1~7COUT1_115\);

-- Location: LC_X7_Y7_N8
\Add1~10\ : maxv_lcell
-- Equation(s):
-- \Add1~10_combout\ = (count_re(18) $ ((!(!\Add1~87\ & \Add1~7\) # (\Add1~87\ & \Add1~7COUT1_115\))))
-- \Add1~12\ = CARRY(((count_re(18) & !\Add1~7\)))
-- \Add1~12COUT1_116\ = CARRY(((count_re(18) & !\Add1~7COUT1_115\)))

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
	datab => count_re(18),
	cin => \Add1~87\,
	cin0 => \Add1~7\,
	cin1 => \Add1~7COUT1_115\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~10_combout\,
	cout0 => \Add1~12\,
	cout1 => \Add1~12COUT1_116\);

-- Location: LC_X7_Y7_N9
\Add1~15\ : maxv_lcell
-- Equation(s):
-- \Add1~15_combout\ = (((!\Add1~87\ & \Add1~12\) # (\Add1~87\ & \Add1~12COUT1_116\) $ (count_re(19))))

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
	datad => count_re(19),
	cin => \Add1~87\,
	cin0 => \Add1~12\,
	cin1 => \Add1~12COUT1_116\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~15_combout\);

-- Location: LC_X8_Y7_N7
\count_re[19]\ : maxv_lcell
-- Equation(s):
-- count_re(19) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \LED~1\, \Add1~15_combout\, , , VCC)

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
	datac => \Add1~15_combout\,
	aclr => GND,
	sload => VCC,
	ena => \LED~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_re(19));

-- Location: LC_X8_Y7_N6
\count_re[17]\ : maxv_lcell
-- Equation(s):
-- \Equal1~0\ = (!count_re(18) & (!count_re(19) & (!count_re[17] & count_re(16))))
-- count_re(17) = DFFEAS(\Equal1~0\, GLOBAL(\clk~combout\), VCC, , \LED~1\, \Add1~5_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => count_re(18),
	datab => count_re(19),
	datac => \Add1~5_combout\,
	datad => count_re(16),
	aclr => GND,
	sload => VCC,
	ena => \LED~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~0\,
	regout => count_re(17));

-- Location: LC_X8_Y7_N8
\count_re[18]\ : maxv_lcell
-- Equation(s):
-- count_re(18) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \LED~1\, \Add1~10_combout\, , , VCC)

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
	datac => \Add1~10_combout\,
	aclr => GND,
	sload => VCC,
	ena => \LED~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_re(18));

-- Location: LC_X6_Y6_N9
re : maxv_lcell
-- Equation(s):
-- \re~0\ = (re $ (((\Equal1~0\ & \Equal1~5_combout\))))

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
	clk => \clk~combout\,
	datab => \Equal1~0\,
	datad => \Equal1~5_combout\,
	aclr => GND,
	ena => \LED~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \re~0\,
	regout => \re~regout\);

-- Location: LC_X9_Y6_N6
\toneOut~0\ : maxv_lcell
-- Equation(s):
-- \toneOut~0_combout\ = (\switch~combout\(0) & (((\sa1~0\)))) # (!\switch~combout\(0) & (\switch~combout\(1) & ((\re~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(0),
	datab => \switch~combout\(1),
	datac => \sa1~0\,
	datad => \re~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \toneOut~0_combout\);

-- Location: LC_X11_Y8_N5
\Add4~95\ : maxv_lcell
-- Equation(s):
-- \Add4~95_combout\ = (count_pa(15) $ ((\Add4~92\)))
-- \Add4~97\ = CARRY(((!\Add4~92\) # (!count_pa(15))))
-- \Add4~97COUT1_113\ = CARRY(((!\Add4~92\) # (!count_pa(15))))

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
	datab => count_pa(15),
	cin => \Add4~92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~95_combout\,
	cout0 => \Add4~97\,
	cout1 => \Add4~97COUT1_113\);

-- Location: LC_X9_Y7_N0
\count_pa[9]~1\ : maxv_lcell
-- Equation(s):
-- \count_pa[9]~1_combout\ = ((\switch~combout\(4) & ((\count_pa[9]~0_combout\))))

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
	datab => \switch~combout\(4),
	datad => \count_pa[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \count_pa[9]~1_combout\);

-- Location: LC_X10_Y6_N9
\count_pa[15]\ : maxv_lcell
-- Equation(s):
-- count_pa(15) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \count_pa[9]~1_combout\, \Add4~95_combout\, , , VCC)

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
	datac => \Add4~95_combout\,
	aclr => GND,
	sload => VCC,
	ena => \count_pa[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_pa(15));

-- Location: LC_X11_Y8_N0
\Add4~70\ : maxv_lcell
-- Equation(s):
-- \Add4~70_combout\ = (count_pa(10) $ ((!\Add4~67\)))
-- \Add4~72\ = CARRY(((count_pa(10) & !\Add4~67\)))
-- \Add4~72COUT1_109\ = CARRY(((count_pa(10) & !\Add4~67\)))

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
	datab => count_pa(10),
	cin => \Add4~67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~70_combout\,
	cout0 => \Add4~72\,
	cout1 => \Add4~72COUT1_109\);

-- Location: LC_X12_Y8_N9
\count_pa[10]\ : maxv_lcell
-- Equation(s):
-- count_pa(10) = DFFEAS(((\Add4~70_combout\ & ((!\Equal4~0\) # (!\Equal4~5_combout\)))), GLOBAL(\clk~combout\), VCC, , \count_pa[9]~1_combout\, , , , )

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
	clk => \clk~combout\,
	datab => \Equal4~5_combout\,
	datac => \Equal4~0\,
	datad => \Add4~70_combout\,
	aclr => GND,
	ena => \count_pa[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_pa(10));

-- Location: LC_X11_Y8_N1
\Add4~75\ : maxv_lcell
-- Equation(s):
-- \Add4~75_combout\ = count_pa(11) $ (((((!\Add4~67\ & \Add4~72\) # (\Add4~67\ & \Add4~72COUT1_109\)))))
-- \Add4~77\ = CARRY(((!\Add4~72\)) # (!count_pa(11)))
-- \Add4~77COUT1_110\ = CARRY(((!\Add4~72COUT1_109\)) # (!count_pa(11)))

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
	dataa => count_pa(11),
	cin => \Add4~67\,
	cin0 => \Add4~72\,
	cin1 => \Add4~72COUT1_109\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~75_combout\,
	cout0 => \Add4~77\,
	cout1 => \Add4~77COUT1_110\);

-- Location: LC_X12_Y8_N3
\count_pa[11]\ : maxv_lcell
-- Equation(s):
-- count_pa(11) = DFFEAS(((\Add4~75_combout\ & ((!\Equal4~5_combout\) # (!\Equal4~0\)))), GLOBAL(\clk~combout\), VCC, , \count_pa[9]~1_combout\, , , , )

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
	clk => \clk~combout\,
	datab => \Equal4~0\,
	datac => \Add4~75_combout\,
	datad => \Equal4~5_combout\,
	aclr => GND,
	ena => \count_pa[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_pa(11));

-- Location: LC_X11_Y8_N2
\Add4~80\ : maxv_lcell
-- Equation(s):
-- \Add4~80_combout\ = (count_pa(12) $ ((!(!\Add4~67\ & \Add4~77\) # (\Add4~67\ & \Add4~77COUT1_110\))))
-- \Add4~82\ = CARRY(((count_pa(12) & !\Add4~77\)))
-- \Add4~82COUT1_111\ = CARRY(((count_pa(12) & !\Add4~77COUT1_110\)))

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
	datab => count_pa(12),
	cin => \Add4~67\,
	cin0 => \Add4~77\,
	cin1 => \Add4~77COUT1_110\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~80_combout\,
	cout0 => \Add4~82\,
	cout1 => \Add4~82COUT1_111\);

-- Location: LC_X10_Y6_N6
\count_pa[12]\ : maxv_lcell
-- Equation(s):
-- \Equal4~4\ = (!count_pa(13) & (!count_pa(15) & (!count_pa[12] & !count_pa(14))))
-- count_pa(12) = DFFEAS(\Equal4~4\, GLOBAL(\clk~combout\), VCC, , \count_pa[9]~1_combout\, \Add4~80_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => count_pa(13),
	datab => count_pa(15),
	datac => \Add4~80_combout\,
	datad => count_pa(14),
	aclr => GND,
	sload => VCC,
	ena => \count_pa[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal4~4\,
	regout => count_pa(12));

-- Location: LC_X11_Y8_N3
\Add4~85\ : maxv_lcell
-- Equation(s):
-- \Add4~85_combout\ = (count_pa(13) $ (((!\Add4~67\ & \Add4~82\) # (\Add4~67\ & \Add4~82COUT1_111\))))
-- \Add4~87\ = CARRY(((!\Add4~82\) # (!count_pa(13))))
-- \Add4~87COUT1_112\ = CARRY(((!\Add4~82COUT1_111\) # (!count_pa(13))))

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
	datab => count_pa(13),
	cin => \Add4~67\,
	cin0 => \Add4~82\,
	cin1 => \Add4~82COUT1_111\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~85_combout\,
	cout0 => \Add4~87\,
	cout1 => \Add4~87COUT1_112\);

-- Location: LC_X9_Y8_N7
\count_pa[13]\ : maxv_lcell
-- Equation(s):
-- count_pa(13) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \count_pa[9]~1_combout\, \Add4~85_combout\, , , VCC)

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
	datac => \Add4~85_combout\,
	aclr => GND,
	sload => VCC,
	ena => \count_pa[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_pa(13));

-- Location: LC_X10_Y8_N5
\Add4~50\ : maxv_lcell
-- Equation(s):
-- \Add4~50_combout\ = (count_pa(5) $ ((\Add4~47\)))
-- \Add4~52\ = CARRY(((!\Add4~47\) # (!count_pa(5))))
-- \Add4~52COUT1_105\ = CARRY(((!\Add4~47\) # (!count_pa(5))))

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
	datab => count_pa(5),
	cin => \Add4~47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~50_combout\,
	cout0 => \Add4~52\,
	cout1 => \Add4~52COUT1_105\);

-- Location: LC_X9_Y8_N6
\count_pa[5]\ : maxv_lcell
-- Equation(s):
-- count_pa(5) = DFFEAS((((\Add4~50_combout\))), GLOBAL(\clk~combout\), VCC, , \count_pa[9]~1_combout\, , , , )

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
	datad => \Add4~50_combout\,
	aclr => GND,
	ena => \count_pa[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_pa(5));

-- Location: LC_X10_Y8_N6
\Add4~40\ : maxv_lcell
-- Equation(s):
-- \Add4~40_combout\ = (count_pa(6) $ ((!(!\Add4~47\ & \Add4~52\) # (\Add4~47\ & \Add4~52COUT1_105\))))
-- \Add4~42\ = CARRY(((count_pa(6) & !\Add4~52\)))
-- \Add4~42COUT1_106\ = CARRY(((count_pa(6) & !\Add4~52COUT1_105\)))

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
	datab => count_pa(6),
	cin => \Add4~47\,
	cin0 => \Add4~52\,
	cin1 => \Add4~52COUT1_105\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~40_combout\,
	cout0 => \Add4~42\,
	cout1 => \Add4~42COUT1_106\);

-- Location: LC_X9_Y6_N1
\count_pa[6]\ : maxv_lcell
-- Equation(s):
-- count_pa(6) = DFFEAS(((\Add4~40_combout\ & ((!\Equal4~5_combout\) # (!\Equal4~0\)))), GLOBAL(\clk~combout\), VCC, , \count_pa[9]~1_combout\, , , , )

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
	clk => \clk~combout\,
	dataa => \Equal4~0\,
	datab => \Equal4~5_combout\,
	datad => \Add4~40_combout\,
	aclr => GND,
	ena => \count_pa[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_pa(6));

-- Location: LC_X10_Y8_N0
\Add4~20\ : maxv_lcell
-- Equation(s):
-- \Add4~20_combout\ = ((!count_pa(0)))
-- \Add4~22\ = CARRY(((count_pa(0))))
-- \Add4~22COUT1_101\ = CARRY(((count_pa(0))))

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
	datab => count_pa(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~20_combout\,
	cout0 => \Add4~22\,
	cout1 => \Add4~22COUT1_101\);

-- Location: LC_X10_Y6_N8
\count_pa[0]\ : maxv_lcell
-- Equation(s):
-- count_pa(0) = DFFEAS((\Add4~20_combout\) # (((\Equal4~5_combout\ & \Equal4~0\))), GLOBAL(\clk~combout\), VCC, , \count_pa[9]~1_combout\, , , , )

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
	clk => \clk~combout\,
	dataa => \Add4~20_combout\,
	datac => \Equal4~5_combout\,
	datad => \Equal4~0\,
	aclr => GND,
	ena => \count_pa[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_pa(0));

-- Location: LC_X10_Y8_N1
\Add4~30\ : maxv_lcell
-- Equation(s):
-- \Add4~30_combout\ = (count_pa(1) $ ((\Add4~22\)))
-- \Add4~32\ = CARRY(((!\Add4~22\) # (!count_pa(1))))
-- \Add4~32COUT1_102\ = CARRY(((!\Add4~22COUT1_101\) # (!count_pa(1))))

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
	datab => count_pa(1),
	cin0 => \Add4~22\,
	cin1 => \Add4~22COUT1_101\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~30_combout\,
	cout0 => \Add4~32\,
	cout1 => \Add4~32COUT1_102\);

-- Location: LC_X10_Y6_N5
\count_pa[1]\ : maxv_lcell
-- Equation(s):
-- count_pa(1) = DFFEAS(((\Add4~30_combout\ & ((!\Equal4~5_combout\) # (!\Equal4~0\)))), GLOBAL(\clk~combout\), VCC, , \count_pa[9]~1_combout\, , , , )

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
	clk => \clk~combout\,
	datab => \Equal4~0\,
	datac => \Equal4~5_combout\,
	datad => \Add4~30_combout\,
	aclr => GND,
	ena => \count_pa[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_pa(1));

-- Location: LC_X10_Y8_N2
\Add4~25\ : maxv_lcell
-- Equation(s):
-- \Add4~25_combout\ = (count_pa(2) $ ((!\Add4~32\)))
-- \Add4~27\ = CARRY(((count_pa(2) & !\Add4~32\)))
-- \Add4~27COUT1_103\ = CARRY(((count_pa(2) & !\Add4~32COUT1_102\)))

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
	datab => count_pa(2),
	cin0 => \Add4~32\,
	cin1 => \Add4~32COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~25_combout\,
	cout0 => \Add4~27\,
	cout1 => \Add4~27COUT1_103\);

-- Location: LC_X10_Y6_N0
\count_pa[2]\ : maxv_lcell
-- Equation(s):
-- count_pa(2) = DFFEAS(((\Add4~25_combout\ & ((!\Equal4~0\) # (!\Equal4~5_combout\)))), GLOBAL(\clk~combout\), VCC, , \count_pa[9]~1_combout\, , , , )

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
	clk => \clk~combout\,
	dataa => \Equal4~5_combout\,
	datac => \Add4~25_combout\,
	datad => \Equal4~0\,
	aclr => GND,
	ena => \count_pa[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_pa(2));

-- Location: LC_X10_Y8_N3
\Add4~35\ : maxv_lcell
-- Equation(s):
-- \Add4~35_combout\ = (count_pa(3) $ ((\Add4~27\)))
-- \Add4~37\ = CARRY(((!\Add4~27\) # (!count_pa(3))))
-- \Add4~37COUT1_104\ = CARRY(((!\Add4~27COUT1_103\) # (!count_pa(3))))

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
	datab => count_pa(3),
	cin0 => \Add4~27\,
	cin1 => \Add4~27COUT1_103\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~35_combout\,
	cout0 => \Add4~37\,
	cout1 => \Add4~37COUT1_104\);

-- Location: LC_X10_Y6_N2
\count_pa[3]\ : maxv_lcell
-- Equation(s):
-- \Equal4~1\ = (!count_pa(1) & (count_pa(2) & (!count_pa[3] & count_pa(0))))
-- count_pa(3) = DFFEAS(\Equal4~1\, GLOBAL(\clk~combout\), VCC, , \count_pa[9]~1_combout\, \Add4~35_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => count_pa(1),
	datab => count_pa(2),
	datac => \Add4~35_combout\,
	datad => count_pa(0),
	aclr => GND,
	sload => VCC,
	ena => \count_pa[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal4~1\,
	regout => count_pa(3));

-- Location: LC_X10_Y8_N4
\Add4~45\ : maxv_lcell
-- Equation(s):
-- \Add4~45_combout\ = (count_pa(4) $ ((!\Add4~37\)))
-- \Add4~47\ = CARRY(((count_pa(4) & !\Add4~37COUT1_104\)))

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
	datab => count_pa(4),
	cin0 => \Add4~37\,
	cin1 => \Add4~37COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~45_combout\,
	cout => \Add4~47\);

-- Location: LC_X10_Y6_N7
\count_pa[4]\ : maxv_lcell
-- Equation(s):
-- \Equal4~2\ = (!count_pa(7) & (count_pa(6) & (!count_pa[4] & !count_pa(5))))
-- count_pa(4) = DFFEAS(\Equal4~2\, GLOBAL(\clk~combout\), VCC, , \count_pa[9]~1_combout\, \Add4~45_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => count_pa(7),
	datab => count_pa(6),
	datac => \Add4~45_combout\,
	datad => count_pa(5),
	aclr => GND,
	sload => VCC,
	ena => \count_pa[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal4~2\,
	regout => count_pa(4));

-- Location: LC_X10_Y8_N7
\Add4~55\ : maxv_lcell
-- Equation(s):
-- \Add4~55_combout\ = (count_pa(7) $ (((!\Add4~47\ & \Add4~42\) # (\Add4~47\ & \Add4~42COUT1_106\))))
-- \Add4~57\ = CARRY(((!\Add4~42\) # (!count_pa(7))))
-- \Add4~57COUT1_107\ = CARRY(((!\Add4~42COUT1_106\) # (!count_pa(7))))

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
	datab => count_pa(7),
	cin => \Add4~47\,
	cin0 => \Add4~42\,
	cin1 => \Add4~42COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~55_combout\,
	cout0 => \Add4~57\,
	cout1 => \Add4~57COUT1_107\);

-- Location: LC_X10_Y6_N3
\count_pa[7]\ : maxv_lcell
-- Equation(s):
-- count_pa(7) = DFFEAS((((\Add4~55_combout\))), GLOBAL(\clk~combout\), VCC, , \count_pa[9]~1_combout\, , , , )

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
	datad => \Add4~55_combout\,
	aclr => GND,
	ena => \count_pa[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_pa(7));

-- Location: LC_X10_Y8_N8
\Add4~60\ : maxv_lcell
-- Equation(s):
-- \Add4~60_combout\ = (count_pa(8) $ ((!(!\Add4~47\ & \Add4~57\) # (\Add4~47\ & \Add4~57COUT1_107\))))
-- \Add4~62\ = CARRY(((count_pa(8) & !\Add4~57\)))
-- \Add4~62COUT1_108\ = CARRY(((count_pa(8) & !\Add4~57COUT1_107\)))

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
	datab => count_pa(8),
	cin => \Add4~47\,
	cin0 => \Add4~57\,
	cin1 => \Add4~57COUT1_107\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~60_combout\,
	cout0 => \Add4~62\,
	cout1 => \Add4~62COUT1_108\);

-- Location: LC_X12_Y8_N6
\count_pa[8]\ : maxv_lcell
-- Equation(s):
-- count_pa(8) = DFFEAS(((\Add4~60_combout\ & ((!\Equal4~5_combout\) # (!\Equal4~0\)))), GLOBAL(\clk~combout\), VCC, , \count_pa[9]~1_combout\, , , , )

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
	clk => \clk~combout\,
	datab => \Equal4~0\,
	datac => \Equal4~5_combout\,
	datad => \Add4~60_combout\,
	aclr => GND,
	ena => \count_pa[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_pa(8));

-- Location: LC_X12_Y8_N2
\Equal4~3\ : maxv_lcell
-- Equation(s):
-- \Equal4~3_combout\ = (count_pa(11) & (count_pa(9) & (count_pa(8) & count_pa(10))))

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
	dataa => count_pa(11),
	datab => count_pa(9),
	datac => count_pa(8),
	datad => count_pa(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal4~3_combout\);

-- Location: LC_X10_Y6_N4
\Equal4~5\ : maxv_lcell
-- Equation(s):
-- \Equal4~5_combout\ = (\Equal4~4\ & (\Equal4~2\ & (\Equal4~3_combout\ & \Equal4~1\)))

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
	dataa => \Equal4~4\,
	datab => \Equal4~2\,
	datac => \Equal4~3_combout\,
	datad => \Equal4~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal4~5_combout\);

-- Location: LC_X10_Y8_N9
\Add4~65\ : maxv_lcell
-- Equation(s):
-- \Add4~65_combout\ = (count_pa(9) $ (((!\Add4~47\ & \Add4~62\) # (\Add4~47\ & \Add4~62COUT1_108\))))
-- \Add4~67\ = CARRY(((!\Add4~62COUT1_108\) # (!count_pa(9))))

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
	datab => count_pa(9),
	cin => \Add4~47\,
	cin0 => \Add4~62\,
	cin1 => \Add4~62COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~65_combout\,
	cout => \Add4~67\);

-- Location: LC_X12_Y8_N1
\count_pa[9]\ : maxv_lcell
-- Equation(s):
-- count_pa(9) = DFFEAS(((\Add4~65_combout\ & ((!\Equal4~0\) # (!\Equal4~5_combout\)))), GLOBAL(\clk~combout\), VCC, , \count_pa[9]~1_combout\, , , , )

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
	clk => \clk~combout\,
	datab => \Equal4~5_combout\,
	datac => \Equal4~0\,
	datad => \Add4~65_combout\,
	aclr => GND,
	ena => \count_pa[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_pa(9));

-- Location: LC_X11_Y8_N4
\Add4~90\ : maxv_lcell
-- Equation(s):
-- \Add4~90_combout\ = (count_pa(14) $ ((!(!\Add4~67\ & \Add4~87\) # (\Add4~67\ & \Add4~87COUT1_112\))))
-- \Add4~92\ = CARRY(((count_pa(14) & !\Add4~87COUT1_112\)))

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
	datab => count_pa(14),
	cin => \Add4~67\,
	cin0 => \Add4~87\,
	cin1 => \Add4~87COUT1_112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~90_combout\,
	cout => \Add4~92\);

-- Location: LC_X10_Y6_N1
\count_pa[14]\ : maxv_lcell
-- Equation(s):
-- count_pa(14) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \count_pa[9]~1_combout\, \Add4~90_combout\, , , VCC)

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
	datac => \Add4~90_combout\,
	aclr => GND,
	sload => VCC,
	ena => \count_pa[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_pa(14));

-- Location: LC_X11_Y8_N6
\Add4~0\ : maxv_lcell
-- Equation(s):
-- \Add4~0_combout\ = (count_pa(16) $ ((!(!\Add4~92\ & \Add4~97\) # (\Add4~92\ & \Add4~97COUT1_113\))))
-- \Add4~2\ = CARRY(((count_pa(16) & !\Add4~97\)))
-- \Add4~2COUT1_114\ = CARRY(((count_pa(16) & !\Add4~97COUT1_113\)))

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
	datab => count_pa(16),
	cin => \Add4~92\,
	cin0 => \Add4~97\,
	cin1 => \Add4~97COUT1_113\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~0_combout\,
	cout0 => \Add4~2\,
	cout1 => \Add4~2COUT1_114\);

-- Location: LC_X12_Y8_N8
\count_pa[16]\ : maxv_lcell
-- Equation(s):
-- count_pa(16) = DFFEAS(((\Add4~0_combout\ & ((!\Equal4~5_combout\) # (!\Equal4~0\)))), GLOBAL(\clk~combout\), VCC, , \count_pa[9]~1_combout\, , , , )

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
	clk => \clk~combout\,
	datab => \Equal4~0\,
	datac => \Add4~0_combout\,
	datad => \Equal4~5_combout\,
	aclr => GND,
	ena => \count_pa[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_pa(16));

-- Location: LC_X11_Y8_N7
\Add4~5\ : maxv_lcell
-- Equation(s):
-- \Add4~5_combout\ = count_pa(17) $ (((((!\Add4~92\ & \Add4~2\) # (\Add4~92\ & \Add4~2COUT1_114\)))))
-- \Add4~7\ = CARRY(((!\Add4~2\)) # (!count_pa(17)))
-- \Add4~7COUT1_115\ = CARRY(((!\Add4~2COUT1_114\)) # (!count_pa(17)))

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
	dataa => count_pa(17),
	cin => \Add4~92\,
	cin0 => \Add4~2\,
	cin1 => \Add4~2COUT1_114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~5_combout\,
	cout0 => \Add4~7\,
	cout1 => \Add4~7COUT1_115\);

-- Location: LC_X11_Y8_N8
\Add4~10\ : maxv_lcell
-- Equation(s):
-- \Add4~10_combout\ = (count_pa(18) $ ((!(!\Add4~92\ & \Add4~7\) # (\Add4~92\ & \Add4~7COUT1_115\))))
-- \Add4~12\ = CARRY(((count_pa(18) & !\Add4~7\)))
-- \Add4~12COUT1_116\ = CARRY(((count_pa(18) & !\Add4~7COUT1_115\)))

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
	datab => count_pa(18),
	cin => \Add4~92\,
	cin0 => \Add4~7\,
	cin1 => \Add4~7COUT1_115\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~10_combout\,
	cout0 => \Add4~12\,
	cout1 => \Add4~12COUT1_116\);

-- Location: LC_X11_Y8_N9
\Add4~15\ : maxv_lcell
-- Equation(s):
-- \Add4~15_combout\ = count_pa(19) $ (((((!\Add4~92\ & \Add4~12\) # (\Add4~92\ & \Add4~12COUT1_116\)))))

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
	dataa => count_pa(19),
	cin => \Add4~92\,
	cin0 => \Add4~12\,
	cin1 => \Add4~12COUT1_116\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~15_combout\);

-- Location: LC_X12_Y8_N0
\count_pa[19]\ : maxv_lcell
-- Equation(s):
-- count_pa(19) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \count_pa[9]~1_combout\, \Add4~15_combout\, , , VCC)

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
	datac => \Add4~15_combout\,
	aclr => GND,
	sload => VCC,
	ena => \count_pa[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_pa(19));

-- Location: LC_X12_Y8_N7
\count_pa[17]\ : maxv_lcell
-- Equation(s):
-- \Equal4~0\ = (!count_pa(18) & (!count_pa(19) & (!count_pa[17] & count_pa(16))))
-- count_pa(17) = DFFEAS(\Equal4~0\, GLOBAL(\clk~combout\), VCC, , \count_pa[9]~1_combout\, \Add4~5_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => count_pa(18),
	datab => count_pa(19),
	datac => \Add4~5_combout\,
	datad => count_pa(16),
	aclr => GND,
	sload => VCC,
	ena => \count_pa[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal4~0\,
	regout => count_pa(17));

-- Location: LC_X12_Y8_N4
\count_pa[18]\ : maxv_lcell
-- Equation(s):
-- count_pa(18) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \count_pa[9]~1_combout\, \Add4~10_combout\, , , VCC)

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
	datac => \Add4~10_combout\,
	aclr => GND,
	sload => VCC,
	ena => \count_pa[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_pa(18));

-- Location: LC_X9_Y6_N9
pa : maxv_lcell
-- Equation(s):
-- \pa~0\ = (pa $ (((\Equal4~0\ & \Equal4~5_combout\))))

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
	clk => \clk~combout\,
	dataa => \Equal4~0\,
	datad => \Equal4~5_combout\,
	aclr => GND,
	ena => \count_pa[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pa~0\,
	regout => \pa~regout\);

-- Location: LC_X5_Y8_N0
\Add7~25\ : maxv_lcell
-- Equation(s):
-- \Add7~25_combout\ = ((!count_sa2(0)))
-- \Add7~27\ = CARRY(((count_sa2(0))))
-- \Add7~27COUT1_101\ = CARRY(((count_sa2(0))))

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
	datab => count_sa2(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~25_combout\,
	cout0 => \Add7~27\,
	cout1 => \Add7~27COUT1_101\);

-- Location: LC_X10_Y7_N2
\sa2~2\ : maxv_lcell
-- Equation(s):
-- \sa2~2_combout\ = ((\sa2~0_combout\ & (\switch~combout\(7) & \count_pa[9]~0_combout\)))

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
	datab => \sa2~0_combout\,
	datac => \switch~combout\(7),
	datad => \count_pa[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sa2~2_combout\);

-- Location: LC_X8_Y8_N4
\count_sa2[0]\ : maxv_lcell
-- Equation(s):
-- \Equal7~1\ = (!count_sa2(3) & (!count_sa2(1) & (!count_sa2[0] & count_sa2(2))))
-- count_sa2(0) = DFFEAS(\Equal7~1\, GLOBAL(\clk~combout\), VCC, , \sa2~2_combout\, \Add7~25_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => count_sa2(3),
	datab => count_sa2(1),
	datac => \Add7~25_combout\,
	datad => count_sa2(2),
	aclr => GND,
	sload => VCC,
	ena => \sa2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal7~1\,
	regout => count_sa2(0));

-- Location: LC_X5_Y8_N1
\Add7~30\ : maxv_lcell
-- Equation(s):
-- \Add7~30_combout\ = (count_sa2(1) $ ((\Add7~27\)))
-- \Add7~32\ = CARRY(((!\Add7~27\) # (!count_sa2(1))))
-- \Add7~32COUT1_102\ = CARRY(((!\Add7~27COUT1_101\) # (!count_sa2(1))))

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
	datab => count_sa2(1),
	cin0 => \Add7~27\,
	cin1 => \Add7~27COUT1_101\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~30_combout\,
	cout0 => \Add7~32\,
	cout1 => \Add7~32COUT1_102\);

-- Location: LC_X9_Y8_N8
\count_sa2[1]\ : maxv_lcell
-- Equation(s):
-- count_sa2(1) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \sa2~2_combout\, \Add7~30_combout\, , , VCC)

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
	datac => \Add7~30_combout\,
	aclr => GND,
	sload => VCC,
	ena => \sa2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_sa2(1));

-- Location: LC_X5_Y8_N2
\Add7~20\ : maxv_lcell
-- Equation(s):
-- \Add7~20_combout\ = (count_sa2(2) $ ((!\Add7~32\)))
-- \Add7~22\ = CARRY(((count_sa2(2) & !\Add7~32\)))
-- \Add7~22COUT1_103\ = CARRY(((count_sa2(2) & !\Add7~32COUT1_102\)))

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
	datab => count_sa2(2),
	cin0 => \Add7~32\,
	cin1 => \Add7~32COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~20_combout\,
	cout0 => \Add7~22\,
	cout1 => \Add7~22COUT1_103\);

-- Location: LC_X7_Y8_N5
\count_sa2[2]\ : maxv_lcell
-- Equation(s):
-- count_sa2(2) = DFFEAS(((\Add7~20_combout\ & ((!\Equal7~0\) # (!\Equal7~5_combout\)))), GLOBAL(\clk~combout\), VCC, , \sa2~2_combout\, , , , )

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
	clk => \clk~combout\,
	datab => \Equal7~5_combout\,
	datac => \Equal7~0\,
	datad => \Add7~20_combout\,
	aclr => GND,
	ena => \sa2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_sa2(2));

-- Location: LC_X5_Y8_N3
\Add7~35\ : maxv_lcell
-- Equation(s):
-- \Add7~35_combout\ = (count_sa2(3) $ ((\Add7~22\)))
-- \Add7~37\ = CARRY(((!\Add7~22\) # (!count_sa2(3))))
-- \Add7~37COUT1_104\ = CARRY(((!\Add7~22COUT1_103\) # (!count_sa2(3))))

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
	datab => count_sa2(3),
	cin0 => \Add7~22\,
	cin1 => \Add7~22COUT1_103\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~35_combout\,
	cout0 => \Add7~37\,
	cout1 => \Add7~37COUT1_104\);

-- Location: LC_X9_Y8_N3
\count_sa2[3]\ : maxv_lcell
-- Equation(s):
-- count_sa2(3) = DFFEAS((((\Add7~35_combout\))), GLOBAL(\clk~combout\), VCC, , \sa2~2_combout\, , , , )

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
	datad => \Add7~35_combout\,
	aclr => GND,
	ena => \sa2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_sa2(3));

-- Location: LC_X5_Y8_N4
\Add7~40\ : maxv_lcell
-- Equation(s):
-- \Add7~40_combout\ = count_sa2(4) $ ((((!\Add7~37\))))
-- \Add7~42\ = CARRY((count_sa2(4) & ((!\Add7~37COUT1_104\))))

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
	dataa => count_sa2(4),
	cin0 => \Add7~37\,
	cin1 => \Add7~37COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~40_combout\,
	cout => \Add7~42\);

-- Location: LC_X7_Y8_N1
\count_sa2[4]\ : maxv_lcell
-- Equation(s):
-- count_sa2(4) = DFFEAS(((\Add7~40_combout\ & ((!\Equal7~5_combout\) # (!\Equal7~0\)))), GLOBAL(\clk~combout\), VCC, , \sa2~2_combout\, , , , )

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
	clk => \clk~combout\,
	dataa => \Equal7~0\,
	datac => \Add7~40_combout\,
	datad => \Equal7~5_combout\,
	aclr => GND,
	ena => \sa2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_sa2(4));

-- Location: LC_X5_Y8_N5
\Add7~45\ : maxv_lcell
-- Equation(s):
-- \Add7~45_combout\ = count_sa2(5) $ ((((\Add7~42\))))
-- \Add7~47\ = CARRY(((!\Add7~42\)) # (!count_sa2(5)))
-- \Add7~47COUT1_105\ = CARRY(((!\Add7~42\)) # (!count_sa2(5)))

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
	dataa => count_sa2(5),
	cin => \Add7~42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~45_combout\,
	cout0 => \Add7~47\,
	cout1 => \Add7~47COUT1_105\);

-- Location: LC_X7_Y8_N9
\count_sa2[5]\ : maxv_lcell
-- Equation(s):
-- count_sa2(5) = DFFEAS(((\Add7~45_combout\ & ((!\Equal7~5_combout\) # (!\Equal7~0\)))), GLOBAL(\clk~combout\), VCC, , \sa2~2_combout\, , , , )

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
	clk => \clk~combout\,
	dataa => \Equal7~0\,
	datac => \Add7~45_combout\,
	datad => \Equal7~5_combout\,
	aclr => GND,
	ena => \sa2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_sa2(5));

-- Location: LC_X5_Y8_N6
\Add7~50\ : maxv_lcell
-- Equation(s):
-- \Add7~50_combout\ = (count_sa2(6) $ ((!(!\Add7~42\ & \Add7~47\) # (\Add7~42\ & \Add7~47COUT1_105\))))
-- \Add7~52\ = CARRY(((count_sa2(6) & !\Add7~47\)))
-- \Add7~52COUT1_106\ = CARRY(((count_sa2(6) & !\Add7~47COUT1_105\)))

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
	datab => count_sa2(6),
	cin => \Add7~42\,
	cin0 => \Add7~47\,
	cin1 => \Add7~47COUT1_105\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~50_combout\,
	cout0 => \Add7~52\,
	cout1 => \Add7~52COUT1_106\);

-- Location: LC_X7_Y8_N3
\count_sa2[6]\ : maxv_lcell
-- Equation(s):
-- count_sa2(6) = DFFEAS(((\Add7~50_combout\ & ((!\Equal7~0\) # (!\Equal7~5_combout\)))), GLOBAL(\clk~combout\), VCC, , \sa2~2_combout\, , , , )

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
	clk => \clk~combout\,
	datab => \Equal7~5_combout\,
	datac => \Equal7~0\,
	datad => \Add7~50_combout\,
	aclr => GND,
	ena => \sa2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_sa2(6));

-- Location: LC_X7_Y8_N8
\count_sa2[7]\ : maxv_lcell
-- Equation(s):
-- \Equal7~2\ = (count_sa2(6) & (count_sa2(4) & (!count_sa2[7] & count_sa2(5))))
-- count_sa2(7) = DFFEAS(\Equal7~2\, GLOBAL(\clk~combout\), VCC, , \sa2~2_combout\, \Add7~55_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => count_sa2(6),
	datab => count_sa2(4),
	datac => \Add7~55_combout\,
	datad => count_sa2(5),
	aclr => GND,
	sload => VCC,
	ena => \sa2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal7~2\,
	regout => count_sa2(7));

-- Location: LC_X5_Y8_N7
\Add7~55\ : maxv_lcell
-- Equation(s):
-- \Add7~55_combout\ = (count_sa2(7) $ (((!\Add7~42\ & \Add7~52\) # (\Add7~42\ & \Add7~52COUT1_106\))))
-- \Add7~57\ = CARRY(((!\Add7~52\) # (!count_sa2(7))))
-- \Add7~57COUT1_107\ = CARRY(((!\Add7~52COUT1_106\) # (!count_sa2(7))))

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
	datab => count_sa2(7),
	cin => \Add7~42\,
	cin0 => \Add7~52\,
	cin1 => \Add7~52COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~55_combout\,
	cout0 => \Add7~57\,
	cout1 => \Add7~57COUT1_107\);

-- Location: LC_X5_Y8_N8
\Add7~60\ : maxv_lcell
-- Equation(s):
-- \Add7~60_combout\ = (count_sa2(8) $ ((!(!\Add7~42\ & \Add7~57\) # (\Add7~42\ & \Add7~57COUT1_107\))))
-- \Add7~62\ = CARRY(((count_sa2(8) & !\Add7~57\)))
-- \Add7~62COUT1_108\ = CARRY(((count_sa2(8) & !\Add7~57COUT1_107\)))

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
	datab => count_sa2(8),
	cin => \Add7~42\,
	cin0 => \Add7~57\,
	cin1 => \Add7~57COUT1_107\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~60_combout\,
	cout0 => \Add7~62\,
	cout1 => \Add7~62COUT1_108\);

-- Location: LC_X8_Y8_N7
\count_sa2[8]\ : maxv_lcell
-- Equation(s):
-- count_sa2(8) = DFFEAS((\Add7~60_combout\ & (((!\Equal7~0\)) # (!\Equal7~5_combout\))), GLOBAL(\clk~combout\), VCC, , \sa2~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7070",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal7~5_combout\,
	datab => \Equal7~0\,
	datac => \Add7~60_combout\,
	aclr => GND,
	ena => \sa2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_sa2(8));

-- Location: LC_X5_Y8_N9
\Add7~65\ : maxv_lcell
-- Equation(s):
-- \Add7~65_combout\ = (count_sa2(9) $ (((!\Add7~42\ & \Add7~62\) # (\Add7~42\ & \Add7~62COUT1_108\))))
-- \Add7~67\ = CARRY(((!\Add7~62COUT1_108\) # (!count_sa2(9))))

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
	datab => count_sa2(9),
	cin => \Add7~42\,
	cin0 => \Add7~62\,
	cin1 => \Add7~62COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~65_combout\,
	cout => \Add7~67\);

-- Location: LC_X8_Y8_N8
\count_sa2[9]\ : maxv_lcell
-- Equation(s):
-- count_sa2(9) = DFFEAS((\Add7~65_combout\ & (((!\Equal7~0\)) # (!\Equal7~5_combout\))), GLOBAL(\clk~combout\), VCC, , \sa2~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7070",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal7~5_combout\,
	datab => \Equal7~0\,
	datac => \Add7~65_combout\,
	aclr => GND,
	ena => \sa2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_sa2(9));

-- Location: LC_X6_Y8_N0
\Add7~75\ : maxv_lcell
-- Equation(s):
-- \Add7~75_combout\ = (count_sa2(10) $ ((!\Add7~67\)))
-- \Add7~77\ = CARRY(((count_sa2(10) & !\Add7~67\)))
-- \Add7~77COUT1_109\ = CARRY(((count_sa2(10) & !\Add7~67\)))

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
	datab => count_sa2(10),
	cin => \Add7~67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~75_combout\,
	cout0 => \Add7~77\,
	cout1 => \Add7~77COUT1_109\);

-- Location: LC_X6_Y8_N1
\Add7~70\ : maxv_lcell
-- Equation(s):
-- \Add7~70_combout\ = (count_sa2(11) $ (((!\Add7~67\ & \Add7~77\) # (\Add7~67\ & \Add7~77COUT1_109\))))
-- \Add7~72\ = CARRY(((!\Add7~77\) # (!count_sa2(11))))
-- \Add7~72COUT1_110\ = CARRY(((!\Add7~77COUT1_109\) # (!count_sa2(11))))

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
	datab => count_sa2(11),
	cin => \Add7~67\,
	cin0 => \Add7~77\,
	cin1 => \Add7~77COUT1_109\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~70_combout\,
	cout0 => \Add7~72\,
	cout1 => \Add7~72COUT1_110\);

-- Location: LC_X8_Y8_N2
\count_sa2[11]\ : maxv_lcell
-- Equation(s):
-- count_sa2(11) = DFFEAS(((\Add7~70_combout\ & ((!\Equal7~5_combout\) # (!\Equal7~0\)))), GLOBAL(\clk~combout\), VCC, , \sa2~2_combout\, , , , )

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
	clk => \clk~combout\,
	datab => \Equal7~0\,
	datac => \Equal7~5_combout\,
	datad => \Add7~70_combout\,
	aclr => GND,
	ena => \sa2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_sa2(11));

-- Location: LC_X8_Y8_N0
\count_sa2[10]\ : maxv_lcell
-- Equation(s):
-- \Equal7~3\ = (count_sa2(9) & (count_sa2(8) & (!count_sa2[10] & count_sa2(11))))
-- count_sa2(10) = DFFEAS(\Equal7~3\, GLOBAL(\clk~combout\), VCC, , \sa2~2_combout\, \Add7~75_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => count_sa2(9),
	datab => count_sa2(8),
	datac => \Add7~75_combout\,
	datad => count_sa2(11),
	aclr => GND,
	sload => VCC,
	ena => \sa2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal7~3\,
	regout => count_sa2(10));

-- Location: LC_X6_Y8_N2
\Add7~90\ : maxv_lcell
-- Equation(s):
-- \Add7~90_combout\ = (count_sa2(12) $ ((!(!\Add7~67\ & \Add7~72\) # (\Add7~67\ & \Add7~72COUT1_110\))))
-- \Add7~92\ = CARRY(((count_sa2(12) & !\Add7~72\)))
-- \Add7~92COUT1_111\ = CARRY(((count_sa2(12) & !\Add7~72COUT1_110\)))

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
	datab => count_sa2(12),
	cin => \Add7~67\,
	cin0 => \Add7~72\,
	cin1 => \Add7~72COUT1_110\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~90_combout\,
	cout0 => \Add7~92\,
	cout1 => \Add7~92COUT1_111\);

-- Location: LC_X6_Y8_N5
\Add7~85\ : maxv_lcell
-- Equation(s):
-- \Add7~85_combout\ = count_sa2(15) $ ((((\Add7~82\))))
-- \Add7~87\ = CARRY(((!\Add7~82\)) # (!count_sa2(15)))
-- \Add7~87COUT1_113\ = CARRY(((!\Add7~82\)) # (!count_sa2(15)))

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
	dataa => count_sa2(15),
	cin => \Add7~82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~85_combout\,
	cout0 => \Add7~87\,
	cout1 => \Add7~87COUT1_113\);

-- Location: LC_X8_Y8_N1
\count_sa2[15]\ : maxv_lcell
-- Equation(s):
-- count_sa2(15) = DFFEAS(((\Add7~85_combout\ & ((!\Equal7~5_combout\) # (!\Equal7~0\)))), GLOBAL(\clk~combout\), VCC, , \sa2~2_combout\, , , , )

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
	clk => \clk~combout\,
	datab => \Equal7~0\,
	datac => \Equal7~5_combout\,
	datad => \Add7~85_combout\,
	aclr => GND,
	ena => \sa2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_sa2(15));

-- Location: LC_X8_Y8_N3
\count_sa2[12]\ : maxv_lcell
-- Equation(s):
-- \Equal7~4\ = (!count_sa2(13) & (count_sa2(14) & (!count_sa2[12] & count_sa2(15))))
-- count_sa2(12) = DFFEAS(\Equal7~4\, GLOBAL(\clk~combout\), VCC, , \sa2~2_combout\, \Add7~90_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => count_sa2(13),
	datab => count_sa2(14),
	datac => \Add7~90_combout\,
	datad => count_sa2(15),
	aclr => GND,
	sload => VCC,
	ena => \sa2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal7~4\,
	regout => count_sa2(12));

-- Location: LC_X6_Y8_N3
\Add7~95\ : maxv_lcell
-- Equation(s):
-- \Add7~95_combout\ = count_sa2(13) $ (((((!\Add7~67\ & \Add7~92\) # (\Add7~67\ & \Add7~92COUT1_111\)))))
-- \Add7~97\ = CARRY(((!\Add7~92\)) # (!count_sa2(13)))
-- \Add7~97COUT1_112\ = CARRY(((!\Add7~92COUT1_111\)) # (!count_sa2(13)))

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
	dataa => count_sa2(13),
	cin => \Add7~67\,
	cin0 => \Add7~92\,
	cin1 => \Add7~92COUT1_111\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~95_combout\,
	cout0 => \Add7~97\,
	cout1 => \Add7~97COUT1_112\);

-- Location: LC_X7_Y8_N0
\count_sa2[13]\ : maxv_lcell
-- Equation(s):
-- count_sa2(13) = DFFEAS((((\Add7~95_combout\))), GLOBAL(\clk~combout\), VCC, , \sa2~2_combout\, , , , )

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
	datad => \Add7~95_combout\,
	aclr => GND,
	ena => \sa2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_sa2(13));

-- Location: LC_X8_Y8_N5
\Equal7~5\ : maxv_lcell
-- Equation(s):
-- \Equal7~5_combout\ = (\Equal7~2\ & (\Equal7~3\ & (\Equal7~1\ & \Equal7~4\)))

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
	dataa => \Equal7~2\,
	datab => \Equal7~3\,
	datac => \Equal7~1\,
	datad => \Equal7~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal7~5_combout\);

-- Location: LC_X6_Y8_N4
\Add7~80\ : maxv_lcell
-- Equation(s):
-- \Add7~80_combout\ = (count_sa2(14) $ ((!(!\Add7~67\ & \Add7~97\) # (\Add7~67\ & \Add7~97COUT1_112\))))
-- \Add7~82\ = CARRY(((count_sa2(14) & !\Add7~97COUT1_112\)))

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
	datab => count_sa2(14),
	cin => \Add7~67\,
	cin0 => \Add7~97\,
	cin1 => \Add7~97COUT1_112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~80_combout\,
	cout => \Add7~82\);

-- Location: LC_X8_Y8_N9
\count_sa2[14]\ : maxv_lcell
-- Equation(s):
-- count_sa2(14) = DFFEAS(((\Add7~80_combout\ & ((!\Equal7~5_combout\) # (!\Equal7~0\)))), GLOBAL(\clk~combout\), VCC, , \sa2~2_combout\, , , , )

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
	clk => \clk~combout\,
	datab => \Equal7~0\,
	datac => \Equal7~5_combout\,
	datad => \Add7~80_combout\,
	aclr => GND,
	ena => \sa2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_sa2(14));

-- Location: LC_X6_Y8_N6
\Add7~0\ : maxv_lcell
-- Equation(s):
-- \Add7~0_combout\ = count_sa2(16) $ ((((!(!\Add7~82\ & \Add7~87\) # (\Add7~82\ & \Add7~87COUT1_113\)))))
-- \Add7~2\ = CARRY((count_sa2(16) & ((!\Add7~87\))))
-- \Add7~2COUT1_114\ = CARRY((count_sa2(16) & ((!\Add7~87COUT1_113\))))

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
	dataa => count_sa2(16),
	cin => \Add7~82\,
	cin0 => \Add7~87\,
	cin1 => \Add7~87COUT1_113\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~0_combout\,
	cout0 => \Add7~2\,
	cout1 => \Add7~2COUT1_114\);

-- Location: LC_X6_Y8_N7
\Add7~5\ : maxv_lcell
-- Equation(s):
-- \Add7~5_combout\ = count_sa2(17) $ (((((!\Add7~82\ & \Add7~2\) # (\Add7~82\ & \Add7~2COUT1_114\)))))
-- \Add7~7\ = CARRY(((!\Add7~2\)) # (!count_sa2(17)))
-- \Add7~7COUT1_115\ = CARRY(((!\Add7~2COUT1_114\)) # (!count_sa2(17)))

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
	dataa => count_sa2(17),
	cin => \Add7~82\,
	cin0 => \Add7~2\,
	cin1 => \Add7~2COUT1_114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~5_combout\,
	cout0 => \Add7~7\,
	cout1 => \Add7~7COUT1_115\);

-- Location: LC_X6_Y8_N8
\Add7~10\ : maxv_lcell
-- Equation(s):
-- \Add7~10_combout\ = count_sa2(18) $ ((((!(!\Add7~82\ & \Add7~7\) # (\Add7~82\ & \Add7~7COUT1_115\)))))
-- \Add7~12\ = CARRY((count_sa2(18) & ((!\Add7~7\))))
-- \Add7~12COUT1_116\ = CARRY((count_sa2(18) & ((!\Add7~7COUT1_115\))))

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
	dataa => count_sa2(18),
	cin => \Add7~82\,
	cin0 => \Add7~7\,
	cin1 => \Add7~7COUT1_115\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~10_combout\,
	cout0 => \Add7~12\,
	cout1 => \Add7~12COUT1_116\);

-- Location: LC_X6_Y8_N9
\Add7~15\ : maxv_lcell
-- Equation(s):
-- \Add7~15_combout\ = (count_sa2(19) $ (((!\Add7~82\ & \Add7~12\) # (\Add7~82\ & \Add7~12COUT1_116\))))

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
	datab => count_sa2(19),
	cin => \Add7~82\,
	cin0 => \Add7~12\,
	cin1 => \Add7~12COUT1_116\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~15_combout\);

-- Location: LC_X7_Y8_N2
\count_sa2[19]\ : maxv_lcell
-- Equation(s):
-- count_sa2(19) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \sa2~2_combout\, \Add7~15_combout\, , , VCC)

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
	datac => \Add7~15_combout\,
	aclr => GND,
	sload => VCC,
	ena => \sa2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_sa2(19));

-- Location: LC_X7_Y8_N6
\count_sa2[16]\ : maxv_lcell
-- Equation(s):
-- \Equal7~0\ = (!count_sa2(18) & (!count_sa2(17) & (!count_sa2[16] & !count_sa2(19))))
-- count_sa2(16) = DFFEAS(\Equal7~0\, GLOBAL(\clk~combout\), VCC, , \sa2~2_combout\, \Add7~0_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => count_sa2(18),
	datab => count_sa2(17),
	datac => \Add7~0_combout\,
	datad => count_sa2(19),
	aclr => GND,
	sload => VCC,
	ena => \sa2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal7~0\,
	regout => count_sa2(16));

-- Location: LC_X7_Y8_N7
\count_sa2[17]\ : maxv_lcell
-- Equation(s):
-- count_sa2(17) = DFFEAS((((\Add7~5_combout\))), GLOBAL(\clk~combout\), VCC, , \sa2~2_combout\, , , , )

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
	datad => \Add7~5_combout\,
	aclr => GND,
	ena => \sa2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_sa2(17));

-- Location: LC_X7_Y8_N4
\count_sa2[18]\ : maxv_lcell
-- Equation(s):
-- count_sa2(18) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \sa2~2_combout\, \Add7~10_combout\, , , VCC)

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
	datac => \Add7~10_combout\,
	aclr => GND,
	sload => VCC,
	ena => \sa2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_sa2(18));

-- Location: LC_X8_Y8_N6
sa2 : maxv_lcell
-- Equation(s):
-- \sa2~1\ = (sa2 $ (((\Equal7~0\ & \Equal7~5_combout\))))

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
	clk => \clk~combout\,
	datab => \Equal7~0\,
	datad => \Equal7~5_combout\,
	aclr => GND,
	ena => \sa2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sa2~1\,
	regout => \sa2~regout\);

-- Location: LC_X9_Y6_N7
\toneOut~2\ : maxv_lcell
-- Equation(s):
-- \toneOut~2_combout\ = (\sa2~0_combout\ & ((\switch~combout\(7) & ((\sa2~1\))) # (!\switch~combout\(7) & (\toneOut~reg0_regout\))))

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
	dataa => \toneOut~reg0_regout\,
	datab => \sa2~0_combout\,
	datac => \switch~combout\(7),
	datad => \sa2~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \toneOut~2_combout\);

-- Location: LC_X9_Y6_N8
\count_ni[9]~2\ : maxv_lcell
-- Equation(s):
-- \count_ni[9]~2_combout\ = (\switch~combout\(6) & (!\switch~combout\(5) & ((!\switch~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0022",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \switch~combout\(6),
	datab => \switch~combout\(5),
	datad => \switch~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \count_ni[9]~2_combout\);

-- Location: LC_X9_Y5_N6
\count_dha[9]~2\ : maxv_lcell
-- Equation(s):
-- \count_dha[9]~2_combout\ = ((\switch~combout\(5) & ((!\switch~combout\(4)))))

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
	datab => \switch~combout\(5),
	datad => \switch~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \count_dha[9]~2_combout\);

-- Location: LC_X6_Y4_N5
\Add5~40\ : maxv_lcell
-- Equation(s):
-- \Add5~40_combout\ = (count_dha(5) $ ((\Add5~47\)))
-- \Add5~42\ = CARRY(((!\Add5~47\) # (!count_dha(5))))
-- \Add5~42COUT1_105\ = CARRY(((!\Add5~47\) # (!count_dha(5))))

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
	datab => count_dha(5),
	cin => \Add5~47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~40_combout\,
	cout0 => \Add5~42\,
	cout1 => \Add5~42COUT1_105\);

-- Location: LC_X9_Y5_N7
\count_dha[9]~10\ : maxv_lcell
-- Equation(s):
-- \count_dha[9]~10_combout\ = ((\switch~combout\(5) & (\count_pa[9]~0_combout\ & !\switch~combout\(4))))

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
	datab => \switch~combout\(5),
	datac => \count_pa[9]~0_combout\,
	datad => \switch~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \count_dha[9]~10_combout\);

-- Location: LC_X9_Y4_N3
\count_dha[5]\ : maxv_lcell
-- Equation(s):
-- count_dha(5) = DFFEAS(((\Add5~40_combout\ & ((!\Equal5~5_combout\) # (!\Equal5~0\)))), GLOBAL(\clk~combout\), VCC, , \count_dha[9]~10_combout\, , , , )

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
	clk => \clk~combout\,
	datab => \Equal5~0\,
	datac => \Add5~40_combout\,
	datad => \Equal5~5_combout\,
	aclr => GND,
	ena => \count_dha[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_dha(5));

-- Location: LC_X6_Y4_N6
\Add5~50\ : maxv_lcell
-- Equation(s):
-- \Add5~50_combout\ = (count_dha(6) $ ((!(!\Add5~47\ & \Add5~42\) # (\Add5~47\ & \Add5~42COUT1_105\))))
-- \Add5~52\ = CARRY(((count_dha(6) & !\Add5~42\)))
-- \Add5~52COUT1_106\ = CARRY(((count_dha(6) & !\Add5~42COUT1_105\)))

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
	datab => count_dha(6),
	cin => \Add5~47\,
	cin0 => \Add5~42\,
	cin1 => \Add5~42COUT1_105\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~50_combout\,
	cout0 => \Add5~52\,
	cout1 => \Add5~52COUT1_106\);

-- Location: LC_X9_Y4_N7
\count_dha[6]\ : maxv_lcell
-- Equation(s):
-- count_dha(6) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \count_dha[9]~10_combout\, \Add5~50_combout\, , , VCC)

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
	datac => \Add5~50_combout\,
	aclr => GND,
	sload => VCC,
	ena => \count_dha[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_dha(6));

-- Location: LC_X6_Y4_N7
\Add5~55\ : maxv_lcell
-- Equation(s):
-- \Add5~55_combout\ = (count_dha(7) $ (((!\Add5~47\ & \Add5~52\) # (\Add5~47\ & \Add5~52COUT1_106\))))
-- \Add5~57\ = CARRY(((!\Add5~52\) # (!count_dha(7))))
-- \Add5~57COUT1_107\ = CARRY(((!\Add5~52COUT1_106\) # (!count_dha(7))))

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
	datab => count_dha(7),
	cin => \Add5~47\,
	cin0 => \Add5~52\,
	cin1 => \Add5~52COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~55_combout\,
	cout0 => \Add5~57\,
	cout1 => \Add5~57COUT1_107\);

-- Location: LC_X9_Y4_N6
\count_dha[7]\ : maxv_lcell
-- Equation(s):
-- count_dha(7) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \count_dha[9]~10_combout\, \Add5~55_combout\, , , VCC)

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
	datac => \Add5~55_combout\,
	aclr => GND,
	sload => VCC,
	ena => \count_dha[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_dha(7));

-- Location: LC_X6_Y4_N0
\Add5~25\ : maxv_lcell
-- Equation(s):
-- \Add5~25_combout\ = ((!count_dha(0)))
-- \Add5~27\ = CARRY(((count_dha(0))))
-- \Add5~27COUT1_101\ = CARRY(((count_dha(0))))

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
	datab => count_dha(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~25_combout\,
	cout0 => \Add5~27\,
	cout1 => \Add5~27COUT1_101\);

-- Location: LC_X8_Y4_N4
\count_dha[0]\ : maxv_lcell
-- Equation(s):
-- \Equal5~1\ = (!count_dha(3) & (count_dha(2) & (!count_dha[0] & !count_dha(1))))
-- count_dha(0) = DFFEAS(\Equal5~1\, GLOBAL(\clk~combout\), VCC, , \count_dha[9]~10_combout\, \Add5~25_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => count_dha(3),
	datab => count_dha(2),
	datac => \Add5~25_combout\,
	datad => count_dha(1),
	aclr => GND,
	sload => VCC,
	ena => \count_dha[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal5~1\,
	regout => count_dha(0));

-- Location: LC_X6_Y4_N1
\Add5~30\ : maxv_lcell
-- Equation(s):
-- \Add5~30_combout\ = (count_dha(1) $ ((\Add5~27\)))
-- \Add5~32\ = CARRY(((!\Add5~27\) # (!count_dha(1))))
-- \Add5~32COUT1_102\ = CARRY(((!\Add5~27COUT1_101\) # (!count_dha(1))))

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
	datab => count_dha(1),
	cin0 => \Add5~27\,
	cin1 => \Add5~27COUT1_101\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~30_combout\,
	cout0 => \Add5~32\,
	cout1 => \Add5~32COUT1_102\);

-- Location: LC_X8_Y4_N9
\count_dha[1]\ : maxv_lcell
-- Equation(s):
-- count_dha(1) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \count_dha[9]~10_combout\, \Add5~30_combout\, , , VCC)

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
	datac => \Add5~30_combout\,
	aclr => GND,
	sload => VCC,
	ena => \count_dha[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_dha(1));

-- Location: LC_X6_Y4_N2
\Add5~20\ : maxv_lcell
-- Equation(s):
-- \Add5~20_combout\ = (count_dha(2) $ ((!\Add5~32\)))
-- \Add5~22\ = CARRY(((count_dha(2) & !\Add5~32\)))
-- \Add5~22COUT1_103\ = CARRY(((count_dha(2) & !\Add5~32COUT1_102\)))

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
	datab => count_dha(2),
	cin0 => \Add5~32\,
	cin1 => \Add5~32COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~20_combout\,
	cout0 => \Add5~22\,
	cout1 => \Add5~22COUT1_103\);

-- Location: LC_X8_Y4_N2
\count_dha[2]\ : maxv_lcell
-- Equation(s):
-- count_dha(2) = DFFEAS(((\Add5~20_combout\ & ((!\Equal5~5_combout\) # (!\Equal5~0\)))), GLOBAL(\clk~combout\), VCC, , \count_dha[9]~10_combout\, , , , )

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
	clk => \clk~combout\,
	datab => \Equal5~0\,
	datac => \Equal5~5_combout\,
	datad => \Add5~20_combout\,
	aclr => GND,
	ena => \count_dha[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_dha(2));

-- Location: LC_X6_Y4_N3
\Add5~35\ : maxv_lcell
-- Equation(s):
-- \Add5~35_combout\ = (count_dha(3) $ ((\Add5~22\)))
-- \Add5~37\ = CARRY(((!\Add5~22\) # (!count_dha(3))))
-- \Add5~37COUT1_104\ = CARRY(((!\Add5~22COUT1_103\) # (!count_dha(3))))

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
	datab => count_dha(3),
	cin0 => \Add5~22\,
	cin1 => \Add5~22COUT1_103\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~35_combout\,
	cout0 => \Add5~37\,
	cout1 => \Add5~37COUT1_104\);

-- Location: LC_X8_Y4_N3
\count_dha[3]\ : maxv_lcell
-- Equation(s):
-- count_dha(3) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \count_dha[9]~10_combout\, \Add5~35_combout\, , , VCC)

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
	datac => \Add5~35_combout\,
	aclr => GND,
	sload => VCC,
	ena => \count_dha[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_dha(3));

-- Location: LC_X6_Y4_N4
\Add5~45\ : maxv_lcell
-- Equation(s):
-- \Add5~45_combout\ = count_dha(4) $ ((((!\Add5~37\))))
-- \Add5~47\ = CARRY((count_dha(4) & ((!\Add5~37COUT1_104\))))

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
	dataa => count_dha(4),
	cin0 => \Add5~37\,
	cin1 => \Add5~37COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~45_combout\,
	cout => \Add5~47\);

-- Location: LC_X9_Y4_N1
\count_dha[4]\ : maxv_lcell
-- Equation(s):
-- \Equal5~2\ = (!count_dha(7) & (!count_dha(6) & (!count_dha[4] & count_dha(5))))
-- count_dha(4) = DFFEAS(\Equal5~2\, GLOBAL(\clk~combout\), VCC, , \count_dha[9]~10_combout\, \Add5~45_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => count_dha(7),
	datab => count_dha(6),
	datac => \Add5~45_combout\,
	datad => count_dha(5),
	aclr => GND,
	sload => VCC,
	ena => \count_dha[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal5~2\,
	regout => count_dha(4));

-- Location: LC_X6_Y4_N8
\Add5~65\ : maxv_lcell
-- Equation(s):
-- \Add5~65_combout\ = (count_dha(8) $ ((!(!\Add5~47\ & \Add5~57\) # (\Add5~47\ & \Add5~57COUT1_107\))))
-- \Add5~67\ = CARRY(((count_dha(8) & !\Add5~57\)))
-- \Add5~67COUT1_108\ = CARRY(((count_dha(8) & !\Add5~57COUT1_107\)))

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
	datab => count_dha(8),
	cin => \Add5~47\,
	cin0 => \Add5~57\,
	cin1 => \Add5~57COUT1_107\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~65_combout\,
	cout0 => \Add5~67\,
	cout1 => \Add5~67COUT1_108\);

-- Location: LC_X7_Y4_N0
\Add5~60\ : maxv_lcell
-- Equation(s):
-- \Add5~60_combout\ = count_dha(10) $ ((((!\Add5~72\))))
-- \Add5~62\ = CARRY((count_dha(10) & ((!\Add5~72\))))
-- \Add5~62COUT1_109\ = CARRY((count_dha(10) & ((!\Add5~72\))))

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
	dataa => count_dha(10),
	cin => \Add5~72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~60_combout\,
	cout0 => \Add5~62\,
	cout1 => \Add5~62COUT1_109\);

-- Location: LC_X7_Y4_N1
\Add5~75\ : maxv_lcell
-- Equation(s):
-- \Add5~75_combout\ = (count_dha(11) $ (((!\Add5~72\ & \Add5~62\) # (\Add5~72\ & \Add5~62COUT1_109\))))
-- \Add5~77\ = CARRY(((!\Add5~62\) # (!count_dha(11))))
-- \Add5~77COUT1_110\ = CARRY(((!\Add5~62COUT1_109\) # (!count_dha(11))))

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
	datab => count_dha(11),
	cin => \Add5~72\,
	cin0 => \Add5~62\,
	cin1 => \Add5~62COUT1_109\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~75_combout\,
	cout0 => \Add5~77\,
	cout1 => \Add5~77COUT1_110\);

-- Location: LC_X9_Y4_N8
\count_dha[11]\ : maxv_lcell
-- Equation(s):
-- count_dha(11) = DFFEAS((((\Add5~75_combout\))), GLOBAL(\clk~combout\), VCC, , \count_dha[9]~10_combout\, , , , )

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
	datad => \Add5~75_combout\,
	aclr => GND,
	ena => \count_dha[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_dha(11));

-- Location: LC_X9_Y4_N5
\count_dha[8]\ : maxv_lcell
-- Equation(s):
-- \Equal5~3\ = (count_dha(10) & (!count_dha(9) & (!count_dha[8] & !count_dha(11))))
-- count_dha(8) = DFFEAS(\Equal5~3\, GLOBAL(\clk~combout\), VCC, , \count_dha[9]~10_combout\, \Add5~65_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => count_dha(10),
	datab => count_dha(9),
	datac => \Add5~65_combout\,
	datad => count_dha(11),
	aclr => GND,
	sload => VCC,
	ena => \count_dha[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal5~3\,
	regout => count_dha(8));

-- Location: LC_X6_Y4_N9
\Add5~70\ : maxv_lcell
-- Equation(s):
-- \Add5~70_combout\ = (count_dha(9) $ (((!\Add5~47\ & \Add5~67\) # (\Add5~47\ & \Add5~67COUT1_108\))))
-- \Add5~72\ = CARRY(((!\Add5~67COUT1_108\) # (!count_dha(9))))

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
	datab => count_dha(9),
	cin => \Add5~47\,
	cin0 => \Add5~67\,
	cin1 => \Add5~67COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~70_combout\,
	cout => \Add5~72\);

-- Location: LC_X9_Y4_N9
\count_dha[9]\ : maxv_lcell
-- Equation(s):
-- count_dha(9) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \count_dha[9]~10_combout\, \Add5~70_combout\, , , VCC)

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
	datac => \Add5~70_combout\,
	aclr => GND,
	sload => VCC,
	ena => \count_dha[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_dha(9));

-- Location: LC_X9_Y4_N4
\count_dha[10]\ : maxv_lcell
-- Equation(s):
-- count_dha(10) = DFFEAS(((\Add5~60_combout\ & ((!\Equal5~5_combout\) # (!\Equal5~0\)))), GLOBAL(\clk~combout\), VCC, , \count_dha[9]~10_combout\, , , , )

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
	clk => \clk~combout\,
	datab => \Equal5~0\,
	datac => \Equal5~5_combout\,
	datad => \Add5~60_combout\,
	aclr => GND,
	ena => \count_dha[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_dha(10));

-- Location: LC_X7_Y4_N5
\Add5~95\ : maxv_lcell
-- Equation(s):
-- \Add5~95_combout\ = (count_dha(15) $ ((\Add5~92\)))
-- \Add5~97\ = CARRY(((!\Add5~92\) # (!count_dha(15))))
-- \Add5~97COUT1_113\ = CARRY(((!\Add5~92\) # (!count_dha(15))))

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
	datab => count_dha(15),
	cin => \Add5~92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~95_combout\,
	cout0 => \Add5~97\,
	cout1 => \Add5~97COUT1_113\);

-- Location: LC_X8_Y4_N8
\count_dha[15]\ : maxv_lcell
-- Equation(s):
-- count_dha(15) = DFFEAS(((\Add5~95_combout\ & ((!\Equal5~5_combout\) # (!\Equal5~0\)))), GLOBAL(\clk~combout\), VCC, , \count_dha[9]~10_combout\, , , , )

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
	clk => \clk~combout\,
	datab => \Equal5~0\,
	datac => \Equal5~5_combout\,
	datad => \Add5~95_combout\,
	aclr => GND,
	ena => \count_dha[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_dha(15));

-- Location: LC_X7_Y4_N2
\Add5~80\ : maxv_lcell
-- Equation(s):
-- \Add5~80_combout\ = count_dha(12) $ ((((!(!\Add5~72\ & \Add5~77\) # (\Add5~72\ & \Add5~77COUT1_110\)))))
-- \Add5~82\ = CARRY((count_dha(12) & ((!\Add5~77\))))
-- \Add5~82COUT1_111\ = CARRY((count_dha(12) & ((!\Add5~77COUT1_110\))))

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
	dataa => count_dha(12),
	cin => \Add5~72\,
	cin0 => \Add5~77\,
	cin1 => \Add5~77COUT1_110\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~80_combout\,
	cout0 => \Add5~82\,
	cout1 => \Add5~82COUT1_111\);

-- Location: LC_X8_Y4_N7
\count_dha[12]\ : maxv_lcell
-- Equation(s):
-- count_dha(12) = DFFEAS(((\Add5~80_combout\ & ((!\Equal5~5_combout\) # (!\Equal5~0\)))), GLOBAL(\clk~combout\), VCC, , \count_dha[9]~10_combout\, , , , )

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
	clk => \clk~combout\,
	datab => \Equal5~0\,
	datac => \Equal5~5_combout\,
	datad => \Add5~80_combout\,
	aclr => GND,
	ena => \count_dha[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_dha(12));

-- Location: LC_X7_Y4_N3
\Add5~85\ : maxv_lcell
-- Equation(s):
-- \Add5~85_combout\ = count_dha(13) $ (((((!\Add5~72\ & \Add5~82\) # (\Add5~72\ & \Add5~82COUT1_111\)))))
-- \Add5~87\ = CARRY(((!\Add5~82\)) # (!count_dha(13)))
-- \Add5~87COUT1_112\ = CARRY(((!\Add5~82COUT1_111\)) # (!count_dha(13)))

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
	dataa => count_dha(13),
	cin => \Add5~72\,
	cin0 => \Add5~82\,
	cin1 => \Add5~82COUT1_111\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~85_combout\,
	cout0 => \Add5~87\,
	cout1 => \Add5~87COUT1_112\);

-- Location: LC_X8_Y4_N1
\count_dha[13]\ : maxv_lcell
-- Equation(s):
-- count_dha(13) = DFFEAS(((\Add5~85_combout\ & ((!\Equal5~5_combout\) # (!\Equal5~0\)))), GLOBAL(\clk~combout\), VCC, , \count_dha[9]~10_combout\, , , , )

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
	clk => \clk~combout\,
	datab => \Equal5~0\,
	datac => \Equal5~5_combout\,
	datad => \Add5~85_combout\,
	aclr => GND,
	ena => \count_dha[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_dha(13));

-- Location: LC_X8_Y4_N6
\Equal5~4\ : maxv_lcell
-- Equation(s):
-- \Equal5~4_combout\ = (count_dha(15) & (count_dha(12) & (count_dha(14) & count_dha(13))))

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
	dataa => count_dha(15),
	datab => count_dha(12),
	datac => count_dha(14),
	datad => count_dha(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal5~4_combout\);

-- Location: LC_X9_Y4_N2
\Equal5~5\ : maxv_lcell
-- Equation(s):
-- \Equal5~5_combout\ = (\Equal5~3\ & (\Equal5~2\ & (\Equal5~4_combout\ & \Equal5~1\)))

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
	dataa => \Equal5~3\,
	datab => \Equal5~2\,
	datac => \Equal5~4_combout\,
	datad => \Equal5~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal5~5_combout\);

-- Location: LC_X7_Y4_N4
\Add5~90\ : maxv_lcell
-- Equation(s):
-- \Add5~90_combout\ = (count_dha(14) $ ((!(!\Add5~72\ & \Add5~87\) # (\Add5~72\ & \Add5~87COUT1_112\))))
-- \Add5~92\ = CARRY(((count_dha(14) & !\Add5~87COUT1_112\)))

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
	datab => count_dha(14),
	cin => \Add5~72\,
	cin0 => \Add5~87\,
	cin1 => \Add5~87COUT1_112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~90_combout\,
	cout => \Add5~92\);

-- Location: LC_X8_Y4_N5
\count_dha[14]\ : maxv_lcell
-- Equation(s):
-- count_dha(14) = DFFEAS(((\Add5~90_combout\ & ((!\Equal5~5_combout\) # (!\Equal5~0\)))), GLOBAL(\clk~combout\), VCC, , \count_dha[9]~10_combout\, , , , )

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
	clk => \clk~combout\,
	datab => \Equal5~0\,
	datac => \Equal5~5_combout\,
	datad => \Add5~90_combout\,
	aclr => GND,
	ena => \count_dha[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_dha(14));

-- Location: LC_X7_Y4_N6
\Add5~0\ : maxv_lcell
-- Equation(s):
-- \Add5~0_combout\ = (count_dha(16) $ ((!(!\Add5~92\ & \Add5~97\) # (\Add5~92\ & \Add5~97COUT1_113\))))
-- \Add5~2\ = CARRY(((count_dha(16) & !\Add5~97\)))
-- \Add5~2COUT1_114\ = CARRY(((count_dha(16) & !\Add5~97COUT1_113\)))

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
	datab => count_dha(16),
	cin => \Add5~92\,
	cin0 => \Add5~97\,
	cin1 => \Add5~97COUT1_113\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~0_combout\,
	cout0 => \Add5~2\,
	cout1 => \Add5~2COUT1_114\);

-- Location: LC_X10_Y4_N5
\count_dha[16]\ : maxv_lcell
-- Equation(s):
-- \Equal5~0\ = (!count_dha(19) & (!count_dha(18) & (!count_dha[16] & !count_dha(17))))
-- count_dha(16) = DFFEAS(\Equal5~0\, GLOBAL(\clk~combout\), VCC, , \count_dha[9]~10_combout\, \Add5~0_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => count_dha(19),
	datab => count_dha(18),
	datac => \Add5~0_combout\,
	datad => count_dha(17),
	aclr => GND,
	sload => VCC,
	ena => \count_dha[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal5~0\,
	regout => count_dha(16));

-- Location: LC_X7_Y4_N7
\Add5~5\ : maxv_lcell
-- Equation(s):
-- \Add5~5_combout\ = (count_dha(17) $ (((!\Add5~92\ & \Add5~2\) # (\Add5~92\ & \Add5~2COUT1_114\))))
-- \Add5~7\ = CARRY(((!\Add5~2\) # (!count_dha(17))))
-- \Add5~7COUT1_115\ = CARRY(((!\Add5~2COUT1_114\) # (!count_dha(17))))

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
	datab => count_dha(17),
	cin => \Add5~92\,
	cin0 => \Add5~2\,
	cin1 => \Add5~2COUT1_114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~5_combout\,
	cout0 => \Add5~7\,
	cout1 => \Add5~7COUT1_115\);

-- Location: LC_X10_Y4_N1
\count_dha[17]\ : maxv_lcell
-- Equation(s):
-- count_dha(17) = DFFEAS((((\Add5~5_combout\))), GLOBAL(\clk~combout\), VCC, , \count_dha[9]~10_combout\, , , , )

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
	datad => \Add5~5_combout\,
	aclr => GND,
	ena => \count_dha[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_dha(17));

-- Location: LC_X7_Y4_N8
\Add5~10\ : maxv_lcell
-- Equation(s):
-- \Add5~10_combout\ = (count_dha(18) $ ((!(!\Add5~92\ & \Add5~7\) # (\Add5~92\ & \Add5~7COUT1_115\))))
-- \Add5~12\ = CARRY(((count_dha(18) & !\Add5~7\)))
-- \Add5~12COUT1_116\ = CARRY(((count_dha(18) & !\Add5~7COUT1_115\)))

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
	datab => count_dha(18),
	cin => \Add5~92\,
	cin0 => \Add5~7\,
	cin1 => \Add5~7COUT1_115\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~10_combout\,
	cout0 => \Add5~12\,
	cout1 => \Add5~12COUT1_116\);

-- Location: LC_X10_Y4_N2
\count_dha[18]\ : maxv_lcell
-- Equation(s):
-- count_dha(18) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \count_dha[9]~10_combout\, \Add5~10_combout\, , , VCC)

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
	datac => \Add5~10_combout\,
	aclr => GND,
	sload => VCC,
	ena => \count_dha[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_dha(18));

-- Location: LC_X7_Y4_N9
\Add5~15\ : maxv_lcell
-- Equation(s):
-- \Add5~15_combout\ = (((!\Add5~92\ & \Add5~12\) # (\Add5~92\ & \Add5~12COUT1_116\) $ (count_dha(19))))

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
	datad => count_dha(19),
	cin => \Add5~92\,
	cin0 => \Add5~12\,
	cin1 => \Add5~12COUT1_116\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~15_combout\);

-- Location: LC_X10_Y4_N3
\count_dha[19]\ : maxv_lcell
-- Equation(s):
-- count_dha(19) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \count_dha[9]~10_combout\, \Add5~15_combout\, , , VCC)

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
	datac => \Add5~15_combout\,
	aclr => GND,
	sload => VCC,
	ena => \count_dha[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_dha(19));

-- Location: LC_X9_Y4_N0
dha : maxv_lcell
-- Equation(s):
-- \dha~0\ = (dha $ (((\Equal5~0\ & \Equal5~5_combout\))))

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
	clk => \clk~combout\,
	datab => \Equal5~0\,
	datad => \Equal5~5_combout\,
	aclr => GND,
	ena => \count_dha[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dha~0\,
	regout => \dha~regout\);

-- Location: LC_X7_Y5_N0
\Add6~25\ : maxv_lcell
-- Equation(s):
-- \Add6~25_combout\ = ((!count_ni(0)))
-- \Add6~27\ = CARRY(((count_ni(0))))
-- \Add6~27COUT1_101\ = CARRY(((count_ni(0))))

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
	datab => count_ni(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~25_combout\,
	cout0 => \Add6~27\,
	cout1 => \Add6~27COUT1_101\);

-- Location: LC_X9_Y6_N5
\count_ni[9]~9\ : maxv_lcell
-- Equation(s):
-- \count_ni[9]~9_combout\ = (\switch~combout\(6) & (!\switch~combout\(5) & (\count_pa[9]~0_combout\ & !\switch~combout\(4))))

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
	dataa => \switch~combout\(6),
	datab => \switch~combout\(5),
	datac => \count_pa[9]~0_combout\,
	datad => \switch~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \count_ni[9]~9_combout\);

-- Location: LC_X8_Y6_N6
\count_ni[0]\ : maxv_lcell
-- Equation(s):
-- \Equal6~1\ = (!count_ni(3) & (!count_ni(1) & (!count_ni[0] & count_ni(2))))
-- count_ni(0) = DFFEAS(\Equal6~1\, GLOBAL(\clk~combout\), VCC, , \count_ni[9]~9_combout\, \Add6~25_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => count_ni(3),
	datab => count_ni(1),
	datac => \Add6~25_combout\,
	datad => count_ni(2),
	aclr => GND,
	sload => VCC,
	ena => \count_ni[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal6~1\,
	regout => count_ni(0));

-- Location: LC_X7_Y5_N1
\Add6~30\ : maxv_lcell
-- Equation(s):
-- \Add6~30_combout\ = count_ni(1) $ ((((\Add6~27\))))
-- \Add6~32\ = CARRY(((!\Add6~27\)) # (!count_ni(1)))
-- \Add6~32COUT1_102\ = CARRY(((!\Add6~27COUT1_101\)) # (!count_ni(1)))

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
	dataa => count_ni(1),
	cin0 => \Add6~27\,
	cin1 => \Add6~27COUT1_101\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~30_combout\,
	cout0 => \Add6~32\,
	cout1 => \Add6~32COUT1_102\);

-- Location: LC_X8_Y6_N1
\count_ni[1]\ : maxv_lcell
-- Equation(s):
-- count_ni(1) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \count_ni[9]~9_combout\, \Add6~30_combout\, , , VCC)

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
	datac => \Add6~30_combout\,
	aclr => GND,
	sload => VCC,
	ena => \count_ni[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_ni(1));

-- Location: LC_X7_Y5_N2
\Add6~20\ : maxv_lcell
-- Equation(s):
-- \Add6~20_combout\ = (count_ni(2) $ ((!\Add6~32\)))
-- \Add6~22\ = CARRY(((count_ni(2) & !\Add6~32\)))
-- \Add6~22COUT1_103\ = CARRY(((count_ni(2) & !\Add6~32COUT1_102\)))

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
	datab => count_ni(2),
	cin0 => \Add6~32\,
	cin1 => \Add6~32COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~20_combout\,
	cout0 => \Add6~22\,
	cout1 => \Add6~22COUT1_103\);

-- Location: LC_X8_Y6_N9
\count_ni[2]\ : maxv_lcell
-- Equation(s):
-- count_ni(2) = DFFEAS(((\Add6~20_combout\ & ((!\Equal6~0\) # (!\Equal6~5_combout\)))), GLOBAL(\clk~combout\), VCC, , \count_ni[9]~9_combout\, , , , )

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
	clk => \clk~combout\,
	dataa => \Equal6~5_combout\,
	datac => \Add6~20_combout\,
	datad => \Equal6~0\,
	aclr => GND,
	ena => \count_ni[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_ni(2));

-- Location: LC_X7_Y5_N3
\Add6~35\ : maxv_lcell
-- Equation(s):
-- \Add6~35_combout\ = (count_ni(3) $ ((\Add6~22\)))
-- \Add6~37\ = CARRY(((!\Add6~22\) # (!count_ni(3))))
-- \Add6~37COUT1_104\ = CARRY(((!\Add6~22COUT1_103\) # (!count_ni(3))))

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
	datab => count_ni(3),
	cin0 => \Add6~22\,
	cin1 => \Add6~22COUT1_103\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~35_combout\,
	cout0 => \Add6~37\,
	cout1 => \Add6~37COUT1_104\);

-- Location: LC_X8_Y6_N7
\count_ni[3]\ : maxv_lcell
-- Equation(s):
-- count_ni(3) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \count_ni[9]~9_combout\, \Add6~35_combout\, , , VCC)

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
	datac => \Add6~35_combout\,
	aclr => GND,
	sload => VCC,
	ena => \count_ni[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_ni(3));

-- Location: LC_X7_Y5_N5
\Add6~45\ : maxv_lcell
-- Equation(s):
-- \Add6~45_combout\ = (count_ni(5) $ ((\Add6~42\)))
-- \Add6~47\ = CARRY(((!\Add6~42\) # (!count_ni(5))))
-- \Add6~47COUT1_105\ = CARRY(((!\Add6~42\) # (!count_ni(5))))

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
	datab => count_ni(5),
	cin => \Add6~42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~45_combout\,
	cout0 => \Add6~47\,
	cout1 => \Add6~47COUT1_105\);

-- Location: LC_X9_Y5_N8
\count_ni[5]\ : maxv_lcell
-- Equation(s):
-- count_ni(5) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \count_ni[9]~9_combout\, \Add6~45_combout\, , , VCC)

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
	datac => \Add6~45_combout\,
	aclr => GND,
	sload => VCC,
	ena => \count_ni[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_ni(5));

-- Location: LC_X7_Y5_N6
\Add6~50\ : maxv_lcell
-- Equation(s):
-- \Add6~50_combout\ = (count_ni(6) $ ((!(!\Add6~42\ & \Add6~47\) # (\Add6~42\ & \Add6~47COUT1_105\))))
-- \Add6~52\ = CARRY(((count_ni(6) & !\Add6~47\)))
-- \Add6~52COUT1_106\ = CARRY(((count_ni(6) & !\Add6~47COUT1_105\)))

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
	datab => count_ni(6),
	cin => \Add6~42\,
	cin0 => \Add6~47\,
	cin1 => \Add6~47COUT1_105\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~50_combout\,
	cout0 => \Add6~52\,
	cout1 => \Add6~52COUT1_106\);

-- Location: LC_X9_Y5_N9
\count_ni[6]\ : maxv_lcell
-- Equation(s):
-- count_ni(6) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \count_ni[9]~9_combout\, \Add6~50_combout\, , , VCC)

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
	datac => \Add6~50_combout\,
	aclr => GND,
	sload => VCC,
	ena => \count_ni[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_ni(6));

-- Location: LC_X7_Y5_N4
\Add6~40\ : maxv_lcell
-- Equation(s):
-- \Add6~40_combout\ = (count_ni(4) $ ((!\Add6~37\)))
-- \Add6~42\ = CARRY(((count_ni(4) & !\Add6~37COUT1_104\)))

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
	datab => count_ni(4),
	cin0 => \Add6~37\,
	cin1 => \Add6~37COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~40_combout\,
	cout => \Add6~42\);

-- Location: LC_X7_Y5_N7
\Add6~55\ : maxv_lcell
-- Equation(s):
-- \Add6~55_combout\ = (count_ni(7) $ (((!\Add6~42\ & \Add6~52\) # (\Add6~42\ & \Add6~52COUT1_106\))))
-- \Add6~57\ = CARRY(((!\Add6~52\) # (!count_ni(7))))
-- \Add6~57COUT1_107\ = CARRY(((!\Add6~52COUT1_106\) # (!count_ni(7))))

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
	datab => count_ni(7),
	cin => \Add6~42\,
	cin0 => \Add6~52\,
	cin1 => \Add6~52COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~55_combout\,
	cout0 => \Add6~57\,
	cout1 => \Add6~57COUT1_107\);

-- Location: LC_X9_Y5_N3
\count_ni[7]\ : maxv_lcell
-- Equation(s):
-- count_ni(7) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \count_ni[9]~9_combout\, \Add6~55_combout\, , , VCC)

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
	datac => \Add6~55_combout\,
	aclr => GND,
	sload => VCC,
	ena => \count_ni[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_ni(7));

-- Location: LC_X9_Y5_N5
\count_ni[4]\ : maxv_lcell
-- Equation(s):
-- \Equal6~2\ = (!count_ni(5) & (!count_ni(6) & (!count_ni[4] & !count_ni(7))))
-- count_ni(4) = DFFEAS(\Equal6~2\, GLOBAL(\clk~combout\), VCC, , \count_ni[9]~9_combout\, \Add6~40_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => count_ni(5),
	datab => count_ni(6),
	datac => \Add6~40_combout\,
	datad => count_ni(7),
	aclr => GND,
	sload => VCC,
	ena => \count_ni[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal6~2\,
	regout => count_ni(4));

-- Location: LC_X7_Y5_N8
\Add6~60\ : maxv_lcell
-- Equation(s):
-- \Add6~60_combout\ = (count_ni(8) $ ((!(!\Add6~42\ & \Add6~57\) # (\Add6~42\ & \Add6~57COUT1_107\))))
-- \Add6~62\ = CARRY(((count_ni(8) & !\Add6~57\)))
-- \Add6~62COUT1_108\ = CARRY(((count_ni(8) & !\Add6~57COUT1_107\)))

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
	datab => count_ni(8),
	cin => \Add6~42\,
	cin0 => \Add6~57\,
	cin1 => \Add6~57COUT1_107\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~60_combout\,
	cout0 => \Add6~62\,
	cout1 => \Add6~62COUT1_108\);

-- Location: LC_X8_Y6_N5
\count_ni[8]\ : maxv_lcell
-- Equation(s):
-- count_ni(8) = DFFEAS(((\Add6~60_combout\ & ((!\Equal6~5_combout\) # (!\Equal6~0\)))), GLOBAL(\clk~combout\), VCC, , \count_ni[9]~9_combout\, , , , )

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
	clk => \clk~combout\,
	datab => \Equal6~0\,
	datac => \Equal6~5_combout\,
	datad => \Add6~60_combout\,
	aclr => GND,
	ena => \count_ni[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_ni(8));

-- Location: LC_X7_Y5_N9
\Add6~70\ : maxv_lcell
-- Equation(s):
-- \Add6~70_combout\ = count_ni(9) $ (((((!\Add6~42\ & \Add6~62\) # (\Add6~42\ & \Add6~62COUT1_108\)))))
-- \Add6~72\ = CARRY(((!\Add6~62COUT1_108\)) # (!count_ni(9)))

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
	dataa => count_ni(9),
	cin => \Add6~42\,
	cin0 => \Add6~62\,
	cin1 => \Add6~62COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~70_combout\,
	cout => \Add6~72\);

-- Location: LC_X8_Y5_N0
\Add6~75\ : maxv_lcell
-- Equation(s):
-- \Add6~75_combout\ = count_ni(10) $ ((((!\Add6~72\))))
-- \Add6~77\ = CARRY((count_ni(10) & ((!\Add6~72\))))
-- \Add6~77COUT1_109\ = CARRY((count_ni(10) & ((!\Add6~72\))))

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
	dataa => count_ni(10),
	cin => \Add6~72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~75_combout\,
	cout0 => \Add6~77\,
	cout1 => \Add6~77COUT1_109\);

-- Location: LC_X8_Y5_N1
\Add6~65\ : maxv_lcell
-- Equation(s):
-- \Add6~65_combout\ = (count_ni(11) $ (((!\Add6~72\ & \Add6~77\) # (\Add6~72\ & \Add6~77COUT1_109\))))
-- \Add6~67\ = CARRY(((!\Add6~77\) # (!count_ni(11))))
-- \Add6~67COUT1_110\ = CARRY(((!\Add6~77COUT1_109\) # (!count_ni(11))))

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
	datab => count_ni(11),
	cin => \Add6~72\,
	cin0 => \Add6~77\,
	cin1 => \Add6~77COUT1_109\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~65_combout\,
	cout0 => \Add6~67\,
	cout1 => \Add6~67COUT1_110\);

-- Location: LC_X8_Y6_N8
\count_ni[11]\ : maxv_lcell
-- Equation(s):
-- count_ni(11) = DFFEAS(((\Add6~65_combout\ & ((!\Equal6~5_combout\) # (!\Equal6~0\)))), GLOBAL(\clk~combout\), VCC, , \count_ni[9]~9_combout\, , , , )

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
	clk => \clk~combout\,
	datab => \Equal6~0\,
	datac => \Equal6~5_combout\,
	datad => \Add6~65_combout\,
	aclr => GND,
	ena => \count_ni[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_ni(11));

-- Location: LC_X8_Y6_N2
\count_ni[9]\ : maxv_lcell
-- Equation(s):
-- \Equal6~3\ = (count_ni(8) & (!count_ni(10) & (!count_ni[9] & count_ni(11))))
-- count_ni(9) = DFFEAS(\Equal6~3\, GLOBAL(\clk~combout\), VCC, , \count_ni[9]~9_combout\, \Add6~70_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => count_ni(8),
	datab => count_ni(10),
	datac => \Add6~70_combout\,
	datad => count_ni(11),
	aclr => GND,
	sload => VCC,
	ena => \count_ni[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal6~3\,
	regout => count_ni(9));

-- Location: LC_X8_Y6_N0
\count_ni[10]\ : maxv_lcell
-- Equation(s):
-- count_ni(10) = DFFEAS((((\Add6~75_combout\))), GLOBAL(\clk~combout\), VCC, , \count_ni[9]~9_combout\, , , , )

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
	datad => \Add6~75_combout\,
	aclr => GND,
	ena => \count_ni[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_ni(10));

-- Location: LC_X8_Y5_N2
\Add6~80\ : maxv_lcell
-- Equation(s):
-- \Add6~80_combout\ = count_ni(12) $ ((((!(!\Add6~72\ & \Add6~67\) # (\Add6~72\ & \Add6~67COUT1_110\)))))
-- \Add6~82\ = CARRY((count_ni(12) & ((!\Add6~67\))))
-- \Add6~82COUT1_111\ = CARRY((count_ni(12) & ((!\Add6~67COUT1_110\))))

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
	dataa => count_ni(12),
	cin => \Add6~72\,
	cin0 => \Add6~67\,
	cin1 => \Add6~67COUT1_110\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~80_combout\,
	cout0 => \Add6~82\,
	cout1 => \Add6~82COUT1_111\);

-- Location: LC_X7_Y6_N0
\count_ni[12]\ : maxv_lcell
-- Equation(s):
-- count_ni(12) = DFFEAS(((\Add6~80_combout\ & ((!\Equal6~0\) # (!\Equal6~5_combout\)))), GLOBAL(\clk~combout\), VCC, , \count_ni[9]~9_combout\, , , , )

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
	clk => \clk~combout\,
	dataa => \Equal6~5_combout\,
	datac => \Equal6~0\,
	datad => \Add6~80_combout\,
	aclr => GND,
	ena => \count_ni[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_ni(12));

-- Location: LC_X8_Y5_N5
\Add6~90\ : maxv_lcell
-- Equation(s):
-- \Add6~90_combout\ = (count_ni(15) $ ((\Add6~87\)))
-- \Add6~92\ = CARRY(((!\Add6~87\) # (!count_ni(15))))
-- \Add6~92COUT1_113\ = CARRY(((!\Add6~87\) # (!count_ni(15))))

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
	datab => count_ni(15),
	cin => \Add6~87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~90_combout\,
	cout0 => \Add6~92\,
	cout1 => \Add6~92COUT1_113\);

-- Location: LC_X7_Y6_N2
\count_ni[15]\ : maxv_lcell
-- Equation(s):
-- count_ni(15) = DFFEAS(((\Add6~90_combout\ & ((!\Equal6~0\) # (!\Equal6~5_combout\)))), GLOBAL(\clk~combout\), VCC, , \count_ni[9]~9_combout\, , , , )

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
	clk => \clk~combout\,
	dataa => \Equal6~5_combout\,
	datac => \Equal6~0\,
	datad => \Add6~90_combout\,
	aclr => GND,
	ena => \count_ni[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_ni(15));

-- Location: LC_X7_Y6_N8
\count_ni[13]\ : maxv_lcell
-- Equation(s):
-- \Equal6~4\ = (count_ni(14) & (count_ni(12) & (!count_ni[13] & count_ni(15))))
-- count_ni(13) = DFFEAS(\Equal6~4\, GLOBAL(\clk~combout\), VCC, , \count_ni[9]~9_combout\, \Add6~95_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => count_ni(14),
	datab => count_ni(12),
	datac => \Add6~95_combout\,
	datad => count_ni(15),
	aclr => GND,
	sload => VCC,
	ena => \count_ni[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal6~4\,
	regout => count_ni(13));

-- Location: LC_X8_Y5_N3
\Add6~95\ : maxv_lcell
-- Equation(s):
-- \Add6~95_combout\ = count_ni(13) $ (((((!\Add6~72\ & \Add6~82\) # (\Add6~72\ & \Add6~82COUT1_111\)))))
-- \Add6~97\ = CARRY(((!\Add6~82\)) # (!count_ni(13)))
-- \Add6~97COUT1_112\ = CARRY(((!\Add6~82COUT1_111\)) # (!count_ni(13)))

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
	dataa => count_ni(13),
	cin => \Add6~72\,
	cin0 => \Add6~82\,
	cin1 => \Add6~82COUT1_111\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~95_combout\,
	cout0 => \Add6~97\,
	cout1 => \Add6~97COUT1_112\);

-- Location: LC_X8_Y6_N3
\Equal6~5\ : maxv_lcell
-- Equation(s):
-- \Equal6~5_combout\ = (\Equal6~1\ & (\Equal6~3\ & (\Equal6~4\ & \Equal6~2\)))

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
	dataa => \Equal6~1\,
	datab => \Equal6~3\,
	datac => \Equal6~4\,
	datad => \Equal6~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal6~5_combout\);

-- Location: LC_X8_Y5_N4
\Add6~85\ : maxv_lcell
-- Equation(s):
-- \Add6~85_combout\ = (count_ni(14) $ ((!(!\Add6~72\ & \Add6~97\) # (\Add6~72\ & \Add6~97COUT1_112\))))
-- \Add6~87\ = CARRY(((count_ni(14) & !\Add6~97COUT1_112\)))

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
	datab => count_ni(14),
	cin => \Add6~72\,
	cin0 => \Add6~97\,
	cin1 => \Add6~97COUT1_112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~85_combout\,
	cout => \Add6~87\);

-- Location: LC_X7_Y6_N5
\count_ni[14]\ : maxv_lcell
-- Equation(s):
-- count_ni(14) = DFFEAS(((\Add6~85_combout\ & ((!\Equal6~0\) # (!\Equal6~5_combout\)))), GLOBAL(\clk~combout\), VCC, , \count_ni[9]~9_combout\, , , , )

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
	clk => \clk~combout\,
	dataa => \Equal6~5_combout\,
	datac => \Equal6~0\,
	datad => \Add6~85_combout\,
	aclr => GND,
	ena => \count_ni[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_ni(14));

-- Location: LC_X8_Y5_N6
\Add6~0\ : maxv_lcell
-- Equation(s):
-- \Add6~0_combout\ = (count_ni(16) $ ((!(!\Add6~87\ & \Add6~92\) # (\Add6~87\ & \Add6~92COUT1_113\))))
-- \Add6~2\ = CARRY(((count_ni(16) & !\Add6~92\)))
-- \Add6~2COUT1_114\ = CARRY(((count_ni(16) & !\Add6~92COUT1_113\)))

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
	datab => count_ni(16),
	cin => \Add6~87\,
	cin0 => \Add6~92\,
	cin1 => \Add6~92COUT1_113\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~0_combout\,
	cout0 => \Add6~2\,
	cout1 => \Add6~2COUT1_114\);

-- Location: LC_X7_Y6_N4
\count_ni[16]\ : maxv_lcell
-- Equation(s):
-- \Equal6~0\ = (!count_ni(19) & (!count_ni(17) & (!count_ni[16] & !count_ni(18))))
-- count_ni(16) = DFFEAS(\Equal6~0\, GLOBAL(\clk~combout\), VCC, , \count_ni[9]~9_combout\, \Add6~0_combout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => count_ni(19),
	datab => count_ni(17),
	datac => \Add6~0_combout\,
	datad => count_ni(18),
	aclr => GND,
	sload => VCC,
	ena => \count_ni[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal6~0\,
	regout => count_ni(16));

-- Location: LC_X8_Y5_N7
\Add6~5\ : maxv_lcell
-- Equation(s):
-- \Add6~5_combout\ = (count_ni(17) $ (((!\Add6~87\ & \Add6~2\) # (\Add6~87\ & \Add6~2COUT1_114\))))
-- \Add6~7\ = CARRY(((!\Add6~2\) # (!count_ni(17))))
-- \Add6~7COUT1_115\ = CARRY(((!\Add6~2COUT1_114\) # (!count_ni(17))))

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
	datab => count_ni(17),
	cin => \Add6~87\,
	cin0 => \Add6~2\,
	cin1 => \Add6~2COUT1_114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~5_combout\,
	cout0 => \Add6~7\,
	cout1 => \Add6~7COUT1_115\);

-- Location: LC_X7_Y6_N7
\count_ni[17]\ : maxv_lcell
-- Equation(s):
-- count_ni(17) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \count_ni[9]~9_combout\, \Add6~5_combout\, , , VCC)

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
	datac => \Add6~5_combout\,
	aclr => GND,
	sload => VCC,
	ena => \count_ni[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_ni(17));

-- Location: LC_X8_Y5_N8
\Add6~10\ : maxv_lcell
-- Equation(s):
-- \Add6~10_combout\ = (count_ni(18) $ ((!(!\Add6~87\ & \Add6~7\) # (\Add6~87\ & \Add6~7COUT1_115\))))
-- \Add6~12\ = CARRY(((count_ni(18) & !\Add6~7\)))
-- \Add6~12COUT1_116\ = CARRY(((count_ni(18) & !\Add6~7COUT1_115\)))

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
	datab => count_ni(18),
	cin => \Add6~87\,
	cin0 => \Add6~7\,
	cin1 => \Add6~7COUT1_115\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~10_combout\,
	cout0 => \Add6~12\,
	cout1 => \Add6~12COUT1_116\);

-- Location: LC_X7_Y6_N9
\count_ni[18]\ : maxv_lcell
-- Equation(s):
-- count_ni(18) = DFFEAS((((\Add6~10_combout\))), GLOBAL(\clk~combout\), VCC, , \count_ni[9]~9_combout\, , , , )

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
	datad => \Add6~10_combout\,
	aclr => GND,
	ena => \count_ni[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_ni(18));

-- Location: LC_X8_Y5_N9
\Add6~15\ : maxv_lcell
-- Equation(s):
-- \Add6~15_combout\ = (((!\Add6~87\ & \Add6~12\) # (\Add6~87\ & \Add6~12COUT1_116\) $ (count_ni(19))))

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
	datad => count_ni(19),
	cin => \Add6~87\,
	cin0 => \Add6~12\,
	cin1 => \Add6~12COUT1_116\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~15_combout\);

-- Location: LC_X7_Y6_N3
\count_ni[19]\ : maxv_lcell
-- Equation(s):
-- count_ni(19) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \count_ni[9]~9_combout\, \Add6~15_combout\, , , VCC)

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
	datac => \Add6~15_combout\,
	aclr => GND,
	sload => VCC,
	ena => \count_ni[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_ni(19));

-- Location: LC_X8_Y6_N4
ni : maxv_lcell
-- Equation(s):
-- \ni~0\ = (ni $ (((\Equal6~0\ & \Equal6~5_combout\))))

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
	clk => \clk~combout\,
	datab => \Equal6~0\,
	datad => \Equal6~5_combout\,
	aclr => GND,
	ena => \count_ni[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ni~0\,
	regout => \ni~regout\);

-- Location: LC_X9_Y6_N2
\toneOut~3\ : maxv_lcell
-- Equation(s):
-- \toneOut~3_combout\ = (\count_ni[9]~2_combout\ & ((\ni~0\) # ((\count_dha[9]~2_combout\ & \dha~0\)))) # (!\count_ni[9]~2_combout\ & (\count_dha[9]~2_combout\ & (\dha~0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count_ni[9]~2_combout\,
	datab => \count_dha[9]~2_combout\,
	datac => \dha~0\,
	datad => \ni~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \toneOut~3_combout\);

-- Location: LC_X9_Y6_N3
\toneOut~4\ : maxv_lcell
-- Equation(s):
-- \toneOut~4_combout\ = (\toneOut~2_combout\) # ((\toneOut~3_combout\) # ((\switch~combout\(4) & \pa~0\)))

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
	dataa => \switch~combout\(4),
	datab => \pa~0\,
	datac => \toneOut~2_combout\,
	datad => \toneOut~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \toneOut~4_combout\);

-- Location: LC_X9_Y6_N4
\toneOut~reg0\ : maxv_lcell
-- Equation(s):
-- \toneOut~reg0_regout\ = DFFEAS((\toneOut~1_combout\) # ((\toneOut~0_combout\) # ((\count_pa[9]~0_combout\ & \toneOut~4_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \count_pa[9]~0_combout\,
	datab => \toneOut~1_combout\,
	datac => \toneOut~0_combout\,
	datad => \toneOut~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \toneOut~reg0_regout\);

-- Location: LC_X9_Y7_N5
\LED[0]~reg0\ : maxv_lcell
-- Equation(s):
-- \LED[0]~reg0_regout\ = DFFEAS((((\switch~combout\(0)))), GLOBAL(\clk~combout\), VCC, , \LED[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \switch~combout\(0),
	aclr => GND,
	ena => \LED[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED[0]~reg0_regout\);

-- Location: LC_X10_Y7_N7
\LED[2]~reg0\ : maxv_lcell
-- Equation(s):
-- \LED[2]~reg0_regout\ = DFFEAS((((\switch~combout\(2) & !\switch~combout\(1)))), GLOBAL(\clk~combout\), VCC, , \LED[0]~0_combout\, , , \switch~combout\(0), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \switch~combout\(2),
	datad => \switch~combout\(1),
	aclr => GND,
	sclr => \switch~combout\(0),
	ena => \LED[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED[2]~reg0_regout\);

-- Location: LC_X9_Y7_N7
\~GND\ : maxv_lcell
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \~GND~combout\);

-- Location: LC_X9_Y7_N1
\LED[3]~reg0\ : maxv_lcell
-- Equation(s):
-- \LED[3]~reg0_regout\ = DFFEAS(((!\switch~combout\(2) & ((\switch~combout\(3))))), GLOBAL(\clk~combout\), VCC, , \LED[0]~0_combout\, \~GND~combout\, , \switch~combout\(0), \switch~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \switch~combout\(2),
	datac => \~GND~combout\,
	datad => \switch~combout\(3),
	aclr => GND,
	sclr => \switch~combout\(0),
	sload => \switch~combout\(1),
	ena => \LED[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED[3]~reg0_regout\);

-- Location: LC_X9_Y7_N8
\LED[4]~reg0\ : maxv_lcell
-- Equation(s):
-- \LED[4]~reg0_regout\ = DFFEAS((!\switch~combout\(3) & (!\switch~combout\(2) & ((\switch~combout\(4))))), GLOBAL(\clk~combout\), VCC, , \LED[0]~0_combout\, \~GND~combout\, , \switch~combout\(0), \switch~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \switch~combout\(3),
	datab => \switch~combout\(2),
	datac => \~GND~combout\,
	datad => \switch~combout\(4),
	aclr => GND,
	sclr => \switch~combout\(0),
	sload => \switch~combout\(1),
	ena => \LED[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED[4]~reg0_regout\);

-- Location: LC_X9_Y7_N4
\LED[5]~reg0\ : maxv_lcell
-- Equation(s):
-- \LED[5]~reg0_regout\ = DFFEAS((!\switch~combout\(3) & (!\switch~combout\(2) & ((\count_dha[9]~2_combout\)))), GLOBAL(\clk~combout\), VCC, , \LED[0]~0_combout\, \~GND~combout\, , \switch~combout\(0), \switch~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \switch~combout\(3),
	datab => \switch~combout\(2),
	datac => \~GND~combout\,
	datad => \count_dha[9]~2_combout\,
	aclr => GND,
	sclr => \switch~combout\(0),
	sload => \switch~combout\(1),
	ena => \LED[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED[5]~reg0_regout\);

-- Location: LC_X9_Y7_N9
\LED[6]~reg0\ : maxv_lcell
-- Equation(s):
-- \LED[6]~reg0_regout\ = DFFEAS((!\switch~combout\(3) & (!\switch~combout\(2) & ((\count_ni[9]~2_combout\)))), GLOBAL(\clk~combout\), VCC, , \LED[0]~0_combout\, \~GND~combout\, , \switch~combout\(0), \switch~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \switch~combout\(3),
	datab => \switch~combout\(2),
	datac => \~GND~combout\,
	datad => \count_ni[9]~2_combout\,
	aclr => GND,
	sclr => \switch~combout\(0),
	sload => \switch~combout\(1),
	ena => \LED[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED[6]~reg0_regout\);

-- Location: LC_X9_Y7_N6
\LED[7]~reg0\ : maxv_lcell
-- Equation(s):
-- \LED[7]~reg0_regout\ = DFFEAS((!\switch~combout\(3) & (!\switch~combout\(2) & ((\sa2~0_combout\)))), GLOBAL(\clk~combout\), VCC, , \LED[0]~0_combout\, \~GND~combout\, , \switch~combout\(0), \switch~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \switch~combout\(3),
	datab => \switch~combout\(2),
	datac => \~GND~combout\,
	datad => \sa2~0_combout\,
	aclr => GND,
	sclr => \switch~combout\(0),
	sload => \switch~combout\(1),
	ena => \LED[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED[7]~reg0_regout\);

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\toneOut~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \toneOut~reg0_regout\,
	oe => VCC,
	padio => ww_toneOut);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LED[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LED[0]~reg0_regout\,
	oe => VCC,
	padio => ww_LED(0));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LED[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LED[1]~reg0_regout\,
	oe => VCC,
	padio => ww_LED(1));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LED[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LED[2]~reg0_regout\,
	oe => VCC,
	padio => ww_LED(2));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LED[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LED[3]~reg0_regout\,
	oe => VCC,
	padio => ww_LED(3));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LED[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LED[4]~reg0_regout\,
	oe => VCC,
	padio => ww_LED(4));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LED[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LED[5]~reg0_regout\,
	oe => VCC,
	padio => ww_LED(5));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LED[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LED[6]~reg0_regout\,
	oe => VCC,
	padio => ww_LED(6));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LED[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LED[7]~reg0_regout\,
	oe => VCC,
	padio => ww_LED(7));
END structure;


