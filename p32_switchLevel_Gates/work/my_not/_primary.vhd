library verilog;
use verilog.vl_types.all;
entity my_not is
    port(
        y               : out    vl_logic;
        a               : in     vl_logic
    );
end my_not;
