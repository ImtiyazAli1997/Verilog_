library verilog;
use verilog.vl_types.all;
entity mod5 is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        q2              : out    vl_logic;
        q1              : out    vl_logic;
        q0              : out    vl_logic
    );
end mod5;
