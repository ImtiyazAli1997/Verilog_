library verilog;
use verilog.vl_types.all;
entity mm5 is
    port(
        a               : in     vl_logic_vector(7 downto 0);
        b               : in     vl_logic_vector(7 downto 0);
        c               : in     vl_logic_vector(7 downto 0);
        d               : in     vl_logic_vector(7 downto 0);
        e               : in     vl_logic_vector(7 downto 0);
        max             : out    vl_logic_vector(7 downto 0);
        midh            : out    vl_logic_vector(7 downto 0);
        mid             : out    vl_logic_vector(7 downto 0);
        midl            : out    vl_logic_vector(7 downto 0);
        min             : out    vl_logic_vector(7 downto 0)
    );
end mm5;
