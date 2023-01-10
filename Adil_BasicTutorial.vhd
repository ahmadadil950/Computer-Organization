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
-- CREATED		"Tue Jun 22 17:17:09 2021"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Adil_Basic_VHDL IS 
	PORT
	(
		Adil_A :  IN  STD_LOGIC;
		Adil_B :  IN  STD_LOGIC;
		Adil_C :  IN  STD_LOGIC;
		Adil_D :  IN  STD_LOGIC;
		Adil_Z :  OUT  STD_LOGIC
	);
END Adil_Basic_VHDL;

ARCHITECTURE bdf_type OF Adil_Basic_VHDL IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_0 <= Adil_C AND Adil_D;


SYNTHESIZED_WIRE_1 <= NOT(Adil_B AND Adil_A);


Adil_Z <= NOT(SYNTHESIZED_WIRE_0 OR SYNTHESIZED_WIRE_1);


END bdf_type;