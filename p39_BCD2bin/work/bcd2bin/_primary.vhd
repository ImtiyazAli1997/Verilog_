library verilog;
use verilog.vl_types.all;
entity bcd2bin is
    port(
        msd             : in     vl_logic_vector(3 downto 0);
        lsd             : in     vl_logic_vector(3 downto 0);
        i               : out    vl_logic_vector(6 downto 0)
    );
end bcd2bin;
