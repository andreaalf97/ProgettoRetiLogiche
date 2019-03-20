----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/15/2019 08:16:55 PM
-- Design Name: 
-- Module Name: project_reti_logiche - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity project_reti_logiche is
    Port ( 
        i_clk:      in std_logic;                               -- Segnale di clock del testbench
        i_start:    in std_logic;                               -- Segnale di start generato dal testbench
        i_rst:      in std_logic;                               -- Segnale di reset che pone la macchina in attesa del segnale di start
        i_data:     in std_logic_vector(7 downto 0);           -- Segnale in arrivo dalla memoria in seguito a una richiesta
        
        o_address:  out std_logic_vector(15 downto 0);         -- Segnale per mandare l'indirizzo alla memoria
        o_done:     out std_logic;                              -- Segnala la fine della computazione
        o_en:       out std_logic;                              -- Da mandare alla memoria per poter leggere o scrivere
        o_we:       out std_logic;                              -- Da mandare alla memoria per scrivere ('1') o leggere ('0')
        o_data:     out std_logic_vector(7 downto 0)           -- Segnale di uscita dal componente verso la memoria
        );
end project_reti_logiche;

architecture Behavioral of project_reti_logiche is

type STATUS is (RST, RM, RX, COMP, E);
signal PS, NS : STATUS;
signal Y : std_logic_vector(7 downto 0);

begin

delta: process(PS, i_data)
begin

    case PS is
        when RST =>
        when others =>
    end case;
    
end process;


lambda: process(PS, i_data)
begin

    case PS is
        when RST =>
        when others =>
    end case;

end process;


state: process(i_clk)
begin

    if(i_clk'event and i_clk = '1') then
        if(i_rst = '1') then
            PS <= RST;
        else
            PS <= NS;
        end if;
    end if;

end process;


output: process(i_clk)
begin
    if(i_clk'event and i_clk = '1') then
        if(i_rst = '1') then
            Y <= "00000000";
        else
            Y <= Y;
        end if;
    end if;
end process;




end Behavioral;
