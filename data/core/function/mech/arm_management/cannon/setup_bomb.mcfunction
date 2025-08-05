function core:get_pos_variables
execute rotated as @p run tp @s ^ ^ ^0.1 ~ ~
function core:get_pos

execute store result entity @s Motion[0] double 0.015 run scoreboard players operation @s xPos -= .storedX variables
execute store result entity @s Motion[1] double 0.015 run scoreboard players operation @s yPos -= .storedY variables
execute store result entity @s Motion[2] double 0.015 run scoreboard players operation @s zPos -= .storedZ variables

tag @s remove newMechBomb
execute store result score @s mechID run scoreboard players get .tempID mechID