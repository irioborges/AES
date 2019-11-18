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
		--State	     : out std_logic_vector  ((DATA_WIDTH_AES-1) downto 0);
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
	 saida(32) <= msg(32) xor CipherKey(32);
	 saida(33) <= msg(33) xor CipherKey(33);
	 saida(34) <= msg(34) xor CipherKey(34);
	 saida(35) <= msg(35) xor CipherKey(35);
	 saida(36) <= msg(36) xor CipherKey(36);
	 saida(37) <= msg(37) xor CipherKey(37);
	 saida(38) <= msg(38) xor CipherKey(38);
	 saida(39) <= msg(39) xor CipherKey(39);
	 saida(40) <= msg(40) xor CipherKey(40);
	 saida(41) <= msg(41) xor CipherKey(41);
	 saida(42) <= msg(42) xor CipherKey(42);
	 saida(43) <= msg(43) xor CipherKey(43);
	 saida(44) <= msg(44) xor CipherKey(44);
	 saida(45) <= msg(45) xor CipherKey(45);
	 saida(46) <= msg(46) xor CipherKey(46);
	 saida(47) <= msg(47) xor CipherKey(47);
	 saida(48) <= msg(48) xor CipherKey(48);
	 saida(49) <= msg(49) xor CipherKey(49);
	 saida(50) <= msg(50) xor CipherKey(50);
	 saida(51) <= msg(51) xor CipherKey(51);
	 saida(52) <= msg(52) xor CipherKey(52);
	 saida(53) <= msg(53) xor CipherKey(53);
	 saida(54) <= msg(54) xor CipherKey(54);
	 saida(55) <= msg(55) xor CipherKey(55);
	 saida(56) <= msg(56) xor CipherKey(56);
	 saida(57) <= msg(57) xor CipherKey(57);
	 saida(58) <= msg(58) xor CipherKey(58);
	 saida(59) <= msg(59) xor CipherKey(59);
	 saida(60) <= msg(60) xor CipherKey(60);
	 saida(61) <= msg(61) xor CipherKey(61);
	 saida(62) <= msg(62) xor CipherKey(62);
	 saida(63) <= msg(63) xor CipherKey(63);
	 saida(64) <= msg(64) xor CipherKey(64);
	 saida(65) <= msg(65) xor CipherKey(65);
	 saida(66) <= msg(66) xor CipherKey(66);
	 saida(67) <= msg(67) xor CipherKey(67);
	 saida(68) <= msg(68) xor CipherKey(68);
	 saida(69) <= msg(69) xor CipherKey(69);
	 saida(70) <= msg(70) xor CipherKey(70);
	 saida(71) <= msg(71) xor CipherKey(71);
	 saida(72) <= msg(72) xor CipherKey(72);
	 saida(73) <= msg(73) xor CipherKey(73);
	 saida(74) <= msg(74) xor CipherKey(74);
	 saida(75) <= msg(75) xor CipherKey(75);
	 saida(76) <= msg(76) xor CipherKey(76);
	 saida(77) <= msg(77) xor CipherKey(77);
	 saida(78) <= msg(78) xor CipherKey(78);
	 saida(79) <= msg(79) xor CipherKey(79);
	 saida(80) <= msg(80) xor CipherKey(80);
	 saida(81) <= msg(81) xor CipherKey(81);
	 saida(82) <= msg(82) xor CipherKey(82);
	 saida(83) <= msg(83) xor CipherKey(83);
	 saida(84) <= msg(84) xor CipherKey(84);
	 saida(85) <= msg(85) xor CipherKey(85);
	 saida(86) <= msg(86) xor CipherKey(86);
	 saida(87) <= msg(87) xor CipherKey(87);
	 saida(88) <= msg(88) xor CipherKey(88);
	 saida(89) <= msg(89) xor CipherKey(89);
	 saida(90) <= msg(90) xor CipherKey(90);
	 saida(91) <= msg(91) xor CipherKey(91);
	 saida(92) <= msg(92) xor CipherKey(92);
	 saida(93) <= msg(93) xor CipherKey(93);
	 saida(94) <= msg(94) xor CipherKey(94);
	 saida(95) <= msg(95) xor CipherKey(95);
	 saida(96) <= msg(96) xor CipherKey(96);
	 saida(97) <= msg(97) xor CipherKey(97);
	 saida(98) <= msg(98) xor CipherKey(98);
	 saida(99) <= msg(99) xor CipherKey(99);
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