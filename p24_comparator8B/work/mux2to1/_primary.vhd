library verilog;
use verilog.vl_types.all;
entity mux2to1 is
    port(
        s               : in     vl_logic;
        i0              : in     vl_logic;
        i1              : in     vl_logic;
        y               : out    vl_logic
    );
end mux2to1;
