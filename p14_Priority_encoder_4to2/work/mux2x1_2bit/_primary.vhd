library verilog;
use verilog.vl_types.all;
entity mux2x1_2bit is
    port(
        y               : out    vl_logic_vector(1 downto 0);
        s               : in     vl_logic;
        i1              : in     vl_logic_vector(1 downto 0);
        i0              : in     vl_logic_vector(1 downto 0)
    );
end mux2x1_2bit;
