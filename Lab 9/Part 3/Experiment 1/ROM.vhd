library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ROM is
	generic (width: integer:= 8; depth: integer:= 32; addr: integer:= 5);
		port
		(
			clk: in std_logic;
			read_addr: in std_logic_vector((addr - 1) downto 0); -- Address
			data_out: out std_logic_vector((width-1) downto 0)
		);
end ROM;

architecture behavior of ROM is
type ram_type is array(0 to (depth - 1)) of std_logic_vector((width - 1) downto 0);
signal mem: ram_type:= ("00000111", "00000110", "00000101", "00000100", "00000011", "00000010", "00000001", "00000000", others => (others => '1'));

begin
data_out <= mem(conv_integer(read_addr));
end behavior;
		