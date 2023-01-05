library verilog;
use verilog.vl_types.all;
entity asu_vlg_check_tst is
    port(
        o_count         : in     vl_logic;
        o_neg           : in     vl_logic;
        o_overflow      : in     vl_logic;
        o_s             : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end asu_vlg_check_tst;
