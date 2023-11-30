library verilog;
use verilog.vl_types.all;
entity latch2 is
    port(
        e               : in     vl_logic;
        f               : in     vl_logic;
        u               : out    vl_logic;
        v               : out    vl_logic
    );
end latch2;
