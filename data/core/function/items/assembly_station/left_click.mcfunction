execute as @e[tag=assemblyStation] if data entity @s attack run tag @s add selectedAssemblyStation
execute as @n[tag=selectedAssemblyStation] at @s run function core:items/assembly_station/selector_left_click
advancement revoke @s only core:left_click_assembly_station