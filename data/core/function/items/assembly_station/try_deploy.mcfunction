scoreboard players set .tempAssembly variables 0
execute as @e[tag=assemblyStation,distance=..12] run scoreboard players add .tempAssembly variables 1
execute unless score .tempAssembly variables matches 2.. run return run function core:items/assembly_station/deploy
kill @s
execute as @p run function core:items/assembly_station/give
title @p actionbar {"text":"You can't place an Assembly Station this close to an existing one","color":"red"}