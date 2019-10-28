-- Quartus II VHDL Template
-- Basic Shift Register

library ieee;
use ieee.std_logic_1164.all;

entity registerNbits is

	generic
	(
		DATA_WIDTH : natural := 8
	);

	port 
	(
		clk		: in std_logic;
		enable	: in std_logic;
		d	      : in std_logic_vector((DATA_WIDTH-1) downto 0);
		q			: out std_logic_vector((DATA_WIDTH-1) downto 0)
	);

end entity;

architecture rtl of registerNbits is

begin

	process (clk)
	begin
		if (rising_edge(clk)) then
			if (enable = '1') then
				q <= d;
			end if;
		end if;
	end process;

end rtl;
