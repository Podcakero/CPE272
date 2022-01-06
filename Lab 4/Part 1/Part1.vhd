library ieee;
use ieee.std_logic_1164.all;

entity Part1 is
	port (
		x1: in std_logic;
		x2: in std_logic;
		f: out std_logic
		);
end Part1;

Architecture behavior of Part1 is
begin
f <= (not x2 and x1) or (not x1 and x2);
end behavior;