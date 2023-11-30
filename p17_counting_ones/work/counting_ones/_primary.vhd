library verilog;
use verilog.vl_types.all;
entity counting_ones is
    port(
        d_in            : in     vl_logic_vector(7 downto 0);
        count1          : out    vl_logic_vector(3 downto 0)
    );
end counting_ones;
