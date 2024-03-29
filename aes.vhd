library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity aes is
generic
	(
		DATA_WIDTH_AES : natural := 128
	);
  port(
    msg : in std_logic_vector(0 to 127);
	 mensagem_criptografada : out std_logic_vector(0 to 127) ;
	 clk		  : in std_logic;
	 key : in std_logic_vector(0 to 127);
	 reset : in std_logic;
	 dbg_teste : out std_logic_vector(7 downto 0);
	 state_view : out std_logic_vector(3 downto 0)
  );
end aes;

architecture inst_aes of aes is
  type matriz is array (integer range 0 to 15) of std_logic_vector (0 to 7);
  type subByte is array (integer range 0 to 255) of std_logic_vector(0 to 7);
  signal Cipherkey : matriz;
  signal TabSubBytes : subByte;
  signal en_regSTATE : std_logic;
  signal en_regKEY : std_logic;
  signal q_regState : std_logic_vector(0 to 127);
  
  signal saida_subBytes : std_logic_vector (127 downto 0);
  signal saida_subBytes1 : std_logic_vector (7 downto 0);
  signal saida_subBytes2 : std_logic_vector (7 downto 0);
  signal saida_subBytes3 : std_logic_vector (7 downto 0);
  signal saida_subBytes4 : std_logic_vector (7 downto 0);
  signal saida_subBytes5 : std_logic_vector (7 downto 0);
  signal saida_subBytes6 : std_logic_vector (7 downto 0);
  signal saida_subBytes7 : std_logic_vector (7 downto 0);
  signal saida_subBytes8 : std_logic_vector (7 downto 0);
  signal saida_subBytes9 : std_logic_vector (7 downto 0);
  signal saida_subBytes10 : std_logic_vector (7 downto 0);
  signal saida_subBytes11 : std_logic_vector (7 downto 0);
  signal saida_subBytes12 : std_logic_vector (7 downto 0);
  signal saida_subBytes13 : std_logic_vector (7 downto 0);
  signal saida_subBytes14 : std_logic_vector (7 downto 0);
  signal saida_subBytes15 : std_logic_vector (7 downto 0);
  signal saida_subBytes16 : std_logic_vector (7 downto 0);
    
  signal temp2 : std_logic_vector (7 downto 0);
  signal temp3 : std_logic_vector(0 to 127);
  signal saida_addRoundKey : std_logic_vector (0 to 127);
  signal enable : std_logic;
  signal mux_STATE_RESULT : std_logic_vector(127 downto 0);
  signal sel_mux_STATE : std_logic_vector (3 downto 0);
  signal subbytes_saida : std_logic_vector(127 downto 0);
  signal dbg_addroundkey : std_logic_vector(127 downto 0);
  signal temp : std_logic_vector(0 to 7);
  signal outMux1, outMux2, outAdder, outRegAdder, outRegA, outRegB, outInv : std_logic_vector  ((DATA_WIDTH_AES-1) downto 0);
  

component registerNbits is

	generic
	(
		DATA_WIDTH : natural := 128
	);

	port 
	(
		clk		: in std_logic;
		enable	: in std_logic;
		d	      : in std_logic_vector((DATA_WIDTH-1) downto 0);
		q			: out std_logic_vector((DATA_WIDTH-1) downto 0)
		
	);

end component;  
  

  
component PC_AES is
    PORT (
		  -- Portas principais
        reset : in std_logic;
        clock : in std_logic;
        en_inputs : out std_logic;
        cTRL_mux1 : out std_logic;
        cTRL_mux2 : out std_logic;
        en_regULA : out std_logic;
		  en_regKEY : out std_logic;
		  en_regSTATE : out std_logic;
		  mux_STATE : out std_logic_vector(3 downto 0);
		  -- Portas para depuração
		  state_view : out std_logic_vector(3 downto 0)
    );
END component;  

component SubBytes is
    PORT (
		  -- Portas principais
		sel : in std_logic_vector (7 downto 0);
		saida 		: out std_logic_vector 	(7 downto 0)
    );
END component;  

component Mux2p1 is
    PORT(
	 	a	   : in std_logic_vector  (127 downto 0);
		b	   : in std_logic_vector  (127 downto 0);
		sel   : in std_logic;
		result : out std_logic_vector (127 downto 0)	 
	 );
	 
END component;

component mux16p1 is

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

end component;

component AddRoundKey is
    PORT(
	 -- Portas principais
		msg	     : in std_logic_vector  ((DATA_WIDTH_AES-1) downto 0);
		CipherKey  : in std_logic_vector ((DATA_WIDTH_AES-1) downto 0);
		--State	     : out std_logic_vector  ((DATA_WIDTH_AES-1) downto 0);
		saida 		: out std_logic_vector 	((DATA_WIDTH_AES-1) downto 0)
	 );
	 
END component;
  
begin 

PC: 	PC_AES
			 --generic map (DATA_WIDTH_AES => GLOBAL_DATA_WIDTH)
			 port map (
						-- Portas de depuração
							clock => clk,
							en_regKEY => en_regKEY,
							en_regSTATE => en_regSTATE,
							mux_STATE => sel_mux_STATE,
							reset => reset,
							state_view => state_view
						--	a_PO => a_top,
					--		b_PO => b_top,
					--		Ctrl_mux1 => ctrl_mux1_conect,
					--		Ctrl_mux2 => Ctrl_mux2_conect,
						--	en_inputs => en_inputs_conect,
							--en_regAdder => en_regAdder_conect,
							--c_PO => c_top,
							
						-- Portas de depuração
					--		outMux1_view => outMux1_view,
						--	outMux2_view => outMux2_view, 
							--outAdder_view => outAdder_view, 
			--				outRegAdder_view => outRegAdder_view, 
				--			outRegA_view => outRegA_view, 
					--		outRegB_view => outRegB_view, 
						--	outInv_view => outInv_view
						);	

MuxRegState : Mux16p1 
			port map(
			   a => msg,
				b => saida_addRoundKey,
				c => saida_subbytes1 & saida_subbytes2 & saida_subbytes3 & saida_subbytes4 & saida_subbytes5 & saida_subbytes6 & saida_subbytes7 & saida_subbytes8 & saida_subbytes9 & saida_subbytes10 & saida_subbytes11 & saida_subbytes12 & saida_subbytes13 & saida_subbytes14 & saida_subbytes15 & saida_subbytes16,
				d => q_regState (0 to 31) &  q_regState(40 to 63)  & q_regState(32 to 39) & q_regState(80 to 95) & q_regState(64 to 79) & 
				q_regState(120 to 127) & q_regState(96 to 119),
				e => msg,
				f => msg,
				g => msg,
				h => msg,
				i => msg,
				j => msg,
				k => msg,
				l => msg,
				m => msg,
				n => msg,
				o => msg,
				p => msg,
				
				sel => sel_mux_STATE,
				result => mux_STATE_RESULT
			  
			);
						
State_reg : 	registerNbits
			--generic map (DATA_WIDTH => GLOBAL_DATA_WIDTH)
			port map(
			   enable => en_regSTATE,
			   clk => clk,
			   d => mux_STATE_RESULT, 
				q => q_regState
			);
			
Key_reg : 	registerNbits
			--generic map (DATA_WIDTH => GLOBAL_DATA_WIDTH)
			port map(
			enable => en_regKEY,
			   clk => clk,
			   d => key,
				
				q => temp3
			);
		
inst_subbytes1 : SubBytes 
    port map (
		  -- Portas principais
		sel => q_regState (0 to 7),
		saida => saida_subbytes1
    );
				
inst_subbytes2 : SubBytes 
    port map (
		  -- Portas principais
		sel => q_regState (8 to 15),
		saida => saida_subbytes2
    );

inst_subbytes3 : SubBytes 
    port map (
		  -- Portas principais
		sel => q_regState (16 to 23),
		saida => saida_subbytes3
    );

inst_subbytes4 : SubBytes 
    port map (
		  -- Portas principais
		sel => q_regState (24 to 31),
		saida => saida_subbytes4
    );

inst_subbytes5 : SubBytes 
    port map (
		  -- Portas principais
		sel => q_regState (32 to 39),
		saida => saida_subbytes5
    );

inst_subbytes6 : SubBytes 
    port map (
		  -- Portas principais
		sel => q_regState (40 to 47),
		saida => saida_subbytes6
    );

inst_subbytes7 : SubBytes 
    port map (
		  -- Portas principais
		sel => q_regState (48 to 55),
		saida => saida_subbytes7
    );

inst_subbytes8 : SubBytes 
    port map (
		  -- Portas principais
		sel => q_regState (56 to 63),
		saida => saida_subbytes8
    );

inst_subbytes9 : SubBytes 
    port map (
		  -- Portas principais
		sel => q_regState (64 to 71),
		saida => saida_subbytes9
    );

inst_subbytes10 : SubBytes 
    port map (
		  -- Portas principais
		sel => q_regState (72 to 79),
		saida => saida_subbytes10
    );

inst_subbytes11 : SubBytes 
    port map (
		  -- Portas principais
		sel => q_regState (80 to 87),
		saida => saida_subbytes11
    );

inst_subbytes12 : SubBytes 
    port map (
		  -- Portas principais
		sel => q_regState (88 to 95),
		saida => saida_subbytes12
    );

inst_subbytes13 : SubBytes 
    port map (
		  -- Portas principais
		sel => q_regState (96 to 103),
		saida => saida_subbytes13
    );

inst_subbytes14 : SubBytes 
    port map (
		  -- Portas principais
		sel => q_regState (104 to 111),
		saida => saida_subbytes14
    );

inst_subbytes15 : SubBytes 
    port map (
		  -- Portas principais
		sel => q_regState (112 to 119),
		saida => saida_subbytes15
    );
	 
inst_subbytes16 : SubBytes 
    port map (
		  -- Portas principais
		sel => q_regState (120 to 127),
		saida => saida_subbytes16
    );
				
				
				
				--inst_subbytes : SubBytes
	---				port map(
		--			    cipherkey => temp3,
			--		    msg => temp2,
				--	    saida => subbytes_saida	
					--);
inst_AddRoundKey : AddRoundKey
						port map(
						msg	     => q_regState,
						CipherKey  => temp3,
					   --State	     : out std_logic_vector  ((DATA_WIDTH_AES-1) downto 0);
						saida 		=>   saida_addRoundKey
						
						
						);

		
--RegAdder: 	registerNbits
	--		 generic map (DATA_WIDTH => DATA_WIDTH_AES)
		--	 port map (clk => clk, enable => En_regAdder, d => outAdder, q => outRegAdder);	
  --          0000    0001    0002    0003    0004    0005    0006    0007    0008    0009    0000    0001    0002    0003    0004    0005                                                                                            
  --Key <= "00110000001100010011001000110011001101000011010100110110001101110011100000111001001100000011000100110010001100110011010000110101";
  process(clk)
  --Declaração de variáveis
  --variable posicao : integer;
  --variable temp : std_logic_vector(0 to 7);
  --Fim de declaração de variáveis
  begin 

    --Assinala a mensagem a ser criptografada na matriz state
	 --for i in 0 to 15 loop 
      --State(i) <= msg((120 - (i * 8)) to (127 - (i * 8)));
    --end loop;
	 
    --Assinala a chave a ser utilizada(0123456789012345) na matriz key
	 --for i in 0 to 15 loop 
      --CipherKey(i) <= Key((120 - (i * 8)) to (127 - (i * 8)));
    --end loop;
      
    --Faz o AddRoundKey
    --for i in 0 to 15 loop 
	   --for j in 0 to 7 loop 
        --State(i)(j) <= State(i)(j) xor CipherKey(i)(j);
		--end loop;  
    --end loop;
	 
	
	 
	 --Etapa de SubBytes
	 --for i in 0 to 15 loop 
	   --posicao := to_integer(unsigned(State(i)(0 to 7)));
      --State(i) <= TabSubBytes(posicao);
    --end loop;
	 
	 --Etapa de ShiftRows
	 --for i in 4 to 7 loop --Rotaciona um byte a esquerda
	 
	 --end loop;
	 --for i in 8 to 11 loop --Rotaciona duas vezes um byte a esquerda
	 
	 --end loop;
	 --for i in 12 to 15 loop --Rotaciona três vezes um byte a esquerda
	 
	 --end loop;
	 
  end process;
  process(clk)
  --Declaração de variáveis
  --variable posicao : integer;
  --variable temp : std_logic_vector(0 to 7);
  --Fim de declaração de variáveis
  begin 

    --Assinala a mensagem a ser criptografada na matriz state
	 --for i in 0 to 15 loop 
      --State(i) <= msg((120 - (i * 8)) to (127 - (i * 8)));
    --end loop;
	 
    --Assinala a chave a ser utilizada(0123456789012345) na matriz key
	 --for i in 0 to 15 loop 
      --CipherKey(i) <= Key((120 - (i * 8)) to (127 - (i * 8)));
    --end loop;
      
    --Faz o AddRoundKey
    --for i in 0 to 15 loop 
	   --for j in 0 to 7 loop 
        --State(i)(j) <= State(i)(j) xor CipherKey(i)(j);
		--end loop;  
    --end loop;
	 
	
	 
	 --Etapa de SubBytes
	 --for i in 0 to 15 loop 
	   --posicao := to_integer(unsigned(State(i)(0 to 7)));
      --State(i) <= TabSubBytes(posicao);
    --end loop;
	 
	 --Etapa de ShiftRows
	 --for i in 4 to 7 loop --Rotaciona um byte a esquerda
	 
	 --end loop;
	 --for i in 8 to 11 loop --Rotaciona duas vezes um byte a esquerda
	 
	 --end loop;
	 --for i in 12 to 15 loop --Rotaciona três vezes um byte a esquerda
	 
	 --end loop;
	 --temp2 <= q_regState(127 downto 120);
	 --dbg_teste <= saida_subbytes1;
	 dbg_teste <= q_regState(32 to 39);
	 --dbg_teste(1) <= q_regState(121);
	 --dbg_teste(2) <= q_regState(122);
	 --dbg_teste(3) <= q_regState(123);
	 --dbg_teste(4) <= q_regState(124);
	 --dbg_teste(5) <= q_regState(125);
	 --dbg_teste(6) <= q_regState(126);
	 --dbg_teste(7) <= q_regState(127);
	 
	 mensagem_criptografada <= q_regState;
  end process;
end inst_aes;


