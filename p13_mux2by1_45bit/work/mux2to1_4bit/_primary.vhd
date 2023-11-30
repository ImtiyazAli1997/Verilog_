library verilog;
use verilog.vl_types.all;
entity mux2to1_4bit is
    port(
        S               : in     vl_logic;
        I0              : in     vl_logic_vector(3 downto 0);
        I1              : in     vl_logic_vector(3 downto 0);
        y               : out    vl_logic_vector(3 downto 0)
    );
end mux2to1_4bit;
