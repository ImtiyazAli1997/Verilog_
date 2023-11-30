library verilog;
use verilog.vl_types.all;
entity mux8x1 is
    port(
        I               : in     vl_logic_vector(7 downto 0);
        S               : in     vl_logic_vector(2 downto 0);
        y               : out    vl_logic
    );
end mux8x1;
