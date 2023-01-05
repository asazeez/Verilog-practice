library verilog;
use verilog.vl_types.all;
entity asu is
    port(
        i_cin           : in     vl_logic;
        i_x             : in     vl_logic_vector(3 downto 0);
        i_y             : in     vl_logic_vector(3 downto 0);
        o_s             : out    vl_logic_vector(3 downto 0);
        o_count         : out    vl_logic;
        o_overflow      : out    vl_logic;
        o_neg           : out    vl_logic
    );
end asu;
