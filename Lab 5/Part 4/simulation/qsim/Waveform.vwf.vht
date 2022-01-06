-- Copyright (C) 2019  Intel Corporation. All rights reserved.
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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/04/2020 18:45:45"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          four_bit_adder
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY four_bit_adder_vhd_vec_tst IS
END four_bit_adder_vhd_vec_tst;
ARCHITECTURE four_bit_adder_arch OF four_bit_adder_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL f : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL x1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL x2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT four_bit_adder
	PORT (
	f : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	x1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	x2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : four_bit_adder
	PORT MAP (
-- list connections between master ports and signals
	f => f,
	x1 => x1,
	x2 => x2
	);
-- x1[3]
t_prcs_x1_3: PROCESS
BEGIN
	x1(3) <= '1';
	WAIT FOR 340000 ps;
	x1(3) <= '0';
WAIT;
END PROCESS t_prcs_x1_3;
-- x1[2]
t_prcs_x1_2: PROCESS
BEGIN
	x1(2) <= '1';
	WAIT FOR 340000 ps;
	x1(2) <= '0';
WAIT;
END PROCESS t_prcs_x1_2;
-- x1[1]
t_prcs_x1_1: PROCESS
BEGIN
	x1(1) <= '0';
	WAIT FOR 160000 ps;
	x1(1) <= '1';
	WAIT FOR 180000 ps;
	x1(1) <= '0';
WAIT;
END PROCESS t_prcs_x1_1;
-- x1[0]
t_prcs_x1_0: PROCESS
BEGIN
	x1(0) <= '1';
	WAIT FOR 340000 ps;
	x1(0) <= '0';
WAIT;
END PROCESS t_prcs_x1_0;
-- x2[3]
t_prcs_x2_3: PROCESS
BEGIN
	x2(3) <= '0';
WAIT;
END PROCESS t_prcs_x2_3;
-- x2[2]
t_prcs_x2_2: PROCESS
BEGIN
	x2(2) <= '1';
	WAIT FOR 340000 ps;
	x2(2) <= '0';
WAIT;
END PROCESS t_prcs_x2_2;
-- x2[1]
t_prcs_x2_1: PROCESS
BEGIN
	x2(1) <= '1';
	WAIT FOR 160000 ps;
	x2(1) <= '0';
WAIT;
END PROCESS t_prcs_x2_1;
-- x2[0]
t_prcs_x2_0: PROCESS
BEGIN
	x2(0) <= '0';
	WAIT FOR 160000 ps;
	x2(0) <= '1';
	WAIT FOR 180000 ps;
	x2(0) <= '0';
WAIT;
END PROCESS t_prcs_x2_0;
END four_bit_adder_arch;
