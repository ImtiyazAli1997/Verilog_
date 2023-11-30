library verilog;
use verilog.vl_types.all;
entity today_tom is
    port(
        tod             : in     vl_logic_vector(4 downto 0);
        tom             : out    vl_logic_vector(4 downto 0);
        err             : out    vl_logic
    );
end today_tom;
