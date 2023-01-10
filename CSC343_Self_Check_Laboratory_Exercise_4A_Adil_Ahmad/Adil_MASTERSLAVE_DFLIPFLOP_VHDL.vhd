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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"
-- CREATED		"Thu Jul 15 13:21:38 2021"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Adil_MASTERSLAVE_DFLIPFLOP_VHDL IS 
	PORT
	(
		Adil_PRN :  IN  STD_LOGIC;
		Adil_D :  IN  STD_LOGIC;
		Adil_CLK :  IN  STD_LOGIC;
		Adil_CLR :  IN  STD_LOGIC;
		Adil_Q :  OUT  STD_LOGIC
	);
END Adil_MASTERSLAVE_DFLIPFLOP_VHDL;

ARCHITECTURE bdf_type OF Adil_MASTERSLAVE_DFLIPFLOP_VHDL IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;


BEGIN 



PROCESS(Adil_CLR,Adil_PRN,SYNTHESIZED_WIRE_0,Adil_D)
BEGIN
IF (Adil_CLR = '0') THEN
	SYNTHESIZED_WIRE_1 <= '0';
ELSIF (Adil_PRN = '0') THEN
	SYNTHESIZED_WIRE_1 <= '1';
ELSIF (SYNTHESIZED_WIRE_0 = '1') THEN
	SYNTHESIZED_WIRE_1 <= Adil_D;
END IF;
END PROCESS;


PROCESS(Adil_CLR,Adil_PRN,Adil_CLK,SYNTHESIZED_WIRE_1)
BEGIN
IF (Adil_CLR = '0') THEN
	Adil_Q <= '0';
ELSIF (Adil_PRN = '0') THEN
	Adil_Q <= '1';
ELSIF (Adil_CLK = '1') THEN
	Adil_Q <= SYNTHESIZED_WIRE_1;
END IF;
END PROCESS;


SYNTHESIZED_WIRE_0 <= NOT(Adil_CLK);



END bdf_type;