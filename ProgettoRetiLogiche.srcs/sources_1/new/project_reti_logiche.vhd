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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

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

type STATUS is (RST, AskMask, ReadMask, AskPx, ReadPx, AskPy, ReadPy, Processor, AskCx, ReadCx, AskCy, ReadCy, UpdateOut, FINE);
signal PS, NS :                                     STATUS;
signal counter, counter_next:                       std_logic_vector(2 downto 0);
signal mask, mask_next:                             std_logic_vector(7 downto 0);
signal pivotX, pivotX_next, pivotY, pivotY_next:    std_logic_vector(7 downto 0);

signal tempX, tempY, tempX_next, tempY_next:        std_logic_vector(7 downto 0);
signal distTempX, distTempY, distTempTot:           std_logic_vector(8 downto 0);

signal distMin, distMin_next:                       std_logic_vector(8 downto 0);
signal checkedAll, checkedAll_next:                  std_logic;


begin

deltaLambda: process(PS, i_data, i_start, i_rst) --deve determinare stato prossimo e uscita
begin

    case PS is
    
-- #############################################################################################################################################

        when RST => --inizializzo tutti i valori dei signal            
            counter <=                  "000";
            mask <=                     "00000000";
            pivotX <=                   "00000000";
            pivotY <=                   "00000000";
            tempX <=                    "00000000";
            tempY <=                    "00000000";
            distMin <=                  "111111111";
            distTempX <=                "111111111";
            distTempY <=                "111111111";
            distTempTot <=              "111111111";
            checkedAll <=               '0';
            
            counter_next <=             "000";
            mask_next <=                "00000000";
            pivotX_next <=              "00000000";
            pivotY_next <=              "00000000";
            tempX_next <=               "00000000";
            tempY_next <=               "00000000";
            distMin_next <=             "111111111";
            checkedAll_next <=          '0';
            
            if(i_start = '1') then
                NS <=                   AskMask;
            else
                NS <=                   RST;
            end if;
            
            o_address <=                "0000000000000000";
            o_done <=                   '0';
            o_en <=                     '0';
            o_we <=                     '0';
            o_data <=                   "00000000";
            
-- #############################################################################################################################################
            
        when AskMask => --richiedo la maschera all'indirizzo 0 alla memoria            
            counter <=                  counter_next;
            mask <=                     mask_next;
            pivotX <=                   pivotX_next;
            pivotY <=                   pivotY_next;
            tempX <=                    tempX_next;
            tempY <=                    tempY_next;
            distMin <=                  distMin_next;
            distTempX <=                "111111111";
            distTempY <=                "111111111";
            distTempTot <=              "111111111";
            
            counter_next <=             counter;
            mask_next <=                mask;
            pivotX_next <=              pivotX;
            pivotY_next <=              pivotY;
            tempX_next <=               tempX;
            tempY_next <=               tempY;
            distMin_next <=             distMin;
            
            NS <=                       ReadMask;
            
            o_address <=                "0000000000000" & counter;
            o_done <=                   '0';
            o_en <=                     '1';
            o_we <=                     '0';
            o_data <=                   "00000000";
            
-- #############################################################################################################################################
            
        when ReadMask => -- leggo la maschera all'indirizzo 0 alla memoria            
            counter <=                  counter_next;
            mask <=                     i_data;
            pivotX <=                   pivotX_next;
            pivotY <=                   pivotY_next;
            tempX <=                    tempX_next;
            tempY <=                    tempY_next;
            distMin <=                  distMin_next;
            distTempX <=                "111111111";
            distTempY <=                "111111111";
            distTempTot <=              "111111111";
            
            counter_next <=             counter;
            mask_next <=                i_data; -- Fixed from now on
            pivotX_next <=              pivotX;
            pivotY_next <=              pivotY;
            tempX_next <=               tempX;
            tempY_next <=               tempY;
            distMin_next <=             distMin;
            
            NS <=                       AskPx;
            
            --o_address <=                "0000000000010001";
            o_done <=                   '0';
            o_en <=                     '0';
            o_we <=                     '0';
            o_data <=                   "00000000";
            
-- #############################################################################################################################################
            
        when AskPx =>   -- chiedo alla memoria il valore del pivot
            counter <=                  "000";
            mask <=                     mask_next;
            pivotX <=                   pivotX_next;
            pivotY <=                   pivotY_next;
            tempX <=                    tempX_next;
            tempY <=                    tempY_next;
            distMin <=                  distMin_next;
            distTempX <=                "111111111";
            distTempY <=                "111111111";
            distTempTot <=              "111111111";
            
            counter_next <=             "000";
            mask_next <=                mask;               -- Fixed
            pivotX_next <=              pivotX;
            pivotY_next <=              pivotY;
            tempX_next <=               tempX;
            tempY_next <=               tempY;
            distMin_next <=             distMin;
            
            NS <=                       ReadPx;
            
            o_address <=                "0000000000010001";
            o_done <=                   '0';
            o_en <=                     '1';
            o_we <=                     '0';
            o_data <=                   "00000000";
            
-- #############################################################################################################################################
            
        when ReadPx =>
            counter <=                  counter_next;
            mask <=                     mask_next;
            pivotX <=                   i_data;
            pivotY <=                   pivotY_next;
            tempX <=                    tempX_next;
            tempY <=                    tempY_next;
            distMin <=                  distMin_next;
            distTempX <=                "111111111";
            distTempY <=                "111111111";
            distTempTot <=              "111111111";
            
            counter_next <=             counter;
            mask_next <=                mask;               -- Fixed
            pivotX_next <=              i_data;
            pivotY_next <=              pivotY;
            tempX_next <=               tempX;
            tempY_next <=               tempY;
            distMin_next <=             distMin;
            
            NS <=                       AskPy;
            
            --o_address <=                "0000000000010010";
            o_done <=                   '0';
            o_en <=                     '0';
            o_we <=                     '0';
            o_data <=                   "00000000";
            
-- #############################################################################################################################################
            
        when AskPy =>
            counter <=                  counter_next;
            mask <=                     mask_next;
            pivotX <=                   pivotX_next;
            pivotY <=                   pivotY_next;
            tempX <=                    tempX_next;
            tempY <=                    tempY_next;
            distMin <=                  distMin_next;
            distTempX <=                "111111111";
            distTempY <=                "111111111";
            distTempTot <=              "111111111";
            
            counter_next <=             counter;
            mask_next <=                mask;               -- Fixed
            pivotX_next <=              pivotX;             -- Fixed
            pivotY_next <=              pivotY;
            tempX_next <=               tempX;
            tempY_next <=               tempY;
            distMin_next <=             distMin;
            
            NS <=                       ReadPy;
            
            o_address <=                "0000000000010010";
            o_done <=                   '0';
            o_en <=                     '1';
            o_we <=                     '0';
            o_data <=                   "00000000";
            
-- #############################################################################################################################################
        
        when ReadPy =>
            counter <=                  counter_next;
            mask <=                     mask_next;
            pivotX <=                   pivotX_next;
            pivotY <=                   i_data;
            tempX <=                    tempX_next;
            tempY <=                    tempY_next;
            distMin <=                  distMin_next;
            distTempX <=                "111111111";
            distTempY <=                "111111111";
            distTempTot <=              "111111111";
            checkedAll <=               '0';
            
            counter_next <=             counter;
            mask_next <=                mask;               -- Fixed
            pivotX_next <=              pivotX;             -- Fixed
            pivotY_next <=              i_data;             -- Fixed
            tempX_next <=               tempX;
            tempY_next <=               tempY;
            distMin_next <=             distMin;
            checkedAll_next <=          '0';
            
            NS <=                       Processor;
            
            --o_address <=                address_counter;
            o_done <=                   '0';
            o_en <=                     '0';
            o_we <=                     '0';
            o_data <=                   "00000000";
            
-- #############################################################################################################################################
            
        when Processor =>
        --adesso ho tutti i segnali che mi servono e sono:
        --      address_counter = "0000.0000.0000.0001" == indirizzo X primo centroide
        --      mask =            Maschera di abilitazione centroidi
        --      pivotX, pivotY =  X e Y del pivot
        --      tempX, tempY =    X e Y dei centroidi che vado a confrontare
        --      distMin =         distanza minima in ogni momento
        
            counter <=                  counter_next;
            mask <=                     mask_next;
            pivotX <=                   pivotX_next;
            pivotY <=                   pivotY_next;
            tempX <=                    tempX_next;
            tempY <=                    tempY_next;
            distMin <=                  distMin_next;
            distTempX <=                "111111111";
            distTempY <=                "111111111";
            distTempTot <=              "111111111";
            checkedAll <=               checkedAll_next;
            
            -- counter_next <=             counter;
            mask_next <=                mask;               -- Fixed
            pivotX_next <=              pivotX;             -- Fixed
            pivotY_next <=              pivotY;             -- Fixed
            tempX_next <=               tempX;
            tempY_next <=               tempY;
            distMin_next <=             distMin;
            checkedAll_next <=          checkedAll;
            
            if(checkedAll = '1') then    --cioè se o controllato tutti gli stati
                NS <=                   FINE;
                counter_next <=         counter;
            else
                if(mask(to_integer(unsigned(counter))) = '0') then  --se il valore corrispondente della maschera è 0 rimango in questo stato e aggiorno il contatore
                    counter_next <=     counter + "001";
                    NS <=               Processor;
                else            -- se la maschera è a 1 passo allo stato di richiesta X
                    counter_next <=     counter;
                    NS <=               AskCx;
                end if;
            end if;
            
            --NS <=                       FINE;
            
            --o_address <=                address_counter;
            o_done <=                   '0';
            o_en <=                     '0';
            o_we <=                     '0';
            o_data <=                   "00000000";
            
-- #############################################################################################################################################
        
        when AskCx =>
            counter <=                  counter_next;
            mask <=                     mask_next;
            pivotX <=                   pivotX_next;
            pivotY <=                   pivotX_next;
            tempX <=                    tempX_next;
            tempY <=                    tempY_next;
            distMin <=                  distMin_next;
            distTempX <=                "111111111";
            distTempY <=                "111111111";
            distTempTot <=              "111111111";
            checkedAll <=               checkedAll_next;
            
            counter_next <=             counter;
            mask_next <=                mask;               -- Fixed
            pivotX_next <=              pivotX;             -- Fixed
            pivotY_next <=              pivotY;             -- Fixed
            tempX_next <=               tempX;
            tempY_next <=               tempY;
            distMin_next <=             distMin;
            checkedAll_next <=          checkedAll;
            
            NS <=                       ReadCx;
            
            o_address <=                ("0000000000000" & (counter + "001")) + ("0000000000000" & counter);
            o_done <=                   '0';
            o_en <=                     '1';
            o_we <=                     '0';
            o_data <=                   "00000000";
            
-- #############################################################################################################################################
            
        when ReadCx =>
            counter <=                  counter_next;
            mask <=                     mask_next;
            pivotX <=                   pivotX_next;
            pivotY <=                   pivotX_next;
            tempX <=                    i_data;
            tempY <=                    tempY_next;
            distMin <=                  distMin_next;
            distTempX <=                "111111111";
            distTempY <=                "111111111";
            distTempTot <=              "111111111";
            checkedAll <=               checkedAll_next;
            
            counter_next <=             counter;
            mask_next <=                mask;               -- Fixed
            pivotX_next <=              pivotX;             -- Fixed
            pivotY_next <=              pivotY;             -- Fixed
            tempX_next <=               i_data;
            tempY_next <=               tempY;
            distMin_next <=             distMin;
            checkedAll_next <=          checkedAll;
            
            NS <=                       AskCy;
            
            --o_address <=                ???;
            o_done <=                   '0';
            o_en <=                     '0';
            o_we <=                     '0';
            o_data <=                   "00000000";
            
-- #############################################################################################################################################
            
        when AskCy =>
            counter <=                  counter_next;
            mask <=                     mask_next;
            pivotX <=                   pivotX_next;
            pivotY <=                   pivotX_next;
            tempX <=                    tempX_next;
            tempY <=                    tempY_next;
            distMin <=                  distMin_next;
            distTempX <=                "111111111";
            distTempY <=                "111111111";
            distTempTot <=              "111111111";
            checkedAll <=               checkedAll_next;
            
            counter_next <=             counter;
            mask_next <=                mask;               -- Fixed
            pivotX_next <=              pivotX;             -- Fixed
            pivotY_next <=              pivotY;             -- Fixed
            tempX_next <=               tempX;
            tempY_next <=               tempY;
            distMin_next <=             distMin;
            checkedAll_next <=          checkedAll;
            
            NS <=                       ReadCy;
            
            o_address <=                (("0000000000000" & (counter + "001")) + ("0000000000000" & (counter + "001")));
            o_done <=                   '0';
            o_en <=                     '1';
            o_we <=                     '0';
            o_data <=                   "00000000";
            
-- #############################################################################################################################################
            
        when ReadCy =>
            counter <=                  counter_next;
            mask <=                     mask_next;
            pivotX <=                   pivotX_next;
            pivotY <=                   pivotX_next;
            tempX <=                    tempX_next;
            tempY <=                    i_data;
            distMin <=                  distMin_next;
            distTempX <=                "111111111";
            distTempY <=                "111111111";
            distTempTot <=              "111111111";
            checkedAll <=               checkedAll_next;
            
            counter_next <=             counter;
            mask_next <=                mask;               -- Fixed
            pivotX_next <=              pivotX;             -- Fixed
            pivotY_next <=              pivotY;             -- Fixed
            tempX_next <=               tempX;
            tempY_next <=               i_data;
            distMin_next <=             distMin;
            checkedAll_next <=          checkedAll;
            
            NS <=                       UpdateOut;
            
            --o_address <=                (("0000000000000" & (counter + "001")) + ("0000000000000" & (counter + "001")));
            o_done <=                   '0';
            o_en <=                     '0';
            o_we <=                     '0';
            o_data <=                   "00000000";
            
-- #############################################################################################################################################
            
        when UpdateOut =>
            counter <=                  counter_next;
            mask <=                     mask_next;
            pivotX <=                   pivotX_next;
            pivotY <=                   pivotX_next;
            tempX <=                    tempX_next;
            tempY <=                    tempY_next;
            distMin <=                  distMin_next;
            checkedAll <=               checkedAll_next;

            --Calcolo distTempX
            if(pivotX < tempX) then
                distTempX <=            tempX - pivotX;
            else
                distTempX <=            pivotX - tempX;
            end if;
            
            --Calcolo distTempY
            if(pivotY < tempY) then
                distTempY <=            tempY - pivotY;
            else
                distTempY <=            pivotY - tempY;
            end if;
            
            --Calcolo distTempTot
            distTempTot <=              distTempX + distTempY;
            
            if(distTempTot = distMin) then
            elsif(distTempTot < distMin) then
            else
            end if;
            
            
            if(counter = "111") then
                checkedAll_next <=      '1';
            else
                checkedAll_next <=      checkedAll;
            end if;
            
            counter_next <=             counter;
            mask_next <=                mask;               -- Fixed
            pivotX_next <=              pivotX;             -- Fixed
            pivotY_next <=              pivotY;             -- Fixed
            tempX_next <=               tempX;
            tempY_next <=               tempX;
            distMin_next <=             distMin;
            
            NS <=                       Processor;
            
            --o_address <=                (("0000000000000" & (counter + "001")) + ("0000000000000" & (counter + "001")));
            o_done <=                   '0';
            o_en <=                     '0';
            o_we <=                     '0';
            o_data <=                   "00000000";
                    
-- #############################################################################################################################################
        
        when FINE =>
            counter <=                  counter_next;
            mask <=                     mask_next;
            pivotX <=                   pivotX_next;
            pivotY <=                   pivotY_next;
            tempX <=                    tempX_next;
            tempY <=                    tempY_next;
            distMin <=                  distMin_next;
            
            counter_next <=             counter;
            mask_next <=                mask;               -- Fixed
            pivotX_next <=              pivotX;             -- Fixed
            pivotY_next <=              pivotY;             -- Fixed
            tempX_next <=               tempX;
            tempY_next <=               tempY;
            distMin_next <=             distMin;
            
            NS <=                       FINE;
            
            --o_address <=                address_counter;
            o_done <=                   '1';
            o_en <=                     '0';
            o_we <=                     '0';
            o_data <=                   "00000000";
            
-- #############################################################################################################################################
        
        when others =>
            NS <=                       RST;
            
-- #############################################################################################################################################

    end case;
    
end process;


state: process(i_clk, i_rst)   -- setta i valori next
begin
    if(i_rst = '1') then
        PS <= RST;
    elsif(i_rst = '0' and i_clk'event and i_clk = '1') then
        PS <= NS;
    end if;

end process;



end Behavioral;
