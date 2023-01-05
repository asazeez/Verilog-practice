library verilog;
use verilog.vl_types.all;
entity fullasublock_vlg_check_tst is
    port(
        display         : in     vl_logic_vector(6 downto 0);
        neg             : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end fullasublock_vlg_check_tst;
