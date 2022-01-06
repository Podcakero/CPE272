library ieee;
use ieee.std_logic_1164.all;

entity Slow_Flip_Flop is
	port 
	(	
		D: in std_logic;
		Cin: in std_logic;
		Q: out std_logic;
		Qnot: out std_logic
	);
end Slow_Flip_Flop;

architecture behavior of Slow_Flip_Flop is

component D_Flip_Flop
	port
	(
		d: in std_logic;
		clock: in std_logic;
		q: out std_logic;
		qnot: out std_logic
	);
end component;

component Clock_Divider
	port
	(
		clock_in: in std_logic;
		clock_out: out std_logic
	);
end component;

signal Cout: std_logic;

begin

cdiv: Clock_Divider port map (Cin, Cout);
dff: D_Flip_Flop port map (D, Cout, Q, Qnot);

end behavior;