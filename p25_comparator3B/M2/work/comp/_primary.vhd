library verilog;
use verilog.vl_types.all;
entity comp is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        gt              : out    vl_logic;
        eq              : out    vl_logic;
        lt              : out    vl_logic
    );
end comp;
