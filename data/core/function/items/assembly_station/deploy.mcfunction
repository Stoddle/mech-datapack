playsound block.stone.place block @a ~ ~ ~ 1 1
tag @s remove newAssemblyStation
execute facing entity @p feet run rotate @s ~ 0
summon item_display ~ ~ ~ {Tags:["assemblyStationDisplay","newAssemblyRotate","assemblyStationPart"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2.5f,0f],scale:[5f,5f,5f]},item:{id:"minecraft:knowledge_book",count:1,components:{"minecraft:item_model":"mech:other/assembly_station"}}}
summon item_display ~ ~ ~ {Tags:["assemblyCellDisplay","newAssemblyRotate","assemblyStationPart"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[3.4f,1f,1.7f],scale:[1f,1f,1f]},item_display:"head"}
summon item_display ~ ~ ~ {Tags:["assemblyUpperDisplay","newAssemblyRotate","assemblyStationPart"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,3f,0f],scale:[2f,2f,2f]}}
summon item_display ~ ~ ~ {Tags:["assemblyLowerDisplay","newAssemblyRotate","assemblyStationPart"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,3f,0f],scale:[2f,2f,2f]}}

execute rotated as @s run tp @e[tag=newAssemblyRotate] ~ ~ ~ ~ 0
tag @e[tag=newAssemblyRotate] remove newAssemblyRotate

execute as @p unless entity @s[advancements={core:achievements/deploy_assembly=true}] run advancement grant @s only core:achievements/deploy_assembly