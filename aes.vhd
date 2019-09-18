library ieee;
use ieee.std_logic_1164.all;

entity aes is
  port(
    msg : in std_logic_vector(127 downto 0);
	 mensagem_criptografada : out std_logic_vector(63 downto 0) 
  );
end aes;

architecture inst_aes of aes is
  type matriz is array (integer range 0 to 7) of std_logic_vector (15 downto 0);
  type subByte is array (integer range 0 to 255) of std_logic_vector(7 downto 0);
  signal State, Cipherkey : matriz;
  signal Key : std_logic_vector(127 downto 0);
  signal TabSubBytes : subByte;

begin 
  --          0000    0001    0002    0003    0004    0005    0006    0007    0008    0009    0000    0001    0002    0003    0004    0005                                                                                            
  Key <= "00110000001100010011001000110011001101000011010100110110001101110011100000111001001100000011000100110010001100110011010000110101";
  process(msg)
  begin 
    --Assinala a mensagem a ser criptografada na matriz state
    State(0) <= msg(127 downto 112);
    State(1) <= msg(111 downto 96);
    State(2) <= msg(95 downto 80);
    State(3) <= msg(79 downto 64);
    State(4) <= msg(63 downto 48);
    State(5) <= msg(47 downto 32);
    State(6) <= msg(31 downto 16);
    State(7) <= msg(15 downto 0);
    --Assinala a chave a ser utilizada(0123456789012345) na matriz key
    CipherKey(0) <= Key(127 downto 112);
    CipherKey(1) <= Key(111 downto 96);
    CipherKey(2) <= Key(95 downto 80);
    CipherKey(3) <= Key(79 downto 64);
    CipherKey(4) <= Key(63 downto 48);
    CipherKey(5) <= Key(47 downto 32);
    CipherKey(6) <= Key(31 downto 16);
    CipherKey(7) <= Key(15 downto 0);
  
    --Faz o AddRoundKey
    for i in 0 to 7 loop 
	   for j in 0 to 15 loop 
        State(i)(j) <= State(i)(j) xor CipherKey(i)(j);
		end loop;  
    end loop;
	 
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
	 TabSubBytes(80) <= "00000000";
	 TabSubBytes(81) <= "00000000";
	 TabSubBytes(82) <= "00000000";
	 TabSubBytes(83) <= "00000000";
	 TabSubBytes(84) <= "00000000";
	 TabSubBytes(85) <= "00000000";
	 TabSubBytes(86) <= "00000000";
	 TabSubBytes(87) <= "00000000";
	 TabSubBytes(88) <= "00000000";
	 TabSubBytes(89) <= "00000000";
	 TabSubBytes(90) <= "00000000";
	 TabSubBytes(91) <= "00000000";
	 TabSubBytes(92) <= "00000000";
	 TabSubBytes(93) <= "00000000";
	 TabSubBytes(94) <= "00000000";
	 TabSubBytes(95) <= "00000000";
	 
	 TabSubBytes(96) <= "00000000";
	 TabSubBytes(97) <= "00000000";
	 TabSubBytes(98) <= "00000000";
	 TabSubBytes(99) <= "00000000";
	 TabSubBytes(100) <= "00000000";
	 TabSubBytes(101) <= "00000000";
	 TabSubBytes(102) <= "00000000";
	 TabSubBytes(103) <= "00000000";
	 TabSubBytes(104) <= "00000000";
	 TabSubBytes(105) <= "00000000";
	 TabSubBytes(106) <= "00000000";
	 TabSubBytes(107) <= "00000000";
	 TabSubBytes(108) <= "00000000";
	 TabSubBytes(109) <= "00000000";
	 TabSubBytes(110) <= "00000000";
	 TabSubBytes(111) <= "00000000";
	 
	 TabSubBytes(112) <= "00000000";
	 TabSubBytes(113) <= "00000000";
	 TabSubBytes(114) <= "00000000";
	 TabSubBytes(115) <= "00000000";
	 TabSubBytes(116) <= "00000000";
	 TabSubBytes(117) <= "00000000";
	 TabSubBytes(118) <= "00000000";
	 TabSubBytes(119) <= "00000000";
	 TabSubBytes(120) <= "00000000";
	 TabSubBytes(121) <= "00000000";
	 TabSubBytes(122) <= "00000000";
	 TabSubBytes(123) <= "00000000";
	 TabSubBytes(124) <= "00000000";
	 TabSubBytes(125) <= "00000000";
	 TabSubBytes(126) <= "00000000";
	 TabSubBytes(127) <= "00000000";
	 
	 TabSubBytes(128) <= "00000000";
	 TabSubBytes(129) <= "00000000";
	 TabSubBytes(130) <= "00000000";
	 TabSubBytes(131) <= "00000000";
	 TabSubBytes(132) <= "00000000";
	 TabSubBytes(133) <= "00000000";
	 TabSubBytes(134) <= "00000000";
	 TabSubBytes(135) <= "00000000";
	 TabSubBytes(136) <= "00000000";
	 TabSubBytes(137) <= "00000000";
	 TabSubBytes(138) <= "00000000";
	 TabSubBytes(139) <= "00000000";
	 TabSubBytes(140) <= "00000000";
	 TabSubBytes(141) <= "00000000";
	 TabSubBytes(142) <= "00000000";
	 TabSubBytes(143) <= "00000000";
	 
	 TabSubBytes(144) <= "00000000";
	 TabSubBytes(145) <= "00000000";
	 TabSubBytes(146) <= "00000000";
	 TabSubBytes(147) <= "00000000";
	 TabSubBytes(148) <= "00000000";
	 TabSubBytes(149) <= "00000000";
	 TabSubBytes(150) <= "00000000";
	 TabSubBytes(151) <= "00000000";
	 TabSubBytes(152) <= "00000000";
	 TabSubBytes(153) <= "00000000";
	 TabSubBytes(154) <= "00000000";
	 TabSubBytes(155) <= "00000000";
	 TabSubBytes(156) <= "00000000";
	 TabSubBytes(157) <= "00000000";
	 TabSubBytes(158) <= "00000000";
	 TabSubBytes(159) <= "00000000";
	 
	 TabSubBytes(160) <= "00000000";
	 TabSubBytes(161) <= "00000000";
	 TabSubBytes(162) <= "00000000";
	 TabSubBytes(163) <= "00000000";
	 TabSubBytes(164) <= "00000000";
	 TabSubBytes(165) <= "00000000";
	 TabSubBytes(166) <= "00000000";
	 TabSubBytes(167) <= "00000000";
	 TabSubBytes(168) <= "00000000";
	 TabSubBytes(169) <= "00000000";
	 TabSubBytes(170) <= "00000000";
	 TabSubBytes(171) <= "00000000";
	 TabSubBytes(172) <= "00000000";
	 TabSubBytes(173) <= "00000000";
	 TabSubBytes(174) <= "00000000";
	 TabSubBytes(175) <= "00000000";
	 
	 TabSubBytes(176) <= "00000000";
	 TabSubBytes(177) <= "00000000";
	 TabSubBytes(178) <= "00000000";
	 TabSubBytes(179) <= "00000000";
	 TabSubBytes(180) <= "00000000";
	 TabSubBytes(181) <= "00000000";
	 TabSubBytes(182) <= "00000000";
	 TabSubBytes(183) <= "00000000";
	 TabSubBytes(184) <= "00000000";
	 TabSubBytes(185) <= "00000000";
	 TabSubBytes(186) <= "00000000";
	 TabSubBytes(187) <= "00000000";
	 TabSubBytes(188) <= "00000000";
	 TabSubBytes(189) <= "00000000";
	 TabSubBytes(190) <= "00000000";
	 TabSubBytes(191) <= "00000000";
	 
	 TabSubBytes(192) <= "00000000";
	 TabSubBytes(193) <= "00000000";
	 TabSubBytes(194) <= "00000000";
	 TabSubBytes(195) <= "00000000";
	 TabSubBytes(196) <= "00000000";
	 TabSubBytes(197) <= "00000000";
	 TabSubBytes(198) <= "00000000";
	 TabSubBytes(199) <= "00000000";
	 TabSubBytes(200) <= "00000000";
	 TabSubBytes(201) <= "00000000";
	 TabSubBytes(202) <= "00000000";
	 TabSubBytes(203) <= "00000000";
	 TabSubBytes(204) <= "00000000";
	 TabSubBytes(205) <= "00000000";
	 TabSubBytes(206) <= "00000000";
	 TabSubBytes(207) <= "00000000";
	 
	 TabSubBytes(208) <= "00000000";
	 TabSubBytes(209) <= "00000000";
	 TabSubBytes(210) <= "00000000";
	 TabSubBytes(211) <= "00000000";
	 TabSubBytes(212) <= "00000000";
	 TabSubBytes(213) <= "00000000";
	 TabSubBytes(214) <= "00000000";
	 TabSubBytes(215) <= "00000000";
	 TabSubBytes(216) <= "00000000";
	 TabSubBytes(217) <= "00000000";
	 TabSubBytes(218) <= "00000000";
	 TabSubBytes(219) <= "00000000";
	 TabSubBytes(220) <= "00000000";
	 TabSubBytes(221) <= "00000000";
	 TabSubBytes(222) <= "00000000";
	 TabSubBytes(223) <= "00000000";
	 
	 TabSubBytes(224) <= "00000000";
	 TabSubBytes(225) <= "00000000";
	 TabSubBytes(226) <= "00000000";
	 TabSubBytes(227) <= "00000000";
	 TabSubBytes(228) <= "00000000";
	 TabSubBytes(229) <= "00000000";
	 TabSubBytes(230) <= "00000000";
	 TabSubBytes(231) <= "00000000";
	 TabSubBytes(232) <= "00000000";
	 TabSubBytes(233) <= "00000000";
	 TabSubBytes(234) <= "00000000";
	 TabSubBytes(235) <= "00000000";
	 TabSubBytes(236) <= "00000000";
	 TabSubBytes(237) <= "00000000";
	 TabSubBytes(238) <= "00000000";
	 TabSubBytes(239) <= "00000000";
	 
	 TabSubBytes(240) <= "00000000";
	 TabSubBytes(241) <= "00000000";
	 TabSubBytes(242) <= "00000000";
	 TabSubBytes(243) <= "00000000";
	 TabSubBytes(244) <= "00000000";
	 TabSubBytes(245) <= "00000000";
	 TabSubBytes(246) <= "00000000";
	 TabSubBytes(247) <= "00000000";
	 TabSubBytes(248) <= "00000000";
	 TabSubBytes(249) <= "00000000";
	 TabSubBytes(250) <= "00000000";
	 TabSubBytes(251) <= "00000000";
	 TabSubBytes(252) <= "00000000";
	 TabSubBytes(253) <= "00000000";
	 TabSubBytes(254) <= "00000000";
	 TabSubBytes(255) <= "00000000";
  end process;
  
end inst_aes;


