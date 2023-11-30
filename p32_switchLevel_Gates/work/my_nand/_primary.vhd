library verilog;
use verilog.vl_types.all;
entity my_nand is
    port(
        y               : out    vl_logic;
        a               : in     vl_logic;
        b               : in     vl_logic
    );
end my_nand;
