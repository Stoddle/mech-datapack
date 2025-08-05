tag @s remove selectedAssemblyStation
data remove entity @s attack

execute as @n[tag=assemblyUpperDisplay] if data entity @s item run function core:items/assembly_station/empty_upper_slot
execute as @n[tag=assemblyLowerDisplay] if data entity @s item run function core:items/assembly_station/empty_lower_slot
execute as @n[tag=assemblyCellDisplay] if data entity @s item run function core:items/assembly_station/empty_cell_slot

execute if entity @p[advancements={core:left_click_assembly_station=true},predicate=core:is_sneaking] run function core:items/assembly_station/remove