library verilog;
use verilog.vl_types.all;
entity addr_subtr is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        control_signal  : in     vl_logic;
        br_Ca_out       : out    vl_logic;
        sum_diff        : out    vl_logic_vector(3 downto 0)
    );
end addr_subtr;
