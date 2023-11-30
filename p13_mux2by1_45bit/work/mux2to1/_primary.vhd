library verilog;
use verilog.vl_types.all;
entity mux2to1 is
    port(
        S               : in     vl_logic;
        I0              : in     vl_logic;
        I1              : in     vl_logic;
        y               : out    vl_logic
    );
end mux2to1;
