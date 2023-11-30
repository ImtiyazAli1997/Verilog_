library verilog;
use verilog.vl_types.all;
entity HS is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        Borrow          : out    vl_logic;
        Diff            : out    vl_logic
    );
end HS;
