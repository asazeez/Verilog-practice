library verilog;
use verilog.vl_types.all;
entity asu_vlg_sample_tst is
    port(
        i_cin           : in     vl_logic;
        i_x             : in     vl_logic_vector(3 downto 0);
        i_y             : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end asu_vlg_sample_tst;
