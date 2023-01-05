library verilog;
use verilog.vl_types.all;
entity and_gate is
    port(
        input_1         : in     vl_logic;
        input_2         : in     vl_logic;
        result          : out    vl_logic
    );
end and_gate;
