library verilog;
use verilog.vl_types.all;
entity counting_zeros is
    port(
        d_in            : in     vl_logic_vector(7 downto 0);
        count0          : out    vl_logic_vector(3 downto 0)
    );
end counting_zeros;
