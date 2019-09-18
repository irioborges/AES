library verilog;
use verilog.vl_types.all;
entity aes is
    port(
        msg             : in     vl_logic_vector(63 downto 0);
        chave1          : in     vl_logic_vector(63 downto 0);
        chave2          : in     vl_logic_vector(63 downto 0);
        mensagem_criptografada: out    vl_logic_vector(17 downto 0)
    );
end aes;
