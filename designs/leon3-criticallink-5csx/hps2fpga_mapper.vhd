------------------------------------------------------------------------------
--  Copyright (C) 2017, European Space Agency
--
--  This program is free software; you can redistribute it and/or modify
--  it under the terms of the GNU General Public License as published by
--  the Free Software Foundation; either version 2 of the License, or
--  (at your option) any later version.
--
--  This program is distributed in the hope that it will be useful,
--  but WITHOUT ANY WARRANTY; without even the implied warranty of
--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--  GNU General Public License for more details.
--
--  You should have received a copy of the GNU General Public License
--  along with this program; if not, write to the Free Software
--  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
-------------------------------------------------------------------------------
-- Entity:      hps2fpga_mapper
-- File:        hps2fpga_mapper.vhd
-- Author:      Dominik Marszk (dominik.marszk@esa.int)
--
-- This module remaps addresses accessed by HPS into
-- usable memory segments of LEON bus
-- HPS2FPGA AXI address range as seen by HPS is nearly 1GiB big
-- (0xC0000000 - 0xFBFFFFFF) = 0x3BFFFFFF
-- The mapper ensures that the space is used most efficiently,
-- mapping addresses on HPS side to the selected address ranges of LEON bus
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
library grlib;

Entity hps2fpga_mapper is
	port(
		axi_addr	  : in  std_logic_vector(29 downto 0);
		ahb_addr 		: out  std_logic_vector(31 downto 0)
  );
end;

architecture rtl of hps2fpga_mapper is

begin

	comb: process(axi_addr)

	begin
		-- WDATA muxing
    case axi_addr(29 downto 28) is

      when "00" | "01" =>
        -- 0xC0000000 -> 0x40000000 (RAM)
        -- 0xD0000000 -> 0x50000000 (RAM)
        ahb_addr <= "01" & axi_addr;
      when "10" | "11" =>
        -- 0xE0000000 -> 0x80000000 (APB peripherals)
        -- 0xF0000000 -> 0x90000000 (DSU)
        ahb_addr <= "100" & axi_addr(28 downto 0);
      when others =>
        ahb_addr <= (others => 'X');
    end case;

	end process;

end;


