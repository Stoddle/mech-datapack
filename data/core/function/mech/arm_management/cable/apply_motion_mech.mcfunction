function core:get_pos
execute as @n[tag=cableRotationAnchor] run function core:get_pos_variables

execute store result entity @s Motion[0] double -0.00015 run scoreboard players operation @s xPos -= .storedX variables
execute store result entity @s Motion[1] double -0.0001 run scoreboard players operation @s yPos -= .storedY variables
execute store result entity @s Motion[2] double -0.00015 run scoreboard players operation @s zPos -= .storedZ variables

scoreboard players set @s cableMoving 10

playsound minecraft:item.crossbow.shoot player @a ~ ~ ~ 1 0.1
playsound entity.breeze.jump player @a ~ ~ ~ 1 1