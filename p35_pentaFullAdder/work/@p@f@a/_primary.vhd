library verilog;
use verilog.vl_types.all;
entity PFA is
    port(
        a               : in     vl_logic_vector(2 downto 0);
        b               : in     vl_logic_vector(2 downto 0);
        c               : in     vl_logic_vector(2 downto 0);
        sum             : out    vl_logic_vector(2 downto 0);
        cout            : out    vl_logic_vector(1 downto 0)
    );
end PFA;
