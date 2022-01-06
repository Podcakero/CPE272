library ieee;
use ieee.std_logic_1164.all;

entity adder is	
	port 
	(
		A: in std_logic;
		B: in std_logic;
		Carry_in: in std_logic;
		Sum: out std_logic;
		Carry_out: out std_logic
	);
end adder;

architecture behavior of adder is
begin
Sum <= (not A and not B and Carry_in) or (not A and B and not Carry_in) or (A and not B and not Carry_in) or (A and B and Carry_in);
Carry_out <= (not A and B and Carry_in) or (A and not B and Carry_in) or (A and B and not Carry_in) or (A and B and Carry_in);
end behavior;