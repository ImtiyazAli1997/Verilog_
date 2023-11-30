library verilog;
use verilog.vl_types.all;
entity latch is
    port(
        u               : out    vl_logic;
        v               : out    vl_logic;
        a               : in     vl_logic;
        b               : in     vl_logic
    );
end latch;
