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

-- DATE "06/03/2025 20:34:16"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	BCDUP_Count IS
    PORT (
	clk : IN std_logic;
	reset_n : IN std_logic;
	bcd_out : OUT std_logic_vector(3 DOWNTO 0)
	);
END BCDUP_Count;

-- Design Ports Information
-- bcd_out[0]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd_out[1]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd_out[2]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd_out[3]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BCDUP_Count IS
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
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_bcd_out : std_logic_vector(3 DOWNTO 0);
SIGNAL \slow_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bcd_out[0]~output_o\ : std_logic;
SIGNAL \bcd_out[1]~output_o\ : std_logic;
SIGNAL \bcd_out[2]~output_o\ : std_logic;
SIGNAL \bcd_out[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \clk_divider~12_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \clk_divider~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \clk_divider~9_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \clk_divider~8_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \clk_divider~7_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \clk_divider~6_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \clk_divider~13_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \clk_divider~14_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \clk_divider~15_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \clk_divider~16_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \clk_divider~17_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \clk_divider~18_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \clk_divider~11_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \slow_clk~0_combout\ : std_logic;
SIGNAL \slow_clk~feeder_combout\ : std_logic;
SIGNAL \slow_clk~q\ : std_logic;
SIGNAL \slow_clk~clkctrl_outclk\ : std_logic;
SIGNAL \counter[0]~3_combout\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \reset_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \counter[2]~1_combout\ : std_logic;
SIGNAL \counter~2_combout\ : std_logic;
SIGNAL \counter~0_combout\ : std_logic;
SIGNAL counter : std_logic_vector(3 DOWNTO 0);
SIGNAL clk_divider : std_logic_vector(23 DOWNTO 0);
SIGNAL ALT_INV_counter : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset_n <= reset_n;
bcd_out <= ww_bcd_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\slow_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \slow_clk~q\);

\reset_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset_n~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
ALT_INV_counter(3) <= NOT counter(3);
ALT_INV_counter(2) <= NOT counter(2);
ALT_INV_counter(1) <= NOT counter(1);
ALT_INV_counter(0) <= NOT counter(0);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X7_Y24_N2
\bcd_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_counter(0),
	devoe => ww_devoe,
	o => \bcd_out[0]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\bcd_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_counter(1),
	devoe => ww_devoe,
	o => \bcd_out[1]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\bcd_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_counter(2),
	devoe => ww_devoe,
	o => \bcd_out[2]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\bcd_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_counter(3),
	devoe => ww_devoe,
	o => \bcd_out[3]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: LCCOMB_X25_Y5_N8
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = clk_divider(0) $ (VCC)
-- \Add0~1\ = CARRY(clk_divider(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_divider(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X25_Y5_N0
\clk_divider~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider~12_combout\ = (\Add0~0_combout\ & (((!\Equal0~5_combout\) # (!\Equal0~6_combout\)) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~6_combout\,
	datac => \Add0~0_combout\,
	datad => \Equal0~5_combout\,
	combout => \clk_divider~12_combout\);

-- Location: FF_X25_Y5_N1
\clk_divider[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_divider(0));

-- Location: LCCOMB_X25_Y5_N10
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (clk_divider(1) & (!\Add0~1\)) # (!clk_divider(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!clk_divider(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_divider(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X25_Y5_N11
\clk_divider[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_divider(1));

-- Location: LCCOMB_X25_Y5_N12
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (clk_divider(2) & (\Add0~3\ $ (GND))) # (!clk_divider(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((clk_divider(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_divider(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X25_Y5_N13
\clk_divider[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_divider(2));

-- Location: LCCOMB_X25_Y5_N14
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (clk_divider(3) & (!\Add0~5\)) # (!clk_divider(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!clk_divider(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_divider(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X25_Y5_N15
\clk_divider[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_divider(3));

-- Location: LCCOMB_X25_Y5_N16
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (clk_divider(4) & (\Add0~7\ $ (GND))) # (!clk_divider(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((clk_divider(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_divider(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X25_Y5_N17
\clk_divider[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_divider(4));

-- Location: LCCOMB_X25_Y5_N18
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (clk_divider(5) & (!\Add0~9\)) # (!clk_divider(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!clk_divider(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_divider(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X26_Y5_N12
\clk_divider~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider~10_combout\ = (\Add0~10_combout\ & (((!\Equal0~4_combout\) # (!\Equal0~5_combout\)) # (!\Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~5_combout\,
	datac => \Add0~10_combout\,
	datad => \Equal0~4_combout\,
	combout => \clk_divider~10_combout\);

-- Location: FF_X25_Y5_N3
\clk_divider[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \clk_divider~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_divider(5));

-- Location: LCCOMB_X25_Y5_N20
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (clk_divider(6) & (\Add0~11\ $ (GND))) # (!clk_divider(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((clk_divider(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_divider(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X25_Y5_N21
\clk_divider[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_divider(6));

-- Location: LCCOMB_X25_Y5_N22
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (clk_divider(7) & (!\Add0~13\)) # (!clk_divider(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!clk_divider(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_divider(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X25_Y5_N23
\clk_divider[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_divider(7));

-- Location: LCCOMB_X25_Y5_N24
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (clk_divider(8) & (\Add0~15\ $ (GND))) # (!clk_divider(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((clk_divider(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_divider(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X25_Y5_N25
\clk_divider[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_divider(8));

-- Location: LCCOMB_X25_Y5_N26
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (clk_divider(9) & (!\Add0~17\)) # (!clk_divider(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!clk_divider(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_divider(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X25_Y5_N27
\clk_divider[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_divider(9));

-- Location: LCCOMB_X25_Y5_N28
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (clk_divider(10) & (\Add0~19\ $ (GND))) # (!clk_divider(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((clk_divider(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_divider(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X26_Y5_N4
\clk_divider~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider~9_combout\ = (\Add0~20_combout\ & (((!\Equal0~5_combout\) # (!\Equal0~4_combout\)) # (!\Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~4_combout\,
	datac => \Add0~20_combout\,
	datad => \Equal0~5_combout\,
	combout => \clk_divider~9_combout\);

-- Location: FF_X26_Y5_N5
\clk_divider[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_divider(10));

-- Location: LCCOMB_X25_Y5_N30
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (clk_divider(11) & (!\Add0~21\)) # (!clk_divider(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!clk_divider(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_divider(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X26_Y4_N24
\clk_divider~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider~8_combout\ = (\Add0~22_combout\ & (((!\Equal0~5_combout\) # (!\Equal0~4_combout\)) # (!\Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~5_combout\,
	datad => \Add0~22_combout\,
	combout => \clk_divider~8_combout\);

-- Location: FF_X26_Y4_N25
\clk_divider[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_divider(11));

-- Location: LCCOMB_X25_Y4_N0
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (clk_divider(12) & (\Add0~23\ $ (GND))) # (!clk_divider(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((clk_divider(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_divider(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X25_Y4_N24
\clk_divider~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider~7_combout\ = (\Add0~24_combout\ & (((!\Equal0~4_combout\) # (!\Equal0~5_combout\)) # (!\Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~24_combout\,
	combout => \clk_divider~7_combout\);

-- Location: FF_X25_Y4_N25
\clk_divider[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_divider(12));

-- Location: LCCOMB_X25_Y4_N2
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (clk_divider(13) & (!\Add0~25\)) # (!clk_divider(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!clk_divider(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_divider(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X26_Y4_N22
\clk_divider~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider~6_combout\ = (\Add0~26_combout\ & (((!\Equal0~4_combout\) # (!\Equal0~5_combout\)) # (!\Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~4_combout\,
	combout => \clk_divider~6_combout\);

-- Location: FF_X26_Y4_N23
\clk_divider[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_divider(13));

-- Location: LCCOMB_X25_Y4_N4
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (clk_divider(14) & (\Add0~27\ $ (GND))) # (!clk_divider(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((clk_divider(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_divider(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: FF_X25_Y4_N5
\clk_divider[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_divider(14));

-- Location: LCCOMB_X26_Y4_N26
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (clk_divider(13) & (clk_divider(11) & (!clk_divider(14) & clk_divider(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_divider(13),
	datab => clk_divider(11),
	datac => clk_divider(14),
	datad => clk_divider(12),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X25_Y5_N4
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!clk_divider(7) & (!clk_divider(8) & (!clk_divider(9) & clk_divider(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_divider(7),
	datab => clk_divider(8),
	datac => clk_divider(9),
	datad => clk_divider(10),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X25_Y5_N6
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!clk_divider(1) & (!clk_divider(0) & (clk_divider(15) & !clk_divider(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_divider(1),
	datab => clk_divider(0),
	datac => clk_divider(15),
	datad => clk_divider(2),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X25_Y5_N2
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!clk_divider(6) & (!clk_divider(4) & (clk_divider(5) & !clk_divider(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_divider(6),
	datab => clk_divider(4),
	datac => clk_divider(5),
	datad => clk_divider(3),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X26_Y4_N0
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~1_combout\ & (\Equal0~3_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X25_Y4_N8
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (clk_divider(16) & (\Add0~31\ $ (GND))) # (!clk_divider(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((clk_divider(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_divider(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X25_Y4_N10
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (clk_divider(17) & (!\Add0~33\)) # (!clk_divider(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!clk_divider(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_divider(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X26_Y4_N30
\clk_divider~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider~13_combout\ = (\Add0~34_combout\ & (((!\Equal0~4_combout\) # (!\Equal0~6_combout\)) # (!\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~34_combout\,
	combout => \clk_divider~13_combout\);

-- Location: FF_X26_Y4_N31
\clk_divider[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_divider(17));

-- Location: LCCOMB_X25_Y4_N12
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (clk_divider(18) & (\Add0~35\ $ (GND))) # (!clk_divider(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((clk_divider(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_divider(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X25_Y4_N30
\clk_divider~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider~14_combout\ = (\Add0~36_combout\ & (((!\Equal0~4_combout\) # (!\Equal0~5_combout\)) # (!\Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~36_combout\,
	combout => \clk_divider~14_combout\);

-- Location: FF_X25_Y4_N31
\clk_divider[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_divider(18));

-- Location: LCCOMB_X25_Y4_N14
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (clk_divider(19) & (!\Add0~37\)) # (!clk_divider(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!clk_divider(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_divider(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X26_Y4_N28
\clk_divider~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider~15_combout\ = (\Add0~38_combout\ & (((!\Equal0~4_combout\) # (!\Equal0~6_combout\)) # (!\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~38_combout\,
	combout => \clk_divider~15_combout\);

-- Location: FF_X26_Y4_N29
\clk_divider[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_divider(19));

-- Location: LCCOMB_X25_Y4_N16
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (clk_divider(20) & (\Add0~39\ $ (GND))) # (!clk_divider(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((clk_divider(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_divider(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X25_Y4_N28
\clk_divider~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider~16_combout\ = (\Add0~40_combout\ & (((!\Equal0~4_combout\) # (!\Equal0~5_combout\)) # (!\Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~40_combout\,
	combout => \clk_divider~16_combout\);

-- Location: FF_X25_Y4_N29
\clk_divider[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_divider(20));

-- Location: LCCOMB_X25_Y4_N18
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (clk_divider(21) & (!\Add0~41\)) # (!clk_divider(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!clk_divider(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_divider(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X26_Y4_N6
\clk_divider~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider~17_combout\ = (\Add0~42_combout\ & (((!\Equal0~4_combout\) # (!\Equal0~6_combout\)) # (!\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~42_combout\,
	combout => \clk_divider~17_combout\);

-- Location: FF_X26_Y4_N7
\clk_divider[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_divider(21));

-- Location: LCCOMB_X25_Y4_N20
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (clk_divider(22) & (\Add0~43\ $ (GND))) # (!clk_divider(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((clk_divider(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_divider(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: FF_X25_Y4_N21
\clk_divider[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_divider(22));

-- Location: LCCOMB_X25_Y4_N22
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = \Add0~45\ $ (clk_divider(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => clk_divider(23),
	cin => \Add0~45\,
	combout => \Add0~46_combout\);

-- Location: LCCOMB_X26_Y4_N14
\clk_divider~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider~18_combout\ = (\Add0~46_combout\ & (((!\Equal0~4_combout\) # (!\Equal0~6_combout\)) # (!\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~46_combout\,
	combout => \clk_divider~18_combout\);

-- Location: FF_X26_Y4_N15
\clk_divider[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_divider(23));

-- Location: LCCOMB_X26_Y4_N20
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (clk_divider(21) & (clk_divider(20) & (clk_divider(23) & !clk_divider(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_divider(21),
	datab => clk_divider(20),
	datac => clk_divider(23),
	datad => clk_divider(22),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X25_Y4_N6
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (clk_divider(15) & (!\Add0~29\)) # (!clk_divider(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!clk_divider(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_divider(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X26_Y5_N30
\clk_divider~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_divider~11_combout\ = (\Add0~30_combout\ & (((!\Equal0~5_combout\) # (!\Equal0~4_combout\)) # (!\Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~5_combout\,
	datad => \Add0~30_combout\,
	combout => \clk_divider~11_combout\);

-- Location: FF_X26_Y5_N31
\clk_divider[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_divider(15));

-- Location: FF_X25_Y4_N9
\clk_divider[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_divider(16));

-- Location: LCCOMB_X26_Y4_N16
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!clk_divider(16) & (clk_divider(19) & (clk_divider(17) & clk_divider(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_divider(16),
	datab => clk_divider(19),
	datac => clk_divider(17),
	datad => clk_divider(18),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X26_Y4_N10
\slow_clk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow_clk~0_combout\ = \slow_clk~q\ $ (((\Equal0~5_combout\ & (\Equal0~6_combout\ & \Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~6_combout\,
	datac => \slow_clk~q\,
	datad => \Equal0~4_combout\,
	combout => \slow_clk~0_combout\);

-- Location: LCCOMB_X26_Y4_N12
\slow_clk~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow_clk~feeder_combout\ = \slow_clk~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \slow_clk~0_combout\,
	combout => \slow_clk~feeder_combout\);

-- Location: FF_X26_Y4_N13
slow_clk : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \slow_clk~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slow_clk~q\);

-- Location: CLKCTRL_G6
\slow_clk~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \slow_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \slow_clk~clkctrl_outclk\);

-- Location: LCCOMB_X7_Y23_N28
\counter[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[0]~3_combout\ = !counter(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter(0),
	combout => \counter[0]~3_combout\);

-- Location: IOIBUF_X0_Y11_N15
\reset_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: CLKCTRL_G4
\reset_n~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset_n~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset_n~inputclkctrl_outclk\);

-- Location: FF_X7_Y23_N29
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \counter[0]~3_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X7_Y23_N24
\counter[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[2]~1_combout\ = counter(2) $ (((counter(1) & counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datac => counter(2),
	datad => counter(0),
	combout => \counter[2]~1_combout\);

-- Location: FF_X7_Y23_N25
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \counter[2]~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X7_Y23_N26
\counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~2_combout\ = (counter(1) & (counter(3) $ (((counter(0) & counter(2)))))) # (!counter(1) & (counter(3) & ((counter(2)) # (!counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(0),
	datac => counter(3),
	datad => counter(2),
	combout => \counter~2_combout\);

-- Location: FF_X7_Y23_N27
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \counter~2_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X7_Y23_N10
\counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~0_combout\ = (counter(1) & (((!counter(0))))) # (!counter(1) & (counter(0) & ((counter(2)) # (!counter(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(2),
	datac => counter(1),
	datad => counter(0),
	combout => \counter~0_combout\);

-- Location: FF_X7_Y23_N11
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clk~clkctrl_outclk\,
	d => \counter~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

ww_bcd_out(0) <= \bcd_out[0]~output_o\;

ww_bcd_out(1) <= \bcd_out[1]~output_o\;

ww_bcd_out(2) <= \bcd_out[2]~output_o\;

ww_bcd_out(3) <= \bcd_out[3]~output_o\;
END structure;


