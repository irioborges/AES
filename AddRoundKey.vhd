library ieee;
use ieee.std_logic_1164.all;

entity AddRoundKey is
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

end AddRoundKey;

architecture inst_AddRoundKey of AddRoundKey is
begin 
  
    saida(0) <= msg(0) xor CipherKey(0);
	 saida(1) <= msg(1) xor CipherKey(1);
	 saida(2) <= msg(2) xor CipherKey(2);
	 saida(3) <= msg(3) xor CipherKey(3);
	 saida(4) <= msg(4) xor CipherKey(4);
	 saida(5) <= msg(5) xor CipherKey(5);
	 saida(6) <= msg(6) xor CipherKey(6);
	 saida(7) <= msg(7) xor CipherKey(7);
	 saida(8) <= msg(8) xor CipherKey(8);
	 saida(9) <= msg(9) xor CipherKey(9);
	 saida(10) <= msg(10) xor CipherKey(10);
	 saida(11) <= msg(11) xor CipherKey(11);
	 saida(12) <= msg(12) xor CipherKey(12);
	 saida(13) <= msg(13) xor CipherKey(13);
	 saida(14) <= msg(14) xor CipherKey(14);
	 saida(15) <= msg(15) xor CipherKey(15);
	 saida(16) <= msg(16) xor CipherKey(16);
	 saida(17) <= msg(17) xor CipherKey(17);
	 saida(18) <= msg(18) xor CipherKey(18);
	 saida(19) <= msg(19) xor CipherKey(19);
	 saida(20) <= msg(20) xor CipherKey(20);
	 saida(21) <= msg(21) xor CipherKey(21);
	 saida(22) <= msg(22) xor CipherKey(22);
	 saida(23) <= msg(23) xor CipherKey(23);
	 saida(24) <= msg(24) xor CipherKey(24);
	 saida(25) <= msg(25) xor CipherKey(25);
	 saida(26) <= msg(26) xor CipherKey(26);
	 saida(27) <= msg(27) xor CipherKey(27);
	 saida(28) <= msg(28) xor CipherKey(28);
	 saida(29) <= msg(29) xor CipherKey(29);
	 saida(30) <= msg(30) xor CipherKey(30);
	 saida(31) <= msg(31) xor CipherKey(31);
	 saida(32) <= msg(12) xor CipherKey(12);
	 saida(33) <= msg(13) xor CipherKey(13);
	 saida(34) <= msg(14) xor CipherKey(14);
	 saida(35) <= msg(15) xor CipherKey(15);
	 saida(36) <= msg(16) xor CipherKey(16);
	 saida(37) <= msg(17) xor CipherKey(17);
	 saida(38) <= msg(18) xor CipherKey(18);
	 saida(39) <= msg(19) xor CipherKey(19);
	 saida(40) <= msg(20) xor CipherKey(20);
	 saida(41) <= msg(11) xor CipherKey(11);
	 saida(42) <= msg(12) xor CipherKey(12);
	 saida(43) <= msg(13) xor CipherKey(13);
	 saida(44) <= msg(14) xor CipherKey(14);
	 saida(45) <= msg(15) xor CipherKey(15);
	 saida(46) <= msg(16) xor CipherKey(16);
	 saida(47) <= msg(17) xor CipherKey(17);
	 saida(48) <= msg(18) xor CipherKey(18);
	 saida(49) <= msg(19) xor CipherKey(19);
	 saida(50) <= msg(10) xor CipherKey(10);
	 saida(51) <= msg(11) xor CipherKey(11);
	 saida(52) <= msg(12) xor CipherKey(12);
	 saida(53) <= msg(13) xor CipherKey(13);
	 saida(54) <= msg(14) xor CipherKey(14);
	 saida(55) <= msg(15) xor CipherKey(15);
	 saida(56) <= msg(16) xor CipherKey(16);
	 saida(57) <= msg(17) xor CipherKey(17);
	 saida(58) <= msg(18) xor CipherKey(18);
	 saida(59) <= msg(19) xor CipherKey(19);
	 saida(60) <= msg(20) xor CipherKey(20);
	 saida(61) <= msg(11) xor CipherKey(11);
	 saida(62) <= msg(12) xor CipherKey(12);
	 saida(63) <= msg(13) xor CipherKey(13);
	 saida(64) <= msg(14) xor CipherKey(14);
	 saida(65) <= msg(15) xor CipherKey(15);
	 saida(66) <= msg(16) xor CipherKey(16);
	 saida(67) <= msg(17) xor CipherKey(17);
	 saida(68) <= msg(18) xor CipherKey(18);
	 saida(69) <= msg(19) xor CipherKey(19);
	 saida(70) <= msg(20) xor CipherKey(20);
	 saida(71) <= msg(11) xor CipherKey(11);
	 saida(72) <= msg(12) xor CipherKey(12);
	 saida(73) <= msg(13) xor CipherKey(13);
	 saida(74) <= msg(14) xor CipherKey(14);
	 saida(75) <= msg(15) xor CipherKey(15);
	 saida(76) <= msg(16) xor CipherKey(16);
	 saida(77) <= msg(17) xor CipherKey(17);
	 saida(78) <= msg(18) xor CipherKey(18);
	 saida(79) <= msg(19) xor CipherKey(19);
	 saida(80) <= msg(20) xor CipherKey(20);
	 saida(81) <= msg(11) xor CipherKey(11);
	 saida(82) <= msg(12) xor CipherKey(12);
	 saida(83) <= msg(13) xor CipherKey(13);
	 saida(84) <= msg(14) xor CipherKey(14);
	 saida(85) <= msg(15) xor CipherKey(15);
	 saida(86) <= msg(16) xor CipherKey(16);
	 saida(87) <= msg(17) xor CipherKey(17);
	 saida(88) <= msg(18) xor CipherKey(18);
	 saida(89) <= msg(19) xor CipherKey(19);
	 saida(90) <= msg(10) xor CipherKey(10);
	 saida(91) <= msg(11) xor CipherKey(11);
	 saida(92) <= msg(12) xor CipherKey(12);
	 saida(93) <= msg(13) xor CipherKey(13);
	 saida(94) <= msg(14) xor CipherKey(14);
	 saida(95) <= msg(15) xor CipherKey(15);
	 saida(96) <= msg(16) xor CipherKey(16);
	 saida(97) <= msg(17) xor CipherKey(17);
	 saida(98) <= msg(18) xor CipherKey(18);
	 saida(99) <= msg(19) xor CipherKey(19);
	 saida(100) <= msg(100) xor CipherKey(100);
	 saida(101) <= msg(101) xor CipherKey(101);
	 saida(102) <= msg(102) xor CipherKey(102);
	 saida(103) <= msg(103) xor CipherKey(103);
	 saida(104) <= msg(104) xor CipherKey(104);
	 saida(105) <= msg(105) xor CipherKey(105);
	 saida(106) <= msg(106) xor CipherKey(106);
	 saida(107) <= msg(107) xor CipherKey(107);
	 saida(108) <= msg(108) xor CipherKey(108);
	 saida(109) <= msg(109) xor CipherKey(109);
	 saida(110) <= msg(110) xor CipherKey(110);
	 saida(111) <= msg(111) xor CipherKey(111);
	 saida(112) <= msg(112) xor CipherKey(112);
	 saida(113) <= msg(113) xor CipherKey(113);
	 saida(114) <= msg(114) xor CipherKey(114);
	 saida(115) <= msg(115) xor CipherKey(115);
	 saida(116) <= msg(116) xor CipherKey(116);
	 saida(117) <= msg(117) xor CipherKey(117);
	 saida(118) <= msg(118) xor CipherKey(118);
	 saida(119) <= msg(119) xor CipherKey(119);
	 saida(120) <= msg(120) xor CipherKey(120);
	 saida(121) <= msg(121) xor CipherKey(121);
	 saida(122) <= msg(122) xor CipherKey(122);
	 saida(123) <= msg(123) xor CipherKey(123);
	 saida(124) <= msg(124) xor CipherKey(124);
	 saida(125) <= msg(125) xor CipherKey(125);
	 saida(126) <= msg(126) xor CipherKey(126);
	 saida(127) <= msg(127) xor CipherKey(127);
  
  
end inst_AddRoundKey;