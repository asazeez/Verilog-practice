library verilog;
use verilog.vl_types.all;
entity decoder2to4 is
    port(
        i_e             : in     vl_logic;
        i_w             : in     vl_logic_vector(1 downto 0);
        o_y             : out    vl_logic_vector(3 downto 0)
    );
end decoder2to4;
