library verilog;
use verilog.vl_types.all;
entity xlfa is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        c               : in     vl_logic;
        d               : in     vl_logic;
        e               : in     vl_logic;
        c_out           : out    vl_logic_vector(1 downto 0);
        sum             : out    vl_logic
    );
end xlfa;
