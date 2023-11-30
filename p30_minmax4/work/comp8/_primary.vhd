library verilog;
use verilog.vl_types.all;
entity comp8 is
    generic(
        Data_bits       : integer := 8
    );
    port(
        a               : in     vl_logic_vector;
        b               : in     vl_logic_vector;
        gt              : out    vl_logic;
        eq              : out    vl_logic;
        lt              : out    vl_logic
    );
end comp8;
