library verilog;
use verilog.vl_types.all;
entity aes_vlg_check_tst is
    port(
        mensagem_criptografada: in     vl_logic_vector(17 downto 0);
        sampler_rx      : in     vl_logic
    );
end aes_vlg_check_tst;
