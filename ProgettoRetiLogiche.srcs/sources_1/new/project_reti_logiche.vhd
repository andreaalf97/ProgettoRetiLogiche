----------------------------------------------------------------------------------
-- Company: POLIMI
-- Engineer:    Andrea Alfieri
-- 
-- Create Date: 03/15/2019 08:16:55 PM
-- Design Name: 
-- Module Name: project_reti_logiche - Behavioral
-- Project Name: Progetto di Reti Logiche
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

type STATUS is (RST, AskMask, ReadMask, AskPx, ReadPx, AskPy, ReadPy, Counter, AskCx, ReadCx, AskCy, ReadCy, UpdateOut, FINE);
signal PS, NS : STATUS;
signal address_counter, address_counter_next: std_logic_vector(15 to 0);
signal mask, mask_next: std_logic_vector(7 downto 0);


begin

deltaLambda: process(PS, i_data) --deve determinare stato prossimo e uscita
begin

    case PS is
        when RST => --inizializzo tutti i valori dei signal
            address_counter <=          "0000000000000000";
            address_counter_next <=     "0000000000000000";
            mask <=                     "00000000";
            mask_next <=                mask;
            
        when AskMask => --richiedo la maschera all'indirizzo 0 alla memoria
            o_en <=                     '1';
            o_we <=                     '0';
            o_address <=                "0000000000000000";
            
        when ReadMask => -- leggo la maschera all'indirizzo 0 alla memoria
            mask <=                     i_data;
            mask_next <=                mask;
            
        when AskPx =>
        when ReadPx =>
        when AskPy =>
        when ReadPy =>
        when Counter =>
        when AskCx =>
        when ReadCx =>
        when AskCy =>
        when ReadCy =>
        when UpdateOut =>
        when FINE =>
        when others =>
    end case;
    
end process;


state: process(i_clk, i_rst)   -- setta i valori next
begin
    if(i_rst = '1') then
    elsif(i_clk'event and i_clk = '1') then
    end if;

end process;



end Behavioral;
