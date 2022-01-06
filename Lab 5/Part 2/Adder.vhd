library ieee;
use ieee.std_logic_1164.all;


entity Adder is
	port
	(
		x1: in std_logic_vector(2 downto 0);
		x2: in std_logic_vector(2 downto 0);
		f: out std_logic_vector(3 downto 0)
	);
end Adder;	

architecture behavior of Adder is

signal C: std_logic_vector(1 downto 0);

begin
f(0) <= (not x1(0) and x2(0)) or (x1(0) and not x2(0));
f(1) <= (not C(0) and not x1(1) and x2(1)) or (not C(0) and x1(1) and not x2(1)) or (C(0) and not x1(1) and not x2(1)) or (C(0) and x1(1) and x2(1));
f(2) <= (not C(1) and not x1(2) and x2(2)) or (not C(1) and x1(2) and not x2(2)) or (C(1) and not x1(2) and not x2(2)) or (C(1) and x1(2) and x2(2));
f(3) <= (not C(1) and x1(2) and x2(2)) or (C(1) and not x1(2) and x2(2)) or (C(1) and x1(2) and not x2(2)) or (C(1) and x1(2) and x2(2));

C(0) <= (x1(0) and x2(0));
C(1) <= (not C(0) and x1(1) and x2(1)) or (C(0) and not x1(1) and x2(1)) or (C(0) and x1(1) and not x2(1)) or (C(0) and x1(1) and x2(1));
end behavior;