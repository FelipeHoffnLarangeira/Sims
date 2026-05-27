-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "05/27/2026 14:28:15"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	raiz IS
    PORT (
	input : IN std_logic_vector(7 DOWNTO 0);
	start : IN std_logic;
	clk : IN std_logic;
	rst : IN std_logic;
	ready : OUT std_logic;
	sqrt : OUT std_logic_vector(7 DOWNTO 0)
	);
END raiz;

-- Design Ports Information
-- ready	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sqrt[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sqrt[1]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sqrt[2]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sqrt[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sqrt[4]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sqrt[5]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sqrt[6]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sqrt[7]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[7]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[6]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[5]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[4]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[3]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[2]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF raiz IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_start : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_ready : std_logic;
SIGNAL ww_sqrt : std_logic_vector(7 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \input[0]~input_o\ : std_logic;
SIGNAL \input[6]~input_o\ : std_logic;
SIGNAL \input[4]~input_o\ : std_logic;
SIGNAL \input[2]~input_o\ : std_logic;
SIGNAL \ready~output_o\ : std_logic;
SIGNAL \sqrt[0]~output_o\ : std_logic;
SIGNAL \sqrt[1]~output_o\ : std_logic;
SIGNAL \sqrt[2]~output_o\ : std_logic;
SIGNAL \sqrt[3]~output_o\ : std_logic;
SIGNAL \sqrt[4]~output_o\ : std_logic;
SIGNAL \sqrt[5]~output_o\ : std_logic;
SIGNAL \sqrt[6]~output_o\ : std_logic;
SIGNAL \sqrt[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \input[7]~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \current_state.ESPERA~q\ : std_logic;
SIGNAL \next_state.INICIALIZA~0_combout\ : std_logic;
SIGNAL \current_state.INICIALIZA~q\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \input[5]~input_o\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \input[3]~input_o\ : std_logic;
SIGNAL \input[1]~input_o\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~12_combout\ : std_logic;
SIGNAL \LessThan0~12_wirecell_combout\ : std_logic;
SIGNAL \t~q\ : std_logic;
SIGNAL \next_state.PROCESSA_0~0_combout\ : std_logic;
SIGNAL \current_state.PROCESSA_0~q\ : std_logic;
SIGNAL \next_state.DECIDE~combout\ : std_logic;
SIGNAL \current_state.DECIDE~feeder_combout\ : std_logic;
SIGNAL \current_state.DECIDE~q\ : std_logic;
SIGNAL \next_state.PRONTO~0_combout\ : std_logic;
SIGNAL \current_state.PRONTO~q\ : std_logic;
SIGNAL \sqrt~0_combout\ : std_logic;
SIGNAL \sqrt~1_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \sqrt~2_combout\ : std_logic;
SIGNAL \sqrt~3_combout\ : std_logic;
SIGNAL \sqrt~4_combout\ : std_logic;
SIGNAL \sqrt~5_combout\ : std_logic;
SIGNAL \Add0~16\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \sqrt~6_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \sqrt~7_combout\ : std_logic;
SIGNAL s : std_logic_vector(7 DOWNTO 0);
SIGNAL r : std_logic_vector(7 DOWNTO 0);
SIGNAL i : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_current_state.PROCESSA_0~q\ : std_logic;

BEGIN

ww_input <= input;
ww_start <= start;
ww_clk <= clk;
ww_rst <= rst;
ready <= ww_ready;
sqrt <= ww_sqrt;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
\ALT_INV_current_state.PROCESSA_0~q\ <= NOT \current_state.PROCESSA_0~q\;

-- Location: LCCOMB_X14_Y5_N18
\Add2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (s(1) & ((r(0)) # (GND))) # (!s(1) & (r(0) $ (VCC)))
-- \Add2~1\ = CARRY((s(1)) # (r(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s(1),
	datab => r(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X14_Y5_N28
\Add2~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (s(6) & ((r(5) & (\Add2~9\ & VCC)) # (!r(5) & (!\Add2~9\)))) # (!s(6) & ((r(5) & (!\Add2~9\)) # (!r(5) & ((\Add2~9\) # (GND)))))
-- \Add2~11\ = CARRY((s(6) & (!r(5) & !\Add2~9\)) # (!s(6) & ((!\Add2~9\) # (!r(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s(6),
	datab => r(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X14_Y5_N30
\Add2~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = r(6) $ (\Add2~11\ $ (!s(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r(6),
	datad => s(7),
	cin => \Add2~11\,
	combout => \Add2~12_combout\);

-- Location: FF_X15_Y5_N29
\s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector15~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \next_state.DECIDE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s(7));

-- Location: FF_X15_Y5_N7
\s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector16~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \next_state.DECIDE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s(6));

-- Location: FF_X15_Y5_N5
\s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector18~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \next_state.DECIDE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s(4));

-- Location: FF_X14_Y5_N25
\s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector21~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \next_state.DECIDE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s(1));

-- Location: FF_X13_Y5_N9
\i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \input[6]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \current_state.INICIALIZA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(6));

-- Location: FF_X13_Y5_N7
\i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \input[4]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \current_state.INICIALIZA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(4));

-- Location: FF_X14_Y5_N3
\i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \input[2]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \current_state.INICIALIZA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(2));

-- Location: LCCOMB_X15_Y5_N28
\Selector15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\current_state.PROCESSA_0~q\ & \Add2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.PROCESSA_0~q\,
	datad => \Add2~12_combout\,
	combout => \Selector15~0_combout\);

-- Location: LCCOMB_X15_Y5_N6
\Selector16~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\current_state.PROCESSA_0~q\ & \Add2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.PROCESSA_0~q\,
	datad => \Add2~10_combout\,
	combout => \Selector16~0_combout\);

-- Location: LCCOMB_X15_Y5_N4
\Selector18~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\current_state.PROCESSA_0~q\ & \Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.PROCESSA_0~q\,
	datad => \Add2~6_combout\,
	combout => \Selector18~0_combout\);

-- Location: LCCOMB_X15_Y5_N10
\Selector21~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\current_state.PROCESSA_0~q\ & \Add2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.PROCESSA_0~q\,
	datad => \Add2~0_combout\,
	combout => \Selector21~0_combout\);

-- Location: IOIBUF_X12_Y31_N1
\input[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(6),
	o => \input[6]~input_o\);

-- Location: IOIBUF_X14_Y31_N1
\input[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(4),
	o => \input[4]~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\input[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(2),
	o => \input[2]~input_o\);

-- Location: IOOBUF_X12_Y0_N9
\ready~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \current_state.PRONTO~q\,
	devoe => ww_devoe,
	o => \ready~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\sqrt[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sqrt~0_combout\,
	devoe => ww_devoe,
	o => \sqrt[0]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\sqrt[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sqrt~1_combout\,
	devoe => ww_devoe,
	o => \sqrt[1]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\sqrt[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sqrt~2_combout\,
	devoe => ww_devoe,
	o => \sqrt[2]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\sqrt[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sqrt~3_combout\,
	devoe => ww_devoe,
	o => \sqrt[3]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\sqrt[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sqrt~4_combout\,
	devoe => ww_devoe,
	o => \sqrt[4]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\sqrt[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sqrt~5_combout\,
	devoe => ww_devoe,
	o => \sqrt[5]~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\sqrt[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sqrt~6_combout\,
	devoe => ww_devoe,
	o => \sqrt[6]~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\sqrt[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sqrt~7_combout\,
	devoe => ww_devoe,
	o => \sqrt[7]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X20_Y0_N8
\input[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(7),
	o => \input[7]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\rst~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G19
\rst~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: IOIBUF_X33_Y16_N1
\start~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: LCCOMB_X16_Y5_N2
\Selector24~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (!\current_state.PRONTO~q\ & ((\current_state.ESPERA~q\) # (\start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.PRONTO~q\,
	datac => \current_state.ESPERA~q\,
	datad => \start~input_o\,
	combout => \Selector24~0_combout\);

-- Location: FF_X16_Y5_N3
\current_state.ESPERA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector24~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.ESPERA~q\);

-- Location: LCCOMB_X16_Y5_N4
\next_state.INICIALIZA~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \next_state.INICIALIZA~0_combout\ = (!\current_state.ESPERA~q\ & \start~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.ESPERA~q\,
	datad => \start~input_o\,
	combout => \next_state.INICIALIZA~0_combout\);

-- Location: FF_X16_Y5_N5
\current_state.INICIALIZA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_state.INICIALIZA~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.INICIALIZA~q\);

-- Location: FF_X14_Y5_N13
\i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \input[7]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \current_state.INICIALIZA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(7));

-- Location: LCCOMB_X13_Y5_N10
\Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = r(0) $ (VCC)
-- \Add0~1\ = CARRY(r(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X13_Y5_N6
\Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\Add0~0_combout\) # (!\current_state.PROCESSA_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.PROCESSA_0~q\,
	datad => \Add0~0_combout\,
	combout => \Add0~2_combout\);

-- Location: FF_X14_Y5_N29
\r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \next_state.DECIDE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r(0));

-- Location: LCCOMB_X13_Y5_N12
\Add0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (r(1) & (!\Add0~1\)) # (!r(1) & ((\Add0~1\) # (GND)))
-- \Add0~4\ = CARRY((!\Add0~1\) # (!r(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

-- Location: LCCOMB_X13_Y5_N4
\Add0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = (\current_state.PROCESSA_0~q\ & \Add0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.PROCESSA_0~q\,
	datad => \Add0~3_combout\,
	combout => \Add0~5_combout\);

-- Location: FF_X14_Y5_N11
\r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \next_state.DECIDE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r(1));

-- Location: LCCOMB_X13_Y5_N14
\Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (r(2) & (\Add0~4\ $ (GND))) # (!r(2) & (!\Add0~4\ & VCC))
-- \Add0~7\ = CARRY((r(2) & !\Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r(2),
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X13_Y5_N16
\Add0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (r(3) & (!\Add0~7\)) # (!r(3) & ((\Add0~7\) # (GND)))
-- \Add0~10\ = CARRY((!\Add0~7\) # (!r(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r(3),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

-- Location: LCCOMB_X14_Y5_N14
\Add0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = (\Add0~9_combout\ & \current_state.PROCESSA_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~9_combout\,
	datad => \current_state.PROCESSA_0~q\,
	combout => \Add0~11_combout\);

-- Location: FF_X14_Y5_N15
\r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~11_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \next_state.DECIDE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r(3));

-- Location: LCCOMB_X13_Y5_N18
\Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (r(4) & (\Add0~10\ $ (GND))) # (!r(4) & (!\Add0~10\ & VCC))
-- \Add0~13\ = CARRY((r(4) & !\Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r(4),
	datad => VCC,
	cin => \Add0~10\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X13_Y5_N0
\Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\current_state.PROCESSA_0~q\ & \Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.PROCESSA_0~q\,
	datad => \Add0~12_combout\,
	combout => \Add0~14_combout\);

-- Location: FF_X13_Y5_N1
\r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \next_state.DECIDE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r(4));

-- Location: LCCOMB_X13_Y5_N20
\Add0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (r(5) & (!\Add0~13\)) # (!r(5) & ((\Add0~13\) # (GND)))
-- \Add0~16\ = CARRY((!\Add0~13\) # (!r(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r(5),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~15_combout\,
	cout => \Add0~16\);

-- Location: LCCOMB_X13_Y5_N30
\Add0~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = (\current_state.PROCESSA_0~q\ & \Add0~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.PROCESSA_0~q\,
	datad => \Add0~15_combout\,
	combout => \Add0~17_combout\);

-- Location: FF_X13_Y5_N31
\r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~17_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \next_state.DECIDE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r(5));

-- Location: LCCOMB_X14_Y5_N20
\Add2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (r(1) & ((s(2) & (\Add2~1\ & VCC)) # (!s(2) & (!\Add2~1\)))) # (!r(1) & ((s(2) & (!\Add2~1\)) # (!s(2) & ((\Add2~1\) # (GND)))))
-- \Add2~3\ = CARRY((r(1) & (!s(2) & !\Add2~1\)) # (!r(1) & ((!\Add2~1\) # (!s(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r(1),
	datab => s(2),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X15_Y5_N0
\Selector20~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\Add2~2_combout\) # (!\current_state.PROCESSA_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.PROCESSA_0~q\,
	datad => \Add2~2_combout\,
	combout => \Selector20~0_combout\);

-- Location: FF_X15_Y5_N1
\s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector20~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \next_state.DECIDE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s(2));

-- Location: LCCOMB_X14_Y5_N22
\Add2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((r(2) $ (s(3) $ (!\Add2~3\)))) # (GND)
-- \Add2~5\ = CARRY((r(2) & ((s(3)) # (!\Add2~3\))) # (!r(2) & (s(3) & !\Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r(2),
	datab => s(3),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X15_Y5_N18
\Selector19~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\current_state.PROCESSA_0~q\ & \Add2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.PROCESSA_0~q\,
	datad => \Add2~4_combout\,
	combout => \Selector19~0_combout\);

-- Location: FF_X15_Y5_N19
\s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector19~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \next_state.DECIDE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s(3));

-- Location: LCCOMB_X14_Y5_N24
\Add2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (s(4) & ((r(3) & (\Add2~5\ & VCC)) # (!r(3) & (!\Add2~5\)))) # (!s(4) & ((r(3) & (!\Add2~5\)) # (!r(3) & ((\Add2~5\) # (GND)))))
-- \Add2~7\ = CARRY((s(4) & (!r(3) & !\Add2~5\)) # (!s(4) & ((!\Add2~5\) # (!r(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s(4),
	datab => r(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X14_Y5_N26
\Add2~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = ((r(4) $ (s(5) $ (!\Add2~7\)))) # (GND)
-- \Add2~9\ = CARRY((r(4) & ((s(5)) # (!\Add2~7\))) # (!r(4) & (s(5) & !\Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r(4),
	datab => s(5),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X14_Y5_N16
\Selector17~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\Add2~8_combout\ & \current_state.PROCESSA_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~8_combout\,
	datad => \current_state.PROCESSA_0~q\,
	combout => \Selector17~0_combout\);

-- Location: FF_X14_Y5_N17
\s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector17~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \next_state.DECIDE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s(5));

-- Location: IOIBUF_X10_Y0_N8
\input[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(5),
	o => \input[5]~input_o\);

-- Location: FF_X14_Y5_N9
\i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \input[5]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \current_state.INICIALIZA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(5));

-- Location: IOIBUF_X14_Y0_N8
\input[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(3),
	o => \input[3]~input_o\);

-- Location: FF_X14_Y5_N5
\i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \input[3]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \current_state.INICIALIZA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(3));

-- Location: IOIBUF_X14_Y0_N1
\input[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(1),
	o => \input[1]~input_o\);

-- Location: FF_X14_Y5_N1
\i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \input[1]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \current_state.INICIALIZA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(1));

-- Location: LCCOMB_X14_Y5_N0
\LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((\Add2~0_combout\ & !i(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => i(1),
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X14_Y5_N2
\LessThan0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((i(2) & ((!\LessThan0~1_cout\) # (!\Add2~2_combout\))) # (!i(2) & (!\Add2~2_combout\ & !\LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(2),
	datab => \Add2~2_combout\,
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X14_Y5_N4
\LessThan0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\Add2~4_combout\ & ((!\LessThan0~3_cout\) # (!i(3)))) # (!\Add2~4_combout\ & (!i(3) & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => i(3),
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X14_Y5_N6
\LessThan0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((i(4) & ((!\LessThan0~5_cout\) # (!\Add2~6_combout\))) # (!i(4) & (!\Add2~6_combout\ & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(4),
	datab => \Add2~6_combout\,
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X14_Y5_N8
\LessThan0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\Add2~8_combout\ & ((!\LessThan0~7_cout\) # (!i(5)))) # (!\Add2~8_combout\ & (!i(5) & !\LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => i(5),
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X14_Y5_N10
\LessThan0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((i(6) & ((!\LessThan0~9_cout\) # (!\Add2~10_combout\))) # (!i(6) & (!\Add2~10_combout\ & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(6),
	datab => \Add2~10_combout\,
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X14_Y5_N12
\LessThan0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~12_combout\ = (\Add2~12_combout\ & ((!i(7)) # (!\LessThan0~11_cout\))) # (!\Add2~12_combout\ & (!\LessThan0~11_cout\ & !i(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datad => i(7),
	cin => \LessThan0~11_cout\,
	combout => \LessThan0~12_combout\);

-- Location: LCCOMB_X15_Y5_N20
\LessThan0~12_wirecell\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~12_wirecell_combout\ = !\LessThan0~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LessThan0~12_combout\,
	combout => \LessThan0~12_wirecell_combout\);

-- Location: FF_X15_Y5_N21
t : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LessThan0~12_wirecell_combout\,
	asdata => VCC,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \ALT_INV_current_state.PROCESSA_0~q\,
	ena => \next_state.DECIDE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t~q\);

-- Location: LCCOMB_X15_Y5_N24
\next_state.PROCESSA_0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \next_state.PROCESSA_0~0_combout\ = (\current_state.DECIDE~q\ & \t~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.DECIDE~q\,
	datad => \t~q\,
	combout => \next_state.PROCESSA_0~0_combout\);

-- Location: FF_X15_Y5_N25
\current_state.PROCESSA_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_state.PROCESSA_0~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.PROCESSA_0~q\);

-- Location: LCCOMB_X15_Y5_N2
\next_state.DECIDE\ : cycloneiv_lcell_comb
-- Equation(s):
-- \next_state.DECIDE~combout\ = (\current_state.PROCESSA_0~q\) # (\current_state.INICIALIZA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.PROCESSA_0~q\,
	datad => \current_state.INICIALIZA~q\,
	combout => \next_state.DECIDE~combout\);

-- Location: LCCOMB_X15_Y5_N22
\current_state.DECIDE~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \current_state.DECIDE~feeder_combout\ = \next_state.DECIDE~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \next_state.DECIDE~combout\,
	combout => \current_state.DECIDE~feeder_combout\);

-- Location: FF_X15_Y5_N23
\current_state.DECIDE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_state.DECIDE~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.DECIDE~q\);

-- Location: LCCOMB_X15_Y5_N14
\next_state.PRONTO~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \next_state.PRONTO~0_combout\ = (\current_state.DECIDE~q\ & !\t~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.DECIDE~q\,
	datad => \t~q\,
	combout => \next_state.PRONTO~0_combout\);

-- Location: FF_X15_Y5_N15
\current_state.PRONTO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_state.PRONTO~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.PRONTO~q\);

-- Location: LCCOMB_X15_Y5_N8
\sqrt~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sqrt~0_combout\ = (\current_state.PRONTO~q\ & r(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.PRONTO~q\,
	datac => r(0),
	combout => \sqrt~0_combout\);

-- Location: LCCOMB_X16_Y5_N20
\sqrt~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sqrt~1_combout\ = (r(1) & \current_state.PRONTO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r(1),
	datad => \current_state.PRONTO~q\,
	combout => \sqrt~1_combout\);

-- Location: LCCOMB_X13_Y5_N26
\Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\current_state.PROCESSA_0~q\ & \Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.PROCESSA_0~q\,
	datac => \Add0~6_combout\,
	combout => \Add0~8_combout\);

-- Location: FF_X14_Y5_N7
\r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~8_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \next_state.DECIDE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r(2));

-- Location: LCCOMB_X16_Y5_N30
\sqrt~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sqrt~2_combout\ = (r(2) & \current_state.PRONTO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r(2),
	datad => \current_state.PRONTO~q\,
	combout => \sqrt~2_combout\);

-- Location: LCCOMB_X13_Y4_N12
\sqrt~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sqrt~3_combout\ = (\current_state.PRONTO~q\ & r(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.PRONTO~q\,
	datad => r(3),
	combout => \sqrt~3_combout\);

-- Location: LCCOMB_X15_Y5_N26
\sqrt~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sqrt~4_combout\ = (\current_state.PRONTO~q\ & r(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.PRONTO~q\,
	datac => r(4),
	combout => \sqrt~4_combout\);

-- Location: LCCOMB_X15_Y5_N12
\sqrt~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sqrt~5_combout\ = (\current_state.PRONTO~q\ & r(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.PRONTO~q\,
	datad => r(5),
	combout => \sqrt~5_combout\);

-- Location: LCCOMB_X13_Y5_N22
\Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (r(6) & (\Add0~16\ $ (GND))) # (!r(6) & (!\Add0~16\ & VCC))
-- \Add0~19\ = CARRY((r(6) & !\Add0~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r(6),
	datad => VCC,
	cin => \Add0~16\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X13_Y5_N28
\Add0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (\current_state.PROCESSA_0~q\ & \Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.PROCESSA_0~q\,
	datac => \Add0~18_combout\,
	combout => \Add0~20_combout\);

-- Location: FF_X13_Y5_N29
\r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \next_state.DECIDE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r(6));

-- Location: LCCOMB_X13_Y4_N22
\sqrt~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sqrt~6_combout\ = (r(6) & \current_state.PRONTO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r(6),
	datac => \current_state.PRONTO~q\,
	combout => \sqrt~6_combout\);

-- Location: LCCOMB_X13_Y5_N24
\Add0~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = \Add0~19\ $ (r(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => r(7),
	cin => \Add0~19\,
	combout => \Add0~21_combout\);

-- Location: LCCOMB_X13_Y5_N2
\Add0~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = (\current_state.PROCESSA_0~q\ & \Add0~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.PROCESSA_0~q\,
	datad => \Add0~21_combout\,
	combout => \Add0~23_combout\);

-- Location: FF_X13_Y5_N3
\r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~23_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \next_state.DECIDE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r(7));

-- Location: LCCOMB_X13_Y5_N8
\sqrt~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sqrt~7_combout\ = (r(7) & \current_state.PRONTO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r(7),
	datad => \current_state.PRONTO~q\,
	combout => \sqrt~7_combout\);

-- Location: IOIBUF_X33_Y16_N8
\input[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(0),
	o => \input[0]~input_o\);

ww_ready <= \ready~output_o\;

ww_sqrt(0) <= \sqrt[0]~output_o\;

ww_sqrt(1) <= \sqrt[1]~output_o\;

ww_sqrt(2) <= \sqrt[2]~output_o\;

ww_sqrt(3) <= \sqrt[3]~output_o\;

ww_sqrt(4) <= \sqrt[4]~output_o\;

ww_sqrt(5) <= \sqrt[5]~output_o\;

ww_sqrt(6) <= \sqrt[6]~output_o\;

ww_sqrt(7) <= \sqrt[7]~output_o\;
END structure;


