library verilog;
use verilog.vl_types.all;
entity bin_to_BCD is
    port(
        I               : in     vl_logic_vector(3 downto 0);
        MSD             : out    vl_logic_vector(3 downto 0);
        LSD             : out    vl_logic_vector(3 downto 0)
    );
end bin_to_BCD;
