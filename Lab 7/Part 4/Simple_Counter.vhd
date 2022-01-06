library ieee;
use ieee.std_logic_1164.all;

entity Simple_Counter is
	port
	(
		Clock: in std_logic;
		X: in std_logic;
		Q: inout std_logic_vector(2 downto 0);
		S: out std_logic_vector(6 downto 0)
	);
end Simple_Counter;

Architecture behavior of Simple_Counter is

component Slow_Flip_Flop
	port
	(
		D: in std_logic;
		Cin: in std_logic;
		Q: out std_logic;
		Qnot: out std_logic
	);
end component;

component binary2hex
	port
	(
		W: in std_logic; --input
		X: in std_logic; --input
		Y: in std_logic; --input
		Z: in std_logic; --input
		a: out std_logic; --output
		b: out std_logic; --output
		c: out std_logic; --output
		d: out std_logic; --output
		e: out std_logic; --output
		f: out std_logic; --output
		g: out std_logic --output
	);
end component;

signal D: std_logic_vector(2 downto 0);
--signal Q: std_logic_vector(2 downto 0);

begin

D(0) <= (not Q(1) and not Q(0)) or (Q(1) and not Q(0));
D(1) <= (X and not Q(1) and not Q(0)) or (not X and not Q(1) and Q(0)) or (X and Q(1) and Q(0)) or (not X and Q(1) and not Q(0));
D(2) <= (not X and Q(2) and not Q(1)) or (Q(2) and not Q(1) and Q(0)) or (X and Q(2) and Q(0)) or (X and not Q(2) and not Q(1) and not Q(0)) or (X and Q(2) and Q(1)) or (not X and not Q(2) and Q(1) and Q(0)) or (Q(2) and Q(1) and not Q(0));

Slow_Flip_Flop_0: Slow_Flip_Flop port map (D => D(0), Cin => Clock, Q => Q(0));
Slow_Flip_Flop_1: Slow_Flip_Flop port map (D => D(1), Cin => Clock, Q => Q(1));
Slow_Flip_Flop_2: Slow_Flip_Flop port map (D => D(2), Cin => Clock, Q => Q(2));

display: binary2hex port map (W => '0', X => Q(2), Y => Q(1), Z => Q(0), a => S(0), b => S(1), c => S(2), d => S(3), e => S(4), f => S(5), g => S(6)); 
end behavior;