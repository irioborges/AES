
-- Quartus II VHDL Template
-- Unsigned Adder

library ieee;
use ieee.std_logic_1164.all;

entity mux16p1 is

	generic
	(
		DATA_WIDTH : natural := 128
	);

	port 
	(
		a	   : in std_logic_vector  ((DATA_WIDTH-1) downto 0);
		b	   : in std_logic_vector  ((DATA_WIDTH-1) downto 0);
		c	   : in std_logic_vector  ((DATA_WIDTH-1) downto 0);
		d	   : in std_logic_vector  ((DATA_WIDTH-1) downto 0);
		e	   : in std_logic_vector  ((DATA_WIDTH-1) downto 0);
		f	   : in std_logic_vector  ((DATA_WIDTH-1) downto 0);
		g	   : in std_logic_vector  ((DATA_WIDTH-1) downto 0);
		h	   : in std_logic_vector  ((DATA_WIDTH-1) downto 0);
		i	   : in std_logic_vector  ((DATA_WIDTH-1) downto 0);
		j	   : in std_logic_vector  ((DATA_WIDTH-1) downto 0);
		k	   : in std_logic_vector  ((DATA_WIDTH-1) downto 0);
		l	   : in std_logic_vector  ((DATA_WIDTH-1) downto 0);
		m	   : in std_logic_vector  ((DATA_WIDTH-1) downto 0);
		n	   : in std_logic_vector  ((DATA_WIDTH-1) downto 0);
		o	   : in std_logic_vector  ((DATA_WIDTH-1) downto 0);
		p	   : in std_logic_vector  ((DATA_WIDTH-1) downto 0);
		
		sel   : in std_logic_vector (3 downto 0);
		result : out std_logic_vector ((DATA_WIDTH-1) downto 0)
	);

end entity;

architecture rtlBSN of mux16p1 is
begin

	result <= a when sel = "0000" else
				 b when sel = "0001" else
				 c;

end rtlBSN;
