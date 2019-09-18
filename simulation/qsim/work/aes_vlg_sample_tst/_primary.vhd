library verilog;
use verilog.vl_types.all;
entity aes_vlg_sample_tst is
    port(
        chave1          : in     vl_logic_vector(63 downto 0);
        chave2          : in     vl_logic_vector(63 downto 0);
        msg             : in     vl_logic_vector(63 downto 0);
        sampler_tx      : out    vl_logic
    );
end aes_vlg_sample_tst;
