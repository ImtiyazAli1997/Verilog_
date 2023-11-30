library verilog;
use verilog.vl_types.all;
entity comp3m2 is
    port(
        a               : in     vl_logic_vector(2 downto 0);
        b               : in     vl_logic_vector(2 downto 0);
        gt              : out    vl_logic;
        eq              : out    vl_logic;
        lt              : out    vl_logic
    );
end comp3m2;
