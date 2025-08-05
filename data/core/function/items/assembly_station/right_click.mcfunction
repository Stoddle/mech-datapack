execute as @e[tag=assemblyStation] if data entity @s interaction run tag @s add selectedAssemblyStation
execute store result score .tempID variables run data get entity @s SelectedItem.components."minecraft:custom_data".mechItemID 1
execute as @n[tag=selectedAssemblyStation] at @s run function core:items/assembly_station/selector_right_click
execute if score .assemblyFail variables matches 1.. run function core:items/assembly_station/display_assembly_message
advancement revoke @s only core:right_click_assembly_station