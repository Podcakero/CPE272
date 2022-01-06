library ieee;
use ieee.std_logic_1164.all;

entity Clock_Divider is
port 
(
	clock_in: in std_logic;
	clock_out: out std_logic
);
end Clock_Divider;

architecture behavior of Clock_Divider is

signal clock_tmp: std_logic;

begin

process(clock_in)

variable x: integer := 0;

begin
	if (clock_in'event and clock_in = '1') then
		x := x + 1;
		
		if x = 50000000 then
			x := 0;
			clock_tmp <= not clock_tmp;
			clock_out <= clock_tmp;
		end if;
	end if;
end process;
end behavior;
