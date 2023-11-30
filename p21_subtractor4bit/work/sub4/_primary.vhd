library verilog;
use verilog.vl_types.all;
entity sub4 is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        diff            : out    vl_logic_vector(3 downto 0)
    );
end sub4;
