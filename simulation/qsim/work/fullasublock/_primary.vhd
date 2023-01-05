library verilog;
use verilog.vl_types.all;
entity fullasublock is
    port(
        display         : out    vl_logic_vector(6 downto 0);
        cin             : in     vl_logic;
        x               : in     vl_logic_vector(3 downto 0);
        y               : in     vl_logic_vector(3 downto 0);
        neg             : out    vl_logic_vector(6 downto 0)
    );
end fullasublock;
