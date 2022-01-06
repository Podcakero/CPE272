library ieee;
use ieee.std_logic_1164.all;


entity part1 is
	port
	(
		a: in std_logic;
		b: in std_logic;
		
		f: out std_logic
	);
end part1;	

architecture behavior of part1 is 

begin
f <= (not a and not b) or (a and b);

end behavior;