library verilog;
use verilog.vl_types.all;
entity MSB_priority_encoder_4to2 is
    port(
        y               : out    vl_logic_vector(1 downto 0);
        i               : in     vl_logic_vector(3 downto 0)
    );
end MSB_priority_encoder_4to2;
