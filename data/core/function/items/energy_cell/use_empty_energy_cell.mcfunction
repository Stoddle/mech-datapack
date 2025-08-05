advancement revoke @s only core:use_empty_energy_cell
execute if items entity @s container.* lapis_block run return run function core:items/energy_cell/fill_cell
title @s actionbar {"text":"You need a block of Lapis Lazuli to charge this cell","color":"red"}