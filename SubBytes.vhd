library ieee;
use ieee.std_logic_1164.all;

entity SubBytes is
generic
	(
		DATA_WIDTH_AES : natural := 128
	);

	port 
	(
	-- Portas principais
		sel : in std_logic_vector (15 downto 0);
		saida 		: out std_logic_vector 	((8-1) downto 0)
	);

end entity;

architecture inst_SubBytes of SubBytes is
type subByte is array (integer range 0 to 255) of std_logic_vector(0 to 7);
signal TabSubBytes : subByte;

begin


    --Assinala a mensagem a ser criptografada na matriz state
	 --for i in 0 to 15 loop 
    --  State(i) <= msg((120 - (i * 8)) to (127 - (i * 8)));
    --end loop;
	 --State(0);
	 --State(1);
	 --State(2);
	 --State(3);
	 --State(4);
	 --State(5);
	 --State(6);
	 --State(7);
	 --State(8);
	 --State(9);
	 --State(10);
	 --State(11);
	 --State(12);
	 --State(13);
	 --State(14);
	 --State(15);
	 --State(16);
	 --State(17);
	 --State(18);
	 --State(19);
	 --State(20);
	 --State();
	 --State();
	 --State();
	 --State();
	 --State();

    --Assinala a chave a ser utilizada(0123456789012345) na matriz key
	 --for i in 0 to 15 loop 
    --  CipherKey(i) <= Key((120 - (i * 8)) to (127 - (i * 8)));
    --end loop;
      
    --Faz o AddRoundKey
    --for i in 0 to 15 loop 
	 --  for j in 0 to 7 loop 
    --    State(i)(j) <= State(i)(j) xor CipherKey(i)(j);
	--	end loop;  
    --end loop;
	 
	 --Faz assinalamento da tabela subbytes
	 --Linha 0
	 saida <= "11000011" when sel = "00000000" else 
				 "11111100" when sel = "00000001" else
				 "01110111" when sel = "00000010" else 
				 "01111011" when sel = "00000011" else 
				 "11110010" when sel = "00000100" else 
				 "01101011" when sel = "00000101" else 
				 "01101111" when sel = "00000110" else 
				 "11000101" when sel = "00000111" else 
				 "00110000" when sel = "00001000" else 
				 "00000001" when sel = "00001001" else 
				 "01100111" when sel = "00001010" else 
				 "00101011" when sel = "00001011" else 
				 "11111110" when sel = "00001100" else 
				 "11010111" when sel = "00001101" else 
				 "10101011" when sel = "00001110" else 
				 "01110110" when sel = "00001111" else
				 
				 "11001010" when sel = "00010000" else 
				 "10000010" when sel = "00010001" else 
				 "11001001" when sel = "00010010" else 
				 "01111101" when sel = "00010011" else 
				 "11111010" when sel = "00010100" else 
				 "01011001" when sel = "00010101" else 
				 "01000111" when sel = "00010110" else 
				 "11110000" when sel = "00010111" else 
				 "10101101" when sel = "00011000" else 
				 "11010100" when sel = "00011001" else 
				 "10100010" when sel = "00011010" else 
				 "10101111" when sel = "00011011" else 
				 "10011100" when sel = "00011100" else 
				 "10100100" when sel = "00011101" else 
				 "01110010" when sel = "00011110" else 
				 "11000000" when sel = "00011111" else 
				 
				 "00000100" when sel = "00100000" else 
				 "11000111" when sel = "00100001" else 
				 "00100011" when sel = "00100010" else 
				 "11000011" when sel = "00100011" else 
				 "00011000" when sel = "00100100" else 
				 "10010110" when sel = "00100101" else 
				 "00000101" when sel = "00100110" else 
				 "10011010" when sel = "00100111" else 
				 "00000111" when sel = "00101000" else 
				 "00010010" when sel = "00101001" else 
				 "10000000" when sel = "00101010" else 
				 "11100010" when sel = "00101011" else 
				 "11101011" when sel = "00101100" else 
				 "00100111" when sel = "00101101" else 
				 "10110010" when sel = "00101110" else 
				 "01110101" when sel = "00101111" else --47
				 
				 "00001001" when sel = "00110000" else --48
				 "10000011" when sel = "00110001" else 
				 "00101100" when sel = "00110010" else 
				 "00011010" when sel = "00110011" else 
				 "00011011" when sel = "00110100" else 
				 "01101110" when sel = "00110101" else 
				 "01011010" when sel = "00110110" else 
				 "10100000" when sel = "00110111" else 
				 "01010010" when sel = "00111000" else 
				 "00111011" when sel = "00111001" else 
				 "11010110" when sel = "00111010" else 
				 "10110011" when sel = "00111011" else 
				 "00101001" when sel = "00111100" else 
				 "11100011" when sel = "00111101" else 
				 "00101111" when sel = "00111110" else 
				 "10000100" when sel = "00111111" else --63
				 
				 "00000100" when sel = "01000000" else -- 64
				 "10000011" when sel = "01000001" else 
				 "00101100" when sel = "01000010" else 
				 "00011010" when sel = "01000011" else 
				 "00011011" when sel = "01000100" else 
				 "01101110" when sel = "01000101" else 
				 "01011010" when sel = "01000110" else 
				 "10100000" when sel = "01000111" else 
				 "01010010" when sel = "01001000" else 
				 "00111011" when sel = "01001001" else 
				 "11010110" when sel = "01001010" else 
				 "10110011" when sel = "01001011" else 
				 "00101001" when sel = "01001100" else 
				 "11100011" when sel = "01001101" else 
				 "00101111" when sel = "01001110" else 
				 "10000100" when sel = "01001111" else --79
				 
				 "01010011" when sel = "01010000" else -- 80
				 "11010001" when sel = "01010001" else 
				 "00000000" when sel = "01010010" else 
				 "11101101" when sel = "01010011" else 
				 "00100000" when sel = "01010100" else 
				 "11111100" when sel = "01010101" else 
				 "10110001" when sel = "01010110" else 
				 "01011011" when sel = "01010111" else 
				 "01101010" when sel = "01011000" else 
				 "11001011" when sel = "01011001" else 
				 "10111110" when sel = "01011010" else 
				 "00111001" when sel = "01011011" else 
				 "01001010" when sel = "01011100" else 
				 "01001100" when sel = "01011101" else 
				 "01011000" when sel = "01011110" else 
				 "11001111" when sel = "01011111" else --95
	          
				 "11010000" when sel = "01100000" else --96
				 "11101111" when sel = "01100001" else 
				 "10101010" when sel = "01100010" else 
				 "11111011" when sel = "01100011" else 
				 "01000011" when sel = "01100100" else 
				 "01001101" when sel = "01100101" else 
				 "00110011" when sel = "01100110" else 
				 "10000101" when sel = "01100111" else 
				 "01000101" when sel = "01101000" else 
				 "11111001" when sel = "01101001" else 
				 "00000010" when sel = "01101010" else 
				 "01111111" when sel = "01101011" else 
				 "01010000" when sel = "01101100" else 
				 "00111100" when sel = "01101101" else 
				 "10011111" when sel = "01101110" else 
				 "10101000" when sel = "01101111" else --111
				 
				 "01010001" when sel = "01110000" else 
				 "10100011" when sel = "01110001" else 
				 "01000000" when sel = "01110010" else 
				 "10001111" when sel = "01110011" else 
				 "10010010" when sel = "01110100" else 
				 "10011101" when sel = "01110101" else 
				 "00111000" when sel = "01110110" else 
				 "11110101" when sel = "01110111" else 
				 "10111100" when sel = "01111000" else 
				 "10110110" when sel = "01111001" else 
				 "11011010" when sel = "01111010" else 
				 "00100001" when sel = "01111011" else 
				 "00010000" when sel = "01111100" else 
				 "11111111" when sel = "01111101" else 
				 "11110011" when sel = "01111110" else 
				 "11010010" when sel = "01111111" else --127
				 
				 "11001101" when sel = "10000000" else --128
				 "00001100" when sel = "10000001" else 
				 "00010011" when sel = "10000010" else 
				 "11101100" when sel = "10000011" else 
				 "01011111" when sel = "10000100" else 
				 "10010111" when sel = "10000101" else 
				 "01000100" when sel = "10000110" else 
				 "00010111" when sel = "10000111" else 
				 "11000100" when sel = "10001000" else 
				 "10100111" when sel = "10001001" else 
				 "01111110" when sel = "10001010" else 
				 "00111101" when sel = "10001011" else 
				 "01100100" when sel = "10001100" else 
				 "01011101" when sel = "10001101" else 
				 "00011001" when sel = "10001110" else 
				 "01110011" when sel = "10001111" else --143 
				 
				 "01100000" when sel = "10010000" else 
				 "10000001" when sel = "10010001" else 
				 "01001111" when sel = "10010010" else 
				 "11011100" when sel = "10010011" else 
				 "00100010" when sel = "10010100" else 
				 "00101010" when sel = "10010101" else 
				 "10010000" when sel = "10010110" else 
				 "10001000" when sel = "10010111" else 
				 "01000110" when sel = "10011000" else 
				 "11101110" when sel = "10011001" else 
				 "10111000" when sel = "10011010" else 
				 "00010100" when sel = "10011011" else 
				 "11011110" when sel = "10011100" else 
				 "01011110" when sel = "10011101" else 
				 "00001011" when sel = "10011110" else 
				 "11011011" when sel = "10011111" else --159
				 
				 "11100000" when sel = "10100000" else -- 160
				 "00110010" when sel = "10100001" else 
				 "00111010" when sel = "10100010" else 
				 "00001010" when sel = "10100011" else 
				 "01001001" when sel = "10100100" else 
				 "00000110" when sel = "10100101" else 
				 "00100100" when sel = "10100110" else 
				 "01011100" when sel = "10100111" else 
				 "11000010" when sel = "10101000" else 
				 "11010011" when sel = "10101001" else 
				 "10101100" when sel = "10101010" else 
				 "01100010" when sel = "10101011" else 
				 "10010001" when sel = "10101100" else 
				 "10010101" when sel = "10101101" else 
				 "11100100" when sel = "10101110" else 
				 "01111001" when sel = "10101111" else --175
				 
				 "11100111" when sel = "10110000" else -- 176
				 "11001000" when sel = "10110001" else 
				 "00110111" when sel = "10110010" else 
				 "01101101" when sel = "10110011" else 
				 "10001101" when sel = "10110100" else 
				 "11010101" when sel = "10110101" else 
				 "01001110" when sel = "10110110" else 
				 "10101001" when sel = "10110111" else 
				 "11000010" when sel = "10111000" else 
				 "01010110" when sel = "10111001" else 
				 "11110100" when sel = "10111010" else 
				 "11101010" when sel = "10111011" else 
				 "01100101" when sel = "10111100" else 
				 "01111010" when sel = "10111101" else 
				 "10101110" when sel = "10111110" else 
				 "00001000" when sel = "10111111" else --191
				 
				 "10111010" when sel = "11000000" else --192
				 "01111000" when sel = "11000001" else 
				 "00100101" when sel = "11000010" else 
				 "00101110" when sel = "11000011" else 
				 "00011100" when sel = "11000100" else 
				 "10100110" when sel = "11000101" else 
				 "10110100" when sel = "11000110" else 
				 "11000110" when sel = "11000111" else 
				 "11101000" when sel = "11001000" else 
				 "11011101" when sel = "11001001" else 
				 "01110100" when sel = "11001010" else 
				 "00011111" when sel = "11001011" else 
				 "01001011" when sel = "11001100" else 
				 "10111101" when sel = "11001101" else 
				 "10001011" when sel = "11001110" else 
				 "10001010" when sel = "11001111" else --207
				 
				 "01110000" when sel = "11010000" else --208
				 "00111110" when sel = "11010001" else 
				 "10110101" when sel = "11010010" else 
				 "01100110" when sel = "11010011" else 
				 "01001000" when sel = "11010100" else 
				 "00000011" when sel = "11010101" else 
				 "11110110" when sel = "11010110" else 
				 "00001110" when sel = "11010111" else 
				 "01100001" when sel = "11011000" else 
				 "00110101" when sel = "11011001" else 
				 "00110101" when sel = "11011010" else 
				 "10111001" when sel = "11011011" else 
				 "10000110" when sel = "11011100" else 
				 "11000001" when sel = "11011101" else 
				 "00011101" when sel = "11011110" else 
				 "10011110" when sel = "11011111" else -- 223
				 
				 "11100001" when sel = "11100000" else -- 224
				 "11111000" when sel = "11100001" else 
				 "10011000" when sel = "11100010" else 
				 "00010001" when sel = "11100011" else 
				 "01101001" when sel = "11100100" else 
				 "11011001" when sel = "11100101" else 
				 "10001110" when sel = "11100110" else 
				 "10010100" when sel = "11100111" else 
				 "10011011" when sel = "11101000" else 
				 "00011110" when sel = "11101001" else 
				 "10000111" when sel = "11101010" else 
				 "11101001" when sel = "11101011" else 
				 "11001110" when sel = "11101100" else 
				 "01010101" when sel = "11101101" else 
				 "00101000" when sel = "11101110" else 
				 "11011111" when sel = "11101111" else -- 239
				 
				 "10001100" when sel = "11110000" else -- 224
				 "10100001" when sel = "11110001" else 
				 "10001001" when sel = "11110010" else 
				 "00001101" when sel = "11110011" else 
				 "10111111" when sel = "11110100" else 
				 "11100110" when sel = "11110101" else 
				 "01000010" when sel = "11110110" else 
				 "01101000" when sel = "11110111" else 
				 "01000001" when sel = "11111000" else 
				 "10011001" when sel = "11111001" else 
				 "00101101" when sel = "11111010" else 
				 "00001111" when sel = "11111011" else 
				 "10110000" when sel = "11111100" else 
				 "01010100" when sel = "11111101" else 
				 "10111011" when sel = "11111110" else 
				 "00010110" when sel = "11111111"; -- 239
	 
	 --Linha 13
	 --TabSubBytes(208) <= "01110000";
	 --TabSubBytes(209) <= "00111110";
	 --TabSubBytes(210) <= "10110101";
	 --TabSubBytes(211) <= "01100110";
	 --TabSubBytes(212) <= "01001000";
	 --TabSubBytes(213) <= "00000011";
	 --TabSubBytes(214) <= "11110110";
	 --TabSubBytes(215) <= "00001110";
	 --TabSubBytes(216) <= "01100001";
	 --TabSubBytes(217) <= "00110101";
	 --TabSubBytes(218) <= "01010111";
	 --TabSubBytes(219) <= "10111001";
	 --TabSubBytes(220) <= "10000110";
	 --TabSubBytes(221) <= "11000001";
	 --TabSubBytes(222) <= "00011101";
	 --TabSubBytes(223) <= "10011110";
	 --Linha 14
	 --TabSubBytes(224) <= "11100001";
	 --TabSubBytes(225) <= "11111000";
	 --TabSubBytes(226) <= "10011000";
	 --TabSubBytes(227) <= "00010001";
	 --TabSubBytes(228) <= "01101001";
	 --TabSubBytes(229) <= "11011001";
	 --TabSubBytes(230) <= "10001110";
	 --TabSubBytes(231) <= "10010100";
	 --TabSubBytes(232) <= "10011011";
	 --TabSubBytes(233) <= "00011110";
	 --TabSubBytes(234) <= "10000111";
	 --TabSubBytes(235) <= "11101001";
	 --TabSubBytes(236) <= "11001110";
	 --TabSubBytes(237) <= "01010101";
	 --TabSubBytes(238) <= "00101000";
	 --TabSubBytes(239) <= "11011111";
	 --Linha 15
	 --TabSubBytes(240) <= "10001100";
	 --TabSubBytes(241) <= "10100001";
	 --TabSubBytes(242) <= "10001001";
	 --TabSubBytes(243) <= "00001101";
	 --TabSubBytes(244) <= "10111111";
	 --TabSubBytes(245) <= "11100110";
	 --TabSubBytes(246) <= "01000010";
	 --TabSubBytes(247) <= "01101000";
	 --TabSubBytes(248) <= "01000001";
	 --TabSubBytes(249) <= "10011001";
	 --TabSubBytes(250) <= "00101101";
	 --TabSubBytes(251) <= "00001111";
	 --TabSubBytes(252) <= "10110000";
	 --TabSubBytes(253) <= "01010100";
	 --TabSubBytes(254) <= "10111011";
	 --TabSubBytes(255) <= "00010110";
 
 end;