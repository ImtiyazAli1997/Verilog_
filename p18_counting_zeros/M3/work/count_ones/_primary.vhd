library verilog;
use verilog.vl_types.all;
entity count_ones is
    port(
        y               : out    vl_logic_vector(3 downto 0);
        i               : in     vl_logic_vector(7 downto 0)
    );
end count_ones;
