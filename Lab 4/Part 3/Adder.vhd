library ieee;
use ieee.std_logic_1164.all;


entity Adder is
	port
	(
		x1: in std_logic;
		x2: in std_logic;
		x3: in std_logic;
		x4: in std_logic;
		x5: in std_logic;
		x6: in std_logic;
		f1: out std_logic;
		f2: out std_logic;
		f3: out std_logic;
		f4: out std_logic
	);
end Adder;	

architecture behavior of Adder is

signal C1: std_logic;
Signal C2: std_logic;

begin
f1 <= (not x1 and x4) or (x1 and not x4);
f2 <= (not C1 and not x2 and x5) or (not C1 and x2 and not x5) or (C1 and not x2 and not x5) or (C1 and x2 and x5);
f3 <= (not C2 and not x3 and x6) or (not C2 and x3 and not x6) or (C2 and not x3 and not x6) or (C2 and x3 and x6);
f4 <= (not C2 and x3 and x6) or (C2 and not x3 and x6) or (C2 and x3 and not x6) or (C2 and x3 and x6);

C1 <= (x1 and x4);
C2 <= (not C1 and x2 and x5) or (C1 and not x2 and x5) or (C1 and x2 and not x5) or (C1 and x2 and x5);
end behavior;