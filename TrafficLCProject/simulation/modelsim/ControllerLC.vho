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

-- DATE "06/14/2024 16:32:28"

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

ENTITY 	ControllerLC IS
    PORT (
	clock : IN std_logic;
	rst : IN std_logic;
	Y : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END ControllerLC;

-- Design Ports Information


ARCHITECTURE structure OF ControllerLC IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_Y : std_logic_vector(7 DOWNTO 0);
SIGNAL \Delay2|Add0~150\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \Delay2|Add0~50_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \Delay1|Add0~5_combout\ : std_logic;
SIGNAL \Delay1|Add0~7\ : std_logic;
SIGNAL \Delay1|Add0~0_combout\ : std_logic;
SIGNAL \Delay2|Add0~152_cout0\ : std_logic;
SIGNAL \Delay2|Add0~152COUT1_156\ : std_logic;
SIGNAL \Delay2|Add0~145_combout\ : std_logic;
SIGNAL \Delay2|Add0~147\ : std_logic;
SIGNAL \Delay2|Add0~147COUT1_157\ : std_logic;
SIGNAL \Delay2|Add0~140_combout\ : std_logic;
SIGNAL \Delay2|Add0~142\ : std_logic;
SIGNAL \Delay2|Add0~142COUT1_158\ : std_logic;
SIGNAL \Delay2|Add0~135_combout\ : std_logic;
SIGNAL \Delay2|Add0~137\ : std_logic;
SIGNAL \Delay2|Add0~137COUT1_159\ : std_logic;
SIGNAL \Delay2|Add0~130_combout\ : std_logic;
SIGNAL \Delay2|Add0~132\ : std_logic;
SIGNAL \Delay2|Add0~110_combout\ : std_logic;
SIGNAL \Delay2|Add0~112\ : std_logic;
SIGNAL \Delay2|Add0~112COUT1_160\ : std_logic;
SIGNAL \Delay2|Add0~125_combout\ : std_logic;
SIGNAL \Delay2|Add0~127\ : std_logic;
SIGNAL \Delay2|Add0~127COUT1_161\ : std_logic;
SIGNAL \Delay2|Add0~120_combout\ : std_logic;
SIGNAL \Delay2|Add0~122\ : std_logic;
SIGNAL \Delay2|Add0~122COUT1_162\ : std_logic;
SIGNAL \Delay2|Add0~115_combout\ : std_logic;
SIGNAL \Delay2|Add0~117\ : std_logic;
SIGNAL \Delay2|Add0~117COUT1_163\ : std_logic;
SIGNAL \Delay2|Add0~105_combout\ : std_logic;
SIGNAL \Delay2|Add0~107\ : std_logic;
SIGNAL \Delay2|Add0~100_combout\ : std_logic;
SIGNAL \Delay2|Add0~102\ : std_logic;
SIGNAL \Delay2|Add0~102COUT1_164\ : std_logic;
SIGNAL \Delay2|Add0~95_combout\ : std_logic;
SIGNAL \Delay2|Add0~97\ : std_logic;
SIGNAL \Delay2|Add0~97COUT1_165\ : std_logic;
SIGNAL \Delay2|Add0~90_combout\ : std_logic;
SIGNAL \Delay2|Add0~92\ : std_logic;
SIGNAL \Delay2|Add0~92COUT1_166\ : std_logic;
SIGNAL \Delay2|Add0~80_combout\ : std_logic;
SIGNAL \Delay2|Add0~82\ : std_logic;
SIGNAL \Delay2|Add0~82COUT1_167\ : std_logic;
SIGNAL \Delay2|Add0~75_combout\ : std_logic;
SIGNAL \Delay2|Add0~77\ : std_logic;
SIGNAL \Delay2|Add0~85_combout\ : std_logic;
SIGNAL \Delay2|Add0~87\ : std_logic;
SIGNAL \Delay2|Add0~87COUT1_168\ : std_logic;
SIGNAL \Delay2|Add0~70_combout\ : std_logic;
SIGNAL \Delay2|Add0~72\ : std_logic;
SIGNAL \Delay2|Add0~72COUT1_169\ : std_logic;
SIGNAL \Delay2|Add0~65_combout\ : std_logic;
SIGNAL \Delay2|Add0~67\ : std_logic;
SIGNAL \Delay2|Add0~67COUT1_170\ : std_logic;
SIGNAL \Delay2|Add0~60_combout\ : std_logic;
SIGNAL \Delay2|Equal0~3\ : std_logic;
SIGNAL \Delay2|Equal0~5\ : std_logic;
SIGNAL \Delay2|Equal0~4\ : std_logic;
SIGNAL \Delay2|Equal0~7\ : std_logic;
SIGNAL \Delay2|Equal0~6\ : std_logic;
SIGNAL \Delay2|Equal0~8_combout\ : std_logic;
SIGNAL \Delay2|Add0~52\ : std_logic;
SIGNAL \Delay2|Add0~52COUT1_172\ : std_logic;
SIGNAL \Delay2|Add0~40_combout\ : std_logic;
SIGNAL \Delay2|Add0~42\ : std_logic;
SIGNAL \Delay2|Add0~42COUT1_173\ : std_logic;
SIGNAL \Delay2|Add0~37\ : std_logic;
SIGNAL \Delay2|Add0~37COUT1_174\ : std_logic;
SIGNAL \Delay2|Add0~45_combout\ : std_logic;
SIGNAL \Delay2|Add0~47\ : std_logic;
SIGNAL \Delay2|Add0~47COUT1_175\ : std_logic;
SIGNAL \Delay2|Add0~30_combout\ : std_logic;
SIGNAL \Delay2|Add0~32\ : std_logic;
SIGNAL \Delay2|Add0~15_combout\ : std_logic;
SIGNAL \Delay2|Add0~17\ : std_logic;
SIGNAL \Delay2|Add0~17COUT1_176\ : std_logic;
SIGNAL \Delay2|Add0~10_combout\ : std_logic;
SIGNAL \Delay2|Add0~12\ : std_logic;
SIGNAL \Delay2|Add0~12COUT1_177\ : std_logic;
SIGNAL \Delay2|Add0~5_combout\ : std_logic;
SIGNAL \Delay2|Add0~7\ : std_logic;
SIGNAL \Delay2|Add0~7COUT1_178\ : std_logic;
SIGNAL \Delay2|Add0~0_combout\ : std_logic;
SIGNAL \Delay2|Add0~2\ : std_logic;
SIGNAL \Delay2|Add0~2COUT1_179\ : std_logic;
SIGNAL \Delay2|Add0~25_combout\ : std_logic;
SIGNAL \Delay2|Equal0~0\ : std_logic;
SIGNAL \Delay1|Equal0~0\ : std_logic;
SIGNAL \Delay2|Add0~27\ : std_logic;
SIGNAL \Delay2|Add0~20_combout\ : std_logic;
SIGNAL \Delay2|Equal0~1\ : std_logic;
SIGNAL \Delay2|Equal0~9\ : std_logic;
SIGNAL \Delay2|Add0~62\ : std_logic;
SIGNAL \Delay2|Add0~62COUT1_171\ : std_logic;
SIGNAL \Delay2|Add0~55_combout\ : std_logic;
SIGNAL \Delay2|Add0~57\ : std_logic;
SIGNAL \Delay2|Add0~35_combout\ : std_logic;
SIGNAL \Delay2|Equal0~2\ : std_logic;
SIGNAL \Delay2|inY~regout\ : std_logic;
SIGNAL \Delay1|Add0~2\ : std_logic;
SIGNAL \Delay1|Add0~2COUT1_161\ : std_logic;
SIGNAL \Delay1|Add0~155_combout\ : std_logic;
SIGNAL \Delay1|Add0~157\ : std_logic;
SIGNAL \Delay1|Add0~157COUT1_162\ : std_logic;
SIGNAL \Delay1|Add0~150_combout\ : std_logic;
SIGNAL \Delay1|Add0~152\ : std_logic;
SIGNAL \Delay1|Add0~152COUT1_163\ : std_logic;
SIGNAL \Delay1|Add0~145_combout\ : std_logic;
SIGNAL \Delay1|Add0~147\ : std_logic;
SIGNAL \Delay1|Add0~147COUT1_164\ : std_logic;
SIGNAL \Delay1|Add0~140_combout\ : std_logic;
SIGNAL \Delay1|Add0~142\ : std_logic;
SIGNAL \Delay1|Add0~125_combout\ : std_logic;
SIGNAL \Delay1|Add0~127\ : std_logic;
SIGNAL \Delay1|Add0~127COUT1_165\ : std_logic;
SIGNAL \Delay1|Add0~135_combout\ : std_logic;
SIGNAL \Delay1|Add0~137\ : std_logic;
SIGNAL \Delay1|Add0~137COUT1_166\ : std_logic;
SIGNAL \Delay1|Add0~130_combout\ : std_logic;
SIGNAL \Delay1|Add0~132\ : std_logic;
SIGNAL \Delay1|Add0~132COUT1_167\ : std_logic;
SIGNAL \Delay1|Add0~120_combout\ : std_logic;
SIGNAL \Delay1|Add0~122\ : std_logic;
SIGNAL \Delay1|Add0~122COUT1_168\ : std_logic;
SIGNAL \Delay1|Add0~115_combout\ : std_logic;
SIGNAL \Delay1|Add0~117\ : std_logic;
SIGNAL \Delay1|Add0~110_combout\ : std_logic;
SIGNAL \Delay1|Add0~112\ : std_logic;
SIGNAL \Delay1|Add0~112COUT1_169\ : std_logic;
SIGNAL \Delay1|Add0~105_combout\ : std_logic;
SIGNAL \Delay1|Add0~107\ : std_logic;
SIGNAL \Delay1|Add0~107COUT1_170\ : std_logic;
SIGNAL \Delay1|Add0~100_combout\ : std_logic;
SIGNAL \Delay1|Add0~102\ : std_logic;
SIGNAL \Delay1|Add0~102COUT1_171\ : std_logic;
SIGNAL \Delay1|Add0~95_combout\ : std_logic;
SIGNAL \Delay1|Add0~97\ : std_logic;
SIGNAL \Delay1|Add0~97COUT1_172\ : std_logic;
SIGNAL \Delay1|Add0~85_combout\ : std_logic;
SIGNAL \Delay1|Add0~87\ : std_logic;
SIGNAL \Delay1|Add0~90_combout\ : std_logic;
SIGNAL \Delay1|Add0~92\ : std_logic;
SIGNAL \Delay1|Add0~92COUT1_173\ : std_logic;
SIGNAL \Delay1|Add0~80_combout\ : std_logic;
SIGNAL \Delay1|Add0~82\ : std_logic;
SIGNAL \Delay1|Add0~82COUT1_174\ : std_logic;
SIGNAL \Delay1|Add0~65_combout\ : std_logic;
SIGNAL \Delay1|Add0~67\ : std_logic;
SIGNAL \Delay1|Add0~67COUT1_175\ : std_logic;
SIGNAL \Delay1|Add0~75_combout\ : std_logic;
SIGNAL \Delay1|Add0~77\ : std_logic;
SIGNAL \Delay1|Add0~77COUT1_176\ : std_logic;
SIGNAL \Delay1|Add0~70_combout\ : std_logic;
SIGNAL \Delay1|Add0~72\ : std_logic;
SIGNAL \Delay1|Add0~60_combout\ : std_logic;
SIGNAL \Delay1|Equal0~4\ : std_logic;
SIGNAL \Delay1|Equal0~8\ : std_logic;
SIGNAL \Delay1|Equal0~6\ : std_logic;
SIGNAL \Delay1|Equal0~7\ : std_logic;
SIGNAL \Delay1|Equal0~5\ : std_logic;
SIGNAL \Delay1|Equal0~9_combout\ : std_logic;
SIGNAL \Delay1|Add0~62\ : std_logic;
SIGNAL \Delay1|Add0~62COUT1_177\ : std_logic;
SIGNAL \Delay1|Add0~50_combout\ : std_logic;
SIGNAL \Delay1|Add0~52\ : std_logic;
SIGNAL \Delay1|Add0~52COUT1_178\ : std_logic;
SIGNAL \Delay1|Add0~47\ : std_logic;
SIGNAL \Delay1|Add0~47COUT1_179\ : std_logic;
SIGNAL \Delay1|Add0~55_combout\ : std_logic;
SIGNAL \Delay1|Add0~57\ : std_logic;
SIGNAL \Delay1|Add0~57COUT1_180\ : std_logic;
SIGNAL \Delay1|Add0~40_combout\ : std_logic;
SIGNAL \Delay1|Add0~42\ : std_logic;
SIGNAL \Delay1|Add0~15_combout\ : std_logic;
SIGNAL \Delay1|Add0~17\ : std_logic;
SIGNAL \Delay1|Add0~17COUT1_181\ : std_logic;
SIGNAL \Delay1|Add0~10_combout\ : std_logic;
SIGNAL \Delay1|Add0~12\ : std_logic;
SIGNAL \Delay1|Add0~12COUT1_182\ : std_logic;
SIGNAL \Delay1|Add0~25_combout\ : std_logic;
SIGNAL \Delay1|Add0~27\ : std_logic;
SIGNAL \Delay1|Add0~27COUT1_183\ : std_logic;
SIGNAL \Delay1|Add0~20_combout\ : std_logic;
SIGNAL \Delay1|Add0~22\ : std_logic;
SIGNAL \Delay1|Add0~22COUT1_184\ : std_logic;
SIGNAL \Delay1|Add0~35_combout\ : std_logic;
SIGNAL \Delay1|Equal0~1\ : std_logic;
SIGNAL \Delay1|Add0~37\ : std_logic;
SIGNAL \Delay1|Add0~30_combout\ : std_logic;
SIGNAL \Delay1|Equal0~2\ : std_logic;
SIGNAL \Delay1|Equal0~10\ : std_logic;
SIGNAL \Delay1|Add0~45_combout\ : std_logic;
SIGNAL \Delay1|Equal0~3\ : std_logic;
SIGNAL \Delay1|inG~regout\ : std_logic;
SIGNAL \Y_Curr.S4~regout\ : std_logic;
SIGNAL \Y_Curr.S5~regout\ : std_logic;
SIGNAL \Y_Curr.S6~regout\ : std_logic;
SIGNAL \Y_Curr.S7~regout\ : std_logic;
SIGNAL \Y_Curr.S8~regout\ : std_logic;
SIGNAL \Y_Curr.S0~regout\ : std_logic;
SIGNAL \Y_Curr.S1~regout\ : std_logic;
SIGNAL \Y_Curr.S2~regout\ : std_logic;
SIGNAL \Y_Curr.S3~regout\ : std_logic;
SIGNAL \stateOp1[1]~0_combout\ : std_logic;
SIGNAL \stateOp1[2]~1_combout\ : std_logic;
SIGNAL \stateOp1[1]~2_combout\ : std_logic;
SIGNAL \stateOp1[1]~3_combout\ : std_logic;
SIGNAL \stateOp1[9]~4_combout\ : std_logic;
SIGNAL \stateOp1[5]~5_combout\ : std_logic;
SIGNAL \stateOp1[9]~6_combout\ : std_logic;
SIGNAL \stateOp1[9]~7_combout\ : std_logic;
SIGNAL \stateOp1[13]~8_combout\ : std_logic;
SIGNAL \Delay1|bit_rep_clk_G\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Delay2|bit_rep_clk_Y\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_stateOp1[1]~2_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_rst <= rst;
Y <= ww_Y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_stateOp1[1]~2_combout\ <= NOT \stateOp1[1]~2_combout\;

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: LC_X5_Y8_N5
\Delay2|Add0~50\ : maxv_lcell
-- Equation(s):
-- \Delay2|Add0~50_combout\ = (\Delay2|bit_rep_clk_Y\(21) $ ((!\Delay2|Add0~57\)))
-- \Delay2|Add0~52\ = CARRY(((\Delay2|bit_rep_clk_Y\(21) & !\Delay2|Add0~57\)))
-- \Delay2|Add0~52COUT1_172\ = CARRY(((\Delay2|bit_rep_clk_Y\(21) & !\Delay2|Add0~57\)))

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
	datab => \Delay2|bit_rep_clk_Y\(21),
	cin => \Delay2|Add0~57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay2|Add0~50_combout\,
	cout0 => \Delay2|Add0~52\,
	cout1 => \Delay2|Add0~52COUT1_172\);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: LC_X5_Y7_N3
\Delay2|bit_rep_clk_Y[21]\ : maxv_lcell
-- Equation(s):
-- \Delay2|bit_rep_clk_Y\(21) = DFFEAS((((!\Delay2|Equal0~9\ & \Delay2|Add0~50_combout\))), GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \Delay2|Equal0~9\,
	datad => \Delay2|Add0~50_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Delay2|bit_rep_clk_Y\(21));

-- Location: LC_X8_Y8_N4
\Delay1|Add0~5\ : maxv_lcell
-- Equation(s):
-- \Delay1|Add0~5_combout\ = ((!\Delay1|bit_rep_clk_G\(0)))
-- \Delay1|Add0~7\ = CARRY(((\Delay1|bit_rep_clk_G\(0))))

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
	datab => \Delay1|bit_rep_clk_G\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay1|Add0~5_combout\,
	cout => \Delay1|Add0~7\);

-- Location: LC_X3_Y8_N4
\Delay1|bit_rep_clk_G[0]\ : maxv_lcell
-- Equation(s):
-- \Delay1|bit_rep_clk_G\(0) = DFFEAS(GND, GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , \Delay1|Add0~5_combout\, , , VCC)

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
	clk => \clock~combout\,
	datac => \Delay1|Add0~5_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Delay1|bit_rep_clk_G\(0));

-- Location: LC_X8_Y8_N5
\Delay1|Add0~0\ : maxv_lcell
-- Equation(s):
-- \Delay1|Add0~0_combout\ = (\Delay1|bit_rep_clk_G\(1) $ ((\Delay1|Add0~7\)))
-- \Delay1|Add0~2\ = CARRY(((!\Delay1|Add0~7\) # (!\Delay1|bit_rep_clk_G\(1))))
-- \Delay1|Add0~2COUT1_161\ = CARRY(((!\Delay1|Add0~7\) # (!\Delay1|bit_rep_clk_G\(1))))

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
	datab => \Delay1|bit_rep_clk_G\(1),
	cin => \Delay1|Add0~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay1|Add0~0_combout\,
	cout0 => \Delay1|Add0~2\,
	cout1 => \Delay1|Add0~2COUT1_161\);

-- Location: LC_X3_Y8_N3
\Delay1|bit_rep_clk_G[1]\ : maxv_lcell
-- Equation(s):
-- \Delay1|Equal0~0\ = (((B1_bit_rep_clk_G[1] & \Delay1|bit_rep_clk_G\(0))))
-- \Delay1|bit_rep_clk_G\(1) = DFFEAS(\Delay1|Equal0~0\, GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , \Delay1|Add0~0_combout\, , , VCC)

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
	clk => \clock~combout\,
	datac => \Delay1|Add0~0_combout\,
	datad => \Delay1|bit_rep_clk_G\(0),
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay1|Equal0~0\,
	regout => \Delay1|bit_rep_clk_G\(1));

-- Location: LC_X3_Y8_N5
\Delay2|Add0~152\ : maxv_lcell
-- Equation(s):
-- \Delay2|Add0~152_cout0\ = CARRY((\Delay1|bit_rep_clk_G\(1) & (\Delay1|bit_rep_clk_G\(0))))
-- \Delay2|Add0~152COUT1_156\ = CARRY((\Delay1|bit_rep_clk_G\(1) & (\Delay1|bit_rep_clk_G\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff88",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Delay1|bit_rep_clk_G\(1),
	datab => \Delay1|bit_rep_clk_G\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay2|Add0~150\,
	cout0 => \Delay2|Add0~152_cout0\,
	cout1 => \Delay2|Add0~152COUT1_156\);

-- Location: LC_X3_Y8_N6
\Delay2|Add0~145\ : maxv_lcell
-- Equation(s):
-- \Delay2|Add0~145_combout\ = (\Delay2|bit_rep_clk_Y\(2) $ ((\Delay2|Add0~152_cout0\)))
-- \Delay2|Add0~147\ = CARRY(((!\Delay2|Add0~152_cout0\) # (!\Delay2|bit_rep_clk_Y\(2))))
-- \Delay2|Add0~147COUT1_157\ = CARRY(((!\Delay2|Add0~152COUT1_156\) # (!\Delay2|bit_rep_clk_Y\(2))))

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
	datab => \Delay2|bit_rep_clk_Y\(2),
	cin0 => \Delay2|Add0~152_cout0\,
	cin1 => \Delay2|Add0~152COUT1_156\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay2|Add0~145_combout\,
	cout0 => \Delay2|Add0~147\,
	cout1 => \Delay2|Add0~147COUT1_157\);

-- Location: LC_X3_Y8_N1
\Delay2|bit_rep_clk_Y[2]\ : maxv_lcell
-- Equation(s):
-- \Delay2|bit_rep_clk_Y\(2) = DFFEAS(GND, GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , \Delay2|Add0~145_combout\, , , VCC)

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
	clk => \clock~combout\,
	datac => \Delay2|Add0~145_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Delay2|bit_rep_clk_Y\(2));

-- Location: LC_X3_Y8_N7
\Delay2|Add0~140\ : maxv_lcell
-- Equation(s):
-- \Delay2|Add0~140_combout\ = (\Delay2|bit_rep_clk_Y\(3) $ ((!\Delay2|Add0~147\)))
-- \Delay2|Add0~142\ = CARRY(((\Delay2|bit_rep_clk_Y\(3) & !\Delay2|Add0~147\)))
-- \Delay2|Add0~142COUT1_158\ = CARRY(((\Delay2|bit_rep_clk_Y\(3) & !\Delay2|Add0~147COUT1_157\)))

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
	datab => \Delay2|bit_rep_clk_Y\(3),
	cin0 => \Delay2|Add0~147\,
	cin1 => \Delay2|Add0~147COUT1_157\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay2|Add0~140_combout\,
	cout0 => \Delay2|Add0~142\,
	cout1 => \Delay2|Add0~142COUT1_158\);

-- Location: LC_X3_Y8_N0
\Delay2|bit_rep_clk_Y[3]\ : maxv_lcell
-- Equation(s):
-- \Delay2|bit_rep_clk_Y\(3) = DFFEAS(GND, GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , \Delay2|Add0~140_combout\, , , VCC)

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
	clk => \clock~combout\,
	datac => \Delay2|Add0~140_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Delay2|bit_rep_clk_Y\(3));

-- Location: LC_X3_Y8_N8
\Delay2|Add0~135\ : maxv_lcell
-- Equation(s):
-- \Delay2|Add0~135_combout\ = (\Delay2|bit_rep_clk_Y\(4) $ ((\Delay2|Add0~142\)))
-- \Delay2|Add0~137\ = CARRY(((!\Delay2|Add0~142\) # (!\Delay2|bit_rep_clk_Y\(4))))
-- \Delay2|Add0~137COUT1_159\ = CARRY(((!\Delay2|Add0~142COUT1_158\) # (!\Delay2|bit_rep_clk_Y\(4))))

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
	datab => \Delay2|bit_rep_clk_Y\(4),
	cin0 => \Delay2|Add0~142\,
	cin1 => \Delay2|Add0~142COUT1_158\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay2|Add0~135_combout\,
	cout0 => \Delay2|Add0~137\,
	cout1 => \Delay2|Add0~137COUT1_159\);

-- Location: LC_X3_Y8_N2
\Delay2|bit_rep_clk_Y[4]\ : maxv_lcell
-- Equation(s):
-- \Delay2|bit_rep_clk_Y\(4) = DFFEAS((((\Delay2|Add0~135_combout\))), GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , , , , )

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
	clk => \clock~combout\,
	datad => \Delay2|Add0~135_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Delay2|bit_rep_clk_Y\(4));

-- Location: LC_X3_Y8_N9
\Delay2|Add0~130\ : maxv_lcell
-- Equation(s):
-- \Delay2|Add0~130_combout\ = \Delay2|bit_rep_clk_Y\(5) $ ((((!\Delay2|Add0~137\))))
-- \Delay2|Add0~132\ = CARRY((\Delay2|bit_rep_clk_Y\(5) & ((!\Delay2|Add0~137COUT1_159\))))

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
	dataa => \Delay2|bit_rep_clk_Y\(5),
	cin0 => \Delay2|Add0~137\,
	cin1 => \Delay2|Add0~137COUT1_159\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay2|Add0~130_combout\,
	cout => \Delay2|Add0~132\);

-- Location: LC_X4_Y7_N4
\Delay2|bit_rep_clk_Y[5]\ : maxv_lcell
-- Equation(s):
-- \Delay2|Equal0~7\ = (\Delay2|bit_rep_clk_Y\(2) & (\Delay2|bit_rep_clk_Y\(3) & (C1_bit_rep_clk_Y[5] & \Delay2|bit_rep_clk_Y\(4))))
-- \Delay2|bit_rep_clk_Y\(5) = DFFEAS(\Delay2|Equal0~7\, GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , \Delay2|Add0~130_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \Delay2|bit_rep_clk_Y\(2),
	datab => \Delay2|bit_rep_clk_Y\(3),
	datac => \Delay2|Add0~130_combout\,
	datad => \Delay2|bit_rep_clk_Y\(4),
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay2|Equal0~7\,
	regout => \Delay2|bit_rep_clk_Y\(5));

-- Location: LC_X4_Y8_N0
\Delay2|Add0~110\ : maxv_lcell
-- Equation(s):
-- \Delay2|Add0~110_combout\ = (\Delay2|bit_rep_clk_Y\(6) $ ((\Delay2|Add0~132\)))
-- \Delay2|Add0~112\ = CARRY(((!\Delay2|Add0~132\) # (!\Delay2|bit_rep_clk_Y\(6))))
-- \Delay2|Add0~112COUT1_160\ = CARRY(((!\Delay2|Add0~132\) # (!\Delay2|bit_rep_clk_Y\(6))))

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
	datab => \Delay2|bit_rep_clk_Y\(6),
	cin => \Delay2|Add0~132\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay2|Add0~110_combout\,
	cout0 => \Delay2|Add0~112\,
	cout1 => \Delay2|Add0~112COUT1_160\);

-- Location: LC_X4_Y7_N8
\Delay2|bit_rep_clk_Y[6]\ : maxv_lcell
-- Equation(s):
-- \Delay2|Equal0~6\ = (!\Delay2|bit_rep_clk_Y\(7) & (!\Delay2|bit_rep_clk_Y\(8) & (C1_bit_rep_clk_Y[6] & !\Delay2|bit_rep_clk_Y\(9))))
-- \Delay2|bit_rep_clk_Y\(6) = DFFEAS(\Delay2|Equal0~6\, GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , \Delay2|Add0~110_combout\, , , VCC)

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
	clk => \clock~combout\,
	dataa => \Delay2|bit_rep_clk_Y\(7),
	datab => \Delay2|bit_rep_clk_Y\(8),
	datac => \Delay2|Add0~110_combout\,
	datad => \Delay2|bit_rep_clk_Y\(9),
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay2|Equal0~6\,
	regout => \Delay2|bit_rep_clk_Y\(6));

-- Location: LC_X4_Y8_N1
\Delay2|Add0~125\ : maxv_lcell
-- Equation(s):
-- \Delay2|Add0~125_combout\ = \Delay2|bit_rep_clk_Y\(7) $ ((((!(!\Delay2|Add0~132\ & \Delay2|Add0~112\) # (\Delay2|Add0~132\ & \Delay2|Add0~112COUT1_160\)))))
-- \Delay2|Add0~127\ = CARRY((\Delay2|bit_rep_clk_Y\(7) & ((!\Delay2|Add0~112\))))
-- \Delay2|Add0~127COUT1_161\ = CARRY((\Delay2|bit_rep_clk_Y\(7) & ((!\Delay2|Add0~112COUT1_160\))))

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
	dataa => \Delay2|bit_rep_clk_Y\(7),
	cin => \Delay2|Add0~132\,
	cin0 => \Delay2|Add0~112\,
	cin1 => \Delay2|Add0~112COUT1_160\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay2|Add0~125_combout\,
	cout0 => \Delay2|Add0~127\,
	cout1 => \Delay2|Add0~127COUT1_161\);

-- Location: LC_X5_Y7_N1
\Delay2|bit_rep_clk_Y[7]\ : maxv_lcell
-- Equation(s):
-- \Delay2|bit_rep_clk_Y\(7) = DFFEAS((((!\Delay2|Equal0~9\ & \Delay2|Add0~125_combout\))), GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \Delay2|Equal0~9\,
	datad => \Delay2|Add0~125_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Delay2|bit_rep_clk_Y\(7));

-- Location: LC_X4_Y8_N2
\Delay2|Add0~120\ : maxv_lcell
-- Equation(s):
-- \Delay2|Add0~120_combout\ = (\Delay2|bit_rep_clk_Y\(8) $ (((!\Delay2|Add0~132\ & \Delay2|Add0~127\) # (\Delay2|Add0~132\ & \Delay2|Add0~127COUT1_161\))))
-- \Delay2|Add0~122\ = CARRY(((!\Delay2|Add0~127\) # (!\Delay2|bit_rep_clk_Y\(8))))
-- \Delay2|Add0~122COUT1_162\ = CARRY(((!\Delay2|Add0~127COUT1_161\) # (!\Delay2|bit_rep_clk_Y\(8))))

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
	datab => \Delay2|bit_rep_clk_Y\(8),
	cin => \Delay2|Add0~132\,
	cin0 => \Delay2|Add0~127\,
	cin1 => \Delay2|Add0~127COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay2|Add0~120_combout\,
	cout0 => \Delay2|Add0~122\,
	cout1 => \Delay2|Add0~122COUT1_162\);

-- Location: LC_X4_Y7_N0
\Delay2|bit_rep_clk_Y[8]\ : maxv_lcell
-- Equation(s):
-- \Delay2|bit_rep_clk_Y\(8) = DFFEAS((((\Delay2|Add0~120_combout\))), GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , , , , )

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
	clk => \clock~combout\,
	datad => \Delay2|Add0~120_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Delay2|bit_rep_clk_Y\(8));

-- Location: LC_X4_Y8_N3
\Delay2|Add0~115\ : maxv_lcell
-- Equation(s):
-- \Delay2|Add0~115_combout\ = (\Delay2|bit_rep_clk_Y\(9) $ ((!(!\Delay2|Add0~132\ & \Delay2|Add0~122\) # (\Delay2|Add0~132\ & \Delay2|Add0~122COUT1_162\))))
-- \Delay2|Add0~117\ = CARRY(((\Delay2|bit_rep_clk_Y\(9) & !\Delay2|Add0~122\)))
-- \Delay2|Add0~117COUT1_163\ = CARRY(((\Delay2|bit_rep_clk_Y\(9) & !\Delay2|Add0~122COUT1_162\)))

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
	datab => \Delay2|bit_rep_clk_Y\(9),
	cin => \Delay2|Add0~132\,
	cin0 => \Delay2|Add0~122\,
	cin1 => \Delay2|Add0~122COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay2|Add0~115_combout\,
	cout0 => \Delay2|Add0~117\,
	cout1 => \Delay2|Add0~117COUT1_163\);

-- Location: LC_X4_Y7_N3
\Delay2|bit_rep_clk_Y[9]\ : maxv_lcell
-- Equation(s):
-- \Delay2|bit_rep_clk_Y\(9) = DFFEAS(GND, GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , \Delay2|Add0~115_combout\, , , VCC)

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
	clk => \clock~combout\,
	datac => \Delay2|Add0~115_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Delay2|bit_rep_clk_Y\(9));

-- Location: LC_X4_Y8_N4
\Delay2|Add0~105\ : maxv_lcell
-- Equation(s):
-- \Delay2|Add0~105_combout\ = (\Delay2|bit_rep_clk_Y\(10) $ (((!\Delay2|Add0~132\ & \Delay2|Add0~117\) # (\Delay2|Add0~132\ & \Delay2|Add0~117COUT1_163\))))
-- \Delay2|Add0~107\ = CARRY(((!\Delay2|Add0~117COUT1_163\) # (!\Delay2|bit_rep_clk_Y\(10))))

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
	datab => \Delay2|bit_rep_clk_Y\(10),
	cin => \Delay2|Add0~132\,
	cin0 => \Delay2|Add0~117\,
	cin1 => \Delay2|Add0~117COUT1_163\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay2|Add0~105_combout\,
	cout => \Delay2|Add0~107\);

-- Location: LC_X4_Y7_N5
\Delay2|bit_rep_clk_Y[10]\ : maxv_lcell
-- Equation(s):
-- \Delay2|bit_rep_clk_Y\(10) = DFFEAS((((\Delay2|Add0~105_combout\))), GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , , , , )

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
	clk => \clock~combout\,
	datad => \Delay2|Add0~105_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Delay2|bit_rep_clk_Y\(10));

-- Location: LC_X4_Y8_N5
\Delay2|Add0~100\ : maxv_lcell
-- Equation(s):
-- \Delay2|Add0~100_combout\ = \Delay2|bit_rep_clk_Y\(11) $ ((((!\Delay2|Add0~107\))))
-- \Delay2|Add0~102\ = CARRY((\Delay2|bit_rep_clk_Y\(11) & ((!\Delay2|Add0~107\))))
-- \Delay2|Add0~102COUT1_164\ = CARRY((\Delay2|bit_rep_clk_Y\(11) & ((!\Delay2|Add0~107\))))

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
	dataa => \Delay2|bit_rep_clk_Y\(11),
	cin => \Delay2|Add0~107\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay2|Add0~100_combout\,
	cout0 => \Delay2|Add0~102\,
	cout1 => \Delay2|Add0~102COUT1_164\);

-- Location: LC_X4_Y7_N6
\Delay2|bit_rep_clk_Y[11]\ : maxv_lcell
-- Equation(s):
-- \Delay2|Equal0~5\ = (!\Delay2|bit_rep_clk_Y\(10) & (\Delay2|bit_rep_clk_Y\(13) & (!C1_bit_rep_clk_Y[11] & \Delay2|bit_rep_clk_Y\(12))))
-- \Delay2|bit_rep_clk_Y\(11) = DFFEAS(\Delay2|Equal0~5\, GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , \Delay2|Add0~100_combout\, , , VCC)

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
	clk => \clock~combout\,
	dataa => \Delay2|bit_rep_clk_Y\(10),
	datab => \Delay2|bit_rep_clk_Y\(13),
	datac => \Delay2|Add0~100_combout\,
	datad => \Delay2|bit_rep_clk_Y\(12),
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay2|Equal0~5\,
	regout => \Delay2|bit_rep_clk_Y\(11));

-- Location: LC_X4_Y8_N6
\Delay2|Add0~95\ : maxv_lcell
-- Equation(s):
-- \Delay2|Add0~95_combout\ = (\Delay2|bit_rep_clk_Y\(12) $ (((!\Delay2|Add0~107\ & \Delay2|Add0~102\) # (\Delay2|Add0~107\ & \Delay2|Add0~102COUT1_164\))))
-- \Delay2|Add0~97\ = CARRY(((!\Delay2|Add0~102\) # (!\Delay2|bit_rep_clk_Y\(12))))
-- \Delay2|Add0~97COUT1_165\ = CARRY(((!\Delay2|Add0~102COUT1_164\) # (!\Delay2|bit_rep_clk_Y\(12))))

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
	datab => \Delay2|bit_rep_clk_Y\(12),
	cin => \Delay2|Add0~107\,
	cin0 => \Delay2|Add0~102\,
	cin1 => \Delay2|Add0~102COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay2|Add0~95_combout\,
	cout0 => \Delay2|Add0~97\,
	cout1 => \Delay2|Add0~97COUT1_165\);

-- Location: LC_X5_Y7_N2
\Delay2|bit_rep_clk_Y[12]\ : maxv_lcell
-- Equation(s):
-- \Delay2|bit_rep_clk_Y\(12) = DFFEAS((((!\Delay2|Equal0~9\ & \Delay2|Add0~95_combout\))), GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \Delay2|Equal0~9\,
	datad => \Delay2|Add0~95_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Delay2|bit_rep_clk_Y\(12));

-- Location: LC_X4_Y8_N7
\Delay2|Add0~90\ : maxv_lcell
-- Equation(s):
-- \Delay2|Add0~90_combout\ = \Delay2|bit_rep_clk_Y\(13) $ ((((!(!\Delay2|Add0~107\ & \Delay2|Add0~97\) # (\Delay2|Add0~107\ & \Delay2|Add0~97COUT1_165\)))))
-- \Delay2|Add0~92\ = CARRY((\Delay2|bit_rep_clk_Y\(13) & ((!\Delay2|Add0~97\))))
-- \Delay2|Add0~92COUT1_166\ = CARRY((\Delay2|bit_rep_clk_Y\(13) & ((!\Delay2|Add0~97COUT1_165\))))

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
	dataa => \Delay2|bit_rep_clk_Y\(13),
	cin => \Delay2|Add0~107\,
	cin0 => \Delay2|Add0~97\,
	cin1 => \Delay2|Add0~97COUT1_165\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay2|Add0~90_combout\,
	cout0 => \Delay2|Add0~92\,
	cout1 => \Delay2|Add0~92COUT1_166\);

-- Location: LC_X5_Y7_N8
\Delay2|bit_rep_clk_Y[13]\ : maxv_lcell
-- Equation(s):
-- \Delay2|bit_rep_clk_Y\(13) = DFFEAS((((!\Delay2|Equal0~9\ & \Delay2|Add0~90_combout\))), GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \Delay2|Equal0~9\,
	datad => \Delay2|Add0~90_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Delay2|bit_rep_clk_Y\(13));

-- Location: LC_X4_Y8_N8
\Delay2|Add0~80\ : maxv_lcell
-- Equation(s):
-- \Delay2|Add0~80_combout\ = (\Delay2|bit_rep_clk_Y\(14) $ (((!\Delay2|Add0~107\ & \Delay2|Add0~92\) # (\Delay2|Add0~107\ & \Delay2|Add0~92COUT1_166\))))
-- \Delay2|Add0~82\ = CARRY(((!\Delay2|Add0~92\) # (!\Delay2|bit_rep_clk_Y\(14))))
-- \Delay2|Add0~82COUT1_167\ = CARRY(((!\Delay2|Add0~92COUT1_166\) # (!\Delay2|bit_rep_clk_Y\(14))))

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
	datab => \Delay2|bit_rep_clk_Y\(14),
	cin => \Delay2|Add0~107\,
	cin0 => \Delay2|Add0~92\,
	cin1 => \Delay2|Add0~92COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay2|Add0~80_combout\,
	cout0 => \Delay2|Add0~82\,
	cout1 => \Delay2|Add0~82COUT1_167\);

-- Location: LC_X4_Y7_N1
\Delay2|bit_rep_clk_Y[14]\ : maxv_lcell
-- Equation(s):
-- \Delay2|bit_rep_clk_Y\(14) = DFFEAS((((\Delay2|Add0~80_combout\ & !\Delay2|Equal0~9\))), GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , , , , )

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
	clk => \clock~combout\,
	datac => \Delay2|Add0~80_combout\,
	datad => \Delay2|Equal0~9\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Delay2|bit_rep_clk_Y\(14));

-- Location: LC_X4_Y8_N9
\Delay2|Add0~75\ : maxv_lcell
-- Equation(s):
-- \Delay2|Add0~75_combout\ = (\Delay2|bit_rep_clk_Y\(15) $ ((!(!\Delay2|Add0~107\ & \Delay2|Add0~82\) # (\Delay2|Add0~107\ & \Delay2|Add0~82COUT1_167\))))
-- \Delay2|Add0~77\ = CARRY(((\Delay2|bit_rep_clk_Y\(15) & !\Delay2|Add0~82COUT1_167\)))

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
	datab => \Delay2|bit_rep_clk_Y\(15),
	cin => \Delay2|Add0~107\,
	cin0 => \Delay2|Add0~82\,
	cin1 => \Delay2|Add0~82COUT1_167\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay2|Add0~75_combout\,
	cout => \Delay2|Add0~77\);

-- Location: LC_X5_Y7_N4
\Delay2|bit_rep_clk_Y[15]\ : maxv_lcell
-- Equation(s):
-- \Delay2|bit_rep_clk_Y\(15) = DFFEAS((((!\Delay2|Equal0~9\ & \Delay2|Add0~75_combout\))), GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \Delay2|Equal0~9\,
	datad => \Delay2|Add0~75_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Delay2|bit_rep_clk_Y\(15));

-- Location: LC_X5_Y8_N0
\Delay2|Add0~85\ : maxv_lcell
-- Equation(s):
-- \Delay2|Add0~85_combout\ = (\Delay2|bit_rep_clk_Y\(16) $ ((\Delay2|Add0~77\)))
-- \Delay2|Add0~87\ = CARRY(((!\Delay2|Add0~77\) # (!\Delay2|bit_rep_clk_Y\(16))))
-- \Delay2|Add0~87COUT1_168\ = CARRY(((!\Delay2|Add0~77\) # (!\Delay2|bit_rep_clk_Y\(16))))

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
	datab => \Delay2|bit_rep_clk_Y\(16),
	cin => \Delay2|Add0~77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay2|Add0~85_combout\,
	cout0 => \Delay2|Add0~87\,
	cout1 => \Delay2|Add0~87COUT1_168\);

-- Location: LC_X4_Y7_N7
\Delay2|bit_rep_clk_Y[16]\ : maxv_lcell
-- Equation(s):
-- \Delay2|Equal0~4\ = (\Delay2|bit_rep_clk_Y\(14) & (\Delay2|bit_rep_clk_Y\(15) & (!C1_bit_rep_clk_Y[16] & \Delay2|bit_rep_clk_Y\(17))))
-- \Delay2|bit_rep_clk_Y\(16) = DFFEAS(\Delay2|Equal0~4\, GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , \Delay2|Add0~85_combout\, , , VCC)

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
	clk => \clock~combout\,
	dataa => \Delay2|bit_rep_clk_Y\(14),
	datab => \Delay2|bit_rep_clk_Y\(15),
	datac => \Delay2|Add0~85_combout\,
	datad => \Delay2|bit_rep_clk_Y\(17),
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay2|Equal0~4\,
	regout => \Delay2|bit_rep_clk_Y\(16));

-- Location: LC_X5_Y8_N1
\Delay2|Add0~70\ : maxv_lcell
-- Equation(s):
-- \Delay2|Add0~70_combout\ = (\Delay2|bit_rep_clk_Y\(17) $ ((!(!\Delay2|Add0~77\ & \Delay2|Add0~87\) # (\Delay2|Add0~77\ & \Delay2|Add0~87COUT1_168\))))
-- \Delay2|Add0~72\ = CARRY(((\Delay2|bit_rep_clk_Y\(17) & !\Delay2|Add0~87\)))
-- \Delay2|Add0~72COUT1_169\ = CARRY(((\Delay2|bit_rep_clk_Y\(17) & !\Delay2|Add0~87COUT1_168\)))

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
	datab => \Delay2|bit_rep_clk_Y\(17),
	cin => \Delay2|Add0~77\,
	cin0 => \Delay2|Add0~87\,
	cin1 => \Delay2|Add0~87COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay2|Add0~70_combout\,
	cout0 => \Delay2|Add0~72\,
	cout1 => \Delay2|Add0~72COUT1_169\);

-- Location: LC_X5_Y7_N5
\Delay2|bit_rep_clk_Y[17]\ : maxv_lcell
-- Equation(s):
-- \Delay2|bit_rep_clk_Y\(17) = DFFEAS((((!\Delay2|Equal0~9\ & \Delay2|Add0~70_combout\))), GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \Delay2|Equal0~9\,
	datad => \Delay2|Add0~70_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Delay2|bit_rep_clk_Y\(17));

-- Location: LC_X5_Y8_N2
\Delay2|Add0~65\ : maxv_lcell
-- Equation(s):
-- \Delay2|Add0~65_combout\ = (\Delay2|bit_rep_clk_Y\(18) $ (((!\Delay2|Add0~77\ & \Delay2|Add0~72\) # (\Delay2|Add0~77\ & \Delay2|Add0~72COUT1_169\))))
-- \Delay2|Add0~67\ = CARRY(((!\Delay2|Add0~72\) # (!\Delay2|bit_rep_clk_Y\(18))))
-- \Delay2|Add0~67COUT1_170\ = CARRY(((!\Delay2|Add0~72COUT1_169\) # (!\Delay2|bit_rep_clk_Y\(18))))

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
	datab => \Delay2|bit_rep_clk_Y\(18),
	cin => \Delay2|Add0~77\,
	cin0 => \Delay2|Add0~72\,
	cin1 => \Delay2|Add0~72COUT1_169\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay2|Add0~65_combout\,
	cout0 => \Delay2|Add0~67\,
	cout1 => \Delay2|Add0~67COUT1_170\);

-- Location: LC_X5_Y7_N9
\Delay2|bit_rep_clk_Y[18]\ : maxv_lcell
-- Equation(s):
-- \Delay2|Equal0~3\ = (\Delay2|bit_rep_clk_Y\(21) & (\Delay2|bit_rep_clk_Y\(19) & (!C1_bit_rep_clk_Y[18] & \Delay2|bit_rep_clk_Y\(20))))
-- \Delay2|bit_rep_clk_Y\(18) = DFFEAS(\Delay2|Equal0~3\, GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , \Delay2|Add0~65_combout\, , , VCC)

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
	clk => \clock~combout\,
	dataa => \Delay2|bit_rep_clk_Y\(21),
	datab => \Delay2|bit_rep_clk_Y\(19),
	datac => \Delay2|Add0~65_combout\,
	datad => \Delay2|bit_rep_clk_Y\(20),
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay2|Equal0~3\,
	regout => \Delay2|bit_rep_clk_Y\(18));

-- Location: LC_X5_Y8_N3
\Delay2|Add0~60\ : maxv_lcell
-- Equation(s):
-- \Delay2|Add0~60_combout\ = \Delay2|bit_rep_clk_Y\(19) $ ((((!(!\Delay2|Add0~77\ & \Delay2|Add0~67\) # (\Delay2|Add0~77\ & \Delay2|Add0~67COUT1_170\)))))
-- \Delay2|Add0~62\ = CARRY((\Delay2|bit_rep_clk_Y\(19) & ((!\Delay2|Add0~67\))))
-- \Delay2|Add0~62COUT1_171\ = CARRY((\Delay2|bit_rep_clk_Y\(19) & ((!\Delay2|Add0~67COUT1_170\))))

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
	dataa => \Delay2|bit_rep_clk_Y\(19),
	cin => \Delay2|Add0~77\,
	cin0 => \Delay2|Add0~67\,
	cin1 => \Delay2|Add0~67COUT1_170\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay2|Add0~60_combout\,
	cout0 => \Delay2|Add0~62\,
	cout1 => \Delay2|Add0~62COUT1_171\);

-- Location: LC_X5_Y7_N6
\Delay2|bit_rep_clk_Y[19]\ : maxv_lcell
-- Equation(s):
-- \Delay2|bit_rep_clk_Y\(19) = DFFEAS((((!\Delay2|Equal0~9\ & \Delay2|Add0~60_combout\))), GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \Delay2|Equal0~9\,
	datad => \Delay2|Add0~60_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Delay2|bit_rep_clk_Y\(19));

-- Location: LC_X4_Y7_N9
\Delay2|Equal0~8\ : maxv_lcell
-- Equation(s):
-- \Delay2|Equal0~8_combout\ = (\Delay2|Equal0~5\ & (\Delay2|Equal0~4\ & (\Delay2|Equal0~7\ & \Delay2|Equal0~6\)))

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
	dataa => \Delay2|Equal0~5\,
	datab => \Delay2|Equal0~4\,
	datac => \Delay2|Equal0~7\,
	datad => \Delay2|Equal0~6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay2|Equal0~8_combout\);

-- Location: LC_X5_Y8_N6
\Delay2|Add0~40\ : maxv_lcell
-- Equation(s):
-- \Delay2|Add0~40_combout\ = (\Delay2|bit_rep_clk_Y\(22) $ (((!\Delay2|Add0~57\ & \Delay2|Add0~52\) # (\Delay2|Add0~57\ & \Delay2|Add0~52COUT1_172\))))
-- \Delay2|Add0~42\ = CARRY(((!\Delay2|Add0~52\) # (!\Delay2|bit_rep_clk_Y\(22))))
-- \Delay2|Add0~42COUT1_173\ = CARRY(((!\Delay2|Add0~52COUT1_172\) # (!\Delay2|bit_rep_clk_Y\(22))))

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
	datab => \Delay2|bit_rep_clk_Y\(22),
	cin => \Delay2|Add0~57\,
	cin0 => \Delay2|Add0~52\,
	cin1 => \Delay2|Add0~52COUT1_172\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay2|Add0~40_combout\,
	cout0 => \Delay2|Add0~42\,
	cout1 => \Delay2|Add0~42COUT1_173\);

-- Location: LC_X5_Y9_N8
\Delay2|bit_rep_clk_Y[22]\ : maxv_lcell
-- Equation(s):
-- \Delay2|bit_rep_clk_Y\(22) = DFFEAS((((\Delay2|Add0~40_combout\ & !\Delay2|Equal0~9\))), GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , , , , )

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
	clk => \clock~combout\,
	datac => \Delay2|Add0~40_combout\,
	datad => \Delay2|Equal0~9\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Delay2|bit_rep_clk_Y\(22));

-- Location: LC_X5_Y8_N7
\Delay2|Add0~35\ : maxv_lcell
-- Equation(s):
-- \Delay2|Add0~35_combout\ = (\Delay2|bit_rep_clk_Y\(23) $ ((!(!\Delay2|Add0~57\ & \Delay2|Add0~42\) # (\Delay2|Add0~57\ & \Delay2|Add0~42COUT1_173\))))
-- \Delay2|Add0~37\ = CARRY(((\Delay2|bit_rep_clk_Y\(23) & !\Delay2|Add0~42\)))
-- \Delay2|Add0~37COUT1_174\ = CARRY(((\Delay2|bit_rep_clk_Y\(23) & !\Delay2|Add0~42COUT1_173\)))

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
	datab => \Delay2|bit_rep_clk_Y\(23),
	cin => \Delay2|Add0~57\,
	cin0 => \Delay2|Add0~42\,
	cin1 => \Delay2|Add0~42COUT1_173\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay2|Add0~35_combout\,
	cout0 => \Delay2|Add0~37\,
	cout1 => \Delay2|Add0~37COUT1_174\);

-- Location: LC_X5_Y8_N8
\Delay2|Add0~45\ : maxv_lcell
-- Equation(s):
-- \Delay2|Add0~45_combout\ = (\Delay2|bit_rep_clk_Y\(24) $ (((!\Delay2|Add0~57\ & \Delay2|Add0~37\) # (\Delay2|Add0~57\ & \Delay2|Add0~37COUT1_174\))))
-- \Delay2|Add0~47\ = CARRY(((!\Delay2|Add0~37\) # (!\Delay2|bit_rep_clk_Y\(24))))
-- \Delay2|Add0~47COUT1_175\ = CARRY(((!\Delay2|Add0~37COUT1_174\) # (!\Delay2|bit_rep_clk_Y\(24))))

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
	datab => \Delay2|bit_rep_clk_Y\(24),
	cin => \Delay2|Add0~57\,
	cin0 => \Delay2|Add0~37\,
	cin1 => \Delay2|Add0~37COUT1_174\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay2|Add0~45_combout\,
	cout0 => \Delay2|Add0~47\,
	cout1 => \Delay2|Add0~47COUT1_175\);

-- Location: LC_X5_Y9_N7
\Delay2|bit_rep_clk_Y[24]\ : maxv_lcell
-- Equation(s):
-- \Delay2|Equal0~2\ = (\Delay2|bit_rep_clk_Y\(23) & (\Delay2|bit_rep_clk_Y\(25) & (!C1_bit_rep_clk_Y[24] & \Delay2|bit_rep_clk_Y\(22))))
-- \Delay2|bit_rep_clk_Y\(24) = DFFEAS(\Delay2|Equal0~2\, GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , \Delay2|Add0~45_combout\, , , VCC)

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
	clk => \clock~combout\,
	dataa => \Delay2|bit_rep_clk_Y\(23),
	datab => \Delay2|bit_rep_clk_Y\(25),
	datac => \Delay2|Add0~45_combout\,
	datad => \Delay2|bit_rep_clk_Y\(22),
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay2|Equal0~2\,
	regout => \Delay2|bit_rep_clk_Y\(24));

-- Location: LC_X5_Y8_N9
\Delay2|Add0~30\ : maxv_lcell
-- Equation(s):
-- \Delay2|Add0~30_combout\ = \Delay2|bit_rep_clk_Y\(25) $ ((((!(!\Delay2|Add0~57\ & \Delay2|Add0~47\) # (\Delay2|Add0~57\ & \Delay2|Add0~47COUT1_175\)))))
-- \Delay2|Add0~32\ = CARRY((\Delay2|bit_rep_clk_Y\(25) & ((!\Delay2|Add0~47COUT1_175\))))

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
	dataa => \Delay2|bit_rep_clk_Y\(25),
	cin => \Delay2|Add0~57\,
	cin0 => \Delay2|Add0~47\,
	cin1 => \Delay2|Add0~47COUT1_175\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay2|Add0~30_combout\,
	cout => \Delay2|Add0~32\);

-- Location: LC_X5_Y9_N2
\Delay2|bit_rep_clk_Y[25]\ : maxv_lcell
-- Equation(s):
-- \Delay2|bit_rep_clk_Y\(25) = DFFEAS((((\Delay2|Add0~30_combout\ & !\Delay2|Equal0~9\))), GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , , , , )

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
	clk => \clock~combout\,
	datac => \Delay2|Add0~30_combout\,
	datad => \Delay2|Equal0~9\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Delay2|bit_rep_clk_Y\(25));

-- Location: LC_X6_Y8_N0
\Delay2|Add0~15\ : maxv_lcell
-- Equation(s):
-- \Delay2|Add0~15_combout\ = (\Delay2|bit_rep_clk_Y\(26) $ ((\Delay2|Add0~32\)))
-- \Delay2|Add0~17\ = CARRY(((!\Delay2|Add0~32\) # (!\Delay2|bit_rep_clk_Y\(26))))
-- \Delay2|Add0~17COUT1_176\ = CARRY(((!\Delay2|Add0~32\) # (!\Delay2|bit_rep_clk_Y\(26))))

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
	datab => \Delay2|bit_rep_clk_Y\(26),
	cin => \Delay2|Add0~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay2|Add0~15_combout\,
	cout0 => \Delay2|Add0~17\,
	cout1 => \Delay2|Add0~17COUT1_176\);

-- Location: LC_X6_Y8_N8
\Delay2|bit_rep_clk_Y[26]\ : maxv_lcell
-- Equation(s):
-- \Delay2|bit_rep_clk_Y\(26) = DFFEAS(GND, GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , \Delay2|Add0~15_combout\, , , VCC)

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
	clk => \clock~combout\,
	datac => \Delay2|Add0~15_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Delay2|bit_rep_clk_Y\(26));

-- Location: LC_X6_Y8_N1
\Delay2|Add0~10\ : maxv_lcell
-- Equation(s):
-- \Delay2|Add0~10_combout\ = \Delay2|bit_rep_clk_Y\(27) $ ((((!(!\Delay2|Add0~32\ & \Delay2|Add0~17\) # (\Delay2|Add0~32\ & \Delay2|Add0~17COUT1_176\)))))
-- \Delay2|Add0~12\ = CARRY((\Delay2|bit_rep_clk_Y\(27) & ((!\Delay2|Add0~17\))))
-- \Delay2|Add0~12COUT1_177\ = CARRY((\Delay2|bit_rep_clk_Y\(27) & ((!\Delay2|Add0~17COUT1_176\))))

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
	dataa => \Delay2|bit_rep_clk_Y\(27),
	cin => \Delay2|Add0~32\,
	cin0 => \Delay2|Add0~17\,
	cin1 => \Delay2|Add0~17COUT1_176\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay2|Add0~10_combout\,
	cout0 => \Delay2|Add0~12\,
	cout1 => \Delay2|Add0~12COUT1_177\);

-- Location: LC_X6_Y8_N6
\Delay2|bit_rep_clk_Y[27]\ : maxv_lcell
-- Equation(s):
-- \Delay2|bit_rep_clk_Y\(27) = DFFEAS((((\Delay2|Add0~10_combout\))), GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , , , , )

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
	clk => \clock~combout\,
	datad => \Delay2|Add0~10_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Delay2|bit_rep_clk_Y\(27));

-- Location: LC_X6_Y8_N2
\Delay2|Add0~5\ : maxv_lcell
-- Equation(s):
-- \Delay2|Add0~5_combout\ = (\Delay2|bit_rep_clk_Y\(28) $ (((!\Delay2|Add0~32\ & \Delay2|Add0~12\) # (\Delay2|Add0~32\ & \Delay2|Add0~12COUT1_177\))))
-- \Delay2|Add0~7\ = CARRY(((!\Delay2|Add0~12\) # (!\Delay2|bit_rep_clk_Y\(28))))
-- \Delay2|Add0~7COUT1_178\ = CARRY(((!\Delay2|Add0~12COUT1_177\) # (!\Delay2|bit_rep_clk_Y\(28))))

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
	datab => \Delay2|bit_rep_clk_Y\(28),
	cin => \Delay2|Add0~32\,
	cin0 => \Delay2|Add0~12\,
	cin1 => \Delay2|Add0~12COUT1_177\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay2|Add0~5_combout\,
	cout0 => \Delay2|Add0~7\,
	cout1 => \Delay2|Add0~7COUT1_178\);

-- Location: LC_X7_Y8_N8
\Delay2|bit_rep_clk_Y[28]\ : maxv_lcell
-- Equation(s):
-- \Delay2|bit_rep_clk_Y\(28) = DFFEAS((((\Delay2|Add0~5_combout\))), GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , , , , )

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
	clk => \clock~combout\,
	datad => \Delay2|Add0~5_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Delay2|bit_rep_clk_Y\(28));

-- Location: LC_X6_Y8_N3
\Delay2|Add0~0\ : maxv_lcell
-- Equation(s):
-- \Delay2|Add0~0_combout\ = \Delay2|bit_rep_clk_Y\(29) $ ((((!(!\Delay2|Add0~32\ & \Delay2|Add0~7\) # (\Delay2|Add0~32\ & \Delay2|Add0~7COUT1_178\)))))
-- \Delay2|Add0~2\ = CARRY((\Delay2|bit_rep_clk_Y\(29) & ((!\Delay2|Add0~7\))))
-- \Delay2|Add0~2COUT1_179\ = CARRY((\Delay2|bit_rep_clk_Y\(29) & ((!\Delay2|Add0~7COUT1_178\))))

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
	dataa => \Delay2|bit_rep_clk_Y\(29),
	cin => \Delay2|Add0~32\,
	cin0 => \Delay2|Add0~7\,
	cin1 => \Delay2|Add0~7COUT1_178\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay2|Add0~0_combout\,
	cout0 => \Delay2|Add0~2\,
	cout1 => \Delay2|Add0~2COUT1_179\);

-- Location: LC_X6_Y8_N7
\Delay2|bit_rep_clk_Y[29]\ : maxv_lcell
-- Equation(s):
-- \Delay2|Equal0~0\ = (!\Delay2|bit_rep_clk_Y\(27) & (!\Delay2|bit_rep_clk_Y\(26) & (!C1_bit_rep_clk_Y[29] & !\Delay2|bit_rep_clk_Y\(28))))
-- \Delay2|bit_rep_clk_Y\(29) = DFFEAS(\Delay2|Equal0~0\, GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , \Delay2|Add0~0_combout\, , , VCC)

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
	clk => \clock~combout\,
	dataa => \Delay2|bit_rep_clk_Y\(27),
	datab => \Delay2|bit_rep_clk_Y\(26),
	datac => \Delay2|Add0~0_combout\,
	datad => \Delay2|bit_rep_clk_Y\(28),
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay2|Equal0~0\,
	regout => \Delay2|bit_rep_clk_Y\(29));

-- Location: LC_X6_Y8_N4
\Delay2|Add0~25\ : maxv_lcell
-- Equation(s):
-- \Delay2|Add0~25_combout\ = \Delay2|bit_rep_clk_Y\(30) $ (((((!\Delay2|Add0~32\ & \Delay2|Add0~2\) # (\Delay2|Add0~32\ & \Delay2|Add0~2COUT1_179\)))))
-- \Delay2|Add0~27\ = CARRY(((!\Delay2|Add0~2COUT1_179\)) # (!\Delay2|bit_rep_clk_Y\(30)))

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
	dataa => \Delay2|bit_rep_clk_Y\(30),
	cin => \Delay2|Add0~32\,
	cin0 => \Delay2|Add0~2\,
	cin1 => \Delay2|Add0~2COUT1_179\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay2|Add0~25_combout\,
	cout => \Delay2|Add0~27\);

-- Location: LC_X7_Y8_N7
\Delay2|bit_rep_clk_Y[30]\ : maxv_lcell
-- Equation(s):
-- \Delay2|bit_rep_clk_Y\(30) = DFFEAS((((\Delay2|Add0~25_combout\))), GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , , , , )

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
	clk => \clock~combout\,
	datad => \Delay2|Add0~25_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Delay2|bit_rep_clk_Y\(30));

-- Location: LC_X6_Y8_N9
\Delay2|bit_rep_clk_Y[31]\ : maxv_lcell
-- Equation(s):
-- \Delay2|Equal0~1\ = (!\Delay2|bit_rep_clk_Y\(30) & (\Delay2|Equal0~0\ & (!C1_bit_rep_clk_Y[31] & \Delay1|Equal0~0\)))
-- \Delay2|bit_rep_clk_Y\(31) = DFFEAS(\Delay2|Equal0~1\, GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , \Delay2|Add0~20_combout\, , , VCC)

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
	clk => \clock~combout\,
	dataa => \Delay2|bit_rep_clk_Y\(30),
	datab => \Delay2|Equal0~0\,
	datac => \Delay2|Add0~20_combout\,
	datad => \Delay1|Equal0~0\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay2|Equal0~1\,
	regout => \Delay2|bit_rep_clk_Y\(31));

-- Location: LC_X6_Y8_N5
\Delay2|Add0~20\ : maxv_lcell
-- Equation(s):
-- \Delay2|Add0~20_combout\ = ((\Delay2|Add0~27\ $ (!\Delay2|bit_rep_clk_Y\(31))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \Delay2|bit_rep_clk_Y\(31),
	cin => \Delay2|Add0~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay2|Add0~20_combout\);

-- Location: LC_X5_Y7_N7
\Delay2|inY\ : maxv_lcell
-- Equation(s):
-- \Delay2|Equal0~9\ = (\Delay2|Equal0~2\ & (\Delay2|Equal0~3\ & (\Delay2|Equal0~8_combout\ & \Delay2|Equal0~1\)))
-- \Delay2|inY~regout\ = DFFEAS(\Delay2|Equal0~9\, GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \Delay2|Equal0~2\,
	datab => \Delay2|Equal0~3\,
	datac => \Delay2|Equal0~8_combout\,
	datad => \Delay2|Equal0~1\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay2|Equal0~9\,
	regout => \Delay2|inY~regout\);

-- Location: LC_X5_Y8_N4
\Delay2|Add0~55\ : maxv_lcell
-- Equation(s):
-- \Delay2|Add0~55_combout\ = (\Delay2|bit_rep_clk_Y\(20) $ (((!\Delay2|Add0~77\ & \Delay2|Add0~62\) # (\Delay2|Add0~77\ & \Delay2|Add0~62COUT1_171\))))
-- \Delay2|Add0~57\ = CARRY(((!\Delay2|Add0~62COUT1_171\) # (!\Delay2|bit_rep_clk_Y\(20))))

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
	datab => \Delay2|bit_rep_clk_Y\(20),
	cin => \Delay2|Add0~77\,
	cin0 => \Delay2|Add0~62\,
	cin1 => \Delay2|Add0~62COUT1_171\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay2|Add0~55_combout\,
	cout => \Delay2|Add0~57\);

-- Location: LC_X5_Y7_N0
\Delay2|bit_rep_clk_Y[20]\ : maxv_lcell
-- Equation(s):
-- \Delay2|bit_rep_clk_Y\(20) = DFFEAS((((!\Delay2|Equal0~9\ & \Delay2|Add0~55_combout\))), GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \Delay2|Equal0~9\,
	datad => \Delay2|Add0~55_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Delay2|bit_rep_clk_Y\(20));

-- Location: LC_X5_Y9_N6
\Delay2|bit_rep_clk_Y[23]\ : maxv_lcell
-- Equation(s):
-- \Delay2|bit_rep_clk_Y\(23) = DFFEAS((((\Delay2|Add0~35_combout\ & !\Delay2|Equal0~9\))), GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , , , , )

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
	clk => \clock~combout\,
	datac => \Delay2|Add0~35_combout\,
	datad => \Delay2|Equal0~9\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Delay2|bit_rep_clk_Y\(23));

-- Location: LC_X8_Y8_N6
\Delay1|Add0~155\ : maxv_lcell
-- Equation(s):
-- \Delay1|Add0~155_combout\ = \Delay1|bit_rep_clk_G\(2) $ ((((!(!\Delay1|Add0~7\ & \Delay1|Add0~2\) # (\Delay1|Add0~7\ & \Delay1|Add0~2COUT1_161\)))))
-- \Delay1|Add0~157\ = CARRY((\Delay1|bit_rep_clk_G\(2) & ((!\Delay1|Add0~2\))))
-- \Delay1|Add0~157COUT1_162\ = CARRY((\Delay1|bit_rep_clk_G\(2) & ((!\Delay1|Add0~2COUT1_161\))))

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
	dataa => \Delay1|bit_rep_clk_G\(2),
	cin => \Delay1|Add0~7\,
	cin0 => \Delay1|Add0~2\,
	cin1 => \Delay1|Add0~2COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay1|Add0~155_combout\,
	cout0 => \Delay1|Add0~157\,
	cout1 => \Delay1|Add0~157COUT1_162\);

-- Location: LC_X8_Y8_N3
\Delay1|bit_rep_clk_G[2]\ : maxv_lcell
-- Equation(s):
-- \Delay1|bit_rep_clk_G\(2) = DFFEAS(GND, GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , \Delay1|Add0~155_combout\, , , VCC)

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
	clk => \clock~combout\,
	datac => \Delay1|Add0~155_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Delay1|bit_rep_clk_G\(2));

-- Location: LC_X8_Y8_N7
\Delay1|Add0~150\ : maxv_lcell
-- Equation(s):
-- \Delay1|Add0~150_combout\ = (\Delay1|bit_rep_clk_G\(3) $ (((!\Delay1|Add0~7\ & \Delay1|Add0~157\) # (\Delay1|Add0~7\ & \Delay1|Add0~157COUT1_162\))))
-- \Delay1|Add0~152\ = CARRY(((!\Delay1|Add0~157\) # (!\Delay1|bit_rep_clk_G\(3))))
-- \Delay1|Add0~152COUT1_163\ = CARRY(((!\Delay1|Add0~157COUT1_162\) # (!\Delay1|bit_rep_clk_G\(3))))

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
	datab => \Delay1|bit_rep_clk_G\(3),
	cin => \Delay1|Add0~7\,
	cin0 => \Delay1|Add0~157\,
	cin1 => \Delay1|Add0~157COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay1|Add0~150_combout\,
	cout0 => \Delay1|Add0~152\,
	cout1 => \Delay1|Add0~152COUT1_163\);

-- Location: LC_X8_Y8_N1
\Delay1|bit_rep_clk_G[3]\ : maxv_lcell
-- Equation(s):
-- \Delay1|bit_rep_clk_G\(3) = DFFEAS(GND, GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , \Delay1|Add0~150_combout\, , , VCC)

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
	clk => \clock~combout\,
	datac => \Delay1|Add0~150_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Delay1|bit_rep_clk_G\(3));

-- Location: LC_X8_Y8_N8
\Delay1|Add0~145\ : maxv_lcell
-- Equation(s):
-- \Delay1|Add0~145_combout\ = (\Delay1|bit_rep_clk_G\(4) $ ((!(!\Delay1|Add0~7\ & \Delay1|Add0~152\) # (\Delay1|Add0~7\ & \Delay1|Add0~152COUT1_163\))))
-- \Delay1|Add0~147\ = CARRY(((\Delay1|bit_rep_clk_G\(4) & !\Delay1|Add0~152\)))
-- \Delay1|Add0~147COUT1_164\ = CARRY(((\Delay1|bit_rep_clk_G\(4) & !\Delay1|Add0~152COUT1_163\)))

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
	datab => \Delay1|bit_rep_clk_G\(4),
	cin => \Delay1|Add0~7\,
	cin0 => \Delay1|Add0~152\,
	cin1 => \Delay1|Add0~152COUT1_163\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay1|Add0~145_combout\,
	cout0 => \Delay1|Add0~147\,
	cout1 => \Delay1|Add0~147COUT1_164\);

-- Location: LC_X8_Y8_N2
\Delay1|bit_rep_clk_G[4]\ : maxv_lcell
-- Equation(s):
-- \Delay1|bit_rep_clk_G\(4) = DFFEAS((((\Delay1|Add0~145_combout\))), GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , , , , )

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
	clk => \clock~combout\,
	datad => \Delay1|Add0~145_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Delay1|bit_rep_clk_G\(4));

-- Location: LC_X8_Y8_N9
\Delay1|Add0~140\ : maxv_lcell
-- Equation(s):
-- \Delay1|Add0~140_combout\ = (\Delay1|bit_rep_clk_G\(5) $ (((!\Delay1|Add0~7\ & \Delay1|Add0~147\) # (\Delay1|Add0~7\ & \Delay1|Add0~147COUT1_164\))))
-- \Delay1|Add0~142\ = CARRY(((!\Delay1|Add0~147COUT1_164\) # (!\Delay1|bit_rep_clk_G\(5))))

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
	datab => \Delay1|bit_rep_clk_G\(5),
	cin => \Delay1|Add0~7\,
	cin0 => \Delay1|Add0~147\,
	cin1 => \Delay1|Add0~147COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay1|Add0~140_combout\,
	cout => \Delay1|Add0~142\);

-- Location: LC_X8_Y8_N0
\Delay1|bit_rep_clk_G[5]\ : maxv_lcell
-- Equation(s):
-- \Delay1|Equal0~8\ = (\Delay1|bit_rep_clk_G\(2) & (\Delay1|bit_rep_clk_G\(3) & (B1_bit_rep_clk_G[5] & \Delay1|bit_rep_clk_G\(4))))
-- \Delay1|bit_rep_clk_G\(5) = DFFEAS(\Delay1|Equal0~8\, GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , \Delay1|Add0~140_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \Delay1|bit_rep_clk_G\(2),
	datab => \Delay1|bit_rep_clk_G\(3),
	datac => \Delay1|Add0~140_combout\,
	datad => \Delay1|bit_rep_clk_G\(4),
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay1|Equal0~8\,
	regout => \Delay1|bit_rep_clk_G\(5));

-- Location: LC_X9_Y8_N0
\Delay1|Add0~125\ : maxv_lcell
-- Equation(s):
-- \Delay1|Add0~125_combout\ = (\Delay1|bit_rep_clk_G\(6) $ ((!\Delay1|Add0~142\)))
-- \Delay1|Add0~127\ = CARRY(((\Delay1|bit_rep_clk_G\(6) & !\Delay1|Add0~142\)))
-- \Delay1|Add0~127COUT1_165\ = CARRY(((\Delay1|bit_rep_clk_G\(6) & !\Delay1|Add0~142\)))

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
	datab => \Delay1|bit_rep_clk_G\(6),
	cin => \Delay1|Add0~142\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay1|Add0~125_combout\,
	cout0 => \Delay1|Add0~127\,
	cout1 => \Delay1|Add0~127COUT1_165\);

-- Location: LC_X10_Y9_N6
\Delay1|bit_rep_clk_G[6]\ : maxv_lcell
-- Equation(s):
-- \Delay1|Equal0~7\ = (!\Delay1|bit_rep_clk_G\(7) & (\Delay1|bit_rep_clk_G\(9) & (B1_bit_rep_clk_G[6] & !\Delay1|bit_rep_clk_G\(8))))
-- \Delay1|bit_rep_clk_G\(6) = DFFEAS(\Delay1|Equal0~7\, GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , \Delay1|Add0~125_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \Delay1|bit_rep_clk_G\(7),
	datab => \Delay1|bit_rep_clk_G\(9),
	datac => \Delay1|Add0~125_combout\,
	datad => \Delay1|bit_rep_clk_G\(8),
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay1|Equal0~7\,
	regout => \Delay1|bit_rep_clk_G\(6));

-- Location: LC_X9_Y8_N1
\Delay1|Add0~135\ : maxv_lcell
-- Equation(s):
-- \Delay1|Add0~135_combout\ = \Delay1|bit_rep_clk_G\(7) $ (((((!\Delay1|Add0~142\ & \Delay1|Add0~127\) # (\Delay1|Add0~142\ & \Delay1|Add0~127COUT1_165\)))))
-- \Delay1|Add0~137\ = CARRY(((!\Delay1|Add0~127\)) # (!\Delay1|bit_rep_clk_G\(7)))
-- \Delay1|Add0~137COUT1_166\ = CARRY(((!\Delay1|Add0~127COUT1_165\)) # (!\Delay1|bit_rep_clk_G\(7)))

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
	dataa => \Delay1|bit_rep_clk_G\(7),
	cin => \Delay1|Add0~142\,
	cin0 => \Delay1|Add0~127\,
	cin1 => \Delay1|Add0~127COUT1_165\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay1|Add0~135_combout\,
	cout0 => \Delay1|Add0~137\,
	cout1 => \Delay1|Add0~137COUT1_166\);

-- Location: LC_X10_Y9_N8
\Delay1|bit_rep_clk_G[7]\ : maxv_lcell
-- Equation(s):
-- \Delay1|bit_rep_clk_G\(7) = DFFEAS((((\Delay1|Add0~135_combout\ & !\Delay1|Equal0~10\))), GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , , , , )

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
	clk => \clock~combout\,
	datac => \Delay1|Add0~135_combout\,
	datad => \Delay1|Equal0~10\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Delay1|bit_rep_clk_G\(7));

-- Location: LC_X9_Y8_N2
\Delay1|Add0~130\ : maxv_lcell
-- Equation(s):
-- \Delay1|Add0~130_combout\ = (\Delay1|bit_rep_clk_G\(8) $ ((!(!\Delay1|Add0~142\ & \Delay1|Add0~137\) # (\Delay1|Add0~142\ & \Delay1|Add0~137COUT1_166\))))
-- \Delay1|Add0~132\ = CARRY(((\Delay1|bit_rep_clk_G\(8) & !\Delay1|Add0~137\)))
-- \Delay1|Add0~132COUT1_167\ = CARRY(((\Delay1|bit_rep_clk_G\(8) & !\Delay1|Add0~137COUT1_166\)))

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
	datab => \Delay1|bit_rep_clk_G\(8),
	cin => \Delay1|Add0~142\,
	cin0 => \Delay1|Add0~137\,
	cin1 => \Delay1|Add0~137COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay1|Add0~130_combout\,
	cout0 => \Delay1|Add0~132\,
	cout1 => \Delay1|Add0~132COUT1_167\);

-- Location: LC_X12_Y8_N9
\Delay1|bit_rep_clk_G[8]\ : maxv_lcell
-- Equation(s):
-- \Delay1|bit_rep_clk_G\(8) = DFFEAS(GND, GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , \Delay1|Add0~130_combout\, , , VCC)

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
	clk => \clock~combout\,
	datac => \Delay1|Add0~130_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Delay1|bit_rep_clk_G\(8));

-- Location: LC_X9_Y8_N3
\Delay1|Add0~120\ : maxv_lcell
-- Equation(s):
-- \Delay1|Add0~120_combout\ = (\Delay1|bit_rep_clk_G\(9) $ (((!\Delay1|Add0~142\ & \Delay1|Add0~132\) # (\Delay1|Add0~142\ & \Delay1|Add0~132COUT1_167\))))
-- \Delay1|Add0~122\ = CARRY(((!\Delay1|Add0~132\) # (!\Delay1|bit_rep_clk_G\(9))))
-- \Delay1|Add0~122COUT1_168\ = CARRY(((!\Delay1|Add0~132COUT1_167\) # (!\Delay1|bit_rep_clk_G\(9))))

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
	datab => \Delay1|bit_rep_clk_G\(9),
	cin => \Delay1|Add0~142\,
	cin0 => \Delay1|Add0~132\,
	cin1 => \Delay1|Add0~132COUT1_167\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay1|Add0~120_combout\,
	cout0 => \Delay1|Add0~122\,
	cout1 => \Delay1|Add0~122COUT1_168\);

-- Location: LC_X10_Y9_N1
\Delay1|bit_rep_clk_G[9]\ : maxv_lcell
-- Equation(s):
-- \Delay1|bit_rep_clk_G\(9) = DFFEAS((((!\Delay1|Equal0~10\ & \Delay1|Add0~120_combout\))), GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \Delay1|Equal0~10\,
	datad => \Delay1|Add0~120_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Delay1|bit_rep_clk_G\(9));

-- Location: LC_X9_Y8_N4
\Delay1|Add0~115\ : maxv_lcell
-- Equation(s):
-- \Delay1|Add0~115_combout\ = \Delay1|bit_rep_clk_G\(10) $ ((((!(!\Delay1|Add0~142\ & \Delay1|Add0~122\) # (\Delay1|Add0~142\ & \Delay1|Add0~122COUT1_168\)))))
-- \Delay1|Add0~117\ = CARRY((\Delay1|bit_rep_clk_G\(10) & ((!\Delay1|Add0~122COUT1_168\))))

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
	dataa => \Delay1|bit_rep_clk_G\(10),
	cin => \Delay1|Add0~142\,
	cin0 => \Delay1|Add0~122\,
	cin1 => \Delay1|Add0~122COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay1|Add0~115_combout\,
	cout => \Delay1|Add0~117\);

-- Location: LC_X9_Y9_N7
\Delay1|bit_rep_clk_G[10]\ : maxv_lcell
-- Equation(s):
-- \Delay1|bit_rep_clk_G\(10) = DFFEAS(GND, GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , \Delay1|Add0~115_combout\, , , VCC)

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
	clk => \clock~combout\,
	datac => \Delay1|Add0~115_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Delay1|bit_rep_clk_G\(10));

-- Location: LC_X9_Y8_N5
\Delay1|Add0~110\ : maxv_lcell
-- Equation(s):
-- \Delay1|Add0~110_combout\ = (\Delay1|bit_rep_clk_G\(11) $ ((\Delay1|Add0~117\)))
-- \Delay1|Add0~112\ = CARRY(((!\Delay1|Add0~117\) # (!\Delay1|bit_rep_clk_G\(11))))
-- \Delay1|Add0~112COUT1_169\ = CARRY(((!\Delay1|Add0~117\) # (!\Delay1|bit_rep_clk_G\(11))))

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
	datab => \Delay1|bit_rep_clk_G\(11),
	cin => \Delay1|Add0~117\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay1|Add0~110_combout\,
	cout0 => \Delay1|Add0~112\,
	cout1 => \Delay1|Add0~112COUT1_169\);

-- Location: LC_X9_Y9_N6
\Delay1|bit_rep_clk_G[11]\ : maxv_lcell
-- Equation(s):
-- \Delay1|Equal0~6\ = (\Delay1|bit_rep_clk_G\(13) & (!\Delay1|bit_rep_clk_G\(10) & (!B1_bit_rep_clk_G[11] & \Delay1|bit_rep_clk_G\(12))))
-- \Delay1|bit_rep_clk_G\(11) = DFFEAS(\Delay1|Equal0~6\, GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , \Delay1|Add0~110_combout\, , , VCC)

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
	clk => \clock~combout\,
	dataa => \Delay1|bit_rep_clk_G\(13),
	datab => \Delay1|bit_rep_clk_G\(10),
	datac => \Delay1|Add0~110_combout\,
	datad => \Delay1|bit_rep_clk_G\(12),
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay1|Equal0~6\,
	regout => \Delay1|bit_rep_clk_G\(11));

-- Location: LC_X9_Y8_N6
\Delay1|Add0~105\ : maxv_lcell
-- Equation(s):
-- \Delay1|Add0~105_combout\ = \Delay1|bit_rep_clk_G\(12) $ ((((!(!\Delay1|Add0~117\ & \Delay1|Add0~112\) # (\Delay1|Add0~117\ & \Delay1|Add0~112COUT1_169\)))))
-- \Delay1|Add0~107\ = CARRY((\Delay1|bit_rep_clk_G\(12) & ((!\Delay1|Add0~112\))))
-- \Delay1|Add0~107COUT1_170\ = CARRY((\Delay1|bit_rep_clk_G\(12) & ((!\Delay1|Add0~112COUT1_169\))))

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
	dataa => \Delay1|bit_rep_clk_G\(12),
	cin => \Delay1|Add0~117\,
	cin0 => \Delay1|Add0~112\,
	cin1 => \Delay1|Add0~112COUT1_169\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay1|Add0~105_combout\,
	cout0 => \Delay1|Add0~107\,
	cout1 => \Delay1|Add0~107COUT1_170\);

-- Location: LC_X10_Y9_N2
\Delay1|bit_rep_clk_G[12]\ : maxv_lcell
-- Equation(s):
-- \Delay1|bit_rep_clk_G\(12) = DFFEAS((((!\Delay1|Equal0~10\ & \Delay1|Add0~105_combout\))), GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \Delay1|Equal0~10\,
	datad => \Delay1|Add0~105_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Delay1|bit_rep_clk_G\(12));

-- Location: LC_X9_Y8_N7
\Delay1|Add0~100\ : maxv_lcell
-- Equation(s):
-- \Delay1|Add0~100_combout\ = (\Delay1|bit_rep_clk_G\(13) $ (((!\Delay1|Add0~117\ & \Delay1|Add0~107\) # (\Delay1|Add0~117\ & \Delay1|Add0~107COUT1_170\))))
-- \Delay1|Add0~102\ = CARRY(((!\Delay1|Add0~107\) # (!\Delay1|bit_rep_clk_G\(13))))
-- \Delay1|Add0~102COUT1_171\ = CARRY(((!\Delay1|Add0~107COUT1_170\) # (!\Delay1|bit_rep_clk_G\(13))))

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
	datab => \Delay1|bit_rep_clk_G\(13),
	cin => \Delay1|Add0~117\,
	cin0 => \Delay1|Add0~107\,
	cin1 => \Delay1|Add0~107COUT1_170\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay1|Add0~100_combout\,
	cout0 => \Delay1|Add0~102\,
	cout1 => \Delay1|Add0~102COUT1_171\);

-- Location: LC_X9_Y9_N3
\Delay1|bit_rep_clk_G[13]\ : maxv_lcell
-- Equation(s):
-- \Delay1|bit_rep_clk_G\(13) = DFFEAS(((!\Delay1|Equal0~10\ & (\Delay1|Add0~100_combout\))), GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , , , , )

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
	clk => \clock~combout\,
	datab => \Delay1|Equal0~10\,
	datac => \Delay1|Add0~100_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Delay1|bit_rep_clk_G\(13));

-- Location: LC_X9_Y8_N8
\Delay1|Add0~95\ : maxv_lcell
-- Equation(s):
-- \Delay1|Add0~95_combout\ = (\Delay1|bit_rep_clk_G\(14) $ ((!(!\Delay1|Add0~117\ & \Delay1|Add0~102\) # (\Delay1|Add0~117\ & \Delay1|Add0~102COUT1_171\))))
-- \Delay1|Add0~97\ = CARRY(((\Delay1|bit_rep_clk_G\(14) & !\Delay1|Add0~102\)))
-- \Delay1|Add0~97COUT1_172\ = CARRY(((\Delay1|bit_rep_clk_G\(14) & !\Delay1|Add0~102COUT1_171\)))

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
	datab => \Delay1|bit_rep_clk_G\(14),
	cin => \Delay1|Add0~117\,
	cin0 => \Delay1|Add0~102\,
	cin1 => \Delay1|Add0~102COUT1_171\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay1|Add0~95_combout\,
	cout0 => \Delay1|Add0~97\,
	cout1 => \Delay1|Add0~97COUT1_172\);

-- Location: LC_X8_Y9_N5
\Delay1|bit_rep_clk_G[14]\ : maxv_lcell
-- Equation(s):
-- \Delay1|bit_rep_clk_G\(14) = DFFEAS(GND, GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , \Delay1|Add0~95_combout\, , , VCC)

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
	clk => \clock~combout\,
	datac => \Delay1|Add0~95_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Delay1|bit_rep_clk_G\(14));

-- Location: LC_X9_Y8_N9
\Delay1|Add0~85\ : maxv_lcell
-- Equation(s):
-- \Delay1|Add0~85_combout\ = (\Delay1|bit_rep_clk_G\(15) $ (((!\Delay1|Add0~117\ & \Delay1|Add0~97\) # (\Delay1|Add0~117\ & \Delay1|Add0~97COUT1_172\))))
-- \Delay1|Add0~87\ = CARRY(((!\Delay1|Add0~97COUT1_172\) # (!\Delay1|bit_rep_clk_G\(15))))

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
	datab => \Delay1|bit_rep_clk_G\(15),
	cin => \Delay1|Add0~117\,
	cin0 => \Delay1|Add0~97\,
	cin1 => \Delay1|Add0~97COUT1_172\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay1|Add0~85_combout\,
	cout => \Delay1|Add0~87\);

-- Location: LC_X10_Y9_N9
\Delay1|bit_rep_clk_G[15]\ : maxv_lcell
-- Equation(s):
-- \Delay1|bit_rep_clk_G\(15) = DFFEAS((((!\Delay1|Equal0~10\ & \Delay1|Add0~85_combout\))), GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \Delay1|Equal0~10\,
	datad => \Delay1|Add0~85_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Delay1|bit_rep_clk_G\(15));

-- Location: LC_X10_Y8_N0
\Delay1|Add0~90\ : maxv_lcell
-- Equation(s):
-- \Delay1|Add0~90_combout\ = (\Delay1|bit_rep_clk_G\(16) $ ((!\Delay1|Add0~87\)))
-- \Delay1|Add0~92\ = CARRY(((\Delay1|bit_rep_clk_G\(16) & !\Delay1|Add0~87\)))
-- \Delay1|Add0~92COUT1_173\ = CARRY(((\Delay1|bit_rep_clk_G\(16) & !\Delay1|Add0~87\)))

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
	datab => \Delay1|bit_rep_clk_G\(16),
	cin => \Delay1|Add0~87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay1|Add0~90_combout\,
	cout0 => \Delay1|Add0~92\,
	cout1 => \Delay1|Add0~92COUT1_173\);

-- Location: LC_X10_Y9_N3
\Delay1|bit_rep_clk_G[16]\ : maxv_lcell
-- Equation(s):
-- \Delay1|Equal0~5\ = (\Delay1|bit_rep_clk_G\(17) & (!\Delay1|bit_rep_clk_G\(14) & (!B1_bit_rep_clk_G[16] & \Delay1|bit_rep_clk_G\(15))))
-- \Delay1|bit_rep_clk_G\(16) = DFFEAS(\Delay1|Equal0~5\, GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , \Delay1|Add0~90_combout\, , , VCC)

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
	clk => \clock~combout\,
	dataa => \Delay1|bit_rep_clk_G\(17),
	datab => \Delay1|bit_rep_clk_G\(14),
	datac => \Delay1|Add0~90_combout\,
	datad => \Delay1|bit_rep_clk_G\(15),
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay1|Equal0~5\,
	regout => \Delay1|bit_rep_clk_G\(16));

-- Location: LC_X10_Y8_N1
\Delay1|Add0~80\ : maxv_lcell
-- Equation(s):
-- \Delay1|Add0~80_combout\ = \Delay1|bit_rep_clk_G\(17) $ (((((!\Delay1|Add0~87\ & \Delay1|Add0~92\) # (\Delay1|Add0~87\ & \Delay1|Add0~92COUT1_173\)))))
-- \Delay1|Add0~82\ = CARRY(((!\Delay1|Add0~92\)) # (!\Delay1|bit_rep_clk_G\(17)))
-- \Delay1|Add0~82COUT1_174\ = CARRY(((!\Delay1|Add0~92COUT1_173\)) # (!\Delay1|bit_rep_clk_G\(17)))

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
	dataa => \Delay1|bit_rep_clk_G\(17),
	cin => \Delay1|Add0~87\,
	cin0 => \Delay1|Add0~92\,
	cin1 => \Delay1|Add0~92COUT1_173\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay1|Add0~80_combout\,
	cout0 => \Delay1|Add0~82\,
	cout1 => \Delay1|Add0~82COUT1_174\);

-- Location: LC_X10_Y9_N5
\Delay1|bit_rep_clk_G[17]\ : maxv_lcell
-- Equation(s):
-- \Delay1|bit_rep_clk_G\(17) = DFFEAS(((!\Delay1|Equal0~10\ & (\Delay1|Add0~80_combout\))), GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , , , , )

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
	clk => \clock~combout\,
	datab => \Delay1|Equal0~10\,
	datac => \Delay1|Add0~80_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Delay1|bit_rep_clk_G\(17));

-- Location: LC_X10_Y8_N2
\Delay1|Add0~65\ : maxv_lcell
-- Equation(s):
-- \Delay1|Add0~65_combout\ = \Delay1|bit_rep_clk_G\(18) $ ((((!(!\Delay1|Add0~87\ & \Delay1|Add0~82\) # (\Delay1|Add0~87\ & \Delay1|Add0~82COUT1_174\)))))
-- \Delay1|Add0~67\ = CARRY((\Delay1|bit_rep_clk_G\(18) & ((!\Delay1|Add0~82\))))
-- \Delay1|Add0~67COUT1_175\ = CARRY((\Delay1|bit_rep_clk_G\(18) & ((!\Delay1|Add0~82COUT1_174\))))

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
	dataa => \Delay1|bit_rep_clk_G\(18),
	cin => \Delay1|Add0~87\,
	cin0 => \Delay1|Add0~82\,
	cin1 => \Delay1|Add0~82COUT1_174\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay1|Add0~65_combout\,
	cout0 => \Delay1|Add0~67\,
	cout1 => \Delay1|Add0~67COUT1_175\);

-- Location: LC_X10_Y9_N0
\Delay1|bit_rep_clk_G[18]\ : maxv_lcell
-- Equation(s):
-- \Delay1|bit_rep_clk_G\(18) = DFFEAS(((!\Delay1|Equal0~10\ & (\Delay1|Add0~65_combout\))), GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , , , , )

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
	clk => \clock~combout\,
	datab => \Delay1|Equal0~10\,
	datac => \Delay1|Add0~65_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Delay1|bit_rep_clk_G\(18));

-- Location: LC_X10_Y8_N3
\Delay1|Add0~75\ : maxv_lcell
-- Equation(s):
-- \Delay1|Add0~75_combout\ = \Delay1|bit_rep_clk_G\(19) $ (((((!\Delay1|Add0~87\ & \Delay1|Add0~67\) # (\Delay1|Add0~87\ & \Delay1|Add0~67COUT1_175\)))))
-- \Delay1|Add0~77\ = CARRY(((!\Delay1|Add0~67\)) # (!\Delay1|bit_rep_clk_G\(19)))
-- \Delay1|Add0~77COUT1_176\ = CARRY(((!\Delay1|Add0~67COUT1_175\)) # (!\Delay1|bit_rep_clk_G\(19)))

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
	dataa => \Delay1|bit_rep_clk_G\(19),
	cin => \Delay1|Add0~87\,
	cin0 => \Delay1|Add0~67\,
	cin1 => \Delay1|Add0~67COUT1_175\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay1|Add0~75_combout\,
	cout0 => \Delay1|Add0~77\,
	cout1 => \Delay1|Add0~77COUT1_176\);

-- Location: LC_X9_Y9_N1
\Delay1|bit_rep_clk_G[19]\ : maxv_lcell
-- Equation(s):
-- \Delay1|bit_rep_clk_G\(19) = DFFEAS(GND, GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , \Delay1|Add0~75_combout\, , , VCC)

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
	clk => \clock~combout\,
	datac => \Delay1|Add0~75_combout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Delay1|bit_rep_clk_G\(19));

-- Location: LC_X10_Y8_N4
\Delay1|Add0~70\ : maxv_lcell
-- Equation(s):
-- \Delay1|Add0~70_combout\ = (\Delay1|bit_rep_clk_G\(20) $ ((!(!\Delay1|Add0~87\ & \Delay1|Add0~77\) # (\Delay1|Add0~87\ & \Delay1|Add0~77COUT1_176\))))
-- \Delay1|Add0~72\ = CARRY(((\Delay1|bit_rep_clk_G\(20) & !\Delay1|Add0~77COUT1_176\)))

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
	datab => \Delay1|bit_rep_clk_G\(20),
	cin => \Delay1|Add0~87\,
	cin0 => \Delay1|Add0~77\,
	cin1 => \Delay1|Add0~77COUT1_176\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay1|Add0~70_combout\,
	cout => \Delay1|Add0~72\);

-- Location: LC_X9_Y9_N4
\Delay1|bit_rep_clk_G[20]\ : maxv_lcell
-- Equation(s):
-- \Delay1|Equal0~4\ = (\Delay1|bit_rep_clk_G\(21) & (!\Delay1|bit_rep_clk_G\(19) & (!B1_bit_rep_clk_G[20] & \Delay1|bit_rep_clk_G\(18))))
-- \Delay1|bit_rep_clk_G\(20) = DFFEAS(\Delay1|Equal0~4\, GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , \Delay1|Add0~70_combout\, , , VCC)

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
	clk => \clock~combout\,
	dataa => \Delay1|bit_rep_clk_G\(21),
	datab => \Delay1|bit_rep_clk_G\(19),
	datac => \Delay1|Add0~70_combout\,
	datad => \Delay1|bit_rep_clk_G\(18),
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay1|Equal0~4\,
	regout => \Delay1|bit_rep_clk_G\(20));

-- Location: LC_X10_Y8_N5
\Delay1|Add0~60\ : maxv_lcell
-- Equation(s):
-- \Delay1|Add0~60_combout\ = \Delay1|bit_rep_clk_G\(21) $ ((((\Delay1|Add0~72\))))
-- \Delay1|Add0~62\ = CARRY(((!\Delay1|Add0~72\)) # (!\Delay1|bit_rep_clk_G\(21)))
-- \Delay1|Add0~62COUT1_177\ = CARRY(((!\Delay1|Add0~72\)) # (!\Delay1|bit_rep_clk_G\(21)))

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
	dataa => \Delay1|bit_rep_clk_G\(21),
	cin => \Delay1|Add0~72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay1|Add0~60_combout\,
	cout0 => \Delay1|Add0~62\,
	cout1 => \Delay1|Add0~62COUT1_177\);

-- Location: LC_X9_Y9_N5
\Delay1|bit_rep_clk_G[21]\ : maxv_lcell
-- Equation(s):
-- \Delay1|bit_rep_clk_G\(21) = DFFEAS((((!\Delay1|Equal0~10\ & \Delay1|Add0~60_combout\))), GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \Delay1|Equal0~10\,
	datad => \Delay1|Add0~60_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Delay1|bit_rep_clk_G\(21));

-- Location: LC_X10_Y9_N4
\Delay1|Equal0~9\ : maxv_lcell
-- Equation(s):
-- \Delay1|Equal0~9_combout\ = (\Delay1|Equal0~8\ & (\Delay1|Equal0~6\ & (\Delay1|Equal0~7\ & \Delay1|Equal0~5\)))

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
	dataa => \Delay1|Equal0~8\,
	datab => \Delay1|Equal0~6\,
	datac => \Delay1|Equal0~7\,
	datad => \Delay1|Equal0~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay1|Equal0~9_combout\);

-- Location: LC_X10_Y8_N6
\Delay1|Add0~50\ : maxv_lcell
-- Equation(s):
-- \Delay1|Add0~50_combout\ = (\Delay1|bit_rep_clk_G\(22) $ ((!(!\Delay1|Add0~72\ & \Delay1|Add0~62\) # (\Delay1|Add0~72\ & \Delay1|Add0~62COUT1_177\))))
-- \Delay1|Add0~52\ = CARRY(((\Delay1|bit_rep_clk_G\(22) & !\Delay1|Add0~62\)))
-- \Delay1|Add0~52COUT1_178\ = CARRY(((\Delay1|bit_rep_clk_G\(22) & !\Delay1|Add0~62COUT1_177\)))

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
	datab => \Delay1|bit_rep_clk_G\(22),
	cin => \Delay1|Add0~72\,
	cin0 => \Delay1|Add0~62\,
	cin1 => \Delay1|Add0~62COUT1_177\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay1|Add0~50_combout\,
	cout0 => \Delay1|Add0~52\,
	cout1 => \Delay1|Add0~52COUT1_178\);

-- Location: LC_X9_Y9_N0
\Delay1|bit_rep_clk_G[22]\ : maxv_lcell
-- Equation(s):
-- \Delay1|bit_rep_clk_G\(22) = DFFEAS((((!\Delay1|Equal0~10\ & \Delay1|Add0~50_combout\))), GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \Delay1|Equal0~10\,
	datad => \Delay1|Add0~50_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Delay1|bit_rep_clk_G\(22));

-- Location: LC_X10_Y8_N7
\Delay1|Add0~45\ : maxv_lcell
-- Equation(s):
-- \Delay1|Add0~45_combout\ = (\Delay1|bit_rep_clk_G\(23) $ (((!\Delay1|Add0~72\ & \Delay1|Add0~52\) # (\Delay1|Add0~72\ & \Delay1|Add0~52COUT1_178\))))
-- \Delay1|Add0~47\ = CARRY(((!\Delay1|Add0~52\) # (!\Delay1|bit_rep_clk_G\(23))))
-- \Delay1|Add0~47COUT1_179\ = CARRY(((!\Delay1|Add0~52COUT1_178\) # (!\Delay1|bit_rep_clk_G\(23))))

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
	datab => \Delay1|bit_rep_clk_G\(23),
	cin => \Delay1|Add0~72\,
	cin0 => \Delay1|Add0~52\,
	cin1 => \Delay1|Add0~52COUT1_178\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay1|Add0~45_combout\,
	cout0 => \Delay1|Add0~47\,
	cout1 => \Delay1|Add0~47COUT1_179\);

-- Location: LC_X10_Y8_N8
\Delay1|Add0~55\ : maxv_lcell
-- Equation(s):
-- \Delay1|Add0~55_combout\ = (\Delay1|bit_rep_clk_G\(24) $ ((!(!\Delay1|Add0~72\ & \Delay1|Add0~47\) # (\Delay1|Add0~72\ & \Delay1|Add0~47COUT1_179\))))
-- \Delay1|Add0~57\ = CARRY(((\Delay1|bit_rep_clk_G\(24) & !\Delay1|Add0~47\)))
-- \Delay1|Add0~57COUT1_180\ = CARRY(((\Delay1|bit_rep_clk_G\(24) & !\Delay1|Add0~47COUT1_179\)))

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
	datab => \Delay1|bit_rep_clk_G\(24),
	cin => \Delay1|Add0~72\,
	cin0 => \Delay1|Add0~47\,
	cin1 => \Delay1|Add0~47COUT1_179\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay1|Add0~55_combout\,
	cout0 => \Delay1|Add0~57\,
	cout1 => \Delay1|Add0~57COUT1_180\);

-- Location: LC_X9_Y9_N8
\Delay1|bit_rep_clk_G[24]\ : maxv_lcell
-- Equation(s):
-- \Delay1|Equal0~3\ = (\Delay1|bit_rep_clk_G\(23) & (\Delay1|bit_rep_clk_G\(22) & (!B1_bit_rep_clk_G[24] & \Delay1|bit_rep_clk_G\(25))))
-- \Delay1|bit_rep_clk_G\(24) = DFFEAS(\Delay1|Equal0~3\, GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , \Delay1|Add0~55_combout\, , , VCC)

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
	clk => \clock~combout\,
	dataa => \Delay1|bit_rep_clk_G\(23),
	datab => \Delay1|bit_rep_clk_G\(22),
	datac => \Delay1|Add0~55_combout\,
	datad => \Delay1|bit_rep_clk_G\(25),
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay1|Equal0~3\,
	regout => \Delay1|bit_rep_clk_G\(24));

-- Location: LC_X10_Y8_N9
\Delay1|Add0~40\ : maxv_lcell
-- Equation(s):
-- \Delay1|Add0~40_combout\ = (\Delay1|bit_rep_clk_G\(25) $ (((!\Delay1|Add0~72\ & \Delay1|Add0~57\) # (\Delay1|Add0~72\ & \Delay1|Add0~57COUT1_180\))))
-- \Delay1|Add0~42\ = CARRY(((!\Delay1|Add0~57COUT1_180\) # (!\Delay1|bit_rep_clk_G\(25))))

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
	datab => \Delay1|bit_rep_clk_G\(25),
	cin => \Delay1|Add0~72\,
	cin0 => \Delay1|Add0~57\,
	cin1 => \Delay1|Add0~57COUT1_180\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay1|Add0~40_combout\,
	cout => \Delay1|Add0~42\);

-- Location: LC_X9_Y9_N9
\Delay1|bit_rep_clk_G[25]\ : maxv_lcell
-- Equation(s):
-- \Delay1|bit_rep_clk_G\(25) = DFFEAS((((!\Delay1|Equal0~10\ & \Delay1|Add0~40_combout\))), GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \Delay1|Equal0~10\,
	datad => \Delay1|Add0~40_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Delay1|bit_rep_clk_G\(25));

-- Location: LC_X11_Y8_N0
\Delay1|Add0~15\ : maxv_lcell
-- Equation(s):
-- \Delay1|Add0~15_combout\ = \Delay1|bit_rep_clk_G\(26) $ ((((!\Delay1|Add0~42\))))
-- \Delay1|Add0~17\ = CARRY((\Delay1|bit_rep_clk_G\(26) & ((!\Delay1|Add0~42\))))
-- \Delay1|Add0~17COUT1_181\ = CARRY((\Delay1|bit_rep_clk_G\(26) & ((!\Delay1|Add0~42\))))

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
	dataa => \Delay1|bit_rep_clk_G\(26),
	cin => \Delay1|Add0~42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay1|Add0~15_combout\,
	cout0 => \Delay1|Add0~17\,
	cout1 => \Delay1|Add0~17COUT1_181\);

-- Location: LC_X11_Y8_N8
\Delay1|bit_rep_clk_G[26]\ : maxv_lcell
-- Equation(s):
-- \Delay1|bit_rep_clk_G\(26) = DFFEAS((((\Delay1|Add0~15_combout\ & !\Delay1|Equal0~10\))), GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , , , , )

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
	clk => \clock~combout\,
	datac => \Delay1|Add0~15_combout\,
	datad => \Delay1|Equal0~10\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Delay1|bit_rep_clk_G\(26));

-- Location: LC_X11_Y8_N1
\Delay1|Add0~10\ : maxv_lcell
-- Equation(s):
-- \Delay1|Add0~10_combout\ = (\Delay1|bit_rep_clk_G\(27) $ (((!\Delay1|Add0~42\ & \Delay1|Add0~17\) # (\Delay1|Add0~42\ & \Delay1|Add0~17COUT1_181\))))
-- \Delay1|Add0~12\ = CARRY(((!\Delay1|Add0~17\) # (!\Delay1|bit_rep_clk_G\(27))))
-- \Delay1|Add0~12COUT1_182\ = CARRY(((!\Delay1|Add0~17COUT1_181\) # (!\Delay1|bit_rep_clk_G\(27))))

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
	datab => \Delay1|bit_rep_clk_G\(27),
	cin => \Delay1|Add0~42\,
	cin0 => \Delay1|Add0~17\,
	cin1 => \Delay1|Add0~17COUT1_181\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay1|Add0~10_combout\,
	cout0 => \Delay1|Add0~12\,
	cout1 => \Delay1|Add0~12COUT1_182\);

-- Location: LC_X11_Y8_N9
\Delay1|bit_rep_clk_G[27]\ : maxv_lcell
-- Equation(s):
-- \Delay1|bit_rep_clk_G\(27) = DFFEAS(((\Delay1|Add0~10_combout\ & ((!\Delay1|Equal0~10\)))), GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datab => \Delay1|Add0~10_combout\,
	datad => \Delay1|Equal0~10\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Delay1|bit_rep_clk_G\(27));

-- Location: LC_X11_Y8_N2
\Delay1|Add0~25\ : maxv_lcell
-- Equation(s):
-- \Delay1|Add0~25_combout\ = (\Delay1|bit_rep_clk_G\(28) $ ((!(!\Delay1|Add0~42\ & \Delay1|Add0~12\) # (\Delay1|Add0~42\ & \Delay1|Add0~12COUT1_182\))))
-- \Delay1|Add0~27\ = CARRY(((\Delay1|bit_rep_clk_G\(28) & !\Delay1|Add0~12\)))
-- \Delay1|Add0~27COUT1_183\ = CARRY(((\Delay1|bit_rep_clk_G\(28) & !\Delay1|Add0~12COUT1_182\)))

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
	datab => \Delay1|bit_rep_clk_G\(28),
	cin => \Delay1|Add0~42\,
	cin0 => \Delay1|Add0~12\,
	cin1 => \Delay1|Add0~12COUT1_182\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay1|Add0~25_combout\,
	cout0 => \Delay1|Add0~27\,
	cout1 => \Delay1|Add0~27COUT1_183\);

-- Location: LC_X12_Y8_N5
\Delay1|bit_rep_clk_G[28]\ : maxv_lcell
-- Equation(s):
-- \Delay1|bit_rep_clk_G\(28) = DFFEAS((((\Delay1|Add0~25_combout\))), GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , , , , )

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
	clk => \clock~combout\,
	datad => \Delay1|Add0~25_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Delay1|bit_rep_clk_G\(28));

-- Location: LC_X11_Y8_N3
\Delay1|Add0~20\ : maxv_lcell
-- Equation(s):
-- \Delay1|Add0~20_combout\ = \Delay1|bit_rep_clk_G\(29) $ (((((!\Delay1|Add0~42\ & \Delay1|Add0~27\) # (\Delay1|Add0~42\ & \Delay1|Add0~27COUT1_183\)))))
-- \Delay1|Add0~22\ = CARRY(((!\Delay1|Add0~27\)) # (!\Delay1|bit_rep_clk_G\(29)))
-- \Delay1|Add0~22COUT1_184\ = CARRY(((!\Delay1|Add0~27COUT1_183\)) # (!\Delay1|bit_rep_clk_G\(29)))

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
	dataa => \Delay1|bit_rep_clk_G\(29),
	cin => \Delay1|Add0~42\,
	cin0 => \Delay1|Add0~27\,
	cin1 => \Delay1|Add0~27COUT1_183\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay1|Add0~20_combout\,
	cout0 => \Delay1|Add0~22\,
	cout1 => \Delay1|Add0~22COUT1_184\);

-- Location: LC_X11_Y8_N7
\Delay1|bit_rep_clk_G[29]\ : maxv_lcell
-- Equation(s):
-- \Delay1|Equal0~1\ = (\Delay1|bit_rep_clk_G\(26) & (\Delay1|bit_rep_clk_G\(27) & (!B1_bit_rep_clk_G[29] & !\Delay1|bit_rep_clk_G\(28))))
-- \Delay1|bit_rep_clk_G\(29) = DFFEAS(\Delay1|Equal0~1\, GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , \Delay1|Add0~20_combout\, , , VCC)

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
	clk => \clock~combout\,
	dataa => \Delay1|bit_rep_clk_G\(26),
	datab => \Delay1|bit_rep_clk_G\(27),
	datac => \Delay1|Add0~20_combout\,
	datad => \Delay1|bit_rep_clk_G\(28),
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay1|Equal0~1\,
	regout => \Delay1|bit_rep_clk_G\(29));

-- Location: LC_X11_Y8_N4
\Delay1|Add0~35\ : maxv_lcell
-- Equation(s):
-- \Delay1|Add0~35_combout\ = \Delay1|bit_rep_clk_G\(30) $ ((((!(!\Delay1|Add0~42\ & \Delay1|Add0~22\) # (\Delay1|Add0~42\ & \Delay1|Add0~22COUT1_184\)))))
-- \Delay1|Add0~37\ = CARRY((\Delay1|bit_rep_clk_G\(30) & ((!\Delay1|Add0~22COUT1_184\))))

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
	dataa => \Delay1|bit_rep_clk_G\(30),
	cin => \Delay1|Add0~42\,
	cin0 => \Delay1|Add0~22\,
	cin1 => \Delay1|Add0~22COUT1_184\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay1|Add0~35_combout\,
	cout => \Delay1|Add0~37\);

-- Location: LC_X12_Y8_N7
\Delay1|bit_rep_clk_G[30]\ : maxv_lcell
-- Equation(s):
-- \Delay1|bit_rep_clk_G\(30) = DFFEAS((((\Delay1|Add0~35_combout\))), GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , , , , )

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
	clk => \clock~combout\,
	datad => \Delay1|Add0~35_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Delay1|bit_rep_clk_G\(30));

-- Location: LC_X11_Y8_N6
\Delay1|bit_rep_clk_G[31]\ : maxv_lcell
-- Equation(s):
-- \Delay1|Equal0~2\ = (!\Delay1|bit_rep_clk_G\(30) & (\Delay1|Equal0~1\ & (!B1_bit_rep_clk_G[31] & \Delay1|Equal0~0\)))
-- \Delay1|bit_rep_clk_G\(31) = DFFEAS(\Delay1|Equal0~2\, GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , \Delay1|Add0~30_combout\, , , VCC)

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
	clk => \clock~combout\,
	dataa => \Delay1|bit_rep_clk_G\(30),
	datab => \Delay1|Equal0~1\,
	datac => \Delay1|Add0~30_combout\,
	datad => \Delay1|Equal0~0\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay1|Equal0~2\,
	regout => \Delay1|bit_rep_clk_G\(31));

-- Location: LC_X11_Y8_N5
\Delay1|Add0~30\ : maxv_lcell
-- Equation(s):
-- \Delay1|Add0~30_combout\ = \Delay1|bit_rep_clk_G\(31) $ ((((\Delay1|Add0~37\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Delay1|bit_rep_clk_G\(31),
	cin => \Delay1|Add0~37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay1|Add0~30_combout\);

-- Location: LC_X10_Y9_N7
\Delay1|inG\ : maxv_lcell
-- Equation(s):
-- \Delay1|Equal0~10\ = (\Delay1|Equal0~3\ & (\Delay1|Equal0~4\ & (\Delay1|Equal0~9_combout\ & \Delay1|Equal0~2\)))
-- \Delay1|inG~regout\ = DFFEAS(\Delay1|Equal0~10\, GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \Delay1|Equal0~3\,
	datab => \Delay1|Equal0~4\,
	datac => \Delay1|Equal0~9_combout\,
	datad => \Delay1|Equal0~2\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Delay1|Equal0~10\,
	regout => \Delay1|inG~regout\);

-- Location: LC_X9_Y9_N2
\Delay1|bit_rep_clk_G[23]\ : maxv_lcell
-- Equation(s):
-- \Delay1|bit_rep_clk_G\(23) = DFFEAS((((!\Delay1|Equal0~10\ & \Delay1|Add0~45_combout\))), GLOBAL(\clock~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \Delay1|Equal0~10\,
	datad => \Delay1|Add0~45_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Delay1|bit_rep_clk_G\(23));

-- Location: LC_X7_Y4_N8
\Y_Curr.S4\ : maxv_lcell
-- Equation(s):
-- \Y_Curr.S4~regout\ = DFFEAS((\Y_Curr.S4~regout\ & (((\Y_Curr.S3~regout\ & \Delay1|inG~regout\)) # (!\Delay2|inY~regout\))) # (!\Y_Curr.S4~regout\ & (((\Y_Curr.S3~regout\ & \Delay1|inG~regout\)))), GLOBAL(\clock~combout\), VCC, , , , , \rst~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f222",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \Y_Curr.S4~regout\,
	datab => \Delay2|inY~regout\,
	datac => \Y_Curr.S3~regout\,
	datad => \Delay1|inG~regout\,
	aclr => GND,
	sclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Y_Curr.S4~regout\);

-- Location: LC_X7_Y4_N3
\Y_Curr.S5\ : maxv_lcell
-- Equation(s):
-- \Y_Curr.S5~regout\ = DFFEAS((\Y_Curr.S5~regout\ & (((\Delay2|inY~regout\ & \Y_Curr.S4~regout\)) # (!\Delay1|inG~regout\))) # (!\Y_Curr.S5~regout\ & (((\Delay2|inY~regout\ & \Y_Curr.S4~regout\)))), GLOBAL(\clock~combout\), VCC, , , , , \rst~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f222",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \Y_Curr.S5~regout\,
	datab => \Delay1|inG~regout\,
	datac => \Delay2|inY~regout\,
	datad => \Y_Curr.S4~regout\,
	aclr => GND,
	sclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Y_Curr.S5~regout\);

-- Location: LC_X7_Y4_N9
\Y_Curr.S6\ : maxv_lcell
-- Equation(s):
-- \Y_Curr.S6~regout\ = DFFEAS((\Y_Curr.S5~regout\ & ((\Delay1|inG~regout\) # ((\Y_Curr.S6~regout\ & !\Delay2|inY~regout\)))) # (!\Y_Curr.S5~regout\ & (\Y_Curr.S6~regout\ & (!\Delay2|inY~regout\))), GLOBAL(\clock~combout\), VCC, , , , , \rst~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ae0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \Y_Curr.S5~regout\,
	datab => \Y_Curr.S6~regout\,
	datac => \Delay2|inY~regout\,
	datad => \Delay1|inG~regout\,
	aclr => GND,
	sclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Y_Curr.S6~regout\);

-- Location: LC_X7_Y4_N4
\Y_Curr.S7\ : maxv_lcell
-- Equation(s):
-- \Y_Curr.S7~regout\ = DFFEAS((\Y_Curr.S7~regout\ & (((\Y_Curr.S6~regout\ & \Delay2|inY~regout\)) # (!\Delay1|inG~regout\))) # (!\Y_Curr.S7~regout\ & (\Y_Curr.S6~regout\ & (\Delay2|inY~regout\))), GLOBAL(\clock~combout\), VCC, , , , , \rst~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0ea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \Y_Curr.S7~regout\,
	datab => \Y_Curr.S6~regout\,
	datac => \Delay2|inY~regout\,
	datad => \Delay1|inG~regout\,
	aclr => GND,
	sclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Y_Curr.S7~regout\);

-- Location: LC_X7_Y4_N0
\Y_Curr.S8\ : maxv_lcell
-- Equation(s):
-- \Y_Curr.S8~regout\ = DFFEAS((\Y_Curr.S7~regout\ & ((\Delay1|inG~regout\) # ((!\Delay2|inY~regout\ & \Y_Curr.S8~regout\)))) # (!\Y_Curr.S7~regout\ & (!\Delay2|inY~regout\ & (\Y_Curr.S8~regout\))), GLOBAL(\clock~combout\), VCC, , , , , \rst~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \Y_Curr.S7~regout\,
	datab => \Delay2|inY~regout\,
	datac => \Y_Curr.S8~regout\,
	datad => \Delay1|inG~regout\,
	aclr => GND,
	sclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Y_Curr.S8~regout\);

-- Location: LC_X7_Y4_N6
\Y_Curr.S0\ : maxv_lcell
-- Equation(s):
-- \Y_Curr.S0~regout\ = DFFEAS((!\rst~combout\ & (((!\Delay2|inY~regout\)) # (!\Y_Curr.S8~regout\))), GLOBAL(\clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1155",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \rst~combout\,
	datab => \Y_Curr.S8~regout\,
	datad => \Delay2|inY~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Y_Curr.S0~regout\);

-- Location: LC_X7_Y4_N7
\Y_Curr.S1\ : maxv_lcell
-- Equation(s):
-- \Y_Curr.S1~regout\ = DFFEAS((((\Y_Curr.S1~regout\ & !\Delay1|inG~regout\)) # (!\Y_Curr.S0~regout\)), GLOBAL(\clock~combout\), VCC, , , , , \rst~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fcf",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datab => \Y_Curr.S1~regout\,
	datac => \Y_Curr.S0~regout\,
	datad => \Delay1|inG~regout\,
	aclr => GND,
	sclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Y_Curr.S1~regout\);

-- Location: LC_X7_Y4_N2
\Y_Curr.S2\ : maxv_lcell
-- Equation(s):
-- \Y_Curr.S2~regout\ = DFFEAS((\Delay2|inY~regout\ & (((\Y_Curr.S1~regout\ & \Delay1|inG~regout\)))) # (!\Delay2|inY~regout\ & ((\Y_Curr.S2~regout\) # ((\Y_Curr.S1~regout\ & \Delay1|inG~regout\)))), GLOBAL(\clock~combout\), VCC, , , , , \rst~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f444",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \Delay2|inY~regout\,
	datab => \Y_Curr.S2~regout\,
	datac => \Y_Curr.S1~regout\,
	datad => \Delay1|inG~regout\,
	aclr => GND,
	sclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Y_Curr.S2~regout\);

-- Location: LC_X7_Y4_N5
\Y_Curr.S3\ : maxv_lcell
-- Equation(s):
-- \Y_Curr.S3~regout\ = DFFEAS((\Y_Curr.S3~regout\ & (((\Y_Curr.S2~regout\ & \Delay2|inY~regout\)) # (!\Delay1|inG~regout\))) # (!\Y_Curr.S3~regout\ & (\Y_Curr.S2~regout\ & (\Delay2|inY~regout\))), GLOBAL(\clock~combout\), VCC, , , , , \rst~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0ea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \Y_Curr.S3~regout\,
	datab => \Y_Curr.S2~regout\,
	datac => \Delay2|inY~regout\,
	datad => \Delay1|inG~regout\,
	aclr => GND,
	sclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Y_Curr.S3~regout\);

-- Location: LC_X7_Y4_N1
\stateOp1[1]~0\ : maxv_lcell
-- Equation(s):
-- \stateOp1[1]~0_combout\ = (!\Y_Curr.S3~regout\ & (!\Y_Curr.S2~regout\ & (!\Y_Curr.S1~regout\ & !\Y_Curr.S5~regout\)))

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
	dataa => \Y_Curr.S3~regout\,
	datab => \Y_Curr.S2~regout\,
	datac => \Y_Curr.S1~regout\,
	datad => \Y_Curr.S5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \stateOp1[1]~0_combout\);

-- Location: LC_X8_Y4_N2
\stateOp1[2]~1\ : maxv_lcell
-- Equation(s):
-- \stateOp1[2]~1_combout\ = (((\Y_Curr.S4~regout\) # (\Y_Curr.S6~regout\)) # (!\Y_Curr.S0~regout\)) # (!\stateOp1[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff7",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \stateOp1[1]~0_combout\,
	datab => \Y_Curr.S0~regout\,
	datac => \Y_Curr.S4~regout\,
	datad => \Y_Curr.S6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \stateOp1[2]~1_combout\);

-- Location: LC_X8_Y4_N5
\stateOp1[1]~2\ : maxv_lcell
-- Equation(s):
-- \stateOp1[1]~2_combout\ = (((\stateOp1[2]~1_combout\)) # (!\Y_Curr.S7~regout\))

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
	datab => \Y_Curr.S7~regout\,
	datad => \stateOp1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \stateOp1[1]~2_combout\);

-- Location: LC_X8_Y4_N0
\stateOp1[1]~3\ : maxv_lcell
-- Equation(s):
-- \stateOp1[1]~3_combout\ = (\stateOp1[1]~2_combout\ & (((\stateOp1[1]~0_combout\ & !\Y_Curr.S4~regout\)) # (!\Y_Curr.S0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30b0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \stateOp1[1]~0_combout\,
	datab => \Y_Curr.S0~regout\,
	datac => \stateOp1[1]~2_combout\,
	datad => \Y_Curr.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \stateOp1[1]~3_combout\);

-- Location: LC_X8_Y4_N3
\stateOp1[9]~4\ : maxv_lcell
-- Equation(s):
-- \stateOp1[9]~4_combout\ = ((\stateOp1[2]~1_combout\) # ((!\Y_Curr.S8~regout\ & !\Y_Curr.S7~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff11",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Y_Curr.S8~regout\,
	datab => \Y_Curr.S7~regout\,
	datad => \stateOp1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \stateOp1[9]~4_combout\);

-- Location: LC_X8_Y4_N6
\stateOp1[5]~5\ : maxv_lcell
-- Equation(s):
-- \stateOp1[5]~5_combout\ = ((\stateOp1[9]~4_combout\ & ((\stateOp1[1]~0_combout\) # (!\Y_Curr.S0~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "af00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \stateOp1[1]~0_combout\,
	datac => \Y_Curr.S0~regout\,
	datad => \stateOp1[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \stateOp1[5]~5_combout\);

-- Location: LC_X8_Y4_N7
\stateOp1[9]~6\ : maxv_lcell
-- Equation(s):
-- \stateOp1[9]~6_combout\ = (((\Y_Curr.S0~regout\ & !\Y_Curr.S2~regout\)))

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
	datac => \Y_Curr.S0~regout\,
	datad => \Y_Curr.S2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \stateOp1[9]~6_combout\);

-- Location: LC_X8_Y4_N8
\stateOp1[9]~7\ : maxv_lcell
-- Equation(s):
-- \stateOp1[9]~7_combout\ = (\stateOp1[9]~4_combout\ & (((\Y_Curr.S4~regout\) # (!\stateOp1[2]~1_combout\)) # (!\stateOp1[9]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a2aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \stateOp1[9]~4_combout\,
	datab => \stateOp1[9]~6_combout\,
	datac => \Y_Curr.S4~regout\,
	datad => \stateOp1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \stateOp1[9]~7_combout\);

-- Location: LC_X8_Y4_N9
\stateOp1[13]~8\ : maxv_lcell
-- Equation(s):
-- \stateOp1[13]~8_combout\ = (\stateOp1[2]~1_combout\ & (((\Y_Curr.S2~regout\) # (!\Y_Curr.S0~regout\)))) # (!\stateOp1[2]~1_combout\ & (!\Y_Curr.S7~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb1b",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \stateOp1[2]~1_combout\,
	datab => \Y_Curr.S7~regout\,
	datac => \Y_Curr.S0~regout\,
	datad => \Y_Curr.S2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \stateOp1[13]~8_combout\);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Y[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \stateOp1[1]~3_combout\,
	oe => VCC,
	padio => ww_Y(0));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Y[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_stateOp1[1]~2_combout\,
	oe => VCC,
	padio => ww_Y(1));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Y[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \stateOp1[5]~5_combout\,
	oe => VCC,
	padio => ww_Y(2));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Y[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Y_Curr.S5~regout\,
	oe => VCC,
	padio => ww_Y(3));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Y[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \stateOp1[9]~7_combout\,
	oe => VCC,
	padio => ww_Y(4));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Y[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Y_Curr.S3~regout\,
	oe => VCC,
	padio => ww_Y(5));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Y[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \stateOp1[13]~8_combout\,
	oe => VCC,
	padio => ww_Y(6));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Y[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Y_Curr.S1~regout\,
	oe => VCC,
	padio => ww_Y(7));
END structure;


