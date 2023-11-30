library verilog;
use verilog.vl_types.all;
entity FS is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        Borrow_in       : in     vl_logic;
        Borrow_out      : out    vl_logic;
        Difference      : out    vl_logic
    );
end FS;
