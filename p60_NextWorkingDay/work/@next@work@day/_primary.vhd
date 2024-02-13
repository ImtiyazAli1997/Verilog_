library verilog;
use verilog.vl_types.all;
entity NextWorkDay is
    port(
        tod_in          : in     vl_logic_vector(4 downto 0);
        N_in            : in     vl_logic_vector(2 downto 0);
        week_in         : in     vl_logic_vector(2 downto 0);
        date_out        : out    vl_logic_vector(4 downto 0);
        week_out        : out    vl_logic_vector(2 downto 0)
    );
end NextWorkDay;
