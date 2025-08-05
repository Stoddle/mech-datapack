scoreboard players add @s age 1
particle smoke ~ ~0.5 ~ 0 0 0 0 1
execute if score @s age matches 3.. if predicate core:is_on_ground run function core:mech/arm_management/cannon/explode
execute if score @s age matches 100.. run function core:mech/arm_management/cannon/explode