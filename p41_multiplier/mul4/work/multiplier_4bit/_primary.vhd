library verilog;
use verilog.vl_types.all;
entity multiplier_4bit is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        y               : out    vl_logic_vector(7 downto 0)
    );
end multiplier_4bit;
