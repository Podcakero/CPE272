library ieee;
use ieee.std_logic_1164.all;

entity Dual_D_Flip_Flop is 
	port 	
	(
		X: in std_logic;
		Clk: in std_logic;
		Y2: inout std_logic;
		Y1: inout std_logic;
		Z: out std_logic
	);
end Dual_D_Flip_Flop;

architecture behavior of Dual_D_Flip_Flop is 

component Slow_Flip_Flop 
	port
	(
		D: in std_logic;
		Cin: in std_logic;
		Q: out std_logic
	);
end component;

signal Z_sig: std_logic;
signal D1: std_logic;
signal D2: std_logic;

begin

Z_sig <= (X and Y2) or (not X and not Y1);
D1 <= (Y2 and not Y1) or (not X and Y2) or (not X and not Y1);
D2 <= (Y2 and Y1) or (not X and Y1) or (not X and Y2);

Z_dff: Slow_Flip_Flop port map (Z_sig, Clk, Z);
D1_dff: Slow_Flip_Flop port map (D1, Clk, Y1);
D2_dff: Slow_Flip_Flop port map (D2, Clk, Y2);

end behavior;