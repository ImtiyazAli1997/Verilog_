library verilog;
use verilog.vl_types.all;
entity mul8 is
    port(
        a               : in     vl_logic_vector(7 downto 0);
        b               : in     vl_logic_vector(7 downto 0);
        y               : out    vl_logic_vector(15 downto 0)
    );
end mul8;
