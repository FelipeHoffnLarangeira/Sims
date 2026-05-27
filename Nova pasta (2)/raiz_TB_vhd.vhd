LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_textio.all;
USE std.textio.all;

ENTITY raiz_TB_vhd IS
END raiz_TB_vhd;

ARCHITECTURE behavior OF raiz_TB_vhd IS 

    COMPONENT raiz
    GENERIC (datawidth : integer := 8);
    PORT(
        input : IN std_logic_vector(7 downto 0);
        start : IN std_logic;
        clk   : IN std_logic;
        rst   : IN std_logic;          
        ready : OUT std_logic;
        sqrt  : OUT std_logic_vector(7 downto 0)
        );
    END COMPONENT;

    -- Sinais
    SIGNAL start :  std_logic := '0';
    SIGNAL clk   :  std_logic := '0';
    SIGNAL rst   :  std_logic := '0';
    SIGNAL input :  std_logic_vector(7 downto 0) := (others=>'0');
    SIGNAL ready :  std_logic;
    SIGNAL sqrt  :  std_logic_vector(7 downto 0);

BEGIN

    -- Instanciação da UUT
    uut: raiz 
        GENERIC MAP (datawidth => 8)
        PORT MAP(
            input => input,
            start => start,
            clk => clk,
            rst => rst,
            ready => ready,
            sqrt => sqrt
        );

    -- Geração do Clock (Período de 10ns)
    Clock : PROCESS 
    BEGIN
        clk <= '1', '0' AFTER 5 ns;
        WAIT FOR 10 ns;
    END PROCESS;
    
    -- Processo de Teste com Leitura e Escrita em arquivos externos
    tb : PROCESS
        file f_entrada : text open read_mode  is "entradas.txt"; -- Arquivo de entrada
        file f_saida   : text open write_mode is "saidas.txt";   -- Arquivo de saída
        variable l_in  : line;
        variable l_out : line;
        variable v_in  : std_logic_vector(7 downto 0);
    BEGIN
        -- Cabeçalho no arquivo de texto de saída
        write(l_out, string'("Entrada | Raiz Calculada"));
        writeline(f_saida, l_out);
        write(l_out, string'("-----------------------"));
        writeline(f_saida, l_out);

        -- Reset inicial
        rst <= '1';
        wait until falling_edge(clk);
        wait until falling_edge(clk);
        rst <= '0';
        wait until falling_edge(clk);
        
        -- Laço que lê o arquivo entradas.txt até o fim
        while not endfile(f_entrada) loop
            -- Lê a linha do arquivo e joga na variável
            readline(f_entrada, l_in);
            read(l_in, v_in);
            
            -- Aplica o valor na entrada do circuito
            start <= '1';
            input <= v_in;
            wait until falling_edge(clk);
            start <= '0'; 
            
            -- Aguarda o circuito terminar de calcular
            wait until ready = '1';
            wait until falling_edge(clk);
            
            -- Escreve o resultado formatado no arquivo saidas.txt
            write(l_out, to_integer(unsigned(input)));
            write(l_out, string'("      | "));
            write(l_out, to_integer(unsigned(sqrt)));
            writeline(f_saida, l_out);
            
            wait until falling_edge(clk);
        END LOOP;

        file_close(f_entrada);
        file_close(f_saida);
        report "Simulacao concluida! Arquivos processados com sucesso.";
        wait; 
    END PROCESS;

END behavior;