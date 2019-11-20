library ieee;
use ieee.std_logic_1164.all;

entity ShiftRows2 is
 generic
	(
		DATA_WIDTH_AES : natural := 32
	);

	port 
	(
	-- Portas principais
		entrada	     : in std_logic_vector  ((DATA_WIDTH_AES-1) downto 0);
		saida 		: out std_logic_vector 	((DATA_WIDTH_AES-1) downto 0)
	);

end ShiftRows2;

architecture inst_ShiftRows of ShiftRows2 is
begin 
  
    
  
  
end inst_ShiftRows;