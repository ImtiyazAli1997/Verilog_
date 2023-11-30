library verilog;
use verilog.vl_types.all;
entity basic_gates_G is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        y               : out    vl_logic_vector(6 downto 0)
    );
end basic_gates_G;
