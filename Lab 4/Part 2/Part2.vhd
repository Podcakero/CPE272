library ieee;
use ieee.std_logic_1164.all;

entity Part2 is
	port 
	(
		A: in std_logic;
		B: in std_logic;
		C: in std_logic;
		output: out std_logic
	);
end Part2;

architecture behavior of Part2 is

begin
output <= (not A and B) or (not A or not C);
end behavior;