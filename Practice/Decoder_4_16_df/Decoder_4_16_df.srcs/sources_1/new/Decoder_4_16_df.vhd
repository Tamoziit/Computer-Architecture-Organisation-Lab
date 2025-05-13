----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.05.2025 22:12:43
-- Design Name: 
-- Module Name: Decoder_4_16_df - dataflow
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

entity Decoder_4_16_df is
    Port ( IP : in STD_LOGIC_VECTOR (3 downto 0);
           OP : out STD_LOGIC_VECTOR (15 downto 0));
end Decoder_4_16_df;

architecture dataflow of Decoder_4_16_df is

signal En_low, En_high: STD_LOGIC;

begin
En_low <= NOT IP(3);
En_high <= IP(3);

-- D_low(0-7)
OP(0) <= En_low AND ((NOT IP(2)) AND (NOT IP(1)) AND (NOT IP(0)));
OP(1) <= En_low AND ((NOT IP(2)) AND (NOT IP(1)) AND IP(0));
OP(2) <= En_low AND ((NOT IP(2)) AND IP(1) AND (NOT IP(0)));
OP(3) <= En_low AND ((NOT IP(2)) AND IP(1) AND IP(0));
OP(4) <= En_low AND (IP(2) AND (NOT IP(1)) AND (NOT IP(0)));
OP(5) <= En_low AND (IP(2) AND (NOT IP(1)) AND IP(0));
OP(6) <= En_low AND (IP(2) AND IP(1) AND (NOT IP(0)));
OP(7) <= En_low AND (IP(2) AND IP(1) AND IP(0));

-- D_low(8-15)
OP(8) <= En_high AND ((NOT IP(2)) AND (NOT IP(1)) AND (NOT IP(0)));
OP(9) <= En_high AND ((NOT IP(2)) AND (NOT IP(1)) AND IP(0));
OP(10) <= En_high AND ((NOT IP(2)) AND IP(1) AND (NOT IP(0)));
OP(11) <= En_high AND ((NOT IP(2)) AND IP(1) AND IP(0));
OP(12) <= En_high AND (IP(2) AND (NOT IP(1)) AND (NOT IP(0)));
OP(13) <= En_high AND (IP(2) AND (NOT IP(1)) AND IP(0));
OP(14) <= En_high AND (IP(2) AND IP(1) AND (NOT IP(0)));
OP(15) <= En_high AND (IP(2) AND IP(1) AND IP(0));
end dataflow;
