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

-- DATE "03/17/2021 14:06:16"

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

ENTITY 	TopLevel IS
    PORT (
	TDI : IN std_logic;
	TDO : BUFFER std_logic;
	TMS : IN std_logic;
	TCLK : IN std_logic;
	TRST : IN std_logic
	);
END TopLevel;

-- Design Ports Information


ARCHITECTURE structure OF TopLevel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_TDI : std_logic;
SIGNAL ww_TDO : std_logic;
SIGNAL ww_TMS : std_logic;
SIGNAL ww_TCLK : std_logic;
SIGNAL ww_TRST : std_logic;
SIGNAL TCLK_acombout : std_logic;
SIGNAL TRST_acombout : std_logic;
SIGNAL TDI_acombout : std_logic;
SIGNAL TMS_acombout : std_logic;
SIGNAL scan_instance_acurrent_state_as_shift_aregout : std_logic;
SIGNAL scan_instance_acurrent_state_as_update_aregout : std_logic;
SIGNAL scan_instance_acurrent_state_as_idle_aregout : std_logic;
SIGNAL scan_instance_acurrent_state_as_DR_aregout : std_logic;
SIGNAL scan_instance_acurrent_state_as_capture_aregout : std_logic;
SIGNAL scan_instance_aSelector3_a0 : std_logic;
SIGNAL scan_instance_aIn_Reg_aL1_a0_a_a1_combout : std_logic;
SIGNAL scan_instance_aIn_Reg_aL2_a1_combout : std_logic;
SIGNAL dut_instance_aadd_instance_adFF1_ay_aregout : std_logic;
SIGNAL dut_instance_aadd_instance_adFF1_ay_a0_combout : std_logic;
SIGNAL scan_instance_aIn_Reg_aPO_a2_a_a0_combout : std_logic;
SIGNAL dut_instance_aadd_instance_adFF2_ay_aregout : std_logic;
SIGNAL dut_instance_aadd_instance_adFF0_ay_a2_combout : std_logic;
SIGNAL dut_instance_aadd_instance_adFF0_ay_aregout : std_logic;
SIGNAL scan_instance_aOut_Reg_amux1_a0_a_a0_combout : std_logic;
SIGNAL scan_instance_aOut_Reg_amux1_a0_a_a1_combout : std_logic;
SIGNAL scan_instance_aOut_Reg_amux1_a0_a_a2_combout : std_logic;
SIGNAL scan_instance_aSelector0_a0_combout : std_logic;
SIGNAL scan_instance_aIn_Reg_aL1 : std_logic_vector(2 DOWNTO 0);
SIGNAL scan_instance_aIn_Reg_aL2 : std_logic_vector(2 DOWNTO 0);
SIGNAL scan_instance_aIn_Reg_aPO : std_logic_vector(2 DOWNTO 0);
SIGNAL scan_instance_aOut_Reg_aL1 : std_logic_vector(0 DOWNTO 0);
SIGNAL scan_instance_acurrent_state_as_shift_CLK_driver : std_logic;
SIGNAL scan_instance_acurrent_state_as_shift_DATAB_driver : std_logic;
SIGNAL scan_instance_acurrent_state_as_shift_DATAD_driver : std_logic;
SIGNAL scan_instance_acurrent_state_as_shift_ACLR_driver : std_logic;
SIGNAL scan_instance_acurrent_state_as_update_CLK_driver : std_logic;
SIGNAL scan_instance_acurrent_state_as_update_DATAB_driver : std_logic;
SIGNAL scan_instance_acurrent_state_as_update_DATAC_driver : std_logic;
SIGNAL scan_instance_acurrent_state_as_update_DATAD_driver : std_logic;
SIGNAL scan_instance_acurrent_state_as_update_ACLR_driver : std_logic;
SIGNAL scan_instance_acurrent_state_as_idle_CLK_driver : std_logic;
SIGNAL scan_instance_acurrent_state_as_idle_DATAB_driver : std_logic;
SIGNAL scan_instance_acurrent_state_as_idle_DATAC_driver : std_logic;
SIGNAL scan_instance_acurrent_state_as_idle_DATAD_driver : std_logic;
SIGNAL scan_instance_acurrent_state_as_idle_ACLR_driver : std_logic;
SIGNAL scan_instance_acurrent_state_as_DR_CLK_driver : std_logic;
SIGNAL scan_instance_acurrent_state_as_DR_DATAB_driver : std_logic;
SIGNAL scan_instance_acurrent_state_as_DR_DATAC_driver : std_logic;
SIGNAL scan_instance_acurrent_state_as_DR_DATAD_driver : std_logic;
SIGNAL scan_instance_acurrent_state_as_DR_ACLR_driver : std_logic;
SIGNAL scan_instance_acurrent_state_as_capture_CLK_driver : std_logic;
SIGNAL scan_instance_acurrent_state_as_capture_DATAB_driver : std_logic;
SIGNAL scan_instance_acurrent_state_as_capture_DATAD_driver : std_logic;
SIGNAL scan_instance_acurrent_state_as_capture_ACLR_driver : std_logic;
SIGNAL scan_instance_aIn_Reg_aL1_a0_a_a1_DATAA_driver : std_logic;
SIGNAL scan_instance_aIn_Reg_aL1_a0_a_a1_DATAB_driver : std_logic;
SIGNAL scan_instance_aIn_Reg_aL1_a0_a_a1_DATAC_driver : std_logic;
SIGNAL scan_instance_aIn_Reg_aL1_a0_a_a1_DATAD_driver : std_logic;
SIGNAL scan_instance_aIn_Reg_aL1_a2_a_CLK_driver : std_logic;
SIGNAL scan_instance_aIn_Reg_aL1_a2_a_DATAB_driver : std_logic;
SIGNAL scan_instance_aIn_Reg_aL1_a2_a_DATAC_driver : std_logic;
SIGNAL scan_instance_aIn_Reg_aL1_a2_a_DATAD_driver : std_logic;
SIGNAL scan_instance_aIn_Reg_aL1_a2_a_ENA_driver : std_logic;
SIGNAL scan_instance_aIn_Reg_aL1_a1_a_CLK_driver : std_logic;
SIGNAL scan_instance_aIn_Reg_aL1_a1_a_DATAB_driver : std_logic;
SIGNAL scan_instance_aIn_Reg_aL1_a1_a_DATAC_driver : std_logic;
SIGNAL scan_instance_aIn_Reg_aL1_a1_a_DATAD_driver : std_logic;
SIGNAL scan_instance_aIn_Reg_aL1_a1_a_ENA_driver : std_logic;
SIGNAL scan_instance_aIn_Reg_aL1_a0_a_CLK_driver : std_logic;
SIGNAL scan_instance_aIn_Reg_aL1_a0_a_DATAB_driver : std_logic;
SIGNAL scan_instance_aIn_Reg_aL1_a0_a_DATAC_driver : std_logic;
SIGNAL scan_instance_aIn_Reg_aL1_a0_a_DATAD_driver : std_logic;
SIGNAL scan_instance_aIn_Reg_aL1_a0_a_ENA_driver : std_logic;
SIGNAL scan_instance_aIn_Reg_aL2_a1_DATAA_driver : std_logic;
SIGNAL scan_instance_aIn_Reg_aL2_a1_DATAB_driver : std_logic;
SIGNAL scan_instance_aIn_Reg_aL2_a1_DATAC_driver : std_logic;
SIGNAL scan_instance_aIn_Reg_aL2_a1_DATAD_driver : std_logic;
SIGNAL scan_instance_aIn_Reg_aL2_a0_a_CLK_driver : std_logic;
SIGNAL scan_instance_aIn_Reg_aL2_a0_a_DATAA_driver : std_logic;
SIGNAL scan_instance_aIn_Reg_aL2_a0_a_DATAC_driver : std_logic;
SIGNAL scan_instance_aIn_Reg_aL2_a0_a_ENA_driver : std_logic;
SIGNAL scan_instance_aIn_Reg_aPO_a0_a_DATAC_driver : std_logic;
SIGNAL scan_instance_aIn_Reg_aPO_a0_a_DATAD_driver : std_logic;
SIGNAL scan_instance_aIn_Reg_aL2_a1_a_CLK_driver : std_logic;
SIGNAL scan_instance_aIn_Reg_aL2_a1_a_DATAB_driver : std_logic;
SIGNAL scan_instance_aIn_Reg_aL2_a1_a_DATAC_driver : std_logic;
SIGNAL scan_instance_aIn_Reg_aL2_a1_a_ENA_driver : std_logic;
SIGNAL scan_instance_aIn_Reg_aL2_a2_a_CLK_driver : std_logic;
SIGNAL scan_instance_aIn_Reg_aL2_a2_a_DATAB_driver : std_logic;
SIGNAL scan_instance_aIn_Reg_aL2_a2_a_DATAD_driver : std_logic;
SIGNAL scan_instance_aIn_Reg_aL2_a2_a_ENA_driver : std_logic;
SIGNAL dut_instance_aadd_instance_adFF1_ay_CLK_driver : std_logic;
SIGNAL dut_instance_aadd_instance_adFF1_ay_DATAB_driver : std_logic;
SIGNAL dut_instance_aadd_instance_adFF1_ay_DATAC_driver : std_logic;
SIGNAL dut_instance_aadd_instance_adFF1_ay_DATAD_driver : std_logic;
SIGNAL dut_instance_aadd_instance_adFF1_ay_a0_DATAA_driver : std_logic;
SIGNAL dut_instance_aadd_instance_adFF1_ay_a0_DATAD_driver : std_logic;
SIGNAL scan_instance_aIn_Reg_aPO_a2_a_a0_DATAA_driver : std_logic;
SIGNAL scan_instance_aIn_Reg_aPO_a2_a_a0_DATAD_driver : std_logic;
SIGNAL dut_instance_aadd_instance_adFF2_ay_CLK_driver : std_logic;
SIGNAL dut_instance_aadd_instance_adFF2_ay_DATAA_driver : std_logic;
SIGNAL dut_instance_aadd_instance_adFF2_ay_DATAB_driver : std_logic;
SIGNAL dut_instance_aadd_instance_adFF2_ay_DATAC_driver : std_logic;
SIGNAL dut_instance_aadd_instance_adFF2_ay_DATAD_driver : std_logic;
SIGNAL dut_instance_aadd_instance_adFF0_ay_a2_DATAA_driver : std_logic;
SIGNAL dut_instance_aadd_instance_adFF0_ay_a2_DATAB_driver : std_logic;
SIGNAL dut_instance_aadd_instance_adFF0_ay_a2_DATAC_driver : std_logic;
SIGNAL dut_instance_aadd_instance_adFF0_ay_a2_DATAD_driver : std_logic;
SIGNAL dut_instance_aadd_instance_adFF0_ay_CLK_driver : std_logic;
SIGNAL dut_instance_aadd_instance_adFF0_ay_DATAB_driver : std_logic;
SIGNAL dut_instance_aadd_instance_adFF0_ay_DATAC_driver : std_logic;
SIGNAL dut_instance_aadd_instance_adFF0_ay_DATAD_driver : std_logic;
SIGNAL scan_instance_aOut_Reg_amux1_a0_a_a0_DATAB_driver : std_logic;
SIGNAL scan_instance_aOut_Reg_amux1_a0_a_a0_DATAC_driver : std_logic;
SIGNAL scan_instance_aOut_Reg_amux1_a0_a_a0_DATAD_driver : std_logic;
SIGNAL scan_instance_aOut_Reg_amux1_a0_a_a1_DATAA_driver : std_logic;
SIGNAL scan_instance_aOut_Reg_amux1_a0_a_a1_DATAB_driver : std_logic;
SIGNAL scan_instance_aOut_Reg_amux1_a0_a_a1_DATAC_driver : std_logic;
SIGNAL scan_instance_aOut_Reg_amux1_a0_a_a1_DATAD_driver : std_logic;
SIGNAL scan_instance_aOut_Reg_amux1_a0_a_a2_DATAA_driver : std_logic;
SIGNAL scan_instance_aOut_Reg_amux1_a0_a_a2_DATAB_driver : std_logic;
SIGNAL scan_instance_aOut_Reg_amux1_a0_a_a2_DATAC_driver : std_logic;
SIGNAL scan_instance_aOut_Reg_amux1_a0_a_a2_DATAD_driver : std_logic;
SIGNAL scan_instance_aSelector0_a0_DATAA_driver : std_logic;
SIGNAL scan_instance_aSelector0_a0_DATAC_driver : std_logic;
SIGNAL scan_instance_aSelector0_a0_DATAD_driver : std_logic;
SIGNAL scan_instance_aOut_Reg_aL1_a0_a_CLK_driver : std_logic;
SIGNAL scan_instance_aOut_Reg_aL1_a0_a_DATAA_driver : std_logic;
SIGNAL scan_instance_aOut_Reg_aL1_a0_a_DATAB_driver : std_logic;
SIGNAL scan_instance_aOut_Reg_aL1_a0_a_DATAC_driver : std_logic;
SIGNAL scan_instance_aOut_Reg_aL1_a0_a_DATAD_driver : std_logic;
SIGNAL scan_instance_aOut_Reg_aL1_a0_a_SCLR_driver : std_logic;
SIGNAL TDO_DATAIN_driver : std_logic;

BEGIN

ww_TDI <= TDI;
TDO <= ww_TDO;
ww_TMS <= TMS;
ww_TCLK <= TCLK;
ww_TRST <= TRST;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
TCLK_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_TCLK,
	combout => TCLK_acombout);

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
TRST_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_TRST,
	combout => TRST_acombout);

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
TDI_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_TDI,
	combout => TDI_acombout);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
TMS_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_TMS,
	combout => TMS_acombout);

scan_instance_acurrent_state_as_shift_CLK_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => TCLK_acombout,
	dataout => scan_instance_acurrent_state_as_shift_CLK_driver);

scan_instance_acurrent_state_as_shift_DATAB_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => TMS_acombout,
	dataout => scan_instance_acurrent_state_as_shift_DATAB_driver);

scan_instance_acurrent_state_as_shift_DATAD_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => scan_instance_acurrent_state_as_capture_aregout,
	dataout => scan_instance_acurrent_state_as_shift_DATAD_driver);

scan_instance_acurrent_state_as_shift_ACLR_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => TRST_acombout,
	dataout => scan_instance_acurrent_state_as_shift_ACLR_driver);

-- Location: LC_X5_Y6_N8
scan_instance_acurrent_state_as_shift : maxv_lcell
-- Equation(s):
-- scan_instance_aSelector3_a0 = ((!TMS_acombout & ((C1_current_state.s_shift) # (scan_instance_acurrent_state_as_capture_aregout))))
-- scan_instance_acurrent_state_as_shift_aregout = DFFEAS(scan_instance_aSelector3_a0, GLOBAL(TCLK_acombout), !GLOBAL(TRST_acombout), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3330",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => scan_instance_acurrent_state_as_shift_CLK_driver,
	datab => scan_instance_acurrent_state_as_shift_DATAB_driver,
	datad => scan_instance_acurrent_state_as_shift_DATAD_driver,
	aclr => scan_instance_acurrent_state_as_shift_ACLR_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => scan_instance_aSelector3_a0,
	regout => scan_instance_acurrent_state_as_shift_aregout);

scan_instance_acurrent_state_as_update_CLK_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => TCLK_acombout,
	dataout => scan_instance_acurrent_state_as_update_CLK_driver);

scan_instance_acurrent_state_as_update_DATAB_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => TMS_acombout,
	dataout => scan_instance_acurrent_state_as_update_DATAB_driver);

scan_instance_acurrent_state_as_update_DATAC_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => scan_instance_acurrent_state_as_capture_aregout,
	dataout => scan_instance_acurrent_state_as_update_DATAC_driver);

scan_instance_acurrent_state_as_update_DATAD_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => scan_instance_acurrent_state_as_shift_aregout,
	dataout => scan_instance_acurrent_state_as_update_DATAD_driver);

scan_instance_acurrent_state_as_update_ACLR_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => TRST_acombout,
	dataout => scan_instance_acurrent_state_as_update_ACLR_driver);

-- Location: LC_X5_Y6_N2
scan_instance_acurrent_state_as_update : maxv_lcell
-- Equation(s):
-- scan_instance_acurrent_state_as_update_aregout = DFFEAS(((TMS_acombout & ((scan_instance_acurrent_state_as_capture_aregout) # (scan_instance_acurrent_state_as_shift_aregout)))), GLOBAL(TCLK_acombout), !GLOBAL(TRST_acombout), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => scan_instance_acurrent_state_as_update_CLK_driver,
	datab => scan_instance_acurrent_state_as_update_DATAB_driver,
	datac => scan_instance_acurrent_state_as_update_DATAC_driver,
	datad => scan_instance_acurrent_state_as_update_DATAD_driver,
	aclr => scan_instance_acurrent_state_as_update_ACLR_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => scan_instance_acurrent_state_as_update_aregout);

scan_instance_acurrent_state_as_idle_CLK_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => TCLK_acombout,
	dataout => scan_instance_acurrent_state_as_idle_CLK_driver);

scan_instance_acurrent_state_as_idle_DATAB_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => scan_instance_acurrent_state_as_update_aregout,
	dataout => scan_instance_acurrent_state_as_idle_DATAB_driver);

scan_instance_acurrent_state_as_idle_DATAC_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => scan_instance_acurrent_state_as_idle_aregout,
	dataout => scan_instance_acurrent_state_as_idle_DATAC_driver);

scan_instance_acurrent_state_as_idle_DATAD_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => TMS_acombout,
	dataout => scan_instance_acurrent_state_as_idle_DATAD_driver);

scan_instance_acurrent_state_as_idle_ACLR_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => TRST_acombout,
	dataout => scan_instance_acurrent_state_as_idle_ACLR_driver);

-- Location: LC_X5_Y6_N4
scan_instance_acurrent_state_as_idle : maxv_lcell
-- Equation(s):
-- scan_instance_acurrent_state_as_idle_aregout = DFFEAS(((!scan_instance_acurrent_state_as_update_aregout & ((scan_instance_acurrent_state_as_idle_aregout) # (TMS_acombout)))), GLOBAL(TCLK_acombout), !GLOBAL(TRST_acombout), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3330",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => scan_instance_acurrent_state_as_idle_CLK_driver,
	datab => scan_instance_acurrent_state_as_idle_DATAB_driver,
	datac => scan_instance_acurrent_state_as_idle_DATAC_driver,
	datad => scan_instance_acurrent_state_as_idle_DATAD_driver,
	aclr => scan_instance_acurrent_state_as_idle_ACLR_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => scan_instance_acurrent_state_as_idle_aregout);

scan_instance_acurrent_state_as_DR_CLK_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => TCLK_acombout,
	dataout => scan_instance_acurrent_state_as_DR_CLK_driver);

scan_instance_acurrent_state_as_DR_DATAB_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => TMS_acombout,
	dataout => scan_instance_acurrent_state_as_DR_DATAB_driver);

scan_instance_acurrent_state_as_DR_DATAC_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => scan_instance_acurrent_state_as_idle_aregout,
	dataout => scan_instance_acurrent_state_as_DR_DATAC_driver);

scan_instance_acurrent_state_as_DR_DATAD_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => scan_instance_acurrent_state_as_DR_aregout,
	dataout => scan_instance_acurrent_state_as_DR_DATAD_driver);

scan_instance_acurrent_state_as_DR_ACLR_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => TRST_acombout,
	dataout => scan_instance_acurrent_state_as_DR_ACLR_driver);

-- Location: LC_X5_Y6_N9
scan_instance_acurrent_state_as_DR : maxv_lcell
-- Equation(s):
-- scan_instance_acurrent_state_as_DR_aregout = DFFEAS(((TMS_acombout & ((scan_instance_acurrent_state_as_DR_aregout) # (!scan_instance_acurrent_state_as_idle_aregout)))), GLOBAL(TCLK_acombout), !GLOBAL(TRST_acombout), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => scan_instance_acurrent_state_as_DR_CLK_driver,
	datab => scan_instance_acurrent_state_as_DR_DATAB_driver,
	datac => scan_instance_acurrent_state_as_DR_DATAC_driver,
	datad => scan_instance_acurrent_state_as_DR_DATAD_driver,
	aclr => scan_instance_acurrent_state_as_DR_ACLR_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => scan_instance_acurrent_state_as_DR_aregout);

scan_instance_acurrent_state_as_capture_CLK_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => TCLK_acombout,
	dataout => scan_instance_acurrent_state_as_capture_CLK_driver);

scan_instance_acurrent_state_as_capture_DATAB_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => TMS_acombout,
	dataout => scan_instance_acurrent_state_as_capture_DATAB_driver);

scan_instance_acurrent_state_as_capture_DATAD_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => scan_instance_acurrent_state_as_DR_aregout,
	dataout => scan_instance_acurrent_state_as_capture_DATAD_driver);

scan_instance_acurrent_state_as_capture_ACLR_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => TRST_acombout,
	dataout => scan_instance_acurrent_state_as_capture_ACLR_driver);

-- Location: LC_X5_Y6_N3
scan_instance_acurrent_state_as_capture : maxv_lcell
-- Equation(s):
-- scan_instance_acurrent_state_as_capture_aregout = DFFEAS(((!TMS_acombout & ((scan_instance_acurrent_state_as_DR_aregout)))), GLOBAL(TCLK_acombout), !GLOBAL(TRST_acombout), , , , , , )

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
	clk => scan_instance_acurrent_state_as_capture_CLK_driver,
	datab => scan_instance_acurrent_state_as_capture_DATAB_driver,
	datad => scan_instance_acurrent_state_as_capture_DATAD_driver,
	aclr => scan_instance_acurrent_state_as_capture_ACLR_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => scan_instance_acurrent_state_as_capture_aregout);

scan_instance_aIn_Reg_aL1_a0_a_a1_DATAA_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => TMS_acombout,
	dataout => scan_instance_aIn_Reg_aL1_a0_a_a1_DATAA_driver);

scan_instance_aIn_Reg_aL1_a0_a_a1_DATAB_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => TRST_acombout,
	dataout => scan_instance_aIn_Reg_aL1_a0_a_a1_DATAB_driver);

scan_instance_aIn_Reg_aL1_a0_a_a1_DATAC_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => scan_instance_acurrent_state_as_update_aregout,
	dataout => scan_instance_aIn_Reg_aL1_a0_a_a1_DATAC_driver);

scan_instance_aIn_Reg_aL1_a0_a_a1_DATAD_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => scan_instance_acurrent_state_as_idle_aregout,
	dataout => scan_instance_aIn_Reg_aL1_a0_a_a1_DATAD_driver);

-- Location: LC_X4_Y6_N0
scan_instance_aIn_Reg_aL1_a0_a_a1 : maxv_lcell
-- Equation(s):
-- scan_instance_aIn_Reg_aL1_a0_a_a1_combout = (TRST_acombout) # ((!TMS_acombout & (!scan_instance_acurrent_state_as_update_aregout & scan_instance_acurrent_state_as_idle_aregout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cdcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => scan_instance_aIn_Reg_aL1_a0_a_a1_DATAA_driver,
	datab => scan_instance_aIn_Reg_aL1_a0_a_a1_DATAB_driver,
	datac => scan_instance_aIn_Reg_aL1_a0_a_a1_DATAC_driver,
	datad => scan_instance_aIn_Reg_aL1_a0_a_a1_DATAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => scan_instance_aIn_Reg_aL1_a0_a_a1_combout);

scan_instance_aIn_Reg_aL1_a2_a_CLK_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => TCLK_acombout,
	dataout => scan_instance_aIn_Reg_aL1_a2_a_CLK_driver);

scan_instance_aIn_Reg_aL1_a2_a_DATAB_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => TRST_acombout,
	dataout => scan_instance_aIn_Reg_aL1_a2_a_DATAB_driver);

scan_instance_aIn_Reg_aL1_a2_a_DATAC_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => TDI_acombout,
	dataout => scan_instance_aIn_Reg_aL1_a2_a_DATAC_driver);

scan_instance_aIn_Reg_aL1_a2_a_DATAD_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => scan_instance_aSelector3_a0,
	dataout => scan_instance_aIn_Reg_aL1_a2_a_DATAD_driver);

scan_instance_aIn_Reg_aL1_a2_a_ENA_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => scan_instance_aIn_Reg_aL1_a0_a_a1_combout,
	dataout => scan_instance_aIn_Reg_aL1_a2_a_ENA_driver);

-- Location: LC_X4_Y6_N9
scan_instance_aIn_Reg_aL1_a2_a : maxv_lcell
-- Equation(s):
-- scan_instance_aIn_Reg_aL1(2) = DFFEAS(((!TRST_acombout & (TDI_acombout & scan_instance_aSelector3_a0))), GLOBAL(TCLK_acombout), VCC, , scan_instance_aIn_Reg_aL1_a0_a_a1_combout, , , , )

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
	clk => scan_instance_aIn_Reg_aL1_a2_a_CLK_driver,
	datab => scan_instance_aIn_Reg_aL1_a2_a_DATAB_driver,
	datac => scan_instance_aIn_Reg_aL1_a2_a_DATAC_driver,
	datad => scan_instance_aIn_Reg_aL1_a2_a_DATAD_driver,
	aclr => GND,
	ena => scan_instance_aIn_Reg_aL1_a2_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => scan_instance_aIn_Reg_aL1(2));

scan_instance_aIn_Reg_aL1_a1_a_CLK_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => TCLK_acombout,
	dataout => scan_instance_aIn_Reg_aL1_a1_a_CLK_driver);

scan_instance_aIn_Reg_aL1_a1_a_DATAB_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => scan_instance_aIn_Reg_aL1(2),
	dataout => scan_instance_aIn_Reg_aL1_a1_a_DATAB_driver);

scan_instance_aIn_Reg_aL1_a1_a_DATAC_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => TRST_acombout,
	dataout => scan_instance_aIn_Reg_aL1_a1_a_DATAC_driver);

scan_instance_aIn_Reg_aL1_a1_a_DATAD_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => scan_instance_aSelector3_a0,
	dataout => scan_instance_aIn_Reg_aL1_a1_a_DATAD_driver);

scan_instance_aIn_Reg_aL1_a1_a_ENA_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => scan_instance_aIn_Reg_aL1_a0_a_a1_combout,
	dataout => scan_instance_aIn_Reg_aL1_a1_a_ENA_driver);

-- Location: LC_X4_Y6_N7
scan_instance_aIn_Reg_aL1_a1_a : maxv_lcell
-- Equation(s):
-- scan_instance_aIn_Reg_aL1(1) = DFFEAS(((scan_instance_aIn_Reg_aL1(2) & (!TRST_acombout & scan_instance_aSelector3_a0))), GLOBAL(TCLK_acombout), VCC, , scan_instance_aIn_Reg_aL1_a0_a_a1_combout, , , , )

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
	clk => scan_instance_aIn_Reg_aL1_a1_a_CLK_driver,
	datab => scan_instance_aIn_Reg_aL1_a1_a_DATAB_driver,
	datac => scan_instance_aIn_Reg_aL1_a1_a_DATAC_driver,
	datad => scan_instance_aIn_Reg_aL1_a1_a_DATAD_driver,
	aclr => GND,
	ena => scan_instance_aIn_Reg_aL1_a1_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => scan_instance_aIn_Reg_aL1(1));

scan_instance_aIn_Reg_aL1_a0_a_CLK_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => TCLK_acombout,
	dataout => scan_instance_aIn_Reg_aL1_a0_a_CLK_driver);

scan_instance_aIn_Reg_aL1_a0_a_DATAB_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => TRST_acombout,
	dataout => scan_instance_aIn_Reg_aL1_a0_a_DATAB_driver);

scan_instance_aIn_Reg_aL1_a0_a_DATAC_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => scan_instance_aIn_Reg_aL1(1),
	dataout => scan_instance_aIn_Reg_aL1_a0_a_DATAC_driver);

scan_instance_aIn_Reg_aL1_a0_a_DATAD_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => scan_instance_aSelector3_a0,
	dataout => scan_instance_aIn_Reg_aL1_a0_a_DATAD_driver);

scan_instance_aIn_Reg_aL1_a0_a_ENA_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => scan_instance_aIn_Reg_aL1_a0_a_a1_combout,
	dataout => scan_instance_aIn_Reg_aL1_a0_a_ENA_driver);

-- Location: LC_X4_Y6_N6
scan_instance_aIn_Reg_aL1_a0_a : maxv_lcell
-- Equation(s):
-- scan_instance_aIn_Reg_aL1(0) = DFFEAS(((!TRST_acombout & (scan_instance_aIn_Reg_aL1(1) & scan_instance_aSelector3_a0))), GLOBAL(TCLK_acombout), VCC, , scan_instance_aIn_Reg_aL1_a0_a_a1_combout, , , , )

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
	clk => scan_instance_aIn_Reg_aL1_a0_a_CLK_driver,
	datab => scan_instance_aIn_Reg_aL1_a0_a_DATAB_driver,
	datac => scan_instance_aIn_Reg_aL1_a0_a_DATAC_driver,
	datad => scan_instance_aIn_Reg_aL1_a0_a_DATAD_driver,
	aclr => GND,
	ena => scan_instance_aIn_Reg_aL1_a0_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => scan_instance_aIn_Reg_aL1(0));

scan_instance_aIn_Reg_aL2_a1_DATAA_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => scan_instance_acurrent_state_as_shift_aregout,
	dataout => scan_instance_aIn_Reg_aL2_a1_DATAA_driver);

scan_instance_aIn_Reg_aL2_a1_DATAB_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => TRST_acombout,
	dataout => scan_instance_aIn_Reg_aL2_a1_DATAB_driver);

scan_instance_aIn_Reg_aL2_a1_DATAC_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => TMS_acombout,
	dataout => scan_instance_aIn_Reg_aL2_a1_DATAC_driver);

scan_instance_aIn_Reg_aL2_a1_DATAD_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => scan_instance_acurrent_state_as_capture_aregout,
	dataout => scan_instance_aIn_Reg_aL2_a1_DATAD_driver);

-- Location: LC_X5_Y6_N7
scan_instance_aIn_Reg_aL2_a1 : maxv_lcell
-- Equation(s):
-- scan_instance_aIn_Reg_aL2_a1_combout = (TRST_acombout) # ((TMS_acombout & ((scan_instance_acurrent_state_as_shift_aregout) # (scan_instance_acurrent_state_as_capture_aregout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => scan_instance_aIn_Reg_aL2_a1_DATAA_driver,
	datab => scan_instance_aIn_Reg_aL2_a1_DATAB_driver,
	datac => scan_instance_aIn_Reg_aL2_a1_DATAC_driver,
	datad => scan_instance_aIn_Reg_aL2_a1_DATAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => scan_instance_aIn_Reg_aL2_a1_combout);

scan_instance_aIn_Reg_aL2_a0_a_CLK_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => TCLK_acombout,
	dataout => scan_instance_aIn_Reg_aL2_a0_a_CLK_driver);

scan_instance_aIn_Reg_aL2_a0_a_DATAA_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => TRST_acombout,
	dataout => scan_instance_aIn_Reg_aL2_a0_a_DATAA_driver);

scan_instance_aIn_Reg_aL2_a0_a_DATAC_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => scan_instance_aIn_Reg_aL1(0),
	dataout => scan_instance_aIn_Reg_aL2_a0_a_DATAC_driver);

scan_instance_aIn_Reg_aL2_a0_a_ENA_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => scan_instance_aIn_Reg_aL2_a1_combout,
	dataout => scan_instance_aIn_Reg_aL2_a0_a_ENA_driver);

-- Location: LC_X5_Y6_N6
scan_instance_aIn_Reg_aL2_a0_a : maxv_lcell
-- Equation(s):
-- scan_instance_aIn_Reg_aL2(0) = DFFEAS((!TRST_acombout & (((scan_instance_aIn_Reg_aL1(0))))), GLOBAL(TCLK_acombout), VCC, , scan_instance_aIn_Reg_aL2_a1_combout, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => scan_instance_aIn_Reg_aL2_a0_a_CLK_driver,
	dataa => scan_instance_aIn_Reg_aL2_a0_a_DATAA_driver,
	datac => scan_instance_aIn_Reg_aL2_a0_a_DATAC_driver,
	aclr => GND,
	ena => scan_instance_aIn_Reg_aL2_a0_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => scan_instance_aIn_Reg_aL2(0));

scan_instance_aIn_Reg_aPO_a0_a_DATAC_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => scan_instance_aIn_Reg_aL2(0),
	dataout => scan_instance_aIn_Reg_aPO_a0_a_DATAC_driver);

scan_instance_aIn_Reg_aPO_a0_a_DATAD_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => TRST_acombout,
	dataout => scan_instance_aIn_Reg_aPO_a0_a_DATAD_driver);

-- Location: LC_X10_Y6_N2
scan_instance_aIn_Reg_aPO_a0_a : maxv_lcell
-- Equation(s):
-- scan_instance_aIn_Reg_aPO(0) = LCELL((((scan_instance_aIn_Reg_aL2(0) & !TRST_acombout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => scan_instance_aIn_Reg_aPO_a0_a_DATAC_driver,
	datad => scan_instance_aIn_Reg_aPO_a0_a_DATAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => scan_instance_aIn_Reg_aPO(0));

scan_instance_aIn_Reg_aL2_a1_a_CLK_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => TCLK_acombout,
	dataout => scan_instance_aIn_Reg_aL2_a1_a_CLK_driver);

scan_instance_aIn_Reg_aL2_a1_a_DATAB_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => TRST_acombout,
	dataout => scan_instance_aIn_Reg_aL2_a1_a_DATAB_driver);

scan_instance_aIn_Reg_aL2_a1_a_DATAC_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => scan_instance_aIn_Reg_aL1(1),
	dataout => scan_instance_aIn_Reg_aL2_a1_a_DATAC_driver);

scan_instance_aIn_Reg_aL2_a1_a_ENA_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => scan_instance_aIn_Reg_aL2_a1_combout,
	dataout => scan_instance_aIn_Reg_aL2_a1_a_ENA_driver);

-- Location: LC_X4_Y6_N1
scan_instance_aIn_Reg_aL2_a1_a : maxv_lcell
-- Equation(s):
-- scan_instance_aIn_Reg_aL2(1) = DFFEAS(((!TRST_acombout & (scan_instance_aIn_Reg_aL1(1)))), GLOBAL(TCLK_acombout), VCC, , scan_instance_aIn_Reg_aL2_a1_combout, , , , )

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
	clk => scan_instance_aIn_Reg_aL2_a1_a_CLK_driver,
	datab => scan_instance_aIn_Reg_aL2_a1_a_DATAB_driver,
	datac => scan_instance_aIn_Reg_aL2_a1_a_DATAC_driver,
	aclr => GND,
	ena => scan_instance_aIn_Reg_aL2_a1_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => scan_instance_aIn_Reg_aL2(1));

scan_instance_aIn_Reg_aL2_a2_a_CLK_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => TCLK_acombout,
	dataout => scan_instance_aIn_Reg_aL2_a2_a_CLK_driver);

scan_instance_aIn_Reg_aL2_a2_a_DATAB_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => TRST_acombout,
	dataout => scan_instance_aIn_Reg_aL2_a2_a_DATAB_driver);

scan_instance_aIn_Reg_aL2_a2_a_DATAD_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => scan_instance_aIn_Reg_aL1(2),
	dataout => scan_instance_aIn_Reg_aL2_a2_a_DATAD_driver);

scan_instance_aIn_Reg_aL2_a2_a_ENA_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => scan_instance_aIn_Reg_aL2_a1_combout,
	dataout => scan_instance_aIn_Reg_aL2_a2_a_ENA_driver);

-- Location: LC_X4_Y6_N5
scan_instance_aIn_Reg_aL2_a2_a : maxv_lcell
-- Equation(s):
-- scan_instance_aIn_Reg_aL2(2) = DFFEAS(((!TRST_acombout & ((scan_instance_aIn_Reg_aL1(2))))), GLOBAL(TCLK_acombout), VCC, , scan_instance_aIn_Reg_aL2_a1_combout, , , , )

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
	clk => scan_instance_aIn_Reg_aL2_a2_a_CLK_driver,
	datab => scan_instance_aIn_Reg_aL2_a2_a_DATAB_driver,
	datad => scan_instance_aIn_Reg_aL2_a2_a_DATAD_driver,
	aclr => GND,
	ena => scan_instance_aIn_Reg_aL2_a2_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => scan_instance_aIn_Reg_aL2(2));

dut_instance_aadd_instance_adFF1_ay_CLK_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => scan_instance_aIn_Reg_aPO(0),
	dataout => dut_instance_aadd_instance_adFF1_ay_CLK_driver);

dut_instance_aadd_instance_adFF1_ay_DATAB_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => TRST_acombout,
	dataout => dut_instance_aadd_instance_adFF1_ay_DATAB_driver);

dut_instance_aadd_instance_adFF1_ay_DATAC_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => scan_instance_aIn_Reg_aL2(1),
	dataout => dut_instance_aadd_instance_adFF1_ay_DATAC_driver);

dut_instance_aadd_instance_adFF1_ay_DATAD_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => scan_instance_aIn_Reg_aL2(2),
	dataout => dut_instance_aadd_instance_adFF1_ay_DATAD_driver);

-- Location: LC_X3_Y6_N5
dut_instance_aadd_instance_adFF1_ay : maxv_lcell
-- Equation(s):
-- dut_instance_aadd_instance_adFF1_ay_aregout = DFFEAS(((!TRST_acombout & (scan_instance_aIn_Reg_aL2(1) & !scan_instance_aIn_Reg_aL2(2)))), GLOBAL(scan_instance_aIn_Reg_aPO(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => dut_instance_aadd_instance_adFF1_ay_CLK_driver,
	datab => dut_instance_aadd_instance_adFF1_ay_DATAB_driver,
	datac => dut_instance_aadd_instance_adFF1_ay_DATAC_driver,
	datad => dut_instance_aadd_instance_adFF1_ay_DATAD_driver,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dut_instance_aadd_instance_adFF1_ay_aregout);

dut_instance_aadd_instance_adFF1_ay_a0_DATAA_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => TRST_acombout,
	dataout => dut_instance_aadd_instance_adFF1_ay_a0_DATAA_driver);

dut_instance_aadd_instance_adFF1_ay_a0_DATAD_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => scan_instance_aIn_Reg_aL2(1),
	dataout => dut_instance_aadd_instance_adFF1_ay_a0_DATAD_driver);

-- Location: LC_X3_Y6_N3
dut_instance_aadd_instance_adFF1_ay_a0 : maxv_lcell
-- Equation(s):
-- dut_instance_aadd_instance_adFF1_ay_a0_combout = (!TRST_acombout & (((scan_instance_aIn_Reg_aL2(1)))))

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
	dataa => dut_instance_aadd_instance_adFF1_ay_a0_DATAA_driver,
	datad => dut_instance_aadd_instance_adFF1_ay_a0_DATAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => dut_instance_aadd_instance_adFF1_ay_a0_combout);

scan_instance_aIn_Reg_aPO_a2_a_a0_DATAA_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => TRST_acombout,
	dataout => scan_instance_aIn_Reg_aPO_a2_a_a0_DATAA_driver);

scan_instance_aIn_Reg_aPO_a2_a_a0_DATAD_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => scan_instance_aIn_Reg_aL2(2),
	dataout => scan_instance_aIn_Reg_aPO_a2_a_a0_DATAD_driver);

-- Location: LC_X3_Y6_N1
scan_instance_aIn_Reg_aPO_a2_a_a0 : maxv_lcell
-- Equation(s):
-- scan_instance_aIn_Reg_aPO_a2_a_a0_combout = (!TRST_acombout & (((scan_instance_aIn_Reg_aL2(2)))))

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
	dataa => scan_instance_aIn_Reg_aPO_a2_a_a0_DATAA_driver,
	datad => scan_instance_aIn_Reg_aPO_a2_a_a0_DATAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => scan_instance_aIn_Reg_aPO_a2_a_a0_combout);

dut_instance_aadd_instance_adFF2_ay_CLK_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => scan_instance_aIn_Reg_aPO(0),
	dataout => dut_instance_aadd_instance_adFF2_ay_CLK_driver);

dut_instance_aadd_instance_adFF2_ay_DATAA_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => dut_instance_aadd_instance_adFF1_ay_a0_combout,
	dataout => dut_instance_aadd_instance_adFF2_ay_DATAA_driver);

dut_instance_aadd_instance_adFF2_ay_DATAB_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => scan_instance_aIn_Reg_aPO_a2_a_a0_combout,
	dataout => dut_instance_aadd_instance_adFF2_ay_DATAB_driver);

dut_instance_aadd_instance_adFF2_ay_DATAC_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => dut_instance_aadd_instance_adFF1_ay_aregout,
	dataout => dut_instance_aadd_instance_adFF2_ay_DATAC_driver);

dut_instance_aadd_instance_adFF2_ay_DATAD_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => dut_instance_aadd_instance_adFF2_ay_aregout,
	dataout => dut_instance_aadd_instance_adFF2_ay_DATAD_driver);

-- Location: LC_X3_Y6_N9
dut_instance_aadd_instance_adFF2_ay : maxv_lcell
-- Equation(s):
-- dut_instance_aadd_instance_adFF2_ay_aregout = DFFEAS((!scan_instance_aIn_Reg_aPO_a2_a_a0_combout & ((dut_instance_aadd_instance_adFF1_ay_a0_combout & (!dut_instance_aadd_instance_adFF1_ay_aregout & dut_instance_aadd_instance_adFF2_ay_aregout)) # 
-- (!dut_instance_aadd_instance_adFF1_ay_a0_combout & (dut_instance_aadd_instance_adFF1_ay_aregout)))), GLOBAL(scan_instance_aIn_Reg_aPO(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1210",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => dut_instance_aadd_instance_adFF2_ay_CLK_driver,
	dataa => dut_instance_aadd_instance_adFF2_ay_DATAA_driver,
	datab => dut_instance_aadd_instance_adFF2_ay_DATAB_driver,
	datac => dut_instance_aadd_instance_adFF2_ay_DATAC_driver,
	datad => dut_instance_aadd_instance_adFF2_ay_DATAD_driver,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dut_instance_aadd_instance_adFF2_ay_aregout);

dut_instance_aadd_instance_adFF0_ay_a2_DATAA_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => dut_instance_aadd_instance_adFF1_ay_a0_combout,
	dataout => dut_instance_aadd_instance_adFF0_ay_a2_DATAA_driver);

dut_instance_aadd_instance_adFF0_ay_a2_DATAB_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => dut_instance_aadd_instance_adFF0_ay_aregout,
	dataout => dut_instance_aadd_instance_adFF0_ay_a2_DATAB_driver);

dut_instance_aadd_instance_adFF0_ay_a2_DATAC_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => dut_instance_aadd_instance_adFF1_ay_aregout,
	dataout => dut_instance_aadd_instance_adFF0_ay_a2_DATAC_driver);

dut_instance_aadd_instance_adFF0_ay_a2_DATAD_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => dut_instance_aadd_instance_adFF2_ay_aregout,
	dataout => dut_instance_aadd_instance_adFF0_ay_a2_DATAD_driver);

-- Location: LC_X3_Y6_N8
dut_instance_aadd_instance_adFF0_ay_a2 : maxv_lcell
-- Equation(s):
-- dut_instance_aadd_instance_adFF0_ay_a2_combout = (dut_instance_aadd_instance_adFF1_ay_a0_combout & (dut_instance_aadd_instance_adFF0_ay_aregout & (!dut_instance_aadd_instance_adFF1_ay_aregout))) # (!dut_instance_aadd_instance_adFF1_ay_a0_combout & 
-- (((dut_instance_aadd_instance_adFF2_ay_aregout) # (!dut_instance_aadd_instance_adFF1_ay_aregout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5d0d",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => dut_instance_aadd_instance_adFF0_ay_a2_DATAA_driver,
	datab => dut_instance_aadd_instance_adFF0_ay_a2_DATAB_driver,
	datac => dut_instance_aadd_instance_adFF0_ay_a2_DATAC_driver,
	datad => dut_instance_aadd_instance_adFF0_ay_a2_DATAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => dut_instance_aadd_instance_adFF0_ay_a2_combout);

dut_instance_aadd_instance_adFF0_ay_CLK_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => scan_instance_aIn_Reg_aPO(0),
	dataout => dut_instance_aadd_instance_adFF0_ay_CLK_driver);

dut_instance_aadd_instance_adFF0_ay_DATAB_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => dut_instance_aadd_instance_adFF0_ay_a2_combout,
	dataout => dut_instance_aadd_instance_adFF0_ay_DATAB_driver);

dut_instance_aadd_instance_adFF0_ay_DATAC_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => TRST_acombout,
	dataout => dut_instance_aadd_instance_adFF0_ay_DATAC_driver);

dut_instance_aadd_instance_adFF0_ay_DATAD_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => scan_instance_aIn_Reg_aL2(2),
	dataout => dut_instance_aadd_instance_adFF0_ay_DATAD_driver);

-- Location: LC_X3_Y6_N7
dut_instance_aadd_instance_adFF0_ay : maxv_lcell
-- Equation(s):
-- dut_instance_aadd_instance_adFF0_ay_aregout = DFFEAS(((dut_instance_aadd_instance_adFF0_ay_a2_combout & ((TRST_acombout) # (!scan_instance_aIn_Reg_aL2(2))))), GLOBAL(scan_instance_aIn_Reg_aPO(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => dut_instance_aadd_instance_adFF0_ay_CLK_driver,
	datab => dut_instance_aadd_instance_adFF0_ay_DATAB_driver,
	datac => dut_instance_aadd_instance_adFF0_ay_DATAC_driver,
	datad => dut_instance_aadd_instance_adFF0_ay_DATAD_driver,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => dut_instance_aadd_instance_adFF0_ay_aregout);

scan_instance_aOut_Reg_amux1_a0_a_a0_DATAB_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => scan_instance_aIn_Reg_aL2(2),
	dataout => scan_instance_aOut_Reg_amux1_a0_a_a0_DATAB_driver);

scan_instance_aOut_Reg_amux1_a0_a_a0_DATAC_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => TRST_acombout,
	dataout => scan_instance_aOut_Reg_amux1_a0_a_a0_DATAC_driver);

scan_instance_aOut_Reg_amux1_a0_a_a0_DATAD_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => dut_instance_aadd_instance_adFF2_ay_aregout,
	dataout => scan_instance_aOut_Reg_amux1_a0_a_a0_DATAD_driver);

-- Location: LC_X3_Y6_N4
scan_instance_aOut_Reg_amux1_a0_a_a0 : maxv_lcell
-- Equation(s):
-- scan_instance_aOut_Reg_amux1_a0_a_a0_combout = ((dut_instance_aadd_instance_adFF2_ay_aregout & ((TRST_acombout) # (!scan_instance_aIn_Reg_aL2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => scan_instance_aOut_Reg_amux1_a0_a_a0_DATAB_driver,
	datac => scan_instance_aOut_Reg_amux1_a0_a_a0_DATAC_driver,
	datad => scan_instance_aOut_Reg_amux1_a0_a_a0_DATAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => scan_instance_aOut_Reg_amux1_a0_a_a0_combout);

scan_instance_aOut_Reg_amux1_a0_a_a1_DATAA_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => dut_instance_aadd_instance_adFF1_ay_aregout,
	dataout => scan_instance_aOut_Reg_amux1_a0_a_a1_DATAA_driver);

scan_instance_aOut_Reg_amux1_a0_a_a1_DATAB_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => dut_instance_aadd_instance_adFF0_ay_aregout,
	dataout => scan_instance_aOut_Reg_amux1_a0_a_a1_DATAB_driver);

scan_instance_aOut_Reg_amux1_a0_a_a1_DATAC_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => scan_instance_aOut_Reg_amux1_a0_a_a0_combout,
	dataout => scan_instance_aOut_Reg_amux1_a0_a_a1_DATAC_driver);

scan_instance_aOut_Reg_amux1_a0_a_a1_DATAD_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => dut_instance_aadd_instance_adFF1_ay_a0_combout,
	dataout => scan_instance_aOut_Reg_amux1_a0_a_a1_DATAD_driver);

-- Location: LC_X3_Y6_N6
scan_instance_aOut_Reg_amux1_a0_a_a1 : maxv_lcell
-- Equation(s):
-- scan_instance_aOut_Reg_amux1_a0_a_a1_combout = (scan_instance_aOut_Reg_amux1_a0_a_a0_combout & ((dut_instance_aadd_instance_adFF1_ay_aregout & ((!dut_instance_aadd_instance_adFF1_ay_a0_combout))) # (!dut_instance_aadd_instance_adFF1_ay_aregout & 
-- (dut_instance_aadd_instance_adFF0_ay_aregout & dut_instance_aadd_instance_adFF1_ay_a0_combout))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "40a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => scan_instance_aOut_Reg_amux1_a0_a_a1_DATAA_driver,
	datab => scan_instance_aOut_Reg_amux1_a0_a_a1_DATAB_driver,
	datac => scan_instance_aOut_Reg_amux1_a0_a_a1_DATAC_driver,
	datad => scan_instance_aOut_Reg_amux1_a0_a_a1_DATAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => scan_instance_aOut_Reg_amux1_a0_a_a1_combout);

scan_instance_aOut_Reg_amux1_a0_a_a2_DATAA_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => scan_instance_aIn_Reg_aL1(0),
	dataout => scan_instance_aOut_Reg_amux1_a0_a_a2_DATAA_driver);

scan_instance_aOut_Reg_amux1_a0_a_a2_DATAB_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => TRST_acombout,
	dataout => scan_instance_aOut_Reg_amux1_a0_a_a2_DATAB_driver);

scan_instance_aOut_Reg_amux1_a0_a_a2_DATAC_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => scan_instance_aOut_Reg_amux1_a0_a_a1_combout,
	dataout => scan_instance_aOut_Reg_amux1_a0_a_a2_DATAC_driver);

scan_instance_aOut_Reg_amux1_a0_a_a2_DATAD_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => scan_instance_aSelector3_a0,
	dataout => scan_instance_aOut_Reg_amux1_a0_a_a2_DATAD_driver);

-- Location: LC_X3_Y6_N2
scan_instance_aOut_Reg_amux1_a0_a_a2 : maxv_lcell
-- Equation(s):
-- scan_instance_aOut_Reg_amux1_a0_a_a2_combout = (TRST_acombout & (((scan_instance_aOut_Reg_amux1_a0_a_a1_combout)))) # (!TRST_acombout & ((scan_instance_aSelector3_a0 & (scan_instance_aIn_Reg_aL1(0))) # (!scan_instance_aSelector3_a0 & 
-- ((scan_instance_aOut_Reg_amux1_a0_a_a1_combout)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => scan_instance_aOut_Reg_amux1_a0_a_a2_DATAA_driver,
	datab => scan_instance_aOut_Reg_amux1_a0_a_a2_DATAB_driver,
	datac => scan_instance_aOut_Reg_amux1_a0_a_a2_DATAC_driver,
	datad => scan_instance_aOut_Reg_amux1_a0_a_a2_DATAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => scan_instance_aOut_Reg_amux1_a0_a_a2_combout);

scan_instance_aSelector0_a0_DATAA_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => TMS_acombout,
	dataout => scan_instance_aSelector0_a0_DATAA_driver);

scan_instance_aSelector0_a0_DATAC_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => scan_instance_acurrent_state_as_update_aregout,
	dataout => scan_instance_aSelector0_a0_DATAC_driver);

scan_instance_aSelector0_a0_DATAD_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => scan_instance_acurrent_state_as_idle_aregout,
	dataout => scan_instance_aSelector0_a0_DATAD_driver);

-- Location: LC_X4_Y6_N8
scan_instance_aSelector0_a0 : maxv_lcell
-- Equation(s):
-- scan_instance_aSelector0_a0_combout = (TMS_acombout) # (((scan_instance_acurrent_state_as_update_aregout) # (!scan_instance_acurrent_state_as_idle_aregout)))

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
	dataa => scan_instance_aSelector0_a0_DATAA_driver,
	datac => scan_instance_aSelector0_a0_DATAC_driver,
	datad => scan_instance_aSelector0_a0_DATAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => scan_instance_aSelector0_a0_combout);

scan_instance_aOut_Reg_aL1_a0_a_CLK_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => TCLK_acombout,
	dataout => scan_instance_aOut_Reg_aL1_a0_a_CLK_driver);

scan_instance_aOut_Reg_aL1_a0_a_DATAA_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => TRST_acombout,
	dataout => scan_instance_aOut_Reg_aL1_a0_a_DATAA_driver);

scan_instance_aOut_Reg_aL1_a0_a_DATAB_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => scan_instance_aOut_Reg_amux1_a0_a_a2_combout,
	dataout => scan_instance_aOut_Reg_aL1_a0_a_DATAB_driver);

scan_instance_aOut_Reg_aL1_a0_a_DATAC_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => scan_instance_aOut_Reg_aL1(0),
	dataout => scan_instance_aOut_Reg_aL1_a0_a_DATAC_driver);

scan_instance_aOut_Reg_aL1_a0_a_DATAD_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => scan_instance_aSelector0_a0_combout,
	dataout => scan_instance_aOut_Reg_aL1_a0_a_DATAD_driver);

scan_instance_aOut_Reg_aL1_a0_a_SCLR_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => TRST_acombout,
	dataout => scan_instance_aOut_Reg_aL1_a0_a_SCLR_driver);

-- Location: LC_X3_Y6_N0
scan_instance_aOut_Reg_aL1_a0_a : maxv_lcell
-- Equation(s):
-- scan_instance_aOut_Reg_aL1(0) = DFFEAS((TRST_acombout & (((scan_instance_aOut_Reg_aL1(0))))) # (!TRST_acombout & ((scan_instance_aSelector0_a0_combout & ((scan_instance_aOut_Reg_aL1(0)))) # (!scan_instance_aSelector0_a0_combout & 
-- (scan_instance_aOut_Reg_amux1_a0_a_a2_combout)))), GLOBAL(TCLK_acombout), VCC, , , , , TRST_acombout, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0e4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => scan_instance_aOut_Reg_aL1_a0_a_CLK_driver,
	dataa => scan_instance_aOut_Reg_aL1_a0_a_DATAA_driver,
	datab => scan_instance_aOut_Reg_aL1_a0_a_DATAB_driver,
	datac => scan_instance_aOut_Reg_aL1_a0_a_DATAC_driver,
	datad => scan_instance_aOut_Reg_aL1_a0_a_DATAD_driver,
	aclr => GND,
	sclr => scan_instance_aOut_Reg_aL1_a0_a_SCLR_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => scan_instance_aOut_Reg_aL1(0));

TDO_DATAIN_routing_wire_inst : maxv_routing_wire
PORT MAP (
	datain => scan_instance_aOut_Reg_aL1(0),
	dataout => TDO_DATAIN_driver);

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
TDO_aI : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => TDO_DATAIN_driver,
	oe => VCC,
	padio => ww_TDO);
END structure;


