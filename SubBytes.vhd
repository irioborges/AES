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
		msg	     : in std_logic_vector  ((DATA_WIDTH_AES-1) downto 0);
		CipherKey  : in std_logic_vector ((DATA_WIDTH_AES-1) downto 0);
		State	     : out std_logic_vector  ((DATA_WIDTH_AES-1) downto 0);
		saida 		: out std_logic_vector 	((DATA_WIDTH_AES-1) downto 0)
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
	 
	 
	 TabSubBytes(0) <= "11000011";
	 TabSubBytes(1) <= "11111100";
	 TabSubBytes(2) <= "01110111";
	 TabSubBytes(3) <= "01111011";
	 TabSubBytes(4) <= "11110010";
	 TabSubBytes(5) <= "01101011";
	 TabSubBytes(6) <= "01101111";
	 TabSubBytes(7) <= "11000101";
	 TabSubBytes(8) <= "00110000";
	 TabSubBytes(9) <= "00000001";
	 TabSubBytes(10) <= "01100111";
	 TabSubBytes(11) <= "00101011";
	 TabSubBytes(12) <= "11111110";
	 TabSubBytes(13) <= "11010111";
	 TabSubBytes(14) <= "10101011";
	 TabSubBytes(15) <= "01110110";
	 --Linha 1
	 TabSubBytes(16) <= "11001010";
	 TabSubBytes(17) <= "10000010";
	 TabSubBytes(18) <= "11001001";
	 TabSubBytes(19) <= "01111101";
	 TabSubBytes(20) <= "11111010";
	 TabSubBytes(21) <= "01011001";
	 TabSubBytes(22) <= "01000111";
	 TabSubBytes(23) <= "11110000";
	 TabSubBytes(24) <= "10101101";
	 TabSubBytes(25) <= "11010100";
	 TabSubBytes(26) <= "10100010";
	 TabSubBytes(27) <= "10101111";
	 TabSubBytes(28) <= "10011100";
	 TabSubBytes(29) <= "10100100";
	 TabSubBytes(30) <= "01110010";
	 TabSubBytes(31) <= "11000000";
	 --Linha 2
	 TabSubBytes(32) <= "00000100";
	 TabSubBytes(33) <= "11000111";
	 TabSubBytes(34) <= "00100011";
	 TabSubBytes(35) <= "11000011";
	 TabSubBytes(36) <= "00011000";
	 TabSubBytes(37) <= "10010110";
	 TabSubBytes(38) <= "00000101";
	 TabSubBytes(39) <= "10011010";
	 TabSubBytes(40) <= "00000111";
	 TabSubBytes(41) <= "00010010";
	 TabSubBytes(42) <= "10000000";
	 TabSubBytes(43) <= "11100010";
	 TabSubBytes(44) <= "11101011";
	 TabSubBytes(45) <= "00100111";
	 TabSubBytes(46) <= "10110010";
	 TabSubBytes(47) <= "01110101";
	 --Linha 3
	 TabSubBytes(48) <= "00001001";
	 TabSubBytes(49) <= "10000011";
	 TabSubBytes(50) <= "00101100";
	 TabSubBytes(51) <= "00011010";
	 TabSubBytes(52) <= "00011011";
	 TabSubBytes(53) <= "01101110";
	 TabSubBytes(54) <= "01011010";
	 TabSubBytes(55) <= "10100000";
	 TabSubBytes(56) <= "01010010";
	 TabSubBytes(57) <= "00111011";
	 TabSubBytes(58) <= "11010110";
	 TabSubBytes(59) <= "10110011";
	 TabSubBytes(60) <= "00101001";
	 TabSubBytes(61) <= "11100011";
	 TabSubBytes(62) <= "00101111";
	 TabSubBytes(63) <= "10000100";
	 --Linha 4
	 TabSubBytes(64) <= "00000100";
	 TabSubBytes(65) <= "10000011";
	 TabSubBytes(66) <= "00101100";
	 TabSubBytes(67) <= "00011010";
	 TabSubBytes(68) <= "00011011";
	 TabSubBytes(69) <= "01101110";
	 TabSubBytes(70) <= "01011010";
	 TabSubBytes(71) <= "10100000";
	 TabSubBytes(72) <= "01010010";
	 TabSubBytes(73) <= "00111011";
	 TabSubBytes(74) <= "11010110";
	 TabSubBytes(75) <= "10110011";
	 TabSubBytes(76) <= "00101001";
	 TabSubBytes(77) <= "11100011"; 
	 TabSubBytes(78) <= "00101111";
	 TabSubBytes(79) <= "10000100";
	 --Linha 5
	 TabSubBytes(80) <= "01010011";
	 TabSubBytes(81) <= "11010001";
	 TabSubBytes(82) <= "00000000";
	 TabSubBytes(83) <= "11101101";
	 TabSubBytes(84) <= "00100000";
	 TabSubBytes(85) <= "11111100";
	 TabSubBytes(86) <= "10110001";
	 TabSubBytes(87) <= "01011011";
	 TabSubBytes(88) <= "01101010";
	 TabSubBytes(89) <= "11001011";
	 TabSubBytes(90) <= "10111110";
	 TabSubBytes(91) <= "00111001";
	 TabSubBytes(92) <= "01001010";
	 TabSubBytes(93) <= "01001100";
	 TabSubBytes(94) <= "01011000";
	 TabSubBytes(95) <= "11001111";
	 --Linha 6
	 TabSubBytes(96) <= "11010000";
	 TabSubBytes(97) <= "11101111";
	 TabSubBytes(98) <= "10101010";
	 TabSubBytes(99) <= "11111011";
	 TabSubBytes(100) <= "01000011";
	 TabSubBytes(101) <= "01001101";
	 TabSubBytes(102) <= "00110011";
	 TabSubBytes(103) <= "10000101";
	 TabSubBytes(104) <= "01000101";
	 TabSubBytes(105) <= "11111001";
	 TabSubBytes(106) <= "00000010";
	 TabSubBytes(107) <= "01111111";
	 TabSubBytes(108) <= "01010000";
	 TabSubBytes(109) <= "00111100";
	 TabSubBytes(110) <= "10011111";
	 TabSubBytes(111) <= "10101000";
	 --Linha 7
	 TabSubBytes(112) <= "01010001";
	 TabSubBytes(113) <= "10100011";
	 TabSubBytes(114) <= "01000000";
	 TabSubBytes(115) <= "10001111";
	 TabSubBytes(116) <= "10010010";
	 TabSubBytes(117) <= "10011101";
	 TabSubBytes(118) <= "00111000";
	 TabSubBytes(119) <= "11110101";
	 TabSubBytes(120) <= "10111100";
	 TabSubBytes(121) <= "10110110";
	 TabSubBytes(122) <= "11011010";
	 TabSubBytes(123) <= "00100001";
	 TabSubBytes(124) <= "00010000";
	 TabSubBytes(125) <= "11111111";
	 TabSubBytes(126) <= "11110011";
	 TabSubBytes(127) <= "11010010";
	 --Linha 8
	 TabSubBytes(128) <= "11001101";
	 TabSubBytes(129) <= "00001100";
	 TabSubBytes(130) <= "00010011";
	 TabSubBytes(131) <= "11101100";
	 TabSubBytes(132) <= "01011111";
	 TabSubBytes(133) <= "10010111";
	 TabSubBytes(134) <= "01000100";
	 TabSubBytes(135) <= "00010111";
	 TabSubBytes(136) <= "11000100";
	 TabSubBytes(137) <= "10100111";
	 TabSubBytes(138) <= "01111110";
	 TabSubBytes(139) <= "00111101";
	 TabSubBytes(140) <= "01100100";
	 TabSubBytes(141) <= "01011101";
	 TabSubBytes(142) <= "00011001";
	 TabSubBytes(143) <= "01110011";
	 --Linha 9
	 TabSubBytes(144) <= "01100000";
	 TabSubBytes(145) <= "10000001";
	 TabSubBytes(146) <= "01001111";
	 TabSubBytes(147) <= "11011100";
	 TabSubBytes(148) <= "00100010";
	 TabSubBytes(149) <= "00101010";
	 TabSubBytes(150) <= "10010000";
	 TabSubBytes(151) <= "10001000";
	 TabSubBytes(152) <= "01000110";
	 TabSubBytes(153) <= "11101110";
	 TabSubBytes(154) <= "10111000";
	 TabSubBytes(155) <= "00010100";
	 TabSubBytes(156) <= "11011110";
	 TabSubBytes(157) <= "01011110";
	 TabSubBytes(158) <= "00001011";
	 TabSubBytes(159) <= "11011011";
	 --Linha 10
	 TabSubBytes(160) <= "11100000";
	 TabSubBytes(161) <= "00110010";
	 TabSubBytes(162) <= "00111010";
	 TabSubBytes(163) <= "00001010";
	 TabSubBytes(164) <= "01001001";
	 TabSubBytes(165) <= "00000110";
	 TabSubBytes(166) <= "00100100";
	 TabSubBytes(167) <= "01011100";
	 TabSubBytes(168) <= "11000010";
	 TabSubBytes(169) <= "11010011";
	 TabSubBytes(170) <= "10101100";
	 TabSubBytes(171) <= "01100010";
	 TabSubBytes(172) <= "10010001";
	 TabSubBytes(173) <= "10010101";
	 TabSubBytes(174) <= "11100100";
	 TabSubBytes(175) <= "01111001";
	 --Linha 11
	 TabSubBytes(176) <= "11100111";
	 TabSubBytes(177) <= "11001000";
	 TabSubBytes(178) <= "00110111";
	 TabSubBytes(179) <= "01101101";
	 TabSubBytes(180) <= "10001101";
	 TabSubBytes(181) <= "11010101";
	 TabSubBytes(182) <= "01001110";
	 TabSubBytes(183) <= "10101001";
	 TabSubBytes(184) <= "01101100";
	 TabSubBytes(185) <= "01010110";
	 TabSubBytes(186) <= "11110100";
	 TabSubBytes(187) <= "11101010";
	 TabSubBytes(188) <= "01100101";
	 TabSubBytes(189) <= "01111010";
	 TabSubBytes(190) <= "10101110";
	 TabSubBytes(191) <= "00001000";
	 --Linha 12
	 TabSubBytes(192) <= "10111010";
	 TabSubBytes(193) <= "01111000";
	 TabSubBytes(194) <= "00100101";
	 TabSubBytes(195) <= "00101110";
	 TabSubBytes(196) <= "00011100";
	 TabSubBytes(197) <= "10100110";
	 TabSubBytes(198) <= "10110100";
	 TabSubBytes(199) <= "11000110";
	 TabSubBytes(200) <= "11101000";
	 TabSubBytes(201) <= "11011101";
	 TabSubBytes(202) <= "01110100";
	 TabSubBytes(203) <= "00011111";
	 TabSubBytes(204) <= "01001011";
	 TabSubBytes(205) <= "10111101";
	 TabSubBytes(206) <= "10001011";
	 TabSubBytes(207) <= "10001010";
	 --Linha 13
	 TabSubBytes(208) <= "01110000";
	 TabSubBytes(209) <= "00111110";
	 TabSubBytes(210) <= "10110101";
	 TabSubBytes(211) <= "01100110";
	 TabSubBytes(212) <= "01001000";
	 TabSubBytes(213) <= "00000011";
	 TabSubBytes(214) <= "11110110";
	 TabSubBytes(215) <= "00001110";
	 TabSubBytes(216) <= "01100001";
	 TabSubBytes(217) <= "00110101";
	 TabSubBytes(218) <= "01010111";
	 TabSubBytes(219) <= "10111001";
	 TabSubBytes(220) <= "10000110";
	 TabSubBytes(221) <= "11000001";
	 TabSubBytes(222) <= "00011101";
	 TabSubBytes(223) <= "10011110";
	 --Linha 14
	 TabSubBytes(224) <= "11100001";
	 TabSubBytes(225) <= "11111000";
	 TabSubBytes(226) <= "10011000";
	 TabSubBytes(227) <= "00010001";
	 TabSubBytes(228) <= "01101001";
	 TabSubBytes(229) <= "11011001";
	 TabSubBytes(230) <= "10001110";
	 TabSubBytes(231) <= "10010100";
	 TabSubBytes(232) <= "10011011";
	 TabSubBytes(233) <= "00011110";
	 TabSubBytes(234) <= "10000111";
	 TabSubBytes(235) <= "11101001";
	 TabSubBytes(236) <= "11001110";
	 TabSubBytes(237) <= "01010101";
	 TabSubBytes(238) <= "00101000";
	 TabSubBytes(239) <= "11011111";
	 --Linha 15
	 TabSubBytes(240) <= "10001100";
	 TabSubBytes(241) <= "10100001";
	 TabSubBytes(242) <= "10001001";
	 TabSubBytes(243) <= "00001101";
	 TabSubBytes(244) <= "10111111";
	 TabSubBytes(245) <= "11100110";
	 TabSubBytes(246) <= "01000010";
	 TabSubBytes(247) <= "01101000";
	 TabSubBytes(248) <= "01000001";
	 TabSubBytes(249) <= "10011001";
	 TabSubBytes(250) <= "00101101";
	 TabSubBytes(251) <= "00001111";
	 TabSubBytes(252) <= "10110000";
	 TabSubBytes(253) <= "01010100";
	 TabSubBytes(254) <= "10111011";
	 TabSubBytes(255) <= "00010110";
 
 end;