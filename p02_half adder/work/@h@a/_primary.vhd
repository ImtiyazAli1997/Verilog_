library verilog;
use verilog.vl_types.all;
entity HA is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        c_out           : out    vl_logic;
        sum             : out    vl_logic
    );
end HA;
