library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ALU is
	port
	(
		operandA: in std_logic_vector(3 downto 0);
		operandB: in std_logic_vector(3 downto 0);
		control: in std_logic_vector(1 downto 0);
		output: out std_logic_vector(4 downto 0)
	);
end ALU;

architecture behavior of ALU is
signal operandC: std_logic_vector(4 downto 0);
signal operandD: std_logic_vector(4 downto 0);

begin
operandC <= '0'&operandA;
operandD <= '0'&operandB;

process (operandC, operandD)
begin
	case control is
			when "00" =>
				output <= operandC + operandD;
			when "01" =>
				output <= operandC - operandD;
			when "10" => 
				output <= operandC nand operandD;
			when "11" =>
				output <= "00000";
	end case;
end process;
end behavior;