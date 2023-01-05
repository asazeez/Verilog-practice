library verilog;
use verilog.vl_types.all;
entity lab1_vlg_sample_tst is
    port(
        i_x1            : in     vl_logic;
        i_x2            : in     vl_logic;
        i_x3            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end lab1_vlg_sample_tst;
