library verilog;
use verilog.vl_types.all;
entity count_zeros_m2 is
    port(
        \in\            : in     vl_logic_vector(7 downto 0);
        y               : out    vl_logic_vector(3 downto 0)
    );
end count_zeros_m2;
