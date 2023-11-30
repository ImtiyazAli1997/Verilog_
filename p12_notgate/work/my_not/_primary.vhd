library verilog;
use verilog.vl_types.all;
entity my_not is
    port(
        a               : in     vl_logic;
        y               : out    vl_logic
    );
end my_not;
