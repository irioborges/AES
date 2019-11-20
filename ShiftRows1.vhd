library ieee;
use ieee.std_logic_1164.all;

entity ShiftRows1 is
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

end ShiftRows1;

architecture inst_ShiftRows of ShiftRows1 is
begin 
  
saida(0) <= entrada(0);    
saida(1) <= entrada(1);
saida(2) <= entrada(2);
saida(3) <= entrada(3);
saida(4) <= entrada(4);
saida(5) <= entrada(5);
saida(6) <= entrada(6);
saida(7) <= entrada(7);
saida(8) <= entrada(8);
saida(9) <= entrada(9);
saida(10) <= entrada(10);
saida(11) <= entrada(11);
saida(12) <= entrada(12);
saida(13) <= entrada(13);
saida(14) <= entrada(14);
saida(15) <= entrada(15);
saida(16) <= entrada(16);
saida(17) <= entrada(17);
saida(18) <= entrada(18);
saida(19) <= entrada(19);
saida(20) <= entrada(20);
saida(21) <= entrada(21);
saida(22) <= entrada(22);
saida(23) <= entrada(23);
saida(24) <= entrada(24);
saida(25) <= entrada(25);
saida(26) <= entrada(26);
saida(27) <= entrada(27);
saida(28) <= entrada(28);
saida(29) <= entrada(29);
saida(30) <= entrada(30);
saida(31) <= entrada(31);
  
  
end inst_ShiftRows;