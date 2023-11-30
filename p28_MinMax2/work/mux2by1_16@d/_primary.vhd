library verilog;
use verilog.vl_types.all;
entity mux2by1_16D is
    generic(
        n               : integer := 16
    );
    port(
        i1              : in     vl_logic_vector;
        i0              : in     vl_logic_vector;
        s               : in     vl_logic;
        y               : out    vl_logic_vector
    );
end mux2by1_16D;
