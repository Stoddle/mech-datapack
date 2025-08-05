tag @s remove selectedAssemblyStation
data remove entity @s interaction

scoreboard players set .assemblyFail variables 0
execute if score .tempID variables matches 0 run return run function core:items/assembly_station/try_assemble
execute if score .tempID variables matches 1 run execute unless data entity @n[tag=assemblyUpperDisplay] item run return run function core:items/assembly_station/change_upper_slot
execute if score .tempID variables matches 2 run execute unless data entity @n[tag=assemblyLowerDisplay] item run return run function core:items/assembly_station/change_lower_slot
execute if score .tempID variables matches 3 run execute unless data entity @n[tag=assemblyCellDisplay] item run return run function core:items/assembly_station/change_cell_slot