library verilog;
use verilog.vl_types.all;
entity obc is
    port(
        s_in            : in     vl_logic_vector(3 downto 0);
        current_bit     : in     vl_logic;
        s_out           : out    vl_logic_vector(3 downto 0)
    );
end obc;
