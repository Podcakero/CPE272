library ieee;
use ieee.std_logic_1164.all;

entity four_bit_adder is
	port 
	(
		x1: in std_logic_vector(3 downto 0);
		x2: in std_logic_vector(3 downto 0);
		f: out std_logic_vector(4 downto 0)
	);
end four_bit_adder;

Architecture behavior of four_bit_adder is 
Signal c: std_logic_vector(4 downto 0);
component adder
	port
	(
		A: in std_logic;
		B: in std_logic;
		Carry_in: in std_logic;
		Sum: out std_logic;
		Carry_out: out std_logic
	);
end component;
begin
adder_1: adder port map (A => x1(0), B => x2(0), Carry_in => c(0), Sum => f(0), Carry_out => c(1));
adder_2: adder port map (A => x1(1), B => x2(1), Carry_in => c(1), Sum => f(1), Carry_out => c(2));
adder_3: adder port map (A => x1(2), B => x2(2), Carry_in => c(2), Sum => f(2), Carry_out => c(3));
adder_4: adder port map (A => x1(3), B => x2(3), Carry_in => c(3), Sum => f(3), Carry_out => c(4));
f(4) <= c(4);
end behavior;