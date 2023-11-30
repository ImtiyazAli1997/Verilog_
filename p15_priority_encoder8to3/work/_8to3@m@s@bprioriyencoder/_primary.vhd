library verilog;
use verilog.vl_types.all;
entity \_8to3MSBprioriyencoder\ is
    port(
        y               : out    vl_logic_vector(2 downto 0);
        i               : in     vl_logic_vector(7 downto 0)
    );
end \_8to3MSBprioriyencoder\;
