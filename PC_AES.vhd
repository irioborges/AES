
library ieee;
use ieee.std_logic_1164.all;

entity PC_AES is
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
		  mux_STATE : out std_logic_vector (3 downto 0);
		  -- Portas para depuração
		  state_view : out std_logic_vector(3 downto 0)
    );
END PC_AES;

architecture BEHAVIOR of PC_AES is

   type type_state is (state2,state3,state4, state5, state6, state7, state1);
   
	signal state: type_state;

begin

	 process (clock,reset)
    begin
        if (reset='1') then
            state <= state1;
        elsif(rising_edge(clock)) then
            case state is
                when state1 =>
						  state <= state2;
                when state2 =>
                    state <= state3;
                when state3 =>
                    state <= state4;
                when state4 =>
                    state <= state5;
					 when state5 =>
                    state <= state6;
					when state6 =>
                    state <= state7;
					when state7 =>
                    state <= state7;	  
            end case;
        end if;
    end process;

    process (state) --bloco combinacional: saídas são calculadas em função do estado atual do controle.
    begin			  
		case state is
			 when state1 =>
					--en_inputs <= '1';
					--ctrl_mux1 <= '0';
					--en_regULA <= '0';
					--ctrl_mux2 <= '0';
					en_regKEY <= '1';
		         en_regSTATE <= '1';
		         mux_STATE <= "0000";
					state_view <= "0001";	-- saída usada para propósito de depuração.
			 when state2 =>
					--en_inputs <= '0';
					--ctrl_mux1 <= '1';
					--en_regULA <= '1';
               --ctrl_mux2 <= '0';
					en_regKEY <= '1';
		         en_regSTATE <= '1';
		         mux_STATE <= "0000";
					state_view <= "0010";	-- saída usada para propósito de depuração.
			 when state3 =>
					--En_inputs <= '0';
				   --ctrl_mux1 <= '0';
				   --en_regULA <= '1';
				   --ctrl_mux2 <= '1';
					en_regKEY <= '1';
		         en_regSTATE <= '1';
		         mux_STATE <= "0001";
					state_view <= "0011";	-- saída usada para propósito de depuração.
			 when state4 =>
				   --en_inputs <= '0';
				   --ctrl_mux1 <= '0';
				   --en_regULA <= '0';
				   --ctrl_mux2 <= '0';			
					en_regKEY <= '0';
		         en_regSTATE <= '0';
		         mux_STATE <= "0001";
					state_view <= "0100";	-- saída usada para propósito de depuração.
			when state5 =>
				   --en_inputs <= '0';
				   --ctrl_mux1 <= '0';
				   --en_regULA <= '0';
				   --ctrl_mux2 <= '0';			
					en_regKEY <= '1';
		         en_regSTATE <= '0';
		         mux_STATE <= "0001";
					state_view <= "0101";	-- saída usada para propósito de depuração.
			when state6 =>
				   --en_inputs <= '0';
				   --ctrl_mux1 <= '0';
				   --en_regULA <= '0';
				   --ctrl_mux2 <= '0';			
					en_regKEY <= '1';
		         en_regSTATE <= '0';
		         mux_STATE <= "0001";
					state_view <= "0110";	-- saída usada para propósito de depuração.
			when state7 =>
				   --en_inputs <= '0';
				   --ctrl_mux1 <= '0';
				   --en_regULA <= '0';
				   --ctrl_mux2 <= '0';			
					en_regKEY <= '1';
		         en_regSTATE <= '0';
		         mux_STATE <= "0001";
					state_view <= "0111";	-- saída usada para propósito de depuração.		
 		end case;
    end process;          
	 
end behavior;
