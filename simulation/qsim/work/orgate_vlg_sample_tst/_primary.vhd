library verilog;
use verilog.vl_types.all;
entity orgate_vlg_sample_tst is
    port(
        pin_name1       : in     vl_logic;
        pin_name2       : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end orgate_vlg_sample_tst;
