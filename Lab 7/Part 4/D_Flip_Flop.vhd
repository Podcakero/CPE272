library ieee;
use ieee.std_logic_1164.all;

entity D_Flip_Flop is 
	port
	(
		clock: in std_logic;
		d: in std_logic;
		q: out std_logic;
		qnot: out std_logic
	);
end D_Flip_Flop;

architecture behavior of D_Flip_Flop is
begin
process (clock)
begin
	if (clock'event and clock = '1') then
		q <= d;
		qnot <= not d;
end if;
end process;
end behavior;