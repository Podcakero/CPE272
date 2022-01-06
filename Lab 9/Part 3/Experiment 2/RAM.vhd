library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity RAM is
	generic (width: integer:= 4; depth: integer:= 32; addr: integer:= 4);
		port
		(
			clk: in std_logic;
			read_addr: in std_logic_vector((addr - 1) downto 0); -- Address
			data_out: out std_logic_vector((width-1) downto 0); -- Data out
			data_in: in std_logic_vector((width - 1) downto 0); -- data in
			write_enabled: in std_logic 
		);
end RAM;

architecture behavior of RAM is
type ram_type is array(0 to (depth - 1)) of std_logic_vector((width - 1) downto 0);
signal mem: ram_type:= ("0111", "0110", "0101", "0100", "0011", "0010", "0001", "0000", others => (others => '1'));

begin
process(clk, read_addr, data_in, write_enabled)
begin
	if clk'event and clk = '1' then 
		if write_enabled = '0' then -- Write-enabled is logic high when un-pressed
			mem(conv_integer(read_addr)) <= data_in;
		else
			data_out <= mem(conv_integer(read_addr));
		end if;
	end if;
end process;
end behavior;
		