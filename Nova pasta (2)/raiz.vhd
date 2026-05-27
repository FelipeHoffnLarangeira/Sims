library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity raiz is
    generic (datawidth : integer := 8);
    Port ( input : in  STD_LOGIC_VECTOR (datawidth-1 downto 0);
           start : in  STD_LOGIC;
           clk   : in  STD_LOGIC;
           rst   : in  STD_LOGIC;
           ready : out STD_LOGIC;
           sqrt  : out STD_LOGIC_VECTOR (datawidth-1 downto 0));
end raiz;

architecture Behavioral of raiz is

    type states is (ESPERA, INICIALIZA, DECIDE, PROCESSA_0, PRONTO);
    signal current_state, next_state : states;

    -- Sinais que substituem as variáveis para manter os valores entre os clocks
    signal r, d, s, i : STD_LOGIC_VECTOR (datawidth-1 downto 0);
    signal t          : STD_LOGIC;

begin

    -- Processo Sequencial: Atualiza o estado e os registradores na borda do clock
    rst_clk: PROCESS(rst, clk)
    BEGIN
        IF (rst = '1') THEN
            current_state <= ESPERA;
            r <= (others => '0');
            d <= (others => '0');
            s <= (others => '0');
            i <= (others => '0');
            t <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            current_state <= next_state;
            
            -- Atualização interna baseada no estado atual
            CASE current_state IS
                WHEN INICIALIZA =>
                    r(datawidth-1 downto 1) <= (others => '0');
                    r(0) <= '1';
                    d(datawidth-1 downto 2) <= (others => '0');
                    d(1 downto 0) <= "10";
                    s(datawidth-1 downto 3) <= (others => '0');
                    s(2 downto 0) <= "100";    
                    i <= input;
                    t <= '1';

                WHEN PROCESSA_0 =>
                    r <= r + 1;
                    d <= d + 2;
                    s <= s + d + 2; -- Ajuste da lógica do passo do algoritmo
                    
                    if ((s + d + 2) > i) then
                        t <= '0';
                    else 
                        t <= '1';
                    end if;

                WHEN OTHERS =>
                    null;
            END CASE;
        END IF;
    END PROCESS;

    -- Processo Combinacional: Determina apenas a transição de estados
    fsm_combinational : PROCESS(current_state, start, t, r)
    BEGIN
        -- Valores padrão
        ready <= '0';
        sqrt <= (others => '0');
        next_state <= current_state;

        CASE current_state IS
            WHEN ESPERA =>
                IF (start = '1') THEN 
                    next_state <= INICIALIZA;
                ELSE 
                    next_state <= ESPERA;
                END IF;
                
            WHEN INICIALIZA =>
                next_state <= DECIDE;
                
            WHEN DECIDE =>
                IF (t = '1') THEN
                    next_state <= PROCESSA_0;
                ELSE 
                    next_state <= PRONTO;
                END IF;
                
            WHEN PROCESSA_0 =>
                next_state <= DECIDE;
                
            WHEN PRONTO =>
                next_state <= ESPERA;    
                ready <= '1';    
                sqrt <= r;
        END CASE;
    END PROCESS;

end Behavioral;