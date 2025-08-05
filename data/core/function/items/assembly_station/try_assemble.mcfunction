scoreboard players set .assemblyCheckUpper variables 0
scoreboard players set .assemblyCheckLower variables 0
scoreboard players set .assemblyCheckCell variables 0
execute if data entity @n[tag=assemblyUpperDisplay] item run scoreboard players set .assemblyCheckUpper variables 1
execute if data entity @n[tag=assemblyLowerDisplay] item run scoreboard players set .assemblyCheckLower variables 1
execute if data entity @n[tag=assemblyCellDisplay] item run scoreboard players set .assemblyCheckCell variables 1

execute if score .assemblyCheckUpper variables matches 1.. if score .assemblyCheckLower variables matches 1.. if score .assemblyCheckCell variables matches 1.. run return run function core:items/assembly_station/assemble_mech
scoreboard players set .assemblyFail variables 1