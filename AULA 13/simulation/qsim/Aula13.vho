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
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "05/12/2023 17:04:34"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Aula13 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	S_ULA : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END Aula13;

ARCHITECTURE structure OF Aula13 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S_ULA : std_logic_vector(31 DOWNTO 0);
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \S_ULA[0]~output_o\ : std_logic;
SIGNAL \S_ULA[1]~output_o\ : std_logic;
SIGNAL \S_ULA[2]~output_o\ : std_logic;
SIGNAL \S_ULA[3]~output_o\ : std_logic;
SIGNAL \S_ULA[4]~output_o\ : std_logic;
SIGNAL \S_ULA[5]~output_o\ : std_logic;
SIGNAL \S_ULA[6]~output_o\ : std_logic;
SIGNAL \S_ULA[7]~output_o\ : std_logic;
SIGNAL \S_ULA[8]~output_o\ : std_logic;
SIGNAL \S_ULA[9]~output_o\ : std_logic;
SIGNAL \S_ULA[10]~output_o\ : std_logic;
SIGNAL \S_ULA[11]~output_o\ : std_logic;
SIGNAL \S_ULA[12]~output_o\ : std_logic;
SIGNAL \S_ULA[13]~output_o\ : std_logic;
SIGNAL \S_ULA[14]~output_o\ : std_logic;
SIGNAL \S_ULA[15]~output_o\ : std_logic;
SIGNAL \S_ULA[16]~output_o\ : std_logic;
SIGNAL \S_ULA[17]~output_o\ : std_logic;
SIGNAL \S_ULA[18]~output_o\ : std_logic;
SIGNAL \S_ULA[19]~output_o\ : std_logic;
SIGNAL \S_ULA[20]~output_o\ : std_logic;
SIGNAL \S_ULA[21]~output_o\ : std_logic;
SIGNAL \S_ULA[22]~output_o\ : std_logic;
SIGNAL \S_ULA[23]~output_o\ : std_logic;
SIGNAL \S_ULA[24]~output_o\ : std_logic;
SIGNAL \S_ULA[25]~output_o\ : std_logic;
SIGNAL \S_ULA[26]~output_o\ : std_logic;
SIGNAL \S_ULA[27]~output_o\ : std_logic;
SIGNAL \S_ULA[28]~output_o\ : std_logic;
SIGNAL \S_ULA[29]~output_o\ : std_logic;
SIGNAL \S_ULA[30]~output_o\ : std_logic;
SIGNAL \S_ULA[31]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \PC|DOUT[2]~0_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~2\ : std_logic;
SIGNAL \incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~6\ : std_logic;
SIGNAL \incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~10\ : std_logic;
SIGNAL \incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~18\ : std_logic;
SIGNAL \incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \banco|Equal0~0_combout\ : std_logic;
SIGNAL \banco|registrador~38_q\ : std_logic;
SIGNAL \banco|registrador~1062_combout\ : std_logic;
SIGNAL \ULA1|Add0~130_cout\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \banco|registrador~1094_combout\ : std_logic;
SIGNAL \banco|registrador~39_q\ : std_logic;
SIGNAL \banco|registrador~1063_combout\ : std_logic;
SIGNAL \ULA1|Add0~2\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \banco|registrador~40_q\ : std_logic;
SIGNAL \banco|registrador~1064_combout\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \banco|registrador~1095_combout\ : std_logic;
SIGNAL \banco|registrador~41_q\ : std_logic;
SIGNAL \banco|registrador~1065_combout\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \banco|registrador~42_q\ : std_logic;
SIGNAL \banco|registrador~1066_combout\ : std_logic;
SIGNAL \ULA1|Add0~14\ : std_logic;
SIGNAL \ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \banco|registrador~1096_combout\ : std_logic;
SIGNAL \banco|registrador~43_q\ : std_logic;
SIGNAL \banco|registrador~1067_combout\ : std_logic;
SIGNAL \ULA1|Add0~18\ : std_logic;
SIGNAL \ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \banco|registrador~44_q\ : std_logic;
SIGNAL \banco|registrador~1068_combout\ : std_logic;
SIGNAL \ULA1|Add0~22\ : std_logic;
SIGNAL \ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \banco|registrador~1097_combout\ : std_logic;
SIGNAL \banco|registrador~45_q\ : std_logic;
SIGNAL \banco|registrador~1069_combout\ : std_logic;
SIGNAL \ULA1|Add0~26\ : std_logic;
SIGNAL \ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \banco|registrador~46_q\ : std_logic;
SIGNAL \banco|registrador~1070_combout\ : std_logic;
SIGNAL \ULA1|Add0~30\ : std_logic;
SIGNAL \ULA1|Add0~33_sumout\ : std_logic;
SIGNAL \banco|registrador~1098_combout\ : std_logic;
SIGNAL \banco|registrador~47_q\ : std_logic;
SIGNAL \banco|registrador~1071_combout\ : std_logic;
SIGNAL \ULA1|Add0~34\ : std_logic;
SIGNAL \ULA1|Add0~37_sumout\ : std_logic;
SIGNAL \banco|registrador~48_q\ : std_logic;
SIGNAL \banco|registrador~1072_combout\ : std_logic;
SIGNAL \ULA1|Add0~38\ : std_logic;
SIGNAL \ULA1|Add0~41_sumout\ : std_logic;
SIGNAL \banco|registrador~1099_combout\ : std_logic;
SIGNAL \banco|registrador~49_q\ : std_logic;
SIGNAL \banco|registrador~1073_combout\ : std_logic;
SIGNAL \ULA1|Add0~42\ : std_logic;
SIGNAL \ULA1|Add0~45_sumout\ : std_logic;
SIGNAL \banco|registrador~50_q\ : std_logic;
SIGNAL \banco|registrador~1074_combout\ : std_logic;
SIGNAL \ULA1|Add0~46\ : std_logic;
SIGNAL \ULA1|Add0~49_sumout\ : std_logic;
SIGNAL \banco|registrador~1100_combout\ : std_logic;
SIGNAL \banco|registrador~51_q\ : std_logic;
SIGNAL \banco|registrador~1075_combout\ : std_logic;
SIGNAL \ULA1|Add0~50\ : std_logic;
SIGNAL \ULA1|Add0~53_sumout\ : std_logic;
SIGNAL \banco|registrador~52_q\ : std_logic;
SIGNAL \banco|registrador~1076_combout\ : std_logic;
SIGNAL \ULA1|Add0~54\ : std_logic;
SIGNAL \ULA1|Add0~57_sumout\ : std_logic;
SIGNAL \banco|registrador~1101_combout\ : std_logic;
SIGNAL \banco|registrador~53_q\ : std_logic;
SIGNAL \banco|registrador~1077_combout\ : std_logic;
SIGNAL \ULA1|Add0~58\ : std_logic;
SIGNAL \ULA1|Add0~61_sumout\ : std_logic;
SIGNAL \banco|registrador~54_q\ : std_logic;
SIGNAL \banco|registrador~1078_combout\ : std_logic;
SIGNAL \ULA1|Add0~62\ : std_logic;
SIGNAL \ULA1|Add0~65_sumout\ : std_logic;
SIGNAL \banco|registrador~1102_combout\ : std_logic;
SIGNAL \banco|registrador~55_q\ : std_logic;
SIGNAL \banco|registrador~1079_combout\ : std_logic;
SIGNAL \ULA1|Add0~66\ : std_logic;
SIGNAL \ULA1|Add0~69_sumout\ : std_logic;
SIGNAL \banco|registrador~56_q\ : std_logic;
SIGNAL \banco|registrador~1080_combout\ : std_logic;
SIGNAL \ULA1|Add0~70\ : std_logic;
SIGNAL \ULA1|Add0~73_sumout\ : std_logic;
SIGNAL \banco|registrador~1103_combout\ : std_logic;
SIGNAL \banco|registrador~57_q\ : std_logic;
SIGNAL \banco|registrador~1081_combout\ : std_logic;
SIGNAL \ULA1|Add0~74\ : std_logic;
SIGNAL \ULA1|Add0~77_sumout\ : std_logic;
SIGNAL \banco|registrador~58_q\ : std_logic;
SIGNAL \banco|registrador~1082_combout\ : std_logic;
SIGNAL \ULA1|Add0~78\ : std_logic;
SIGNAL \ULA1|Add0~81_sumout\ : std_logic;
SIGNAL \banco|registrador~1104_combout\ : std_logic;
SIGNAL \banco|registrador~59_q\ : std_logic;
SIGNAL \banco|registrador~1083_combout\ : std_logic;
SIGNAL \ULA1|Add0~82\ : std_logic;
SIGNAL \ULA1|Add0~85_sumout\ : std_logic;
SIGNAL \banco|registrador~60_q\ : std_logic;
SIGNAL \banco|registrador~1084_combout\ : std_logic;
SIGNAL \ULA1|Add0~86\ : std_logic;
SIGNAL \ULA1|Add0~89_sumout\ : std_logic;
SIGNAL \banco|registrador~1105_combout\ : std_logic;
SIGNAL \banco|registrador~61_q\ : std_logic;
SIGNAL \banco|registrador~1085_combout\ : std_logic;
SIGNAL \ULA1|Add0~90\ : std_logic;
SIGNAL \ULA1|Add0~93_sumout\ : std_logic;
SIGNAL \banco|registrador~62_q\ : std_logic;
SIGNAL \banco|registrador~1086_combout\ : std_logic;
SIGNAL \ULA1|Add0~94\ : std_logic;
SIGNAL \ULA1|Add0~97_sumout\ : std_logic;
SIGNAL \banco|registrador~1106_combout\ : std_logic;
SIGNAL \banco|registrador~63_q\ : std_logic;
SIGNAL \banco|registrador~1087_combout\ : std_logic;
SIGNAL \ULA1|Add0~98\ : std_logic;
SIGNAL \ULA1|Add0~101_sumout\ : std_logic;
SIGNAL \banco|registrador~64_q\ : std_logic;
SIGNAL \banco|registrador~1088_combout\ : std_logic;
SIGNAL \ULA1|Add0~102\ : std_logic;
SIGNAL \ULA1|Add0~105_sumout\ : std_logic;
SIGNAL \banco|registrador~1107_combout\ : std_logic;
SIGNAL \banco|registrador~65_q\ : std_logic;
SIGNAL \banco|registrador~1089_combout\ : std_logic;
SIGNAL \ULA1|Add0~106\ : std_logic;
SIGNAL \ULA1|Add0~109_sumout\ : std_logic;
SIGNAL \banco|registrador~66_q\ : std_logic;
SIGNAL \banco|registrador~1090_combout\ : std_logic;
SIGNAL \ULA1|Add0~110\ : std_logic;
SIGNAL \ULA1|Add0~113_sumout\ : std_logic;
SIGNAL \banco|registrador~1108_combout\ : std_logic;
SIGNAL \banco|registrador~67_q\ : std_logic;
SIGNAL \banco|registrador~1091_combout\ : std_logic;
SIGNAL \ULA1|Add0~114\ : std_logic;
SIGNAL \ULA1|Add0~117_sumout\ : std_logic;
SIGNAL \banco|registrador~68_q\ : std_logic;
SIGNAL \banco|registrador~1092_combout\ : std_logic;
SIGNAL \ULA1|Add0~118\ : std_logic;
SIGNAL \ULA1|Add0~121_sumout\ : std_logic;
SIGNAL \banco|registrador~1109_combout\ : std_logic;
SIGNAL \banco|registrador~69_q\ : std_logic;
SIGNAL \banco|registrador~1093_combout\ : std_logic;
SIGNAL \ULA1|Add0~122\ : std_logic;
SIGNAL \ULA1|Add0~125_sumout\ : std_logic;
SIGNAL \PC|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ULA1|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~1093_combout\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~69_q\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~1092_combout\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~68_q\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~1091_combout\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~67_q\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~1090_combout\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~66_q\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~1089_combout\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~65_q\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~1088_combout\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~64_q\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~1087_combout\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~63_q\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~1086_combout\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~62_q\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~1085_combout\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~61_q\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~1084_combout\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~60_q\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~1083_combout\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~59_q\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~1082_combout\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~58_q\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~1081_combout\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~57_q\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~1080_combout\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~56_q\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~1079_combout\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~55_q\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~1078_combout\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~54_q\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~1077_combout\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~53_q\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~1076_combout\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~52_q\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~1075_combout\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~51_q\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~1074_combout\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~50_q\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~1073_combout\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~49_q\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~1072_combout\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~48_q\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~1071_combout\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~47_q\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~1070_combout\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~46_q\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~1069_combout\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~45_q\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~1068_combout\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~44_q\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~1067_combout\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~43_q\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~1066_combout\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~42_q\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~1065_combout\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~41_q\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~1064_combout\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~40_q\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~1063_combout\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~39_q\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~1062_combout\ : std_logic;
SIGNAL \banco|ALT_INV_registrador~38_q\ : std_logic;
SIGNAL \banco|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 2);
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~101_sumout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
S_ULA <= ww_S_ULA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ULA1|ALT_INV_Add0~93_sumout\ <= NOT \ULA1|Add0~93_sumout\;
\ULA1|ALT_INV_Add0~85_sumout\ <= NOT \ULA1|Add0~85_sumout\;
\ULA1|ALT_INV_Add0~77_sumout\ <= NOT \ULA1|Add0~77_sumout\;
\ULA1|ALT_INV_Add0~69_sumout\ <= NOT \ULA1|Add0~69_sumout\;
\ULA1|ALT_INV_Add0~61_sumout\ <= NOT \ULA1|Add0~61_sumout\;
\ULA1|ALT_INV_Add0~53_sumout\ <= NOT \ULA1|Add0~53_sumout\;
\ULA1|ALT_INV_Add0~45_sumout\ <= NOT \ULA1|Add0~45_sumout\;
\ULA1|ALT_INV_Add0~37_sumout\ <= NOT \ULA1|Add0~37_sumout\;
\ULA1|ALT_INV_Add0~29_sumout\ <= NOT \ULA1|Add0~29_sumout\;
\ULA1|ALT_INV_Add0~21_sumout\ <= NOT \ULA1|Add0~21_sumout\;
\ULA1|ALT_INV_Add0~13_sumout\ <= NOT \ULA1|Add0~13_sumout\;
\ULA1|ALT_INV_Add0~5_sumout\ <= NOT \ULA1|Add0~5_sumout\;
\banco|ALT_INV_registrador~1093_combout\ <= NOT \banco|registrador~1093_combout\;
\banco|ALT_INV_registrador~69_q\ <= NOT \banco|registrador~69_q\;
\banco|ALT_INV_registrador~1092_combout\ <= NOT \banco|registrador~1092_combout\;
\banco|ALT_INV_registrador~68_q\ <= NOT \banco|registrador~68_q\;
\banco|ALT_INV_registrador~1091_combout\ <= NOT \banco|registrador~1091_combout\;
\banco|ALT_INV_registrador~67_q\ <= NOT \banco|registrador~67_q\;
\banco|ALT_INV_registrador~1090_combout\ <= NOT \banco|registrador~1090_combout\;
\banco|ALT_INV_registrador~66_q\ <= NOT \banco|registrador~66_q\;
\banco|ALT_INV_registrador~1089_combout\ <= NOT \banco|registrador~1089_combout\;
\banco|ALT_INV_registrador~65_q\ <= NOT \banco|registrador~65_q\;
\banco|ALT_INV_registrador~1088_combout\ <= NOT \banco|registrador~1088_combout\;
\banco|ALT_INV_registrador~64_q\ <= NOT \banco|registrador~64_q\;
\banco|ALT_INV_registrador~1087_combout\ <= NOT \banco|registrador~1087_combout\;
\banco|ALT_INV_registrador~63_q\ <= NOT \banco|registrador~63_q\;
\banco|ALT_INV_registrador~1086_combout\ <= NOT \banco|registrador~1086_combout\;
\banco|ALT_INV_registrador~62_q\ <= NOT \banco|registrador~62_q\;
\banco|ALT_INV_registrador~1085_combout\ <= NOT \banco|registrador~1085_combout\;
\banco|ALT_INV_registrador~61_q\ <= NOT \banco|registrador~61_q\;
\banco|ALT_INV_registrador~1084_combout\ <= NOT \banco|registrador~1084_combout\;
\banco|ALT_INV_registrador~60_q\ <= NOT \banco|registrador~60_q\;
\banco|ALT_INV_registrador~1083_combout\ <= NOT \banco|registrador~1083_combout\;
\banco|ALT_INV_registrador~59_q\ <= NOT \banco|registrador~59_q\;
\banco|ALT_INV_registrador~1082_combout\ <= NOT \banco|registrador~1082_combout\;
\banco|ALT_INV_registrador~58_q\ <= NOT \banco|registrador~58_q\;
\banco|ALT_INV_registrador~1081_combout\ <= NOT \banco|registrador~1081_combout\;
\banco|ALT_INV_registrador~57_q\ <= NOT \banco|registrador~57_q\;
\banco|ALT_INV_registrador~1080_combout\ <= NOT \banco|registrador~1080_combout\;
\banco|ALT_INV_registrador~56_q\ <= NOT \banco|registrador~56_q\;
\banco|ALT_INV_registrador~1079_combout\ <= NOT \banco|registrador~1079_combout\;
\banco|ALT_INV_registrador~55_q\ <= NOT \banco|registrador~55_q\;
\banco|ALT_INV_registrador~1078_combout\ <= NOT \banco|registrador~1078_combout\;
\banco|ALT_INV_registrador~54_q\ <= NOT \banco|registrador~54_q\;
\banco|ALT_INV_registrador~1077_combout\ <= NOT \banco|registrador~1077_combout\;
\banco|ALT_INV_registrador~53_q\ <= NOT \banco|registrador~53_q\;
\banco|ALT_INV_registrador~1076_combout\ <= NOT \banco|registrador~1076_combout\;
\banco|ALT_INV_registrador~52_q\ <= NOT \banco|registrador~52_q\;
\banco|ALT_INV_registrador~1075_combout\ <= NOT \banco|registrador~1075_combout\;
\banco|ALT_INV_registrador~51_q\ <= NOT \banco|registrador~51_q\;
\banco|ALT_INV_registrador~1074_combout\ <= NOT \banco|registrador~1074_combout\;
\banco|ALT_INV_registrador~50_q\ <= NOT \banco|registrador~50_q\;
\banco|ALT_INV_registrador~1073_combout\ <= NOT \banco|registrador~1073_combout\;
\banco|ALT_INV_registrador~49_q\ <= NOT \banco|registrador~49_q\;
\banco|ALT_INV_registrador~1072_combout\ <= NOT \banco|registrador~1072_combout\;
\banco|ALT_INV_registrador~48_q\ <= NOT \banco|registrador~48_q\;
\banco|ALT_INV_registrador~1071_combout\ <= NOT \banco|registrador~1071_combout\;
\banco|ALT_INV_registrador~47_q\ <= NOT \banco|registrador~47_q\;
\banco|ALT_INV_registrador~1070_combout\ <= NOT \banco|registrador~1070_combout\;
\banco|ALT_INV_registrador~46_q\ <= NOT \banco|registrador~46_q\;
\banco|ALT_INV_registrador~1069_combout\ <= NOT \banco|registrador~1069_combout\;
\banco|ALT_INV_registrador~45_q\ <= NOT \banco|registrador~45_q\;
\banco|ALT_INV_registrador~1068_combout\ <= NOT \banco|registrador~1068_combout\;
\banco|ALT_INV_registrador~44_q\ <= NOT \banco|registrador~44_q\;
\banco|ALT_INV_registrador~1067_combout\ <= NOT \banco|registrador~1067_combout\;
\banco|ALT_INV_registrador~43_q\ <= NOT \banco|registrador~43_q\;
\banco|ALT_INV_registrador~1066_combout\ <= NOT \banco|registrador~1066_combout\;
\banco|ALT_INV_registrador~42_q\ <= NOT \banco|registrador~42_q\;
\banco|ALT_INV_registrador~1065_combout\ <= NOT \banco|registrador~1065_combout\;
\banco|ALT_INV_registrador~41_q\ <= NOT \banco|registrador~41_q\;
\banco|ALT_INV_registrador~1064_combout\ <= NOT \banco|registrador~1064_combout\;
\banco|ALT_INV_registrador~40_q\ <= NOT \banco|registrador~40_q\;
\banco|ALT_INV_registrador~1063_combout\ <= NOT \banco|registrador~1063_combout\;
\banco|ALT_INV_registrador~39_q\ <= NOT \banco|registrador~39_q\;
\banco|ALT_INV_registrador~1062_combout\ <= NOT \banco|registrador~1062_combout\;
\banco|ALT_INV_registrador~38_q\ <= NOT \banco|registrador~38_q\;
\banco|ALT_INV_Equal0~0_combout\ <= NOT \banco|Equal0~0_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\ULA1|ALT_INV_Add0~125_sumout\ <= NOT \ULA1|Add0~125_sumout\;
\ULA1|ALT_INV_Add0~117_sumout\ <= NOT \ULA1|Add0~117_sumout\;
\ULA1|ALT_INV_Add0~109_sumout\ <= NOT \ULA1|Add0~109_sumout\;
\ULA1|ALT_INV_Add0~101_sumout\ <= NOT \ULA1|Add0~101_sumout\;

\S_ULA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~1_sumout\,
	devoe => ww_devoe,
	o => \S_ULA[0]~output_o\);

\S_ULA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~5_sumout\,
	devoe => ww_devoe,
	o => \S_ULA[1]~output_o\);

\S_ULA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~9_sumout\,
	devoe => ww_devoe,
	o => \S_ULA[2]~output_o\);

\S_ULA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~13_sumout\,
	devoe => ww_devoe,
	o => \S_ULA[3]~output_o\);

\S_ULA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~17_sumout\,
	devoe => ww_devoe,
	o => \S_ULA[4]~output_o\);

\S_ULA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~21_sumout\,
	devoe => ww_devoe,
	o => \S_ULA[5]~output_o\);

\S_ULA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~25_sumout\,
	devoe => ww_devoe,
	o => \S_ULA[6]~output_o\);

\S_ULA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~29_sumout\,
	devoe => ww_devoe,
	o => \S_ULA[7]~output_o\);

\S_ULA[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~33_sumout\,
	devoe => ww_devoe,
	o => \S_ULA[8]~output_o\);

\S_ULA[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~37_sumout\,
	devoe => ww_devoe,
	o => \S_ULA[9]~output_o\);

\S_ULA[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~41_sumout\,
	devoe => ww_devoe,
	o => \S_ULA[10]~output_o\);

\S_ULA[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~45_sumout\,
	devoe => ww_devoe,
	o => \S_ULA[11]~output_o\);

\S_ULA[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~49_sumout\,
	devoe => ww_devoe,
	o => \S_ULA[12]~output_o\);

\S_ULA[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~53_sumout\,
	devoe => ww_devoe,
	o => \S_ULA[13]~output_o\);

\S_ULA[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~57_sumout\,
	devoe => ww_devoe,
	o => \S_ULA[14]~output_o\);

\S_ULA[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~61_sumout\,
	devoe => ww_devoe,
	o => \S_ULA[15]~output_o\);

\S_ULA[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~65_sumout\,
	devoe => ww_devoe,
	o => \S_ULA[16]~output_o\);

\S_ULA[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~69_sumout\,
	devoe => ww_devoe,
	o => \S_ULA[17]~output_o\);

\S_ULA[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~73_sumout\,
	devoe => ww_devoe,
	o => \S_ULA[18]~output_o\);

\S_ULA[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~77_sumout\,
	devoe => ww_devoe,
	o => \S_ULA[19]~output_o\);

\S_ULA[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~81_sumout\,
	devoe => ww_devoe,
	o => \S_ULA[20]~output_o\);

\S_ULA[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~85_sumout\,
	devoe => ww_devoe,
	o => \S_ULA[21]~output_o\);

\S_ULA[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~89_sumout\,
	devoe => ww_devoe,
	o => \S_ULA[22]~output_o\);

\S_ULA[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~93_sumout\,
	devoe => ww_devoe,
	o => \S_ULA[23]~output_o\);

\S_ULA[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~97_sumout\,
	devoe => ww_devoe,
	o => \S_ULA[24]~output_o\);

\S_ULA[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~101_sumout\,
	devoe => ww_devoe,
	o => \S_ULA[25]~output_o\);

\S_ULA[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~105_sumout\,
	devoe => ww_devoe,
	o => \S_ULA[26]~output_o\);

\S_ULA[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~109_sumout\,
	devoe => ww_devoe,
	o => \S_ULA[27]~output_o\);

\S_ULA[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~113_sumout\,
	devoe => ww_devoe,
	o => \S_ULA[28]~output_o\);

\S_ULA[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~117_sumout\,
	devoe => ww_devoe,
	o => \S_ULA[29]~output_o\);

\S_ULA[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~121_sumout\,
	devoe => ww_devoe,
	o => \S_ULA[30]~output_o\);

\S_ULA[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|Add0~125_sumout\,
	devoe => ww_devoe,
	o => \S_ULA[31]~output_o\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\PC|DOUT[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[2]~0_combout\ = !\PC|DOUT\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	combout => \PC|DOUT[2]~0_combout\);

\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PC|DOUT[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

\incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~1_sumout\ = SUM(( \PC|DOUT\(2) ) + ( \PC|DOUT\(3) ) + ( !VCC ))
-- \incrementaPC|Add0~2\ = CARRY(( \PC|DOUT\(2) ) + ( \PC|DOUT\(3) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	dataf => \PC|ALT_INV_DOUT\(3),
	cin => GND,
	sumout => \incrementaPC|Add0~1_sumout\,
	cout => \incrementaPC|Add0~2\);

\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \incrementaPC|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

\incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~5_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))
-- \incrementaPC|Add0~6\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \incrementaPC|Add0~2\,
	sumout => \incrementaPC|Add0~5_sumout\,
	cout => \incrementaPC|Add0~6\);

\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \incrementaPC|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

\incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~9_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))
-- \incrementaPC|Add0~10\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \incrementaPC|Add0~6\,
	sumout => \incrementaPC|Add0~9_sumout\,
	cout => \incrementaPC|Add0~10\);

\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \incrementaPC|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

\incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~17_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))
-- \incrementaPC|Add0~18\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \incrementaPC|Add0~10\,
	sumout => \incrementaPC|Add0~17_sumout\,
	cout => \incrementaPC|Add0~18\);

\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \incrementaPC|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

\incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~13_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \incrementaPC|Add0~18\,
	sumout => \incrementaPC|Add0~13_sumout\);

\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \incrementaPC|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( !\PC|DOUT\(6) & ( (!\PC|DOUT\(3) & (!\PC|DOUT\(4) & (!\PC|DOUT\(5) & !\PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(4),
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(7),
	datae => \PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~0_combout\);

\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( !\PC|DOUT\(6) & ( \PC|DOUT\(2) & ( (!\PC|DOUT\(3) & (!\PC|DOUT\(4) & (!\PC|DOUT\(5) & !\PC|DOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(4),
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(7),
	datae => \PC|ALT_INV_DOUT\(6),
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \ROM1|memROM~1_combout\);

\banco|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|Equal0~0_combout\ = ( \PC|DOUT\(6) ) # ( !\PC|DOUT\(6) & ( (((\PC|DOUT\(7)) # (\PC|DOUT\(5))) # (\PC|DOUT\(4))) # (\PC|DOUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111101111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(4),
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(7),
	datae => \PC|ALT_INV_DOUT\(6),
	combout => \banco|Equal0~0_combout\);

\banco|registrador~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~1_sumout\,
	ena => \banco|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco|registrador~38_q\);

\banco|registrador~1062\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1062_combout\ = ( \PC|DOUT\(7) & ( \PC|DOUT\(6) & ( \banco|registrador~38_q\ ) ) ) # ( !\PC|DOUT\(7) & ( \PC|DOUT\(6) & ( \banco|registrador~38_q\ ) ) ) # ( \PC|DOUT\(7) & ( !\PC|DOUT\(6) & ( \banco|registrador~38_q\ ) ) ) # ( 
-- !\PC|DOUT\(7) & ( !\PC|DOUT\(6) & ( (\banco|registrador~38_q\ & (((\PC|DOUT\(5)) # (\PC|DOUT\(4))) # (\PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \banco|ALT_INV_registrador~38_q\,
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(7),
	dataf => \PC|ALT_INV_DOUT\(6),
	combout => \banco|registrador~1062_combout\);

\ULA1|Add0~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~130_cout\ = CARRY(( (!\ROM1|memROM~0_combout\) # (\ROM1|memROM~1_combout\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	cin => GND,
	cout => \ULA1|Add0~130_cout\);

\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( \ROM1|memROM~0_combout\ ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1062_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1062_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~130_cout\ ))
-- \ULA1|Add0~2\ = CARRY(( \ROM1|memROM~0_combout\ ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1062_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1062_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~130_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011010000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \banco|ALT_INV_Equal0~0_combout\,
	dataf => \banco|ALT_INV_registrador~1062_combout\,
	cin => \ULA1|Add0~130_cout\,
	sumout => \ULA1|Add0~1_sumout\,
	cout => \ULA1|Add0~2\);

\banco|registrador~1094\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1094_combout\ = !\ULA1|Add0~5_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~5_sumout\,
	combout => \banco|registrador~1094_combout\);

\banco|registrador~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \banco|registrador~1094_combout\,
	ena => \banco|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco|registrador~39_q\);

\banco|registrador~1063\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1063_combout\ = (!\ROM1|memROM~0_combout\ & ((!\banco|registrador~39_q\))) # (\ROM1|memROM~0_combout\ & (!\PC|DOUT\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010011100100111001001110010011100100111001001110010011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \banco|ALT_INV_registrador~39_q\,
	combout => \banco|registrador~1063_combout\);

\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1063_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1063_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~2\ ))
-- \ULA1|Add0~6\ = CARRY(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1063_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1063_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \banco|ALT_INV_Equal0~0_combout\,
	dataf => \banco|ALT_INV_registrador~1063_combout\,
	cin => \ULA1|Add0~2\,
	sumout => \ULA1|Add0~5_sumout\,
	cout => \ULA1|Add0~6\);

\banco|registrador~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~9_sumout\,
	ena => \banco|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco|registrador~40_q\);

\banco|registrador~1064\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1064_combout\ = (\banco|registrador~40_q\) # (\ROM1|memROM~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \banco|ALT_INV_registrador~40_q\,
	combout => \banco|registrador~1064_combout\);

\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( \ROM1|memROM~0_combout\ ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1064_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1064_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~6\ ))
-- \ULA1|Add0~10\ = CARRY(( \ROM1|memROM~0_combout\ ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1064_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1064_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011010000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \banco|ALT_INV_Equal0~0_combout\,
	dataf => \banco|ALT_INV_registrador~1064_combout\,
	cin => \ULA1|Add0~6\,
	sumout => \ULA1|Add0~9_sumout\,
	cout => \ULA1|Add0~10\);

\banco|registrador~1095\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1095_combout\ = !\ULA1|Add0~13_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~13_sumout\,
	combout => \banco|registrador~1095_combout\);

\banco|registrador~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \banco|registrador~1095_combout\,
	ena => \banco|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco|registrador~41_q\);

\banco|registrador~1065\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1065_combout\ = (!\ROM1|memROM~0_combout\ & ((!\banco|registrador~41_q\))) # (\ROM1|memROM~0_combout\ & (\PC|DOUT\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110100010001110111010001000111011101000100011101110100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \banco|ALT_INV_registrador~41_q\,
	combout => \banco|registrador~1065_combout\);

\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( \ROM1|memROM~0_combout\ ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1065_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1065_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~10\ ))
-- \ULA1|Add0~14\ = CARRY(( \ROM1|memROM~0_combout\ ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1065_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1065_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011010000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \banco|ALT_INV_Equal0~0_combout\,
	dataf => \banco|ALT_INV_registrador~1065_combout\,
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~13_sumout\,
	cout => \ULA1|Add0~14\);

\banco|registrador~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~17_sumout\,
	ena => \banco|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco|registrador~42_q\);

\banco|registrador~1066\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1066_combout\ = (!\ROM1|memROM~0_combout\ & ((\banco|registrador~42_q\))) # (\ROM1|memROM~0_combout\ & (!\PC|DOUT\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001011101110001000101110111000100010111011100010001011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \banco|ALT_INV_registrador~42_q\,
	combout => \banco|registrador~1066_combout\);

\ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_sumout\ = SUM(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1066_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1066_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~14\ ))
-- \ULA1|Add0~18\ = CARRY(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1066_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1066_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \banco|ALT_INV_Equal0~0_combout\,
	dataf => \banco|ALT_INV_registrador~1066_combout\,
	cin => \ULA1|Add0~14\,
	sumout => \ULA1|Add0~17_sumout\,
	cout => \ULA1|Add0~18\);

\banco|registrador~1096\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1096_combout\ = !\ULA1|Add0~21_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~21_sumout\,
	combout => \banco|registrador~1096_combout\);

\banco|registrador~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \banco|registrador~1096_combout\,
	ena => \banco|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco|registrador~43_q\);

\banco|registrador~1067\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1067_combout\ = (!\ROM1|memROM~0_combout\ & !\banco|registrador~43_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \banco|ALT_INV_registrador~43_q\,
	combout => \banco|registrador~1067_combout\);

\ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_sumout\ = SUM(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1067_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1067_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~18\ ))
-- \ULA1|Add0~22\ = CARRY(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1067_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1067_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \banco|ALT_INV_Equal0~0_combout\,
	dataf => \banco|ALT_INV_registrador~1067_combout\,
	cin => \ULA1|Add0~18\,
	sumout => \ULA1|Add0~21_sumout\,
	cout => \ULA1|Add0~22\);

\banco|registrador~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~25_sumout\,
	ena => \banco|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco|registrador~44_q\);

\banco|registrador~1068\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1068_combout\ = (!\ROM1|memROM~0_combout\ & \banco|registrador~44_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \banco|ALT_INV_registrador~44_q\,
	combout => \banco|registrador~1068_combout\);

\ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_sumout\ = SUM(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1068_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1068_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~22\ ))
-- \ULA1|Add0~26\ = CARRY(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1068_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1068_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \banco|ALT_INV_Equal0~0_combout\,
	dataf => \banco|ALT_INV_registrador~1068_combout\,
	cin => \ULA1|Add0~22\,
	sumout => \ULA1|Add0~25_sumout\,
	cout => \ULA1|Add0~26\);

\banco|registrador~1097\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1097_combout\ = !\ULA1|Add0~29_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~29_sumout\,
	combout => \banco|registrador~1097_combout\);

\banco|registrador~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \banco|registrador~1097_combout\,
	ena => \banco|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco|registrador~45_q\);

\banco|registrador~1069\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1069_combout\ = (!\ROM1|memROM~0_combout\ & !\banco|registrador~45_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \banco|ALT_INV_registrador~45_q\,
	combout => \banco|registrador~1069_combout\);

\ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_sumout\ = SUM(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1069_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1069_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~26\ ))
-- \ULA1|Add0~30\ = CARRY(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1069_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1069_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \banco|ALT_INV_Equal0~0_combout\,
	dataf => \banco|ALT_INV_registrador~1069_combout\,
	cin => \ULA1|Add0~26\,
	sumout => \ULA1|Add0~29_sumout\,
	cout => \ULA1|Add0~30\);

\banco|registrador~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~33_sumout\,
	ena => \banco|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco|registrador~46_q\);

\banco|registrador~1070\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1070_combout\ = (!\ROM1|memROM~0_combout\ & \banco|registrador~46_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \banco|ALT_INV_registrador~46_q\,
	combout => \banco|registrador~1070_combout\);

\ULA1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~33_sumout\ = SUM(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1070_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1070_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~30\ ))
-- \ULA1|Add0~34\ = CARRY(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1070_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1070_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \banco|ALT_INV_Equal0~0_combout\,
	dataf => \banco|ALT_INV_registrador~1070_combout\,
	cin => \ULA1|Add0~30\,
	sumout => \ULA1|Add0~33_sumout\,
	cout => \ULA1|Add0~34\);

\banco|registrador~1098\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1098_combout\ = !\ULA1|Add0~37_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~37_sumout\,
	combout => \banco|registrador~1098_combout\);

\banco|registrador~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \banco|registrador~1098_combout\,
	ena => \banco|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco|registrador~47_q\);

\banco|registrador~1071\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1071_combout\ = (!\ROM1|memROM~0_combout\ & !\banco|registrador~47_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \banco|ALT_INV_registrador~47_q\,
	combout => \banco|registrador~1071_combout\);

\ULA1|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~37_sumout\ = SUM(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1071_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1071_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~34\ ))
-- \ULA1|Add0~38\ = CARRY(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1071_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1071_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \banco|ALT_INV_Equal0~0_combout\,
	dataf => \banco|ALT_INV_registrador~1071_combout\,
	cin => \ULA1|Add0~34\,
	sumout => \ULA1|Add0~37_sumout\,
	cout => \ULA1|Add0~38\);

\banco|registrador~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~41_sumout\,
	ena => \banco|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco|registrador~48_q\);

\banco|registrador~1072\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1072_combout\ = (!\ROM1|memROM~0_combout\ & \banco|registrador~48_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \banco|ALT_INV_registrador~48_q\,
	combout => \banco|registrador~1072_combout\);

\ULA1|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~41_sumout\ = SUM(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1072_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1072_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~38\ ))
-- \ULA1|Add0~42\ = CARRY(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1072_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1072_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \banco|ALT_INV_Equal0~0_combout\,
	dataf => \banco|ALT_INV_registrador~1072_combout\,
	cin => \ULA1|Add0~38\,
	sumout => \ULA1|Add0~41_sumout\,
	cout => \ULA1|Add0~42\);

\banco|registrador~1099\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1099_combout\ = !\ULA1|Add0~45_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~45_sumout\,
	combout => \banco|registrador~1099_combout\);

\banco|registrador~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \banco|registrador~1099_combout\,
	ena => \banco|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco|registrador~49_q\);

\banco|registrador~1073\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1073_combout\ = (!\ROM1|memROM~0_combout\ & !\banco|registrador~49_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \banco|ALT_INV_registrador~49_q\,
	combout => \banco|registrador~1073_combout\);

\ULA1|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~45_sumout\ = SUM(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1073_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1073_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~42\ ))
-- \ULA1|Add0~46\ = CARRY(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1073_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1073_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \banco|ALT_INV_Equal0~0_combout\,
	dataf => \banco|ALT_INV_registrador~1073_combout\,
	cin => \ULA1|Add0~42\,
	sumout => \ULA1|Add0~45_sumout\,
	cout => \ULA1|Add0~46\);

\banco|registrador~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~49_sumout\,
	ena => \banco|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco|registrador~50_q\);

\banco|registrador~1074\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1074_combout\ = (!\ROM1|memROM~0_combout\ & \banco|registrador~50_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \banco|ALT_INV_registrador~50_q\,
	combout => \banco|registrador~1074_combout\);

\ULA1|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~49_sumout\ = SUM(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1074_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1074_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~46\ ))
-- \ULA1|Add0~50\ = CARRY(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1074_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1074_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \banco|ALT_INV_Equal0~0_combout\,
	dataf => \banco|ALT_INV_registrador~1074_combout\,
	cin => \ULA1|Add0~46\,
	sumout => \ULA1|Add0~49_sumout\,
	cout => \ULA1|Add0~50\);

\banco|registrador~1100\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1100_combout\ = !\ULA1|Add0~53_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~53_sumout\,
	combout => \banco|registrador~1100_combout\);

\banco|registrador~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \banco|registrador~1100_combout\,
	ena => \banco|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco|registrador~51_q\);

\banco|registrador~1075\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1075_combout\ = (!\ROM1|memROM~0_combout\ & !\banco|registrador~51_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \banco|ALT_INV_registrador~51_q\,
	combout => \banco|registrador~1075_combout\);

\ULA1|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~53_sumout\ = SUM(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1075_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1075_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~50\ ))
-- \ULA1|Add0~54\ = CARRY(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1075_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1075_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \banco|ALT_INV_Equal0~0_combout\,
	dataf => \banco|ALT_INV_registrador~1075_combout\,
	cin => \ULA1|Add0~50\,
	sumout => \ULA1|Add0~53_sumout\,
	cout => \ULA1|Add0~54\);

\banco|registrador~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~57_sumout\,
	ena => \banco|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco|registrador~52_q\);

\banco|registrador~1076\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1076_combout\ = (!\ROM1|memROM~0_combout\ & \banco|registrador~52_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \banco|ALT_INV_registrador~52_q\,
	combout => \banco|registrador~1076_combout\);

\ULA1|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~57_sumout\ = SUM(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1076_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1076_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~54\ ))
-- \ULA1|Add0~58\ = CARRY(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1076_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1076_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \banco|ALT_INV_Equal0~0_combout\,
	dataf => \banco|ALT_INV_registrador~1076_combout\,
	cin => \ULA1|Add0~54\,
	sumout => \ULA1|Add0~57_sumout\,
	cout => \ULA1|Add0~58\);

\banco|registrador~1101\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1101_combout\ = !\ULA1|Add0~61_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~61_sumout\,
	combout => \banco|registrador~1101_combout\);

\banco|registrador~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \banco|registrador~1101_combout\,
	ena => \banco|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco|registrador~53_q\);

\banco|registrador~1077\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1077_combout\ = (!\ROM1|memROM~0_combout\ & !\banco|registrador~53_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \banco|ALT_INV_registrador~53_q\,
	combout => \banco|registrador~1077_combout\);

\ULA1|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~61_sumout\ = SUM(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1077_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1077_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~58\ ))
-- \ULA1|Add0~62\ = CARRY(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1077_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1077_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \banco|ALT_INV_Equal0~0_combout\,
	dataf => \banco|ALT_INV_registrador~1077_combout\,
	cin => \ULA1|Add0~58\,
	sumout => \ULA1|Add0~61_sumout\,
	cout => \ULA1|Add0~62\);

\banco|registrador~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~65_sumout\,
	ena => \banco|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco|registrador~54_q\);

\banco|registrador~1078\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1078_combout\ = (!\ROM1|memROM~0_combout\ & \banco|registrador~54_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \banco|ALT_INV_registrador~54_q\,
	combout => \banco|registrador~1078_combout\);

\ULA1|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~65_sumout\ = SUM(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1078_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1078_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~62\ ))
-- \ULA1|Add0~66\ = CARRY(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1078_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1078_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \banco|ALT_INV_Equal0~0_combout\,
	dataf => \banco|ALT_INV_registrador~1078_combout\,
	cin => \ULA1|Add0~62\,
	sumout => \ULA1|Add0~65_sumout\,
	cout => \ULA1|Add0~66\);

\banco|registrador~1102\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1102_combout\ = !\ULA1|Add0~69_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~69_sumout\,
	combout => \banco|registrador~1102_combout\);

\banco|registrador~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \banco|registrador~1102_combout\,
	ena => \banco|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco|registrador~55_q\);

\banco|registrador~1079\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1079_combout\ = (!\ROM1|memROM~0_combout\ & !\banco|registrador~55_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \banco|ALT_INV_registrador~55_q\,
	combout => \banco|registrador~1079_combout\);

\ULA1|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~69_sumout\ = SUM(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1079_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1079_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~66\ ))
-- \ULA1|Add0~70\ = CARRY(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1079_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1079_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \banco|ALT_INV_Equal0~0_combout\,
	dataf => \banco|ALT_INV_registrador~1079_combout\,
	cin => \ULA1|Add0~66\,
	sumout => \ULA1|Add0~69_sumout\,
	cout => \ULA1|Add0~70\);

\banco|registrador~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~73_sumout\,
	ena => \banco|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco|registrador~56_q\);

\banco|registrador~1080\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1080_combout\ = (!\ROM1|memROM~0_combout\ & \banco|registrador~56_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \banco|ALT_INV_registrador~56_q\,
	combout => \banco|registrador~1080_combout\);

\ULA1|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~73_sumout\ = SUM(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1080_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1080_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~70\ ))
-- \ULA1|Add0~74\ = CARRY(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1080_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1080_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \banco|ALT_INV_Equal0~0_combout\,
	dataf => \banco|ALT_INV_registrador~1080_combout\,
	cin => \ULA1|Add0~70\,
	sumout => \ULA1|Add0~73_sumout\,
	cout => \ULA1|Add0~74\);

\banco|registrador~1103\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1103_combout\ = !\ULA1|Add0~77_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~77_sumout\,
	combout => \banco|registrador~1103_combout\);

\banco|registrador~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \banco|registrador~1103_combout\,
	ena => \banco|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco|registrador~57_q\);

\banco|registrador~1081\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1081_combout\ = (!\ROM1|memROM~0_combout\ & !\banco|registrador~57_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \banco|ALT_INV_registrador~57_q\,
	combout => \banco|registrador~1081_combout\);

\ULA1|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~77_sumout\ = SUM(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1081_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1081_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~74\ ))
-- \ULA1|Add0~78\ = CARRY(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1081_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1081_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \banco|ALT_INV_Equal0~0_combout\,
	dataf => \banco|ALT_INV_registrador~1081_combout\,
	cin => \ULA1|Add0~74\,
	sumout => \ULA1|Add0~77_sumout\,
	cout => \ULA1|Add0~78\);

\banco|registrador~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~81_sumout\,
	ena => \banco|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco|registrador~58_q\);

\banco|registrador~1082\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1082_combout\ = (!\ROM1|memROM~0_combout\ & \banco|registrador~58_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \banco|ALT_INV_registrador~58_q\,
	combout => \banco|registrador~1082_combout\);

\ULA1|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~81_sumout\ = SUM(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1082_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1082_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~78\ ))
-- \ULA1|Add0~82\ = CARRY(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1082_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1082_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \banco|ALT_INV_Equal0~0_combout\,
	dataf => \banco|ALT_INV_registrador~1082_combout\,
	cin => \ULA1|Add0~78\,
	sumout => \ULA1|Add0~81_sumout\,
	cout => \ULA1|Add0~82\);

\banco|registrador~1104\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1104_combout\ = !\ULA1|Add0~85_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~85_sumout\,
	combout => \banco|registrador~1104_combout\);

\banco|registrador~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \banco|registrador~1104_combout\,
	ena => \banco|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco|registrador~59_q\);

\banco|registrador~1083\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1083_combout\ = (!\ROM1|memROM~0_combout\ & !\banco|registrador~59_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \banco|ALT_INV_registrador~59_q\,
	combout => \banco|registrador~1083_combout\);

\ULA1|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~85_sumout\ = SUM(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1083_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1083_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~82\ ))
-- \ULA1|Add0~86\ = CARRY(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1083_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1083_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \banco|ALT_INV_Equal0~0_combout\,
	dataf => \banco|ALT_INV_registrador~1083_combout\,
	cin => \ULA1|Add0~82\,
	sumout => \ULA1|Add0~85_sumout\,
	cout => \ULA1|Add0~86\);

\banco|registrador~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~89_sumout\,
	ena => \banco|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco|registrador~60_q\);

\banco|registrador~1084\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1084_combout\ = (!\ROM1|memROM~0_combout\ & \banco|registrador~60_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \banco|ALT_INV_registrador~60_q\,
	combout => \banco|registrador~1084_combout\);

\ULA1|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~89_sumout\ = SUM(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1084_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1084_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~86\ ))
-- \ULA1|Add0~90\ = CARRY(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1084_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1084_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \banco|ALT_INV_Equal0~0_combout\,
	dataf => \banco|ALT_INV_registrador~1084_combout\,
	cin => \ULA1|Add0~86\,
	sumout => \ULA1|Add0~89_sumout\,
	cout => \ULA1|Add0~90\);

\banco|registrador~1105\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1105_combout\ = !\ULA1|Add0~93_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~93_sumout\,
	combout => \banco|registrador~1105_combout\);

\banco|registrador~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \banco|registrador~1105_combout\,
	ena => \banco|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco|registrador~61_q\);

\banco|registrador~1085\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1085_combout\ = (!\ROM1|memROM~0_combout\ & !\banco|registrador~61_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \banco|ALT_INV_registrador~61_q\,
	combout => \banco|registrador~1085_combout\);

\ULA1|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~93_sumout\ = SUM(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1085_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1085_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~90\ ))
-- \ULA1|Add0~94\ = CARRY(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1085_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1085_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \banco|ALT_INV_Equal0~0_combout\,
	dataf => \banco|ALT_INV_registrador~1085_combout\,
	cin => \ULA1|Add0~90\,
	sumout => \ULA1|Add0~93_sumout\,
	cout => \ULA1|Add0~94\);

\banco|registrador~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~97_sumout\,
	ena => \banco|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco|registrador~62_q\);

\banco|registrador~1086\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1086_combout\ = (!\ROM1|memROM~0_combout\ & \banco|registrador~62_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \banco|ALT_INV_registrador~62_q\,
	combout => \banco|registrador~1086_combout\);

\ULA1|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~97_sumout\ = SUM(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1086_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1086_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~94\ ))
-- \ULA1|Add0~98\ = CARRY(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1086_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1086_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \banco|ALT_INV_Equal0~0_combout\,
	dataf => \banco|ALT_INV_registrador~1086_combout\,
	cin => \ULA1|Add0~94\,
	sumout => \ULA1|Add0~97_sumout\,
	cout => \ULA1|Add0~98\);

\banco|registrador~1106\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1106_combout\ = !\ULA1|Add0~101_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~101_sumout\,
	combout => \banco|registrador~1106_combout\);

\banco|registrador~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \banco|registrador~1106_combout\,
	ena => \banco|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco|registrador~63_q\);

\banco|registrador~1087\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1087_combout\ = (!\ROM1|memROM~0_combout\ & !\banco|registrador~63_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \banco|ALT_INV_registrador~63_q\,
	combout => \banco|registrador~1087_combout\);

\ULA1|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~101_sumout\ = SUM(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1087_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1087_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~98\ ))
-- \ULA1|Add0~102\ = CARRY(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1087_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1087_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \banco|ALT_INV_Equal0~0_combout\,
	dataf => \banco|ALT_INV_registrador~1087_combout\,
	cin => \ULA1|Add0~98\,
	sumout => \ULA1|Add0~101_sumout\,
	cout => \ULA1|Add0~102\);

\banco|registrador~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~105_sumout\,
	ena => \banco|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco|registrador~64_q\);

\banco|registrador~1088\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1088_combout\ = (!\ROM1|memROM~0_combout\ & \banco|registrador~64_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \banco|ALT_INV_registrador~64_q\,
	combout => \banco|registrador~1088_combout\);

\ULA1|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~105_sumout\ = SUM(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1088_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1088_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~102\ ))
-- \ULA1|Add0~106\ = CARRY(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1088_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1088_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \banco|ALT_INV_Equal0~0_combout\,
	dataf => \banco|ALT_INV_registrador~1088_combout\,
	cin => \ULA1|Add0~102\,
	sumout => \ULA1|Add0~105_sumout\,
	cout => \ULA1|Add0~106\);

\banco|registrador~1107\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1107_combout\ = !\ULA1|Add0~109_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~109_sumout\,
	combout => \banco|registrador~1107_combout\);

\banco|registrador~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \banco|registrador~1107_combout\,
	ena => \banco|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco|registrador~65_q\);

\banco|registrador~1089\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1089_combout\ = (!\ROM1|memROM~0_combout\ & !\banco|registrador~65_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \banco|ALT_INV_registrador~65_q\,
	combout => \banco|registrador~1089_combout\);

\ULA1|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~109_sumout\ = SUM(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1089_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1089_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~106\ ))
-- \ULA1|Add0~110\ = CARRY(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1089_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1089_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \banco|ALT_INV_Equal0~0_combout\,
	dataf => \banco|ALT_INV_registrador~1089_combout\,
	cin => \ULA1|Add0~106\,
	sumout => \ULA1|Add0~109_sumout\,
	cout => \ULA1|Add0~110\);

\banco|registrador~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~113_sumout\,
	ena => \banco|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco|registrador~66_q\);

\banco|registrador~1090\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1090_combout\ = (!\ROM1|memROM~0_combout\ & \banco|registrador~66_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \banco|ALT_INV_registrador~66_q\,
	combout => \banco|registrador~1090_combout\);

\ULA1|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~113_sumout\ = SUM(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1090_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1090_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~110\ ))
-- \ULA1|Add0~114\ = CARRY(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1090_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1090_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \banco|ALT_INV_Equal0~0_combout\,
	dataf => \banco|ALT_INV_registrador~1090_combout\,
	cin => \ULA1|Add0~110\,
	sumout => \ULA1|Add0~113_sumout\,
	cout => \ULA1|Add0~114\);

\banco|registrador~1108\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1108_combout\ = !\ULA1|Add0~117_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~117_sumout\,
	combout => \banco|registrador~1108_combout\);

\banco|registrador~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \banco|registrador~1108_combout\,
	ena => \banco|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco|registrador~67_q\);

\banco|registrador~1091\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1091_combout\ = (!\ROM1|memROM~0_combout\ & !\banco|registrador~67_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \banco|ALT_INV_registrador~67_q\,
	combout => \banco|registrador~1091_combout\);

\ULA1|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~117_sumout\ = SUM(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1091_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1091_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~114\ ))
-- \ULA1|Add0~118\ = CARRY(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1091_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1091_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \banco|ALT_INV_Equal0~0_combout\,
	dataf => \banco|ALT_INV_registrador~1091_combout\,
	cin => \ULA1|Add0~114\,
	sumout => \ULA1|Add0~117_sumout\,
	cout => \ULA1|Add0~118\);

\banco|registrador~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~121_sumout\,
	ena => \banco|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco|registrador~68_q\);

\banco|registrador~1092\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1092_combout\ = (!\ROM1|memROM~0_combout\ & \banco|registrador~68_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \banco|ALT_INV_registrador~68_q\,
	combout => \banco|registrador~1092_combout\);

\ULA1|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~121_sumout\ = SUM(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1092_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1092_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~118\ ))
-- \ULA1|Add0~122\ = CARRY(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1092_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1092_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \banco|ALT_INV_Equal0~0_combout\,
	dataf => \banco|ALT_INV_registrador~1092_combout\,
	cin => \ULA1|Add0~118\,
	sumout => \ULA1|Add0~121_sumout\,
	cout => \ULA1|Add0~122\);

\banco|registrador~1109\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1109_combout\ = !\ULA1|Add0~125_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~125_sumout\,
	combout => \banco|registrador~1109_combout\);

\banco|registrador~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \banco|registrador~1109_combout\,
	ena => \banco|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banco|registrador~69_q\);

\banco|registrador~1093\ : cyclonev_lcell_comb
-- Equation(s):
-- \banco|registrador~1093_combout\ = (!\ROM1|memROM~0_combout\ & !\banco|registrador~69_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \banco|ALT_INV_registrador~69_q\,
	combout => \banco|registrador~1093_combout\);

\ULA1|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~125_sumout\ = SUM(( GND ) + ( (!\ROM1|memROM~0_combout\ & (((!\banco|registrador~1093_combout\) # (\banco|Equal0~0_combout\)))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((!\banco|registrador~1093_combout\) # 
-- (\banco|Equal0~0_combout\))))) ) + ( \ULA1|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001011010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \banco|ALT_INV_Equal0~0_combout\,
	dataf => \banco|ALT_INV_registrador~1093_combout\,
	cin => \ULA1|Add0~122\,
	sumout => \ULA1|Add0~125_sumout\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

ww_S_ULA(0) <= \S_ULA[0]~output_o\;

ww_S_ULA(1) <= \S_ULA[1]~output_o\;

ww_S_ULA(2) <= \S_ULA[2]~output_o\;

ww_S_ULA(3) <= \S_ULA[3]~output_o\;

ww_S_ULA(4) <= \S_ULA[4]~output_o\;

ww_S_ULA(5) <= \S_ULA[5]~output_o\;

ww_S_ULA(6) <= \S_ULA[6]~output_o\;

ww_S_ULA(7) <= \S_ULA[7]~output_o\;

ww_S_ULA(8) <= \S_ULA[8]~output_o\;

ww_S_ULA(9) <= \S_ULA[9]~output_o\;

ww_S_ULA(10) <= \S_ULA[10]~output_o\;

ww_S_ULA(11) <= \S_ULA[11]~output_o\;

ww_S_ULA(12) <= \S_ULA[12]~output_o\;

ww_S_ULA(13) <= \S_ULA[13]~output_o\;

ww_S_ULA(14) <= \S_ULA[14]~output_o\;

ww_S_ULA(15) <= \S_ULA[15]~output_o\;

ww_S_ULA(16) <= \S_ULA[16]~output_o\;

ww_S_ULA(17) <= \S_ULA[17]~output_o\;

ww_S_ULA(18) <= \S_ULA[18]~output_o\;

ww_S_ULA(19) <= \S_ULA[19]~output_o\;

ww_S_ULA(20) <= \S_ULA[20]~output_o\;

ww_S_ULA(21) <= \S_ULA[21]~output_o\;

ww_S_ULA(22) <= \S_ULA[22]~output_o\;

ww_S_ULA(23) <= \S_ULA[23]~output_o\;

ww_S_ULA(24) <= \S_ULA[24]~output_o\;

ww_S_ULA(25) <= \S_ULA[25]~output_o\;

ww_S_ULA(26) <= \S_ULA[26]~output_o\;

ww_S_ULA(27) <= \S_ULA[27]~output_o\;

ww_S_ULA(28) <= \S_ULA[28]~output_o\;

ww_S_ULA(29) <= \S_ULA[29]~output_o\;

ww_S_ULA(30) <= \S_ULA[30]~output_o\;

ww_S_ULA(31) <= \S_ULA[31]~output_o\;
END structure;


